#include <xc.h>
#include <stdio.h>
#include "lcd_functions.h"

// Configuration bits
#pragma config FOSC = HS   // High Speed Oscillator
#pragma config WDTE = OFF  // Watchdog Timer Disabled
#pragma config PWRTE = OFF // Power-up Timer Disabled
#pragma config BOREN = ON  // Brown-out Reset Enabled
#pragma config LVP = OFF   // Low Voltage ICSP Disabled
#pragma config CPD = OFF   // Data EEPROM Memory Code Protection Off
#pragma config WRT = OFF   // Flash Program Memory Write Enable bits
#pragma config CP = OFF    // Flash Program Memory Code Protection bit

#define _XTAL_FREQ 4000000 // 4 MHz

typedef enum
{
    RUN = 0,
    SET = 1
} SystemMode;

// Function prototypes
void interrupt ISR(void);
void setTimer(void);
void displayTime(void);
void checkTime(void);

// Global variables
volatile SystemMode mode = RUN;
volatile int hours = 8, mins = 0;

// Main function
void main()
{
    TRISB = 0x03; // Set RB0 and RB1 as input
    TRISC = 0x00; // Set all pins in PORTC as output
    TRISD = 0x00; // Set all pins in PORTD as output
    PORTC = 0x00; // Clear PORTC
    PORTD = 0x00; // Clear PORTD

    OPTION_REG = 0b11000000; // Enable weak pull-ups
    GIE = 1;                 // Enable global interrupts
    INTE = 1;                // Enable external interrupt on RB0
    INTF = 0;                // Clear external interrupt flag

    initLCD();      // Initialize LCD
    instCTRL(0x80); // Clear display
    __delay_us(100);
    printToLCD("Initializing...");
    __delay_ms(500); // Wait for LCD to initialize
    instCTRL(0x01);  // Clear display
    __delay_ms(500); // Wait for LCD to initialize
    while (1)
    {
        switch (mode)
        {
        case RUN:
            displayTime();
            break;
        case SET:
            setTimer();
            break;
        default:
            break;
        }
        checkTime();
    }
}

void interrupt ISR(void)
{
    GIE = 0;       // Disable global interrupts
    if (INTF == 1) // Check if external interrupt flag is set
    {
        mode ^= 1;                               // Toggle mode
        instCTRL(0x01);                          // Clear display
        instCTRL(0x80);                          // Set cursor to first line
        printToLCD(mode == RUN ? "RUN" : "SET"); // Display current mode
        INTF = 0;                                // Clear external interrupt flag
    }
    __delay_ms(1000); // Debounce
    instCTRL(0x01);  // Clear display
    GIE = 1;         // Enable global interrupts
}

void setTimer(void)
{
    char time[20];
    instCTRL(0x80);
    sprintf(time, "CurrTime: %02d:%02d    ", hours, mins);
    printToLCD(time);

    if (RB1 == 1) // Check if button RB1 is pressed
    {
        __delay_ms(500); // Debounce delay

        hours++;         // Increment hours directly
        if (hours >= 24) // Check if hours exceed 23 and reset to 0
        {
            hours = 0;
        }

        // Update the display with new hour value
        instCTRL(0x80); // Return cursor to start of line to update time
        sprintf(time, "CurrTime: %02d:%02d    ", hours, mins);
        printToLCD(time);
    }
}

void displayTime(void)
{
    char time[20];
    instCTRL(0x80);
    sprintf(time, "Time: %02d:%02d    ", hours, mins);
    printToLCD(time);
    __delay_ms(50); // simulate time passing

    // Increment time
    mins++;
    if (mins >= 60)
    {
        mins = 0;
        hours++;
        if (hours >= 24)
        {
            hours = 0;
        }
    }
}

void checkTime(void)
{
    if (hours >= 17 && hours <= 24)
    {
        RB2 = 1;
        __delay_us(100);
        instCTRL(0xC0); // Set cursor to second line
        printToLCD("Lights ON ");
    }
    else
    {
        RB2 = 0;
        __delay_us(100);
        instCTRL(0xC0); // Set cursor to second line
        printToLCD("Lights OFF");
    }
}