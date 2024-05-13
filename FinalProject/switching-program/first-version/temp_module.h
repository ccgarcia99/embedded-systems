#ifndef TEMP_MODULE_H
#define TEMP_MODULE_H

#include "common_dependencies.h"
#include "lcd_functions.h"

#define TEMP_THRESHOLD 32
#define TEMP_DEVICE_EN RC5

void calculateTemp(uint16_t adcValue);
void displayTemp();
bool handleTemp();
void printStatusTMP(bool handler);

bool tempFlag = 0;

int tempBuffer = 0;

void calculateTemp(uint16_t adcValue)
{
    tempBuffer = (adcValue * 500) / 1023;
}

void displayTemp()
{
    char buffer[20];
    sprintf(buffer, "Temp: %d C", tempBuffer);
    printToLCD(buffer);
}

bool handleTemp()
{
    if (tempBuffer > TEMP_THRESHOLD)
    {
        TEMP_DEVICE_EN = 1;
        tempFlag = true;
        return true;
    }
    else
    {
        TEMP_DEVICE_EN = 0;
        tempFlag = false;
        return false;
    }
}

void printStatusTMP(bool handler)
{
    if (handler == true)
    {
        printToLCD("VENT ON ");
    }
    else if (handler == false)
    {
        printToLCD("FAN OFF");
    }
}

#endif