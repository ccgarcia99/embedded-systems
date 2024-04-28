#ifndef LCD_FUNCTIONS_H
#define LCD_FUNCTIONS_H

#define RS RC0
#define RW RC1
#define EN RC2
#define _XTAL_FREQ 4000000

#include <xc.h>

void instCTRL(unsigned char CMD);
void dataCTRL(unsigned char DAT);
void initLCD(void);
void printToLCD(unsigned char* STR);

void instCTRL(unsigned char CMD)
{
    PORTB = CMD;
    RS = 0;
    RW = 0;
    EN = 1;
    __delay_us(50);
    EN = 0;
}

void dataCTRL(unsigned char DAT)
{
    PORTB = DAT;
    RS = 1;
    RW = 0;
    EN = 1;
    __delay_us(50);
    EN = 0;
}

void initLCD(void)
{
    instCTRL(0x3C);
    __delay_us(50);
    instCTRL(0x0C);
    instCTRL(0x01);
    instCTRL(0x06);
    instCTRL(0x0F);
}

void printToLCD(unsigned char* STR)
{
    while (*STR != '\0')
    {
        dataCTRL(*STR);
        STR++;
    }
}

#endif //LCD_FUNCTIONS_H