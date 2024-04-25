#ifndef IIC_H
#define IIC_H

#include <xc.h>

// IIC functions
void iic_init(void); // Initialize IIC as master
void IIC_Start(void); // Start condition
void IIC_Repeated_Start(void); // Repeated start condition
void IIC_Stop(void); // Stop condition
void IIC_Wait(void); // Wait for IIC to finish
void IIC_Send(unsigned char data); // Send 8-bit data
unsigned char IIC_Read(void); // Read 8-bit data

void delay(int overflow); // Timer0 delay

void IIC_Wait(void) {
    while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
}

void iic_init(void) {
    SSPCON = 0x28; // IIC master mode, clock = FOSC / (4 * (SSPADD + 1))
    SSPCON2 = 0x00;
    SSPADD = 0x09; // 100kHz
    SSPSTAT = 0x00;
}

void IIC_Start(void) {
    IIC_Wait();
    SEN = 1;
}

void IIC_Repeated_Start(void) {
    IIC_Wait();
    RSEN = 1;
}

void IIC_Stop(void) {
    IIC_Wait();
    PEN = 1;
}

void IIC_Send(unsigned char data) {
    IIC_Wait();
    SSPBUF = data;
}

unsigned char IIC_Read(void) {
    unsigned char temp;
    IIC_Wait();
    RCEN = 1;
    IIC_Wait();
    temp = SSPBUF;
    IIC_Wait();
    ACKDT = 0;
    ACKEN = 1;
    return temp;
}

void delay(int overflow) {
    int i;
    for (i = 0; i < overflow; i++) {
        TMR0 = 0;
        while (TMR0 < 250);
    }
}

#endif // IIC_H