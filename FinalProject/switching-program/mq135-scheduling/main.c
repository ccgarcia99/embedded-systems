#include "definitions.h"
// Global variables
typedef enum
{
    DISP_CMN = 0,
    SET_ACTV = 1
} MODE;
volatile MODE mode = DISP_CMN;
volatile MODE lastMode = -1;                 // To track mode changes
int ACTV_HOURS = 0, DEF_HOURS = 8;  // Active hours, default hours
int ACTV_MINS = 0, DEF_MINUTES = 0; // Active mins, default minutes

void main(void)
{
    TRISA = 0xFF;            // Set PORTA as input
    TRISB = 0x03;            // Set RB0, RB1 as input
    TRISC = 0x00;            // Set PORTC as output
    TRISD = 0x00;            // Set PORTD as output
    OPTION_REG = 0b11000000; // Configure OPTION_REG settings if needed

    initADC();
    initLCD();
    initInterrupt();
    __delay_ms(250);
    while (1)
    {   
        checkMode();
        runTime();
        updateDisplay();
    }
}

// PIC16F877A specific functions START
void initADC()
{
    ADCON1 = 0x80; // Set A/D converter to operate in 10-bit mode
    ADCON0 = 0x01; // Select channel 0 and turn on ADC
}

void initInterrupt()
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
        INTF = 0; // Clear interrupt flag
        mode = (mode + 1) % 3; // Change mode
    }
    GIE = 1; // Enable global interrupt
}

void updateDisplay(void)
{
    __delay_ms(50);
    instCTRL(0x80);
    instCTRL(0x0C);
    if (mode == DISP_CMN)
    {
        printToLCD("MODE: DISP STATS");
        instCTRL(0xC0);
        //displayRawADC();
        displayPPM();
        instCTRL(0x94);
        displayTime();
    }
    else if (mode == SET_ACTV)
    {
        printToLCD("MODE: SET ACTIVE HRS");
        instCTRL(0xC0);
        displayPPM();
    }
    __delay_ms(500);
}

void checkMode(void)
{
    if (lastMode != mode)
    {
        instCTRL(0x01); // Clear display only on mode change
        __delay_ms(50);
        instCTRL(0x80);
        lastMode = mode;
    }
}

// Debug function to display raw ADC reading
void displayRawADC()
{
    int rawADC = Read_ADC_MQ135();
    char buffer[30];
    sprintf(buffer, "ADC: %d   ", rawADC);
    printToLCD(buffer);
}

// PIC16F877A specific functions END

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
// LCD functions END

// MQ135 sensor functions START
inline int Read_ADC_MQ135()
{
    __delay_ms(100);
    GO_DONE = 1;
    while (GO_DONE);
    return ((ADRESH << 8) + ADRESL);
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

void displayPPM()
{
    char strBuffer[50];
    float PPM = CalcMQ135(Read_ADC_MQ135());
    int ppmWhole = (int)PPM;                         // Extract the whole part of the PPM value
    int ppmFraction = (int)((PPM - ppmWhole) * 100); // Extract fractional part

    // Build the string manually
    char *bufPtr = strBuffer;
    bufPtr += sprintf(bufPtr, "CO2: ");        // Use sprintf to start the string for simplicity
    bufPtr += sprintf(bufPtr, "%d", ppmWhole); // Add the whole part
    *bufPtr++ = '.';                           // Manually place decimal point
    if (ppmFraction < 10)
        *bufPtr++ = '0';                      // Add leading zero if necessary
    sprintf(bufPtr, "%d ppm  ", ppmFraction); // Add the fractional part and units

    printToLCD(strBuffer);
}

// MQ135 sensor functions END

// Scheduler functions START
void setDefaultHours()
{
    if (ACTV_HOURS == 0)
    {
        ACTV_HOURS = DEF_HOURS;
    }
}

void setDefaultMinutes()
{
    if (ACTV_MINS == 0)
    {
        ACTV_MINS = DEF_MINUTES;
    }
}
// Scheduler functions END

// Display time functions START
void displayTime(void)
{
    char time[20];
    sprintf(time, "Time: %02d:%02d    ", DEF_HOURS, DEF_MINUTES);
    printToLCD(time);
}

void runTime()
{
    DEF_MINUTES++;
    if (DEF_MINUTES >= 60)
    {
        DEF_MINUTES = 0;
        DEF_HOURS++;
        if (DEF_HOURS >= 24)
        {
            DEF_HOURS = 0;
        }
        __delay_ms(50);
    }
}
// Display time functions END