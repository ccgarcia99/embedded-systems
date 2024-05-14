#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

// Configuration bits for PIC16F877A
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

#define DHT11_PIN RB2        // Pin connection for DHT11
#define DHT11_PIN_DIR TRISB2 // Pin direction for DHT11

// DHT11 functions
short checkResponse();
void startSignal();
uint8_t readData();

// UART Functions
void initUART(void);
void sendByte(uint8_t data);
void sendData(uint8_t temp, uint8_t humidity);

// Globals
unsigned char checkbit;
uint8_t T_byte1, T_byte2, RH_byte, RH_byte2, CheckSum;

void main()
{
    TRISB = 0xFF;      // Set PORTB as input
    PORTB = 0x00;      // Clear PORTB
    DHT11_PIN_DIR = 0; // Set as output initially
    TRISC = 0x00;      // Set PORTC as output
    PORTC = 0x00;      // Clear PORTC
    initUART();

    while (1)
    {
        __delay_ms(800);
        startSignal();
        if (checkResponse())
        {
            RH_byte = readData();
            RH_byte2 = readData();
            T_byte1 = readData();
            T_byte2 = readData();
            CheckSum = readData();
            if (CheckSum == (RH_byte + RH_byte2 + T_byte1 + T_byte2))
            {
                // Send humidity and temperature data
                sendData(T_byte1, RH_byte);
            }
        }
        __delay_ms(2000);
    }
}

void startSignal()
{
    DHT11_PIN_DIR = 0; // Set as output initially
    DHT11_PIN = 0;     // Set pin low
    __delay_ms(25);
    DHT11_PIN = 1; // Set pin high
    __delay_us(30);
    DHT11_PIN_DIR = 1; // Set as input
}

short checkResponse()
{
    __delay_us(40);
    if (!DHT11_PIN)
    {
        __delay_us(80);
        if (DHT11_PIN)
        {
            __delay_us(50);
            return 1;
        }
    }
    return 0;
}

uint8_t readData()
{
    uint8_t index, bitcount, _data = 0;
    for (index = 0; index < 8; index++)
    {
        bitcount = 0;
        while (!DHT11_PIN)
        {
            bitcount++;
            __delay_us(1);
            if (bitcount > 100)
                break;
        }
        __delay_us(30);
        if (!DHT11_PIN)
            checkbit = 0;
        else
        {
            checkbit = 1;
            while (DHT11_PIN)
            {
                bitcount++;
                __delay_us(1);
                if (bitcount > 100)
                    break;
            }
        }
        _data = (_data << 1) | checkbit;
    }
    return _data;
}

void initUART(void)
{
    // Initialize UART
    TRISC6 = 0; // TX Pin set as output
    TRISC7 = 1; // RX Pin set as input

    SPBRG = 25; // Baud rate 9600 for 4 MHz clock
    BRGH = 1;   // High-speed baud rate

    SYNC = 0; // Asynchronous mode
    SPEN = 1; // Enable serial port
    TXEN = 1; // Enable transmission
    CREN = 1; // Enable continuous reception
}

void sendByte(uint8_t data)
{
    while (!TXIF)
        ; // Wait until the transmit buffer is empty
    TXREG = data;
}

void sendData(uint8_t temp, uint8_t humidity)
{
    sendByte(humidity); // Send humidity byte
    sendByte(temp);     // Send temperature byte
}
