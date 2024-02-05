#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main()
{
    int cnt;
    TRISB = 0x00;
    
    for(;;)
    {
        for(cnt=0;cnt<10000;cnt++);
        PORTB = 0x01;
        for(cnt=0;cnt<10000;cnt++);
        PORTB = 0x00;
    }
}