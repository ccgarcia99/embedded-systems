#ifndef TIME_SCHEDULER_H
#define TIME_SCHEDULER_H

#include "common_dependencies.h"

// Global variables
volatile uint8_t hours = 8;
volatile uint8_t minutes = 0;
volatile uint8_t savedHoursStart = 9;
volatile uint8_t savedMinutesStart = 30;
volatile uint8_t savedHoursEnd = 10;
volatile uint8_t savedMinutesEnd = 30;

// function prototypes
void runClock(void);        // Run clock
void displayTime(void);     // Display time from Clock
void setHoursStart(void);   // Set START hours
void setHoursEnd(void);     // Set END hours
void setMinutesStart(void); // Set START minutes
void setMinutesEnd(void);   // Set END minutes
void checkTime(void);       // Check time

void runClock(void)
{
    minutes++;
    if (minutes >= 60)
    {
        minutes = 0;
        hours++;
        if (hours >= 24)
        {
            hours = 0;
        }
    }
    __delay_ms(50);
}

void displayTime(void)
{
    char timeFormat[10];
    sprintf(timeFormat, "Time: %02d:%02d", hours, minutes);
    printToLCD(timeFormat);
}

void setHoursStart(void)
{
    static char debugInfo[10];
    static unsigned char lastKeyState = 0xFF;

    unsigned char keyValid = (PORTB & 0x08) >> 3;
    unsigned char key = (PORTB & 0xF0) >> 4;

    __delay_ms(50); // Debounce delay.

    if (keyValid && key != lastKeyState)
    {
        if (key == 0b00001100) // Increment
        {
            savedHoursStart = (savedHoursStart + 1) % 24;
            sprintf(debugInfo, "INC: %02d", savedHoursStart);
        }
        else if (key == 0b00001110) // Decrement
        {
            savedHoursStart = (savedHoursStart - 1 + 24) % 24;
            sprintf(debugInfo, "DEC: %02d", savedHoursStart);
        }
        else if (key == 0b00001101) // Set/Save
        {
            sprintf(debugInfo, "SET: %02d", savedHoursStart);
            savedHoursEnd = savedHoursStart + 2;
        }

        printToLCD(debugInfo);
        lastKeyState = key;

        while ((PORTB & 0x08) != 0)
        {
            __delay_ms(10);
        }
    }
    else if (!keyValid)
    {
        lastKeyState = 0xFF;
    }
}

void setMinutesStart(void)
{
    static char debugInfo[10];
    static unsigned char lastKeyState = 0xFF;

    unsigned char keyValid = (PORTB & 0x08) >> 3;
    unsigned char key = (PORTB & 0xF0) >> 4;

    __delay_ms(50); // Debounce delay.

    if (keyValid && key != lastKeyState)
    {
        if (key == 0b00001100) // Increment by 5
        {
            savedMinutesStart = (savedMinutesStart + 5) % 60;
            sprintf(debugInfo, "INC: %02d", savedMinutesStart);
        }
        else if (key == 0b00001110) // Decrement by 5
        {
            savedMinutesStart = (savedMinutesStart - 5 + 60) % 60;
            sprintf(debugInfo, "DEC: %02d", savedMinutesStart);
        }
        else if (key == 0b00001101) // Set/Save
        {
            sprintf(debugInfo, "SET: %02d", savedMinutesStart);
        }

        printToLCD(debugInfo);
        lastKeyState = key;

        while ((PORTB & 0x08) != 0)
        {
            __delay_ms(10);
        }
    }
    else if (!keyValid)
    {
        lastKeyState = 0xFF;
    }
}

void checkTime(void)
{
    if (hours == savedHoursEnd && minutes == savedMinutesEnd)
    {
        RC4 = 1; // Still on at the exact end time minute
    }
    else if (savedHoursEnd > savedHoursStart)
    {
        // Normal day range, not spanning midnight
        if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) &&
            (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
        {
            RC4 = 1; // Turn the device on
        }
        else
        {
            RC4 = 0; // Turn the device off
        }
    }
    else if (savedHoursEnd < savedHoursStart)
    {
        // Spanning midnight
        if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) ||
            (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
        {
            RC4 = 1; // Turn the device on
        }
        else
        {
            RC4 = 0; // Turn the device off
        }
    }
    else
    { // savedHoursEnd == savedHoursStart, check only minutes
        if (minutes >= savedMinutesStart && minutes < savedMinutesEnd)
        {
            RC4 = 1; // Turn the device on
        }
        else
        {
            RC4 = 0; // Turn the device off
        }
    }
}

#endif // TIME_SCHEDULER_H