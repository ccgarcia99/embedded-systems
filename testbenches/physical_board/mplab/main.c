#include <xc.h>

// Configuration bits (may need adjustment based on your setup)
#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000

void initTimer0() {
    OPTION_REGbits.T0CS = 0; // Timer0 Clock Source Select bit: 0 = Internal clock (FOSC/4)
    OPTION_REGbits.PSA = 0; // Prescaler Assignment bit: 0 = Prescaler is assigned to the Timer0 module
    OPTION_REGbits.PS = 0b101; // Prescaler Rate Select bits: 1:32
}

void delay_1s() {
    // Number of timer overflows to wait
    int overflowsNeeded = 31; // This is an approximate value for demonstration
    
    // Reset Timer0
    TMR0 = 0;
    // Reset overflow counter
    int overflowCount = 0;

    // Wait for the specified number of overflows
    while (overflowCount < overflowsNeeded) {
        if (INTCONbits.T0IF) { // Check if the Timer0 overflow flag is set
            INTCONbits.T0IF = 0; // Clear the overflow flag
            overflowCount++; // Increment the overflow counter
        }
    }
}

void main(void) {
    TRISB = 0x00;
    initTimer0(); // Initialize Timer0
	unsigned char data = 0x01;
    while (1) {
		for(int i = 0; i <8; i++)
		{
			PORTB = data;
			data = data << 1;
			delay_1s();
		}
		data = 0x01;
    }
}
