#ifndef DEFINITIONS_H
#define DEFINITIONS_H

#include <xc.h>
#include <stdio.h>
//#include <math.h>
//ISSUE: math.h library causes stack overflow problems(calls on the pow() function), do not use.

// LCD Definitions. Change when necessary
#define RS RC0
#define RW RC1
#define EN RC2
#define LCD_PORT PORTD

// Configuration bits for PIC16F877A
#pragma config FOSC = HS   // High Speed Oscillator
#pragma config WDTE = OFF  // Watchdog Timer Disabled
#pragma config PWRTE = OFF // Power-up Timer Disabled
#pragma config BOREN = ON  // Brown-out Reset Enabled
#pragma config LVP = OFF   // Low Voltage ICSP Disabled
#pragma config CPD = OFF   // Data EEPROM Memory Code Protection Off
#pragma config WRT = OFF   // Flash Program Memory Write Enable bits
#pragma config CP = OFF    // Flash Program Memory Code Protection bit

// config for MQ135 sensor
#define PARA 116.6020682
#define PARB 2.769034857
#define CORA 0.00035
#define CORB 0.02718
#define CORC 1.39538
#define CORD 0.0018
#define CORE -0.003333333
#define CORF -0.001923077
#define CORG 1.130128205
#define ATMOCO2 415.58 // Calibration CO2 level in ppm

// Oscillator frequency
#define _XTAL_FREQ 4000000 // 4 MHz
#define SEL_BUTTON RB1

// Function prototypes specific for PIC16F877A
void initADC(void);         // Initialize ADC
void initInterrupt(void);   // Initialize Interrupt
void interrupt ISR(void);   // Interrupt Service Routine
void updateDisplay(void);   // Update display
void checkMode(void);       // Check mode
void displayRawADC(void);   // Display raw ADC reading
void checkSensors(void);
void checkSelButton(void);
// Function prototypes for MQ135 sensor
void displayPPM(void);          // Display PPM
inline int Read_ADC_MQ135();    // Read ADC
float CalcMQ135(int RAW_ADC);   // Calculate MQ135
// Function prototypes for LCD
void instCTRL(unsigned char CMD);   // Instruction Control
void dataCTRL(unsigned char DAT);   // Data Control
void initLCD();                     // Initialize LCD
void printToLCD(const unsigned char *str);  // Print to LCD
// Function prototypes for TIME
void setDefaultHours();
void setDefaultMinutes();
void displayTime();
void runTime();
// Funtion prototypes for DHT11

#endif