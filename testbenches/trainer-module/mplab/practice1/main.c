#include <xc.h>
#include "i2c_func.h"
#include "lcd_i2c.h"

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000

void main()
{
    I2C_Master_init();
    LCD_Init();
    LCD_Char('A');
    while(1)
    {
		LCD_Char('A');
    }
}