/*  =================================================
*   FILENAME: usart-rx.c
*   AUTHOR:   Christian Clyde G. Decierdo
*   DATE:     April 2024
*   DESC:     Example code for receiving data using the USART library.
              This program will receive data from the serial port and sends
              the output to PORTB of the PIC16F887A. PORTB is then connected to
              am 74LS47 7-segment display driver.
    =================================================*/

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

void main()
{
    // variable declarations
    unsigned char dataIN = 0;
    unsigned char dataOUT = 0;

    // set port directions
    TRISB = 0x00; // set PORTB as output
    PORTB = 0x00; // clear PORTB
    TRISD = 0x00; // set PORTD as output
    PORTD = 0x00; // clear PORTD
    TRISC7 = 1;   // set RX as input
    TRISC6 = 0;   // set TX as output

    // set up the timer module
    OPTION_REG = 0x44; // set prescaler to 1:32
    TMR0 = 0;          // clear the timer register
    TMR0IE = 1;        // enable the timer interrupt
    TMR0IF = 0;        // clear the timer interrupt flag
    GIE = 1;           // enable global interrupts

    // initialize the serial port & handshake
    serial_init();
    // TODO: fix the handshake routine
    // ISSUE: The handshake routine is not working as expected, impedes the communication between devices
    // serial_handshake();

    while(1)
    {
        dataIN = serial_read(); // read data from the serial port
        dataOUT = dataIN;       // copy the data to the output variable
        PORTD = dataOUT;        // output the data to PORTB
    }
}