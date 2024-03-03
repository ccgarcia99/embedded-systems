#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000

void interrupt ISR();
void delay(int overflows);
void series();

void main()
{
    TRISB = 0x01;
    TRISC = 0x00;

    // Timer preprocessors
    OPTION_REG = 0x44; // set INTEDG to 1 (rising edge) and pre-scaler setting to 1:32
    TMR0 = 0; // set Timer0 to 0
    
    // Interrupt preprocessors
    INTE = 1;   // enable external flag interrupt pin
    INTF = 0;   // initially clear the interrupt flag (no interrupts yet)
    GIE = 1;    // allow interrupt requests

    while(1)
    {
        PORTB = 0xE0; // Set RC0, RC1, RC2 to 1
        delay(122);
        
        PORTB = 0x00; // Clear RC0, RC1, RC2
        delay(122);
    }
}

void delay(int overflows)
{
    while(overflows > 0)
    {
        TMR0 = 0;
        TMR0IF = 0;

        while(!TMR0IF);
        overflows--;
    }
}

void interrupt ISR()
{
    GIE = 0; // DO NOT accept any interrupt requests
    if(INTF) // if RB0 is high, INTF is 1
    {
        series();
        INTF = 0; // Clear INTF
    }   
    GIE = 1; // RESUME to accept any interrupt request
}

void series()
{
    PORTC = 0x00; delay(122); // Clear RC0, RC1, RC2
    PORTC = 0x01; delay(122); // Set RC0
    PORTC = 0x02; delay(122); // Set RC1
    PORTC = 0x04; delay(122); // Set RC2
}
