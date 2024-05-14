#ifndef DHT11_MODULE_H
#define DHT11_MODULE_H

#include "common_dependencies.h"
#include "lcd_functions.h"

#define DHT11_PIN RB2        // Pin connection for DHT11
#define DHT11_PIN_DIR TRISB2 // Pin direction for DHT11

// DHT11 functions
short checkResponse();
void startSignal();
uint8_t readData();

void runDHT11Stat();
void displayDHT11();

// Global variables
unsigned char checkbit;
uint8_t T_byte1, T_byte2, RH_byte1, RH_byte2, CheckSum;
char message1[] = "TEMP: ";
char message2[] = "HMDT: ";
// FIX
void runDHT11Stat()
{
    delayMS(500);        // Wait for sensor stabilization
    startSignal();       // Send start signal
    if (checkResponse()) // Check response from sensor
    {
        RH_byte1 = readData(); // Read humidity high byte
        RH_byte2 = readData(); // Read humidity low byte
        T_byte1 = readData();  // Read temperature high byte
        T_byte2 = readData();  // Read temperature low byte
        CheckSum = readData(); // Read checksum
        if (CheckSum == (RH_byte1 + RH_byte2 + T_byte1 + T_byte2))
        {
            // Valid data received
        }
        else
        {
            instCTRL(0x01);      // Clear display
            instCTRL(0x80);      // Set cursor to beginning
            printToLCD("Error"); // Print error message
        }
    }
    else
    {
        instCTRL(0x01);                   // Clear display
        instCTRL(0x80);                   // Set cursor to beginning
        printToLCD("NO SIGNAL -> DHT11"); // Print no response message
    }
    delayMS(1000); // Wait before next read
}

void displayDHT11Stat()
{
    char buffer[20];
    printToLCD(message1); // Print "TEMP: "
    sprintf(buffer, "%d.%d", T_byte1, T_byte2);
    printToLCD(buffer);   // Print temperature value
    instCTRL(0xD4);       // Move to next line
    printToLCD(message2); // Print "HMDT: "
    sprintf(buffer, "%d.%d", RH_byte1, RH_byte2);
    printToLCD(buffer); // Print humidity value
}

void startSignal()
{
    DHT11_PIN_DIR = 0; // Set as output
    DHT11_PIN = 0;     // Set pin low
    delayMS(18);       // Pull low for at least 18ms
    DHT11_PIN = 1;     // Set pin high
    __delay_us(20);    // Pull high for 20-40us
    DHT11_PIN_DIR = 1; // Set as input
}

short checkResponse()
{
    __delay_us(40); // Wait for 20-40us
    if (!DHT11_PIN)
    {
        __delay_us(80); // Wait for 80us
        if (DHT11_PIN)
        {
            __delay_us(50); // Wait for 50us
            return 1;
        }
    }
    return 0;
}

uint8_t readData()
{
    uint8_t _data = 0;
    for (int i = 0; i < 8; i++)
    {
        while (!DHT11_PIN)
            ;           // Wait for the pin to go high
        __delay_us(30); // Wait for 30us to read the data bit
        if (DHT11_PIN)
            _data = (_data << 1) | 1;
        else
            _data = (_data << 1);
        while (DHT11_PIN)
            ; // Wait for the pin to go low
    }
    return _data;
}
#endif // DHT11_MODULE_H