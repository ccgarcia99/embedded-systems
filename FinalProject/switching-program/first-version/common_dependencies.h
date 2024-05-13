#ifndef COMMON_DEPENDENCIES_H
#define COMMON_DEPENDENCIES_H
// Libraries
#include <xc.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
// configuration bits for PIC16F877A
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

// shared functions
inline int readADC(char channel);

inline int readADC(char channel)
{
    ADCON0 &= 0xC3;
    ADCON0 |= (channel << 3);
    __delay_us(20);
    GO_DONE = 1;
    while (GO_DONE)
        ;
    return ((ADRESH << 8) + ADRESL);
}

#endif // COMMON_DEPENDENCIES_H