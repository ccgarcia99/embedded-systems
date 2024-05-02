#include <xc.h>
#include <math.h> // Include for power function
#include <stdint.h>
#include <stdio.h>
#include "lcd_functions.h" // Include the LCD functions header

// Configuration bits for PIC16F877A
#pragma config FOSC = HS   // High Speed Oscillator
#pragma config WDTE = OFF  // Watchdog Timer Disabled
#pragma config PWRTE = OFF // Power-up Timer Disabled
#pragma config BOREN = ON  // Brown-out Reset Enabled
#pragma config LVP = OFF   // Low Voltage ICSP Disabled
#pragma config CPD = OFF   // Data EEPROM Memory Code Protection Off
#pragma config WRT = OFF   // Flash Program Memory Write Enable bits
#pragma config CP = OFF    // Flash Program Memory Code Protection bit

#define _XTAL_FREQ 4000000 // 4 MHz

// Constants for MQ135 operations
#define PARA 116.6020682
#define PARB 2.769034857
#define CORA 0.00035
#define CORB 0.02718
#define CORC 1.39538
#define CORD 0.0018
#define CORE -0.003333333
#define CORF -0.001923077
#define CORG 1.130128205
#define ATMOCO2 415.58 // Calibration CO2 level in ppm

// Function prototypes
void InitADC();
int readADC();

void main()
{
    TRISB = 0x00;  // Set PORTB as output
    TRISA = 0xFF;  // Set PORTA as input
    TRISD = 0x00;  // Set PORTD as output
    ADCON1 = 0x80; // Set PORTA as analog input
    ADCON0 = 0x01; // Select channel 0

    OPTION_REG = 0x44; // Set prescaler to 1:32
    TMR0IE = 1;        // Enable Timer0 interrupt
    TMR0IF = 0;        // Clear Timer0 interrupt flag
    INTE = 1;          // Enable external interrupt
    INTF = 0;          // Clear interrupt flag
    INTEDG = 1;        // Set interrupt on rising edge
    PEIE = 1;          // Enable peripheral interrupt
    GIE = 1;           // Enable global interrupt

    initLCD(); // Initialize the LCD

    for (;;)
    {
        instCTRL(0x80); // Set cursor to first line
        int adcValue = readADC();
        float voltage = (adcValue * 5.0) / 1023.0;
        float ppm = PARA * pow((voltage / 2.0), -PARB);
        float ratio = voltage / 5.0;
        float co2 = CORA + (CORB * ratio) + (CORC * pow(ratio, 2)) + (CORD * pow(ratio, 3)) + (CORE * pow(ratio, 4)) + (CORF * pow(ratio, 5)) + (CORG * pow(ratio, 6));
        co2 = co2 * ATMOCO2;
        char buffer[16];
        sprintf(buffer, "CO2: %.2f ppm  ", co2);
        printToLCD(buffer);
        if(co2 > 9) // If CO2 levels are high (greater than 9 ppm)
        {
            instCTRL(0xC0); // Set cursor to second line
            printToLCD("CO2 levels high! ");
        }
        else
        {
            instCTRL(0xC0); // Set cursor to second line
            printToLCD("CO2 levels are OK");
        }
        __delay_ms(50);
    }
}

int readADC()
{
    int temp = 0; // temporary variable, not TEMPERATURE
    __delay_ms(20);
    GO = 1; // start conversion
    while (GO_DONE == 1)
        ; // wait for conversion to finish
    temp = ADRESH;
    temp = temp << 8;     // shift the 2 MSB 8 bits to the left
    temp = temp | ADRESL; // append the rest of the bits to temp
    return temp;
}