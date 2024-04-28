#include <xc.h>
#include "iic.h"
#include "iic_lcd.h"

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
    TRISC = 0b00011000; // SDL and SDA as input
    lcd_init();
    lcd_str("Hello, World!");
    while (1);
}