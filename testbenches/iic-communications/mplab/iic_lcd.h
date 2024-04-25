#ifndef IIC_LCD_H
#define IIC_LCD_H
// library for I2C LCD

#include <xc.h>
#include "iic.h"

#define ADDR 0x27 // I2C address of PCF8574T
#define RS 0x01 // Register select bit
#define RW 0x02 // Read/write bit
#define EN 0x04 // Enable bit

void lcd_init(void); // Initialize LCD
void lcd_cmd(unsigned char cmd); // Send command to LCD
void lcd_data(unsigned char data); // Send data to LCD
void lcd_str(const char *str); // Send string to LCD
void lcd_str_xy(unsigned char x, unsigned char y, const char *str); // Send string to LCD at position x, y
void lcd_clear(void); // Clear LCD
void lcd_home(void); // Move cursor to home
void lcd_set_cursor(unsigned char x, unsigned char y); // Set cursor position

void lcd_init(void) {
    iic_init();
    lcd_cmd(0x38); // 8-bit, 2-line, 5x7 font
    lcd_cmd(0x0C); // Display on, cursor off, blink off
    lcd_cmd(0x06); // Increment cursor
    lcd_cmd(0x01); // Clear display
}

void lcd_cmd(unsigned char cmd) {
    IIC_Start();
    IIC_Send(ADDR << 1); // Write mode
    IIC_Send(cmd & 0xF0); // Send high nibble
    IIC_Send((cmd << 4) & 0xF0); // Send low nibble
    IIC_Stop();
}

void lcd_data(unsigned char data) {
    IIC_Start();
    IIC_Send((ADDR << 1) | RS); // Write mode
    IIC_Send(data & 0xF0); // Send high nibble
    IIC_Send((data << 4) & 0xF0); // Send low nibble
    IIC_Stop();
}

void lcd_str(const char *str) {
    while (*str) {
        lcd_data(*str++);
    }
}

void lcd_str_xy(unsigned char x, unsigned char y, const char *str) {
    unsigned char addr;
    if (y == 0) {
        addr = 0x80 + x;
    } else {
        addr = 0xC0 + x;
    }
    lcd_cmd(addr);
    lcd_str(str);
}

void lcd_clear(void) {
    lcd_cmd(0x01);
}

void lcd_home(void) {
    lcd_cmd(0x02);
}

void lcd_set_cursor(unsigned char x, unsigned char y) {
    unsigned char addr;
    if (y == 0) {
        addr = 0x80 + x;
    } else {
        addr = 0xC0 + x;
    }
    lcd_cmd(addr);
}

#endif // IIC_LCD_H
