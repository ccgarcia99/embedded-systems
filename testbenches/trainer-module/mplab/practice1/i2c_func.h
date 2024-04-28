#ifndef I2C_FUNC_H
#define I2C_FUNC_H

#include <xc.h>

// master functions
void I2C_Master_init(void);
void I2C_Wait();
void I2C_Start();
void I2C_Repeated_Start();
void I2C_Stop();
void I2C_Send(unsigned char dataOUT);
unsigned char I2C_Read(unsigned char ACK_NACK);

void I2C_Master_init(void)
{
    TRISC3 = 1; // SDA
    TRISC4 = 1; // SCL
    SSPCON = 0x28; // enable SSP, I2C master mode
    SSPCON2 = 0x00; // start, stop, receive conditions all idle
    SSPADD = 0x09; // 100kHz
    SSPSTAT = 0x00; // Slew rate disabled
}

void I2C_Wait()
{
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
}

void I2C_Start()
{
    I2C_Wait();
    SEN = 1;
}

void I2C_Repeated_Start()
{
    I2C_Wait();
    RSEN = 1;
}

void I2C_Stop()
{
    I2C_Wait();
    PEN = 1;
}

void I2C_Send(unsigned char dataOUT)
{
    I2C_Wait();
    SSPBUF = dataOUT;
}

unsigned char I2C_Read(unsigned char ACK_NACK)
{
    unsigned char incomingData;
    I2C_Wait();
    RCEN = 1;
    I2C_Wait();
    incomingData = SSPBUF;
    I2C_Wait();
    ACKDT = (ACK_NACK) ? 0 : 1;
    ACKEN = 1;
    return incomingData;
}

#endif // I2C_FUNC_H    