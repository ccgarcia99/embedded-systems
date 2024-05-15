#include "common_dependencies.h"
#include "lcd_functions.h"  // Include the LCD library
#include "dht11_module.h"   // Include the DHT11 library
#include "mq135_module.h"   // Include the MQ135 library
#include "time_scheduler.h" // Include the time scheduler library

// Global variables
typedef enum
{
    STAT = 0,
    SETC = 1
} MODE;

MODE mode = STAT;
// Function prototypes
void interrupt ISR(void);

void main(void)
{
    TRISA = 0xFF; // Set PORTA as input
    TRISB = 0xFF; // Set PORTB as input
    //TRISB3 = 0;    // Set RB3 as output
    TRISC = 0x00; // Set PORTC as output
    TRISD = 0x00; // Set PORTD as output
    PORTC = 0x00; // Clear PORTC

    // Initialize ADC
    ADCON1 = 0x80; // Set AN0 as analog input
    ADCON0 = 0x01; // ADCON0 = 0b00000001

    // External interrupt initialization
    INTE = 1;   // Enable external interrupt
    INTF = 0;   // Clear external interrupt flag
    INTEDG = 1; // Falling edge
    GIE = 1;    // Enable global interrupt
    PEIE = 1;   // Enable peripheral interrupt

    // Initialize LCD
    initLCD();
    __delay_ms(500);
    instCTRL(0x80);
    instCTRL(0x0C);
    printToLCD("Initializing...");
    // Initialize DHT11
    initDHT11();
    __delay_ms(2000);
    instCTRL(0x01);
    // instCTRL(0x80);
    while (1)
    {

        GIE = 0;
        PEIE = 0;
        runDHT11();
        GIE = 1;
        PEIE = 1;
        runMQ135();
        runClock();
        switch (mode)
        {
        case STAT:
            instCTRL(0x80);
            displayDataDHT11(temperature, humidity);
            instCTRL(0xC0);
            displayTime();
            break;
        case SETC:
            instCTRL(0x01);
            instCTRL(0x80);
            displayPPM();
            __delay_ms(500);
            break;
        default:
            break;
        }
    }
}

void interrupt ISR(void)
{
    GIE = 0;
    if (INTF)
    {
        INTF = 0;
        mode = (mode + 1) % 2;
    }
    GIE = 1;
}
