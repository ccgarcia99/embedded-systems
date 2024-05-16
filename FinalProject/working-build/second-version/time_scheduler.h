#ifndef TIME_SCHEDULER_H
#define TIME_SCHEDULER_H

#include "common_dependencies.h"

// KEY MASKS
#define INCREMENT 0b00001100
#define DECREMENT 0b00001110
#define SET 0b00001101
#define ENABLE_FAN PORTCbits.RC4

// Global variables
volatile uint8_t hours = 4;
volatile uint8_t minutes = 0;
volatile uint8_t savedHoursStart = 9;
volatile uint8_t savedMinutesStart = 30;
volatile uint8_t savedHoursEnd = 10;
volatile uint8_t savedMinutesEnd = 30;

static char debugInfo[10];
static unsigned char lastKeyState = 0xFF;
unsigned char keyValid;
unsigned char key;

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
    __delay_ms(100);
}

void displayTime(void)
{
    char timeFormat[16];
    sprintf(timeFormat, "Time: %02d:%02d", hours, minutes);
    printToLCD(timeFormat);
}
void setHoursStart(void)
{
    keyValid = (PORTB & 0x08) >> 3;
    key = (PORTB & 0xF0) >> 4;

    __delay_ms(50); // Debounce delay.

    if (keyValid && key != lastKeyState)
    {
        if (key == INCREMENT) // Increment
        {
            savedHoursStart = (savedHoursStart + 1) % 24;
            sprintf(debugInfo, "INC: %02d", savedHoursStart);
        }
        else if (key == DECREMENT) // Decrement
        {
            savedHoursStart = (savedHoursStart - 1 + 24) % 24;
            sprintf(debugInfo, "DEC: %02d", savedHoursStart);
        }
        else if (key == SET) // Set/Save
        {
            sprintf(debugInfo, "SET: %02d", savedHoursStart);
            // savedHoursEnd = savedHoursStart + 2;
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

void setHoursEnd(void)
{
    keyValid = (PORTB & 0x08) >> 3;
    key = (PORTB & 0xF0) >> 4;

    __delay_ms(50); // Debounce delay.

    if (keyValid && key != lastKeyState)
    {
        if (key == INCREMENT) // Increment
        {
            savedHoursEnd = (savedHoursEnd + 1) % 24;
            sprintf(debugInfo, "INC: %02d", savedHoursEnd);
        }
        else if (key == DECREMENT) // Decrement
        {
            savedHoursEnd = (savedHoursEnd - 1 + 24) % 24;
            sprintf(debugInfo, "DEC: %02d", savedHoursEnd);
        }
        else if (key == SET) // Set/Save
        {
            sprintf(debugInfo, "SET: %02d", savedHoursEnd);
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
    keyValid = (PORTB & 0x08) >> 3;
    key = (PORTB & 0xF0) >> 4;

    __delay_ms(50); // Debounce delay.

    if (keyValid && key != lastKeyState)
    {
        if (key == INCREMENT) // Increment by 5
        {
            savedMinutesStart = (savedMinutesStart + 5) % 60;
            sprintf(debugInfo, "INC: %02d", savedMinutesStart);
        }
        else if (key == DECREMENT) // Decrement by 5
        {
            savedMinutesStart = (savedMinutesStart - 5 + 60) % 60;
            sprintf(debugInfo, "DEC: %02d", savedMinutesStart);
        }
        else if (key == SET) // Set/Save
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

void setMinutesEnd(void)
{
    keyValid = (PORTB & 0x08) >> 3;
    key = (PORTB & 0xF0) >> 4;

    __delay_ms(50); // Debounce delay.

    if (keyValid && key != lastKeyState)
    {
        if (key == INCREMENT) // Increment by 5
        {
            savedMinutesEnd = (savedMinutesEnd + 5) % 60;
            sprintf(debugInfo, "INC: %02d", savedMinutesEnd);
        }
        else if (key == DECREMENT) // Decrement by 5
        {
            savedMinutesEnd = (savedMinutesEnd - 5 + 60) % 60;
            sprintf(debugInfo, "DEC: %02d", savedMinutesEnd);
        }
        else if (key == SET) // Set/Save
        {
            sprintf(debugInfo, "SET: %02d", savedMinutesEnd);
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
        ENABLE_FAN = 1; // Still on at the exact end time minute
    }
    else if (savedHoursEnd > savedHoursStart)
    {
        // Normal day range, not spanning midnight
        if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) &&
            (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
        {
            ENABLE_FAN = 0; // Turn the device on
        }
        else
        {
            ENABLE_FAN = 1; // Turn the device off
        }
    }
    else if (savedHoursEnd < savedHoursStart)
    {
        // Spanning midnight
        if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) ||
            (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
        {
            ENABLE_FAN = 0; // Turn the device on
        }
        else
        {
            ENABLE_FAN = 1; // Turn the device off
        }
    }
    else
    { // savedHoursEnd == savedHoursStart, check only minutes
        if (minutes >= savedMinutesStart && minutes < savedMinutesEnd)
        {
            ENABLE_FAN = 0; // Turn the device on
        }
        else
        {
            ENABLE_FAN = 1; // Turn the device off
        }
    }
}

#endif // TIME_SCHEDULER_H