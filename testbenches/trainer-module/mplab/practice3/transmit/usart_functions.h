/* ============================================
 * FILENAME: usart_processes_h
 * AUTHOR:   Christian Clyde G. Decierdo
 * DATE:     April 2024
 * DESC:     General purpose serial communication library for PIC16F887A w/ delay function
   ============================================*/

#ifndef USART_FUNCTIONS_H
#define USART_FUNCTIONS_H

#include <xc.h>
#define _XTAL_FREQ 4000000

void serialInit(void);
void serialSend(unsigned char data);
unsigned char serialRead(void);

void serialInit(void)
{
    TXSTA = 0b00100100; // TXEN = 1. SYNC = 0, BGRH = 1, 8-bit transmission
    TXIF = 0;           // Clear transmit interrupt flag

    RCSTA = 0b10010000; // SPEN = 1, RX9 = 0, CREN = 1, 8-bit reception
    RCIF = 0;           // clear the recieve interrupt flag

    SPBRG = 25; // 9600 baud rate, assuming Fosc = 4Mhz & BGRH = 1
}

void serialSend(unsigned char dataOUT)
{
    while (!TXIF)
        ;
    TXREG = dataOUT;
    __delay_ms(250);
}

unsigned char serialRead(void)
{
    while (!RCIF)
        ;
    return RCREG;
}

#endif
