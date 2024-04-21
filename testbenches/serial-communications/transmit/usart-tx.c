/*  =================================================================================================
    FILENAME: usart-tx.c
    DATE: APRIL 2024
    AUTHOR: CHRISTIAN CLYDE G. DECIERDO
    PROGRAM DESCRIPTION: This program reads data from a 4x4 matrix keypad connected to
    PORTD and sends the data to another device using serial communication. The program uses
    a handshake routine to ensure that the devices are ready to communicate.
    The data read from the keypad is sent to the other device based on the key pressed.
    ================================================================================================*/

// preprocessor directives
#include <xc.h>
#include "usart-processes.h"
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
#define _XTAL_FREQ 4000000

void main(void)
{
    unsigned char dataIN = 0x00;  // read in from PORTD
    unsigned char dataOUT = 0x00; // send out to PORTB
    unsigned char DAVBL = 0x00;   // check if data available in PORTD, clear initially
    TRISD = 0x1F;
    TRISB = 0x00; // PORTB as output

    // initialuze the timer
    OPTION_REG = 0x44; // prescaler 1:32
    TMR0 = 0;          // clear the timer
    TMR0IE = 1;        // enable the timer interrupt
    TMR0IF = 0;        // clear the timer interrupt flag
    GIE = 1;           // enable global interrupts

    // initialize the serial ports
    TRISC6 = 0; // TX pin set as output
    TRISC7 = 1; // RX pin set as input
    serial_init();

    // device handshake routine
    // TODO: fix the handshake routine
    // ISSUE: The handshake routine is not working as expected, impedes the communication between devices
    // serial_handshake();

    while (1)
    {
        DAVBL = PORTD & 0x10; // check if data available in PORTD
        if (DAVBL == 0x10)    // if data available
        {
            dataIN = PORTD & 0x0F; // read in from PORTD
            switch (dataIN)
            {
            case 0x00:
                dataOUT = 0x01;
                break;
            case 0x01:
                dataOUT = 0x02;
                break;
            case 0x02:
                dataOUT = 0x03;
                break;
            case 0x04:
                dataOUT = 0x04;
                break;
            case 0x05:
                dataOUT = 0x05;
                break;
            case 0x06:
                dataOUT = 0x06;
                break;
            case 0x08:
                dataOUT = 0x07;
                break;
            case 0x09:
                dataOUT = 0x08;
                break;
            case 0x0A:
                dataOUT = 0x09;
                break;
            default:
                dataOUT = 0x00;
                break;
            }
            serial_send(dataOUT); // send out to serial port
        }
    }
}
