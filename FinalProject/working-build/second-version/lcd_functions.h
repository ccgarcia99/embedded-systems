#ifndef LCD_FUNCTIONS_H
#define LCD_FUNCTIONS_H

#include <xc.h>
#include <stdio.h>

#define _XTAL_FREQ 4000000

// #include "common_dependencies.h"

#define RS RC0
#define RW RC1
#define EN RC2
#define LCD_PORT PORTD

void instCTRL(unsigned char CMD);                        // Instruction Control
void dataCTRL(unsigned char DAT);                        // Data Control
void initLCD();                                          // Initialize LCD
void printToLCD(const unsigned char *str);               // Print to LCD
void setCursor(unsigned char row, unsigned char column); // Set cursor position

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
    __delay_ms(20);  // Wait for more than 15ms after VDD rises to 4.5V
    instCTRL(0x30);  // Function set: 8-bit mode
    __delay_ms(5);   // Wait for more than 4.1ms
    instCTRL(0x30);  // Function set: 8-bit mode
    __delay_us(200); // Wait for more than 100µs
    instCTRL(0x30);  // Function set: 8-bit mode

    instCTRL(0x38); // Function set: 8-bit mode, 2 lines, 5x8 font
    instCTRL(0x0C); // Display ON, Cursor OFF, Blink OFF
    instCTRL(0x01); // Clear display
    __delay_ms(2);  // Wait for more than 1.52ms
    instCTRL(0x06); // Entry mode set: Increment cursor
}

void setCursor(unsigned char row, unsigned char column)
{
    unsigned char address;
    switch (row)
    {
    case 0:
        address = 0x00;
        break;
    case 1:
        address = 0x40;
        break;
    case 2:
        address = 0x14;
        break;
    case 3:
        address = 0x54;
        break;
    default:
        address = 0x00;
        break;
    }
    address += column;
    instCTRL(0x80 | address);
}

void printToLCD(const unsigned char *str)
{
    while (*str)
    {
        dataCTRL(*str);
        str++;
    }
}
// LCD functions END

#endif // LCD_FUNCTIONS_H
