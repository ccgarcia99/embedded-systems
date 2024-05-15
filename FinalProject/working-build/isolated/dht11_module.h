#ifndef DHT11_MODULE_H
#define DHT11_MODULE_H
#include "common_dependencies.h"

// Global variables
uint8_t temperature = 0;
uint8_t humidity = 0;
#define DHT11_PIN PORTBbits.RB2
#define DHT11_PIN_TRIS TRISBbits.TRISB2

// Function prototypes
void initDHT11();
void initPORTS();
void startUP();
void runDHT11();
uint8_t readDHT11(uint8_t *temperature, uint8_t *humidity);
void displayDataDHT11();

void initDHT11()
{
    DHT11_PIN_TRIS = 0; // Set RB3 as output
    DHT11_PIN = 1;      // Set RB3 high
}

uint8_t readDHT11(uint8_t *temperature, uint8_t *humidity)
{
    uint8_t bits[5] = {0};
    uint8_t i, j;

    // Send start signal
    DHT11_PIN_TRIS = 0; // Set RB3 as output
    DHT11_PIN = 0;      // Set RB3 low
    __delay_ms(18);
    DHT11_PIN = 1; // Set RB3 high
    __delay_us(20);
    DHT11_PIN_TRIS = 1; // Set RB3 as input

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
    char buffer[20];
    __delay_ms(2);

    sprintf(buffer, "TMP: %dC HMD: %d", temperature, humidity);
    printToLCD(buffer);
    /*
    instCTRL(0xC0); // Move to second line
    sprintf(buffer, "Humidity: %d%%", humidity);
    printToLCD(buffer);
    */
}

void runDHT11()
{
    if (readDHT11(&temperature, &humidity))
    {
        // displayData(temperature, humidity);
    }
    else
    {
        instCTRL(0x80); // Move to first line
        instCTRL(0x0C); // Turn off cursor
        printToLCD("Error reading DHT11");
    }
    __delay_ms(500); // Wait for 2 seconds before the next read
}

#endif // DHT11_MODULE_H