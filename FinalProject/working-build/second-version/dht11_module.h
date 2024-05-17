#ifndef DHT11_MODULE_H
#define DHT11_MODULE_H
#include "common_dependencies.h"
#include "lcd_functions.h"

// Global variables
uint8_t temperature = 0;
uint8_t humidity = 0;
#define DHT11_PIN PORTBbits.RB2
#define DHT11_PIN_TRIS TRISBbits.TRISB2
#define HUMIDIFIER_EN PORTCbits.RC3 // Relay is active LOW

// Function prototypes
void initDHT11();
void initPORTS();
void startUP();
void runDHT11();
uint8_t readDHT11(uint8_t *temperature, uint8_t *humidity);
void displayDataDHT11();
void activateHumidifier();

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

    setCursor(0, 0); // Move to first line
    sprintf(buffer, "TEMP: %dC", temperature);
    printToLCD(buffer);
    setCursor(1, 0); // Move to second line
    sprintf(buffer, "HMDT: %d", humidity);
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
    if (humidity > 50 && temperature > 25)
    {
        HUMIDIFIER_EN = 0; // Turn on the humidifier
    }
    else
    {
        HUMIDIFIER_EN = 1; // Turn off the humidifier
    }
}

#endif // DHT11_MODULE_H
