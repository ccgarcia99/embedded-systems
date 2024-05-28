/*====================================================
CPE 3202 Group 1- Computer Architecture and Organization
CO3 - Design Project - MCU-based Smart Air Quality Detection and Cooling System
Team 2: Christian Clyde G. Decierdo - TEAM LEAD/HARDWARE LEAD
        Melly Andrew D. Borja - RESEARCH LEAD
        Denzel Y. Dadang - SOFTWARE LEAD
        Clyde G. Guerrero - DOCUMENTATION LEAD
DESC: Source code for the MCU-based Smart Air Quality Detection and Cooling System.
      Created originally for the accompishment of CPE3201 - Embedded System's Design Project final
      requirement and CPE3202 - Computer Organization and Architecture's CO3 Design Project
      final requirement
=====================================================*/
// Libraries
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
// LCD pins
#define RS RC0
#define RW RC1
#define EN RC2
#define LCD_PORT PORTD
// MQ135 calibration constants & pins
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
#define PPM_THRESHOLD 9
#define AIRPURIFIER_EN PORTCbits.RC5 // Relay is active LOW
// DHT11 pins
#define DHT11_PIN PORTBbits.RB2
#define DHT11_PIN_TRIS TRISBbits.TRISB2
#define HUMIDIFIER_EN PORTCbits.RC3 // Relay is active LOW
// Time scheduler definitions
#define INCREMENT 0b00000010
#define DECREMENT 0b00000000
#define SET 0b00001101 // redundant
#define ENABLE_FAN PORTCbits.RC4

// Function prototypes
inline int readADC(char channel);
void interrupt ISR(void);
void initPorts(void);
void initRegisters(void);
void initInterrupts(void);
void startUpSequence(void);
void checkMode(void);
void checkSEL(void);
void updateState(void);
// LCD functions
void instCTRL(unsigned char CMD);                        // Instruction Control
void dataCTRL(unsigned char DAT);                        // Data Control
void initLCD();                                          // Initialize LCD
void printToLCD(const unsigned char *str);               // Print to LCD
void setCursor(unsigned char row, unsigned char column); // Set cursor position
// MQ135 functions
void displayPPM();                 // Display PPM
bool handlePPM();                  // Handle PPM
void printStatusPPM(bool handler); // Print status of PPM
void runMQ135();                   // Run MQ135
float CalcMQ135(int RAW_ADC);      // Calculate MQ135
// DHT11 functions
void initDHT11();
void initPORTS();
void startUP();
void runDHT11();
uint8_t readDHT11(uint8_t *temperature, uint8_t *humidity);
void displayDataDHT11();
void activateHumidifier();
// Time scheduler functions
void runClock(void);        // Run clock
void displayTime(void);     // Display time from Clock
void setHoursStart(void);   // Set START hours
void setHoursEnd(void);     // Set END hours
void setMinutesStart(void); // Set START minutes
void setMinutesEnd(void);   // Set END minutes
void checkTime(void);       // Check time

// Global variables
typedef enum
{
    STAT = 0,
    SET_TIME_START = 1,
    SET_TIME_END = 2,
} MODE;

MODE mode = STAT;
MODE lastMode = -1;
volatile unsigned char SEL = 0;
// MQ135 variables
volatile float PPM = 0.0;
bool ppmFlag = 0;
// DHT11 variables
uint8_t temperature = 0;
uint8_t humidity = 0;
// Time scheduler variables
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

