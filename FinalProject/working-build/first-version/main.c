#include "common_dependencies.h"
#include "mq135_module.h"
#include "lcd_functions.h"
#include "time_scheduler.h"
#include "temp_module.h"
#include "dht11_module.h"
typedef enum
{
    DISP_CMN = 0,       // Show status(PPM, T, H, Time)
    SET_ACTV_START = 1, // Set active hours for the device peripherals
    SET_ACTV_END = 2,   // Set active hours for the device peripherals
    CHCK_IO = 3         // Check IO status
} MODE;

MODE mode = DISP_CMN;
MODE lastMode = -1;
volatile unsigned char select = 0;

// Function prototypes
void startUpLCD(void);        // Start up sequence for LCD
void setPortDirections(void); // Set port directions
void initADC(void);           // Initialize ADC
void initInterrupt(void);     // Initialize Interrupt
void interrupt ISR(void);     // Interrupt Service Routine
void checkMode(void);         // Check mode
void checkSelect(void);       // Check select
void updateState(void);       // Update state

void main(void)
{
    setPortDirections(); // Set port directions
    initADC();           // Initialize ADC
    initInterrupt();     // Initialize Interrupt
    startUpLCD();        // Start up LCD
    __delay_ms(250);
    instCTRL(0x80); // Clear display
    while (1)
    {
        runClock();                // Run clock
        checkTime();               // Check time
        runMQ135();                // Run MQ135
        handlePPM();               // Handle PPM
        calculateTemp(readADC(1)); // Calculate temperature
        handleTemp();              // Handle temperature
        //runDHT11Stat();           // Run DHT11
        checkSelect();             // Check select
        checkMode();               // Check mode
        updateState();             // Update state
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
    initLCD();            // Initialize LCD
    instCTRL(0x80);       // Set cursor to first line
    printToLCD("PWR ON"); // Print to LCD
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
        mode = (mode + 1) % 4; // Change mode - change the value of the operand to the number of modes
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
            displayTime();
            instCTRL(0x94);
            sprintf(buffer, "STRT: %2d:%2d", savedHoursStart, savedMinutesStart);
            printToLCD(buffer);
            instCTRL(0xD4);
            sprintf(buffer, "END: %2d:%2d", savedHoursEnd, savedMinutesEnd);
            printToLCD(buffer);
            break;
        case 1:
            printToLCD("DISP CMMON PG2");
            instCTRL(0xC0);
            displayPPM();
            instCTRL(0x94);
            // displayTemp();
            // displayHumidity();
            displayDHT11Stat();
            break;
        }
        break;
    case SET_ACTV_START: // Set START active hours for the device peripherals
        instCTRL(0x80);
        printToLCD("SET HRS - START");
        switch (select)
        {
        case 0:
            instCTRL(0xC0);
            printToLCD("SET HOURS");
            instCTRL(0x94);
            setHoursStart();
            break;
        case 1:
            instCTRL(0xC0);
            printToLCD("SET MINUTES");
            instCTRL(0x94);
            setMinutesStart();
            break;
        }
        break;
    case SET_ACTV_END: // Set END active hours for the device peripherals
        instCTRL(0x80);
        printToLCD("SET HRS - END");
        switch (select)
        {
        case 0:
            instCTRL(0xC0);
            printToLCD("SET HOURS");
            instCTRL(0x94);
            setHoursEnd();
            break;
        case 1:
            instCTRL(0xC0);
            printToLCD("SET MINUTES");
            instCTRL(0x94);
            setMinutesEnd();
            break;
        }
        break;
    case CHCK_IO: // Check IO status
        instCTRL(0x80);
        printToLCD("IO STATUS:");
        instCTRL(0xC0);
        printStatusTMP(tempFlag);
        instCTRL(0x94);
        printStatusPPM(ppmFlag);
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

// PIC16F877A Function Definitions END