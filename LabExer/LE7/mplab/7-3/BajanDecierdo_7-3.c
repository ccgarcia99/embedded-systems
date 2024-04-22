#include <xc.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define ACK 1
#define NACK 0
#define LITTLE_ENDIAN
#define _XTAL_FREQ 4000000
#define RS RC0
#define RW RC1
#define EN RC2

// TYPE DEFINITIONS, STRUCTS, & ENUMS
// redefine data types (making size of types clear)
typedef unsigned char u8t; // range: 0 .. 255
typedef signed char i8t;   // range: -128 .. +127

typedef unsigned short u16t; // range: 0 .. 65535
typedef signed short i16t;   // range: -32768 .. +32767

typedef unsigned long u32t; // range: 0 .. 4'294'967'295
typedef signed long i32t;   // range: -2'147'483'648 .. +2'147'483'647

typedef float ft;  // range: +-1.18E-38 .. +-3.39E+38
typedef double dt; // range: .. +-1.79E+308
typedef bool bt;   // values: 0, 1

typedef union
{
    u16t u16; // unsigned 16-bit integer
    i16t i16; // signed 16-bit integer
    struct
    {
        #ifdef LITTLE_ENDIAN // Byte-order is little endian
        u8t u8L;     // element specifier for accessing low u8
        u8t u8H;     // element specifier for accessing high u8
        #else                // Byte-order is big endian
        u8t u8H; // element specifier for accessing low u8
        u8t u8L; // element specifier for accessing high u8
        #endif
    } s16; // element spec. for acc. struct with low or high u8
} nt16;

typedef union
{
    u32t u32; // unsigned 32-bit integer
    i32t i32; // signed 32-bit integer
    struct
    {
        #ifdef LITTLE_ENDIAN
        u16t u16L; // element specifier for accessing low u16
        u16t u16H; // element specifier for accessing high u16
        #else
        u16t u16H; // element specifier for accessing low u16
        u16t u16L; // element specifier for accessing high u16
        #endif
    } s32;
} nt32;

// Function prototypes, declarations, and definitions
// CRC
const u16t POLYNOMIAL = 0x131; // P(x)=x^8+x^5+x^4+1 = 100110001

// sensor commands
typedef enum
{
    SHT21_CMD_TM_HM = 0xE3,   // command for temperature measurement, hold master
    SHT21_CMD_RH_HM = 0xE5,   // command for relative humidity measurement, hold master
    SHT21_CMD_TM_POLL = 0xF3, // command for temperature measurement, no hold master
    SHT21_CMD_RH_POLL = 0xF5, // command for relative humidity measurement, no hold master
    USR_REG_WR = 0xE6,        // command for user register read/write
    USR_REG_R = 0xE7,         // command for user register read
    SOFT_RESET = 0xFE         // command for soft reset
} SHT21_CMD;

// sensor resolution settings
typedef enum
{
    SHT21_RES_RH12_TEMP14 = 0x00, // RH: 12-bit, Temp: 14-bit
    SHT21_RES_RH8_TEMP12 = 0x01,  // RH: 8-bit, Temp: 12-bit
    SHT21_RES_RH10_TEMP13 = 0x80, // RH: 10-bit, Temp: 13-bit
    SHT21_RES_RH11_TEMP11 = 0x81, // RH: 11-bit, Temp: 11-bit
    SHR21_RES_MASK = 0x81         // mask for resolution bits (7,0) in user register
} SHT21_RES;

// sensor measurement signal selection
typedef enum
{
    HUMIDITY,
    TEMPERATURE
} SHT21_MEASURE_TYPE;

// I2C header
typedef enum
{
    I2C_ADDR_W = 128, // sensor I2C address + write bit
    I2C_ADDR_R = 129  // sensor I2C address + read bit
} I2C_HEADER;

