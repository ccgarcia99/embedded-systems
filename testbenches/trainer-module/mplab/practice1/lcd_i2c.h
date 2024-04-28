#ifndef LCD_I2C_H
#define LCD_I2C_H

#include <xc.h>
#include "i2c_func.h"

#define LCD_ADDR 0x27  // 0x27 for PCF8574T, 0x4E for PCF8574AT
#define RS 0x01
#define BACKLIGHT 0x08
#define EN 0x04
#define _XTAL_FREQ 4000000

void LCD_Init();
void LCD_Command(unsigned char command);
void LCD_Char(unsigned char data);
void LCD_String(const char *string);
void LCD_String_xy(char row, char pos, const char *string);
void LCD_Clear();
void LCD_PrintString(const char *string);

void LCD_Command(unsigned char command)
{
    I2C_Start();
    I2C_Send(LCD_ADDR << 1);
    I2C_Send(0x00);
    I2C_Send(command);
    I2C_Stop();
    __delay_ms(2);
}

void LCD_Init()
{
    __delay_ms(40);

    LCD_Command(0x30);
    __delay_ms(5);
    LCD_Command(0x30);
    __delay_us(200);
    LCD_Command(0x30);

    LCD_Command(0x28);
    LCD_Command(0x08);
    LCD_Command(0x01);
    LCD_Command(0x06);
    LCD_Command(0x0F);
    LCD_Command(0x02);
}

void LCD_Char(unsigned char data)
{
    char chUPPER, chLOWER, control_byte;

    chUPPER = (data & 0xF0);
    chLOWER = (data << 4) & 0xF0;

    control_byte = RS | BACKLIGHT;

    // send upper nibble
    I2C_Start();
    I2C_Send(LCD_ADDR << 1);
    I2C_Send(chUPPER | control_byte | EN);
    I2C_Send(chUPPER | control_byte);
    I2C_Stop();

    // send lowe nibble
    I2C_Start();
    I2C_Send(LCD_ADDR << 1);
    I2C_Send(chLOWER | control_byte | EN);
    I2C_Send(chLOWER | control_byte);
    I2C_Stop();

    __delay_ms(2);
}

#endif // LCD_I2C_H