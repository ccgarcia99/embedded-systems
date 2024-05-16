#ifndef MQ135_MODULE_H
#define MQ135_MODULE_H

#include "common_dependencies.h" // use ADC functions
#include "lcd_functions.h"

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

volatile float PPM = 0.0;

void displayPPM();                 // Display PPM
bool handlePPM();                  // Handle PPM
void printStatusPPM(bool handler); // Print status of PPM
void runMQ135();                   // Run MQ135
// inline int Read_ADC_MQ135(char channel); // Read ADC
float CalcMQ135(int RAW_ADC); // Calculate MQ135

bool ppmFlag = 0;

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

/*inline int Read_ADC_MQ135(char channel)
{   // Read ADC function is already in common_dependencies.hF
    ADCON0 &= 0xC3;
    ADCON0 |= (channel << 3);
    __delay_us(20);
    GO_DONE = 1;
    while (GO_DONE)
        ;
    return ((ADRESH << 8) + ADRESL);
}*/

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

#endif // MQ135_MODULE_H