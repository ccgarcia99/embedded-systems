#ifndef LCD_FUNCTIONS_H
#define LCD_FUNCTIONS_H

#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 4000000

//#include "common_dependencies.h"

#define RS RC0
#define RW RC1
#define EN RC2
#define LCD_PORT PORTD

void instCTRL(unsigned char CMD);          // Instruction Control
void dataCTRL(unsigned char DAT);          // Data Control
void initLCD();                            // Initialize LCD
void printToLCD(const unsigned char *str); // Print to LCD

// LCD functions START
void instCTRL(unsigned char CMD)
{
    LCD_PORT = CMD;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_ms(1);
    EN = 0;
}

void dataCTRL(unsigned char DAT)
{
    LCD_PORT = DAT;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_ms(1);
    EN = 0;
}

void initLCD()
{
    instCTRL(0x38);
    __delay_us(50);
    instCTRL(0x0C);
    instCTRL(0x01);
    instCTRL(0x06);
    instCTRL(0x0F);
}

void printToLCD(const unsigned char *str)
{
    instCTRL(0x0C);
    while (*str)
    {
        dataCTRL(*str);
        str++;
    }
}
// LCD functions END

#endif // LCD_FUNCTIONS_H