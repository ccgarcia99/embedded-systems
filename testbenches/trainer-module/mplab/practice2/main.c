#include <xc.h>
#include "lcd_functions.h"
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main()
{
    TRISB = 0x00;
    TRISC = 0xC0;

    char seconds[5]; // Adjusted buffer size

    int count = 0;

    initLCD(); // Initialize once
    __delay_ms(1000);

    while (1)
    {
        if (count < 24)
        {
            sprintf(seconds, "%d ", count);
            count++;
            instCTRL(0x9D);
            printToLCD(seconds);
            __delay_ms(250);
        }
        else
        {
            while (count != 0)
            {
                sprintf(seconds, "%d ", count);
                count--;
                instCTRL(0x9D);
                printToLCD(seconds);
                __delay_ms(250);
            }
        }
    }
}