// FUNCTION PROTOTYPES & GLOBALS
// *** I2C Functions ***
void init_I2C_Master();             // initialize I2C Master
void I2C_Wait(){while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));} // wait for I2C to finish
void I2C_Start();                   // start I2C
void I2C_RepeatedStart();           // repeated start I2C
void I2C_Stop();                    // stop I2C
void I2C_Send(u8t dataOUT);         // send data via I2C
u8t I2C_Receive(u8t ACK_NACK);      // receive data via I2C
// *** SHT21 Functions ***
ft SHT21_CalcRH(u16t u16RH);        // calculate relative humidity
ft SHT21_CalcTemp(u16t u16Temp);    // calculate temperature
u8t SHT21_Measure(SHT21_MEASURE_TYPE measureType, nt16 *pMeasureand); // measure relative humidity or temperature
void SHT21_SoftReset();             // soft reset sensor
void SHT21_SetResolution();         // set sensor resolution
// *** LCD & Misc. Functions ***
void initLCD();                     // initialize LCD
void instCTRL(u8t LCD_CMD);         // instruction control
void dataCTRL(u8t LCD_DAT);         // data control
void delay(int overflow);           // Timer0 delay function
// *** Globbals ***
u8t RH;                     // relative humidity
u8t temp;                   // temperature

void main(void)
{
    u8t temp;
    float humidity, temperature;
    char tempToString[] = "Temperature: ";
    char humidityToString[] = "Humidity: ";
    char errorToString[] = "Error: ";   
    char buf1[], buf2[];
    int index, status = 0; // status of SHT21 sensor

    u8t error = 0; // error code
    nt16 rawRH, rawTemp; // raw relative humidity and temperature
    ft resultRH, resultTemp; // relative humidity and temperature

    OPTION_REG = 0x44; // set Timer0 with prescaler 1:32
    TRISB = 0x00; // set PORTB as output
    PORTB = 0x00; // clear PORTB
    GIE = 1; // enable global interrupt

    init_I2C_Master(); // initialize I2C Master, PORTC directions set in function
    initLCD(); // initialize LCD

    instCTRL(0x80); // set cursor to first line
    while (humidityToString[index] != '\0')
    {
        dataCTRL(humidityToString[index]);
        index++;
    }
    index = 0;

    instCTRL(0xC0); // set cursor to second line
    while (tempToString[index] != '\0')
    {
        dataCTRL(tempToString[index]);
        index++;
    }
    index = 0;
    while (1)
    {
        // Reset sensor
        SHT21_SoftReset();
        // Set sensor resolution
        SHT21_SetResolution();
        // Measure humidity with "Hold Master Mode (HM)"
        error != SHT21_Measure(HUMIDITY, &rawRH);
        // Measure temperature with "Hold Master Mode (HM)"
        error != SHT21_Measure(TEMPERATURE, &rawTemp);

        // Calculate humidity and temperature
        resultTemp = SHT21_CalcTemp(rawTemp.u16);
        resultRH = SHT21_CalcRH(rawRH.u16);

        // Display temperature and humidity
        sprintf(buf2, "%.2f", resultRH);
        instCTRL(0x8D);
        while (buf2[index] != '\0')
        {
            dataCTRL(buf2[index]);
            index++;
        }
        index = 0;
        dataCTRL('%');

        sprintf(buf1, "%.2f", resultTemp);
        instCTRL(0xCD);
        while (buf1[index] != '\0')
        {
            dataCTRL(buf1[index]);
            index++;
        }
        index = 0;

        // check if error occurred
        if (error != 0)
        {
            initLCD();
            while (errorToString[index] != '\0')
            {
                dataCTRL(errorToString[index]);
                index++;
            }
            index = 0;
        }
        delay(384); // delay for 3 seconds
    }
}

// FUNCTION DEFINITIONS
// I2C Functions START
void init_I2C_Master(void)
{
    TRISC = 0b00011000; // set RC3 & RC4 to input (SCL & SDA), rest is output
    SSPCON = 0x28; // enable SSP, I2C master mode
    SSPCON2 = 0x00; // start condition idle, stop condition idle, receive idle
    SSPSTAT = 0x00; // slew rate enabled
    SSPADD = 0x09; // clock frequency at 100 KHz (FOSC = 4MHz)
}

