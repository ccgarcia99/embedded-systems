#include "common_dependencies.h"
#include "mq135_module.h"
#include "lcd_functions.h"
#include <stdint.h>

typedef enum
{
    DISP_CMN = 0, // Show status(PPM, T, H, Time)
    SET_ACTV = 1  // Set active hours for the device peripherals
} MODE;

MODE mode = DISP_CMN;
MODE lastMode = -1;
volatile unsigned char select = 0;
volatile uint8_t hours = 8;
volatile uint8_t minutes = 0;
volatile uint8_t savedHoursStart = 9;
volatile uint8_t savedMinutesStart = 0;
volatile uint8_t savedHoursEnd = 10;
volatile uint8_t savedMinutesEnd = 30;
int ppmHandler = 0;

// Function prototypes
void startUpLCD(void);        // Start up sequence for LCD
void setPortDirections(void); // Set port directions
void initADC(void);           // Initialize ADC
void initInterrupt(void);     // Initialize Interrupt
void interrupt ISR(void);     // Interrupt Service Routine
void checkMode(void);         // Check mode
void checkSelect(void);       // Check select
void updateState(void);       // Update state
void runClock(void);          // Run clock
void displayTime(void);       // Display time from Clock
void setHours(void);          // Set hours
void setMinutes(void);        // Set minutes

void main(void)
{
    setPortDirections(); // Set port directions
    initADC();           // Initialize ADC
    initInterrupt();     // Initialize Interrupt
    startUpLCD();        // Start up LCD
    __delay_ms(250);
    while (1)
    {
        runClock();                        // Run clock
        PPM = CalcMQ135(Read_ADC_MQ135()); // Calculate PPM
        ppmHandler = handlePPM();          // Handle PPM
        checkSelect();                     // Check select
        checkMode();                       // Check mode
        updateState();                     // Update state
        if (hours >= savedHoursStart && hours <= savedHoursEnd)
        {
            RC4 = 1; // Turn the device on
        }
        else
        {
            RC4 = 0; // Turn the device off
        }
    }
}

// PIC16F877A Function Definitions START
void setPortDirections(void)
{
    TRISA = 0xFF; // Set PORTA as input
    TRISB = 0xFF; // Set RB0, RB1 as input (RB0 - MODE; RB1 - SELECT, RB3 - DAVBL)
    TRISC = 0x00; // Set PORTC as output
    TRISD = 0x00; // Set PORTD as output
    PORTA = 0x00; // Clear PORTA initially
    PORTB = 0x00; // Clear PORTB initially
    PORTC = 0x00; // Clear PORTC initially
    PORTD = 0x00; // Clear PORTD initially
}

void initADC(void)
{
    ADCON1 = 0x80; // Set A/D converter to operate in 10-bit mode
    ADCON0 = 0x01; // Select channel 0 and turn on ADC
}

void startUpLCD(void)
{
    initLCD();          // Initialize LCD
    instCTRL(0x80);     // Set cursor to first line
    printToLCD("TEST"); // Print to LCD
}

void initInterrupt(void)
{
    GIE = 1;
    INTE = 1;
    INTF = 0;
    INTEDG = 0;
}

void interrupt ISR(void)
{
    GIE = 0; // Disable global interrupt
    if (INTF == 1)
    {
        INTF = 0;              // Clear interrupt flag
        mode = (mode + 1) % 2; // Change mode
    }
    instCTRL(0x01); // Clear display only on mode change
    GIE = 1;        // Enable global interrupt
}

// Update state based on mode and select
void updateState(void)
{
    char buffer[10]; // Buffer to store the string to be displayed for debug purposes
    switch (mode)
    {
    case DISP_CMN:
        instCTRL(0x80);
        printToLCD("MODE: ");
        switch (select)
        {
        case 0:
            printToLCD("DISP CMMON PG1");
            instCTRL(0xC0);
            displayPPM(ppmHandler);
            // displayTime();
            break;
        case 1:
            printToLCD("DISP CMMON PG2");
            instCTRL(0xC0);
            displayTime();
            break;
        }
        break;
    case SET_ACTV:
        instCTRL(0x80);
        printToLCD("MODE: SET ACTV HRS");
        switch (select)
        {
        case 0:
            instCTRL(0xC0);
            printToLCD("SET HOURS");
            instCTRL(0x94);
            setHours();
            break;
        case 1:
            instCTRL(0xC0);
            printToLCD("SET MINUTES");
            instCTRL(0x94);
            setMinutes();
            break;
        }
        break;
    default:
        break;
    }
}

void checkMode(void)
{
    if (lastMode != mode)
    {
        // Clear display only if the mode actually changes
        instCTRL(0x01);
        __delay_ms(50);
        lastMode = mode;
    }
}

void checkSelect(void)
{
    static int lastRB1State = 0;
    int currentRB1State = RB1;
    if (currentRB1State == 1 && lastRB1State == 0)
    {
        select ^= 1;
        // Clear display only if select actually changes
        instCTRL(0x01);
    }
    lastRB1State = currentRB1State;
}

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

void setHours(void)
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

void setMinutes(void)
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

// PIC16F877A Function Definitions END