void main(void)
{
    char buffer[16]; // Buffer for printing to LCD
    // Initialize ports
    initPorts();
    // Initialize ADC
    initRegisters();
    // External interrupt initialization
    initInterrupts();
    // Startup sequence
    startUpSequence();
    while (1)
    {
        // Temporarily disable interrupts to prevent conflicts
        GIE = 0;
        PEIE = 0;
        if (mode == STAT)
        {
            runDHT11();
        }
        GIE = 1;
        PEIE = 1;
        runMQ135();
        runClock();

        checkMode();
        checkSEL();
        checkTime();
        handlePPM();
        activateHumidifier();

        switch (mode)
        {
        case STAT:
            displayDataDHT11();
            instCTRL(0xC0); // Set cursor to second line
            displayPPM();
            instCTRL(0x94);
            displayTime();
            instCTRL(0xD4);
            sprintf(buffer, "RUN: %02d:%02d-%02d:%02d", savedHoursStart, savedMinutesStart, savedHoursEnd, savedMinutesEnd);
            printToLCD(buffer);
            break;
        case SET_TIME_START:
            setCursor(0, 0);
            printToLCD("Set SCHED - START");
            setCursor(1, 0);
            switch (SEL)
            {
            case 0:
                printToLCD("START HOURS");
                setCursor(3, 0);
                sprintf(buffer, "START: %02d:%02d", savedHoursStart, savedMinutesStart);
                printToLCD(buffer);
                setCursor(2, 0);
                setHoursStart();
                break;
            case 1:
                printToLCD("START MINS");
                setCursor(3, 0);
                sprintf(buffer, "START: %02d:%02d", savedHoursStart, savedMinutesStart);
                printToLCD(buffer);
                setCursor(2, 0);
                setMinutesStart();
                break;
            default:
                break;
            }
            break;
        case SET_TIME_END:
            setCursor(0, 0);
            printToLCD("Set SCHED - END");
            setCursor(1, 0);
            switch (SEL)
            {
            case 0:
                printToLCD("END HOURS");
                setCursor(3, 0);
                sprintf(buffer, "END: %02d:%02d", savedHoursEnd, savedMinutesEnd);
                printToLCD(buffer);
                setCursor(2, 0);
                setHoursEnd();
                break;
            case 1:
                printToLCD("END MINS");
                setCursor(3, 0);
                sprintf(buffer, "END: %02d:%02d", savedHoursEnd, savedMinutesEnd);
                printToLCD(buffer);
                setCursor(2, 0);
                setMinutesEnd();
                break;
            default:
                break;
            }
            break;
        default:
            break;
        }
    }
}

void interrupt ISR(void)
{
    if (INTF)
    {
        INTF = 0;
        mode = (mode + 1) % 3;
        SEL = 0;
        __delay_ms(200);
    }
}

void initPorts(void)
{
    TRISA = 0xFF;       // Set PORTA as input
    TRISB = 0xFF;       // Set PORTB as input
    TRISC = 0x00;       // Set PORTC as output
    PORTC = 0b00111000; // Set PORTC to 0x38
    TRISD = 0x00;       // Set PORTD as output
}

void initRegisters(void)
{
    // Initialize ADC
    ADCON1 = 0x80; // Set AN0 as analog input
    ADCON0 = 0x01; // ADCON0 = 0b00000001
}

void initInterrupts(void)
{
    INTE = 1;   // Enable external interrupt
    INTF = 0;   // Clear external interrupt flag
    INTEDG = 1; // Rising edge
    GIE = 1;    // Enable global interrupt
    PEIE = 1;   // Enable peripheral interrupt
}

void startUpSequence(void)
{
    // Initialize LCD
    initLCD();
    __delay_ms(500);
    setCursor(0, 0);
    printToLCD("Initializing...");
    // Initialize DHT11
    initDHT11();
    __delay_ms(2000);
    instCTRL(0x01); // Clear display
}

void checkMode(void)
{
    if (lastMode != mode)
    {
        instCTRL(0x01); // Clear display
        __delay_ms(50);
        lastMode = mode;
    }
}

void checkSEL(void)
{
    static int lastRB1State = 0;
    int currentRB1State = RB1;
    if (currentRB1State == 1 && lastRB1State == 0)
    {
        SEL ^= 1;
        instCTRL(0x01); // Clear display
    }
    lastRB1State = currentRB1State;
}

inline int readADC(char channel)
{
    ADCON0 &= 0xC3;
    ADCON0 |= (channel << 3);
    __delay_us(20);
    GO_DONE = 1;
    while (GO_DONE)
        ;
    return ((ADRESH << 8) + ADRESL);
}

// PIC16F877A function definitions END

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

// MQ135 functions START
void runMQ135()
{
    PPM = CalcMQ135(readADC(0)); // Read ADC value from MQ135
}

