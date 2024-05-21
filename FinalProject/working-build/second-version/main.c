#include "common_dependencies.h"
#include "lcd_functions.h"  // Include the LCD library
#include "dht11_module.h"   // Include the DHT11 library
#include "mq135_module.h"   // Include the MQ135 library
#include "time_scheduler.h" // Include the time scheduler library

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

// Function prototypes
void interrupt ISR(void);
void initPorts(void);
void initRegisters(void);
void initInterrupts(void);
void startUpSequence(void);
void checkMode(void);
void checkSEL(void);
void updateState(void);

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
        if(mode == STAT)
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

// PIC16F877A function definitions START
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

// PIC16F877A function definitions END