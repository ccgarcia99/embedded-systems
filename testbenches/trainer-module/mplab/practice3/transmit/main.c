#include <xc.h>
#include <stdlib.h>
#include <stdio.h>
#include "lcd_functions.h"
#include "usart_functions.h"

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000
#define DAVBL RB1
#define STOP RB2

unsigned char keypadData(void);
void interrupt ISR();                       // voltage reader mode
void printTime();                           // print time to LCD
unsigned char keyData, lastKeyData = 0xFF;

int mins = 0;
int hours = 0;
char buffer[10];

void main()
{
    TRISD = 0x00; // data lines for LCD
    TRISC = 0xC0; // set TX and RX pin
    TRISB = 0xF7; // set INT(RB0), RB1(DAVBL), uper nibble high (A-D)
    TRISA0 = 1;   // set ADC into input

    OPTION_REG = 0x44; // enable pull-up resistors
    INTE = 1;          // enable external interrupt
    INTF = 0;          // clear interrupt flag

    GIE = 1; // enable global interrupt

    serialInit();
    initLCD();
    __delay_ms(200);
    instCTRL(0x80);
    printToLCD("TIME: ");
    while(1)
    {
        printTime();
        instCTRL(0x86);
        printToLCD("KEY: ");
        printToLCD(keyData);
    }
}

unsigned char keypadData(void)
{
    unsigned char buffer = 0x00; // 8-bit buffer
    unsigned char dataIN = 0x00;

    if(DAVBL)
    {
        __delay_ms(10);
        dataIN = (PORTB & 0xF0) >> 4;
        switch (dataIN)
        {
        case 0x00:
            buffer = '7';
            break;
        case 0x01:
            buffer = '8';
            break;
        case 0x02:
            buffer = '9';
            break;
        case 0x03:
            buffer = '/';
            break;
        case 0x04:
            buffer = '4';
            break;
        case 0x05:
            buffer = '5';
            break;
        case 0x06:
            buffer = '6';
            break;
        case 0x07:
            buffer = '*';
            break;
        case 0x08:
            buffer = '1';
            break;
        case 0x09:
            buffer = '2';
            break;
        case 0x0A:
            buffer = '3';
            break;
        case 0x0B:
            buffer = '-';
            break;
        case 0x0C:
            buffer = 'O';
            break;
        case 0x0D:
            buffer = '0';
            break;
        case 0x0E:
            buffer = '=';
            break;
        case 0x0F:
            buffer = '+';
            break;
        default:
            break;
        }
    }
    return buffer;
}

void interrupt ISR()
{
    GIE = 0;
    if (INTF)
    {
        keyData = keypadData();
        if (keyData != lastKeyData)
        {
            serialSend(keyData);
            lastKeyData = keyData;
        }
        INTF = 0;
    }
    GIE = 1;
}

void printTime()
{
    for (hours; hours < 24; hours++)
    {
        // inner loop for mins
        for (mins; mins < 60; mins++)
        {
            // print hours
            instCTRL(0x86);
            sprintf(buffer, "%02d:%02d", hours, mins);
            printToLCD(buffer);
            __delay_ms(50);
        }
        // send out hours
        serialSend(hours);
        __delay_ms(50);
        // reset mins
        mins = 0;
    }
    // reset hours
    hours = 0;
}