void displayPPM()
{
    char strBuffer[20];
    int ppmWhole = (int)PPM;                         // Extract the whole part of the PPM value
    int ppmFraction = (int)((PPM - ppmWhole) * 100); // Extract fractional part

    // Build the string manually to reduce program space allocation
    char *bufPtr = strBuffer;
    bufPtr += sprintf(bufPtr, "CO2: ");        // Use sprintf to start the string for simplicity
    bufPtr += sprintf(bufPtr, "%d", ppmWhole); // Add the whole part
    *bufPtr++ = '.';                           // Manually place decimal point
    if (ppmFraction < 10)
        *bufPtr++ = '0';                      // Add leading zero if necessary
    sprintf(bufPtr, "%d ppm  ", ppmFraction); // Add the fractional part and units
    printToLCD(strBuffer);
}

bool handlePPM()
{ // Relay is active LOW
    if (PPM > PPM_THRESHOLD)
    {
        AIRPURIFIER_EN = 0; // Turn on the air purifier
        ppmFlag = true;
        return true;
    }
    else
    {
        AIRPURIFIER_EN = 1; // Turn off the air purifier
        ppmFlag = false;
        return false;
    }
}

void printStatusPPM(bool handler)
{
    if (handler == true)
    {
        printToLCD("PURF HI"); // Status: Purifier ON
    }
    else if (handler == false)
    {
        printToLCD("PURF LO"); // Status: Purifier OFF
    }
}

float CalcMQ135(int RAW_ADC)
{
    float voltage = (RAW_ADC * 5.0) / 1023.0; // Convert ADC reading to voltage
    float ratio = voltage / 5.0;

    // Replacing pow() with manual multiplication
    float ratio2 = ratio * ratio;
    float ratio3 = ratio2 * ratio;
    float ratio4 = ratio3 * ratio;
    float ratio5 = ratio4 * ratio;
    float ratio6 = ratio5 * ratio;

    // Compute CO2 concentration using simplified polynomial
    float co2 = CORA + (CORB * ratio) + (CORC * ratio2) + (CORD * ratio3) +
                (CORE * ratio4) + (CORF * ratio5) + (CORG * ratio6);

    co2 *= ATMOCO2; // Adjust based on atmospheric CO2 level
    return co2;
}
// MQ135 functions END

// DHT11 functions START
void initDHT11()
{
    DHT11_PIN_TRIS = 0; // Set RB2 as output
    DHT11_PIN = 1;      // Set RB2 high
}

uint8_t readDHT11(uint8_t *temperature, uint8_t *humidity)
{
    uint8_t bits[5] = {0};
    uint8_t i, j;

    // Send start signal
    DHT11_PIN_TRIS = 0; // Set RB2 as output
    DHT11_PIN = 0;      // Set RB2 low
    __delay_ms(18);
    DHT11_PIN = 1; // Set RB2 high
    __delay_us(20);
    DHT11_PIN_TRIS = 1; // Set RB2 as input

    // Wait for response
    __delay_us(40);
    if (DHT11_PIN)
        return 0;
    __delay_us(80);
    if (!DHT11_PIN)
        return 0;
    __delay_us(80);

    // Read data
    for (j = 0; j < 5; j++)
    {
        for (i = 0; i < 8; i++)
        {
            while (!DHT11_PIN)
                ; // Wait for the pin to go high
            __delay_us(30);
            if (DHT11_PIN)
            {
                bits[j] |= (1 << (7 - i));
                while (DHT11_PIN)
                    ; // Wait for the pin to go low
            }
        }
    }

    // Checksum
    if (bits[4] != (bits[0] + bits[1] + bits[2] + bits[3]))
        return 0;

    *humidity = bits[0];
    *temperature = bits[2];

    return 1;
}

void displayDataDHT11()
{
    char buffer[15];
    __delay_ms(2);

    instCTRL(0x80); // Move to first line
    sprintf(buffer, "TMP: %dC HMDT: %d", temperature, humidity);
    printToLCD(buffer);
}

void runDHT11()
{
    if (readDHT11(&temperature, &humidity))
    {
        displayDataDHT11();
    }
    else
    {
        setCursor(0, 0); // Move to first line
        printToLCD("ERROR!");
    }
    __delay_ms(500); // Wait for 500 milliseconds before the next read
}

void activateHumidifier()
{
    if (humidity > 50 || temperature > 25)
    {
        HUMIDIFIER_EN = 0; // Turn on the humidifier
    }
    else
    {
        HUMIDIFIER_EN = 1; // Turn off the humidifier
    }
}
// DHT11 functions END

// Time scheduler functions START
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
// Time scheduler functions END