#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
// configuration bits for PIC16F877A
#pragma config FOSC = HS   // High Speed Oscillator
#pragma config WDTE = OFF  // Watchdog Timer Disabled
#pragma config PWRTE = OFF // Power-up Timer Disabled
#pragma config BOREN = ON  // Brown-out Reset Enabled
#pragma config LVP = OFF   // Low Voltage ICSP Disabled
#pragma config CPD = OFF   // Data EEPROM Memory Code Protection Off
#pragma config WRT = OFF   // Flash Program Memory Write Enable bits
#pragma config CP = OFF    // Flash Program Memory Code Protection bit
// Oscillator frequency
#define _XTAL_FREQ 4000000 // 4 MHz
#define LCD_PORT PORTD
#define RS RC0
#define RW RC1
#define EN RC2
#define DHT11_PIN RB2
#define DHT11_PIN_DIR TRISB2

// LCD Functions
void instCTRL(unsigned char CMD);          // Instruction Control
void dataCTRL(unsigned char DAT);          // Data Control
void initLCD();                            // Initialize LCD
void printToLCD(const unsigned char *str); // Print to LCD

// ADC Functions
void initADC();                 // Initialize ADC
uint16_t readADC(char channel); // Read ADC

// globals
uint16_t adcValue = 0;

void main()
{
    char buffer[20]; // Increase buffer size for longer strings
    TRISC = 0x00;    // Set PORTC as output
    TRISD = 0x00;    // Set PORTD as output
    PORTC = 0x00;    // Clear PORTC
    initADC();
    initLCD();
    instCTRL(0x80);
    printToLCD("ADC Test");

    while (1)
    {
        uint16_t adcValue = readADC(0); // Read from channel 0
        sprintf(buffer, "ADC0: %d        ", adcValue);
        instCTRL(0xC0);     // Move cursor to second line
        printToLCD(buffer); // Print ADC value
        __delay_ms(50);

        adcValue = readADC(1); // Read from channel 1
        adcValue = (adcValue * 500) / 1023;
        sprintf(buffer, "ADC1: %d        ", adcValue);
        instCTRL(0x94);     // Move cursor to next line
        printToLCD(buffer); // Print ADC value
        __delay_ms(50);
    }
}

void initADC()
{
    TRISA = 0xFF;  // Set PORTA as input
    ADCON1 = 0x80; // Configure AN0 to AN3 as analog (the rest digital), using VDD as Vref+
    ADCON0 = 0x01; // ADON = 1, select AN0
}

uint16_t readADC(char channel)
{
    ADCON0 &= 0xC3;           // Clear the channel selection bits
    ADCON0 |= (channel << 3); // Set the desired channel
    ADCON0 |= 0x01;           // Ensure ADC is enabled
    __delay_us(20);           // Acquisition time
    GO_DONE = 1;              // Start the conversion
    while (GO_DONE)
        ;                                    // Wait for the conversion to finish
    return ((uint16_t)ADRESH << 8) | ADRESL; // Return the result, ensure it's unsigned
}

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
