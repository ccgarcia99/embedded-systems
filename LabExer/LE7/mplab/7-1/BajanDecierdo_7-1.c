#include <xc.h>
#include "BajanDecierdo_IIC.h"

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
    TRISD = 0xFF; // set PORTD as input
    init_I2C_Master(); // initialize I2C Master
    for(;;)
    {
        I2C_Master_Start(); // start condition
        I2C_Master_Write(0x10); // write 0x30 to slave
        I2C_Master_Write(PORTD); // write PORTD to slave
        I2C_Master_Stop(); // stop condition
        __delay_ms(200);
    }
}