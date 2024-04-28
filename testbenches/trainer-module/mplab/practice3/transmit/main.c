#include <xc.h>
#include <stdlib.h>
#include <stdio.h>
#include "lcd_functions.h"

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

void main()
{
    TRISD = 0x00; // data lines for LCD
    TRISC = 0xC0; // set TX and RX pin
    TRISB = 0xF7; // set INT(RB0), RB1(DAVBL)
    TRISA0 = 1;   // set ADC into input

    while(1)
    {

    }
}