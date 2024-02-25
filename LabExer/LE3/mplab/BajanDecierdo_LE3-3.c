#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay(int overflows);
void interrupt ISR();
unsigned char keypress(unsigned char kpad);

bit int_flag = 0;
unsigned char segCnt = 0;

void main() {
    segCnt = 0;

    TRISB = 0x01; // Set RB0 as input for external interrupt
    TRISC = 0x00; // PORTC as output for 7-segment display
    TRISD = 0x0F; // Lower nibble of PORTD as input for keypad

    INTE = 1; // Enable RB0 external interrupt
    INTF = 0; // Clear external interrupt flag

    OPTION_REG = 0x04; // Prescaler 1:32 for Timer0, internal clock source

    T0IE = 1; // Enable Timer0 interrupt
    T0IF = 0; // Clear Timer0 interrupt flag

    GIE = 1; // Global interrupt enable

    while(1) {
        delay(122);
        if(!int_flag) {
            segCnt++;
            if(segCnt > 9){
                segCnt = 0;
            }
            PORTC = segCnt; // Update the display with the new value
        } else {
            int_flag = 0; // Clear the interrupt flag after processing
        }
    }
}

void delay(int overflows) {
    while(overflows > 0) {
        TMR0 = 231;
        T0IF = 0;
        while(!T0IF);
        overflows--;
    }
}

void interrupt ISR() {
    if(INTF) {
        INTF = 0;
        int_flag = 1;
        segCnt = keypress(PORTD);
        PORTC = segCnt;
    }
    else if(T0IF) {
        T0IF = 0;
    }
}

unsigned char keypress(unsigned char kpad) {
    switch(kpad) {
        case 0x00: return 0x01;
		break;
        case 0x01: return 0x02;
		break;
        case 0x02: return 0x03;
		break;
        case 0x04: return 0x04;
		break;
        case 0x05: return 0x05;
		break;
        case 0x06: return 0x06;
		break;
        case 0x08: return 0x07;
		break;
        case 0x09: return 0x08;
		break;
        case 0x0A: return 0x09;
		break;
        default: return 0x00;
		break;
    }
}