void I2C_Start(void)
{
    I2C_Wait();
    SEN = 1;
}

void I2C_RepeatedStart(void)
{
    I2C_Wait();
    RSEN = 1;
}

void I2C_Stop(void)
{
    I2C_Wait();
    PEN = 1;
}

void I2C_Send(u8t dataOUT)
{
    I2C_Wait();
    SSPBUF = dataOUT;
}

u8t I2C_Receive(u8t ACK_NACK)
{
    u8t dataIN;
    I2C_Wait();
    RCEN = 1;           // enable receive
    I2C_Wait();
    dataIN = SSPBUF;    // read SSP buffer
    I2C_Wait();
    ACKDT = (ACK_NACK) ? 0 : 1; // set acknowledge or not acknowledge
    ACKEN = 1;          // enable acknowledge sequence
    return dataIN;
}
// I2C Functions END

// LCD & Misc. Functions START
void delay(int overflow)
{   // prescaler = 1:32
    int i;
    for (i = 0; i < overflow; i++)
    {
        TMR0 = 0x00;
        while (TMR0 < 0x64)
            ;
    }
}

void instCTRL(u8t LCD_CMD)
{
    PORTB = LCD_CMD;
    RS = 0;
    RW = 0;
    EN = 1;
    delay(20);
    EN = 0;
}

void dataCTRL(u8t LCD_DAT)
{
    PORTB = LCD_DAT;
    RS = 1;
    RW = 0;
    EN = 1;
    delay(20);
    EN = 0;
}

void initLCD()
{
    instCTRL(0x3C);
    delay(20);
    instCTRL(0x0C);
    instCTRL(0x01);
    instCTRL(0x06);
    instCTRL(0x0F);
}
// LCD & Misc. Functions END

// SHT21 Functions START
ft SHT21_CalcRH(u16t u16RH)
{
    ft resultRH;
    u16RH &= ~0x003; // clear status bits
    // calculate relative humidity
    resultRH = -6.0 + 125.0 / 65536.0 * (ft)u16RH;
    return resultRH;
}

ft SHT21_CalcTemp(u16t u16Temp)
{
    ft resultTemp;
    u16Temp &= ~0x0003; // clear status bits
    // calculate temperature
    resultTemp = -46.85 + 175.72 / 65536.0 * (ft)u16Temp;
    return resultTemp;
}

u8t SHT21_Measure(SHT21_MEASURE_TYPE measureType, nt16 *pMeasureand)
{
    u8t checksum;       // checksum
    u8t error = 0;      // error code
    u8t data[2];        // array for checksum verification

    // start I2C
    I2C_Start();
    // send sensor address with write bit
    I2C_Send(I2C_ADDR_W);
    // send command for measurement
    switch (measureType)
    {
    case HUMIDITY:
        I2C_Send(SHT21_CMD_RH_HM);
        break;
    case TEMPERATURE:
        I2C_Send(SHT21_CMD_TM_HM);
        break;
    }
    // wait for hold master to release
    I2C_RepeatedStart();
    // send sensor address with read bit
    I2C_Send(I2C_ADDR_R);
    delay(15);
    // read two data bytes and one checksum byte
    pMeasureand->s16.u8H = data[0] = I2C_Receive(ACK);
    pMeasureand->s16.u8L = data[1] = I2C_Receive(ACK);
    checksum = I2C_Receive(NACK);

    I2C_Stop();
    return error;
}

void SHT21_SoftReset()
{
    I2C_Start();
    I2C_Send(I2C_ADDR_W);
    I2C_Send(SOFT_RESET);
    I2C_Stop();
    delay(10);
}

void SHT21_SetResolution()
{
    I2C_Start();
    I2C_Send(I2C_ADDR_W);
    I2C_Send(USR_REG_WR);
    I2C_Send(SHT21_RES_RH12_TEMP14);
    I2C_Stop();
}
// SHT21 Functions END