#ifndef BAJANDECIERDO_IIC_H
#define BAJANDECIERDO_IIC_H

#include <xc.h>

// Master mode control subroutines for PIC16F877A IIC
void init_I2C_Master(void);
void I2C_Master_Wait(void);
void I2C_Master_Start(void);
void I2C_Master_RepeatedStart(void);
void I2C_Master_Stop(void);

// Master mode send/receive subroutines for PIC16F877A IIC
void I2C_Master_Write(unsigned dataOUT);
unsigned char I2C_Master_Read(unsigned char ACK);

// ========================================
//  MASTER SUBROUTINES START   
// ========================================
// I2C Control START
void init_I2C_Master(void)
{
    TRISC3 = 1; // set SCL as input
    TRISC4 = 1; // set SDA as input
    SSPCON = 0x28; // set SSPEN and SSPM3:SSPM0
    SSPCON2 = 0x00; // start, stop, & receive condition at idle state

    SSPSTAT = 0x00; // Slew rate enabled
    SSPADD = 0x09; // 100kHz @ 4MHz Fosc
}

void I2C_Master_Wait(void)
{
    // wait until all I2C operations are complete
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
}

void I2C_Master_Start(void)
{
    I2C_Master_Wait();
    SEN = 1; // initiate start condition
}

void I2C_Master_RepeatedStart(void)
{
    I2C_Master_Wait();
    RSEN = 1; // initiate repeated start condition
}

void I2C_Master_Stop(void)
{
    I2C_Master_Wait();
    PEN = 1; // initiate stop condition
}
// I2C Control END
// ========================================
// I2C Send/Receive START
void I2C_Master_Write(unsigned dataOUT)
{
    I2C_Master_Wait();
    SSPBUF = dataOUT; // write data to SSPBUF
}

unsigned char I2C_Master_Read(unsigned char ACK)
{
    unsigned char incomingData;
    I2C_Master_Wait();
    RCEN = 1; // enable & start reception
    I2C_Master_Wait();
    incomingData = SSPBUF; // copy the received data
    I2C_Master_Wait();
    ACKDT = (ACK) ? 0 : 1; // check if ACK bit received
    ACKEN = 1; // send ACKDT
    return incomingData; // return the received data
}
// I2C Send/Receive END
// ========================================
//  MASTER SUBROUTINES END
// ========================================
#endif // BAJANDECIERDO_IIC_H