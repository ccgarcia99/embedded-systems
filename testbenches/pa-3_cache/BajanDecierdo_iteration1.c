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
bit count_flag = 0;
unsigned char segCnt = 0x00; // data to be sent out to the 7-segment LED

void main()
{
	segCnt = 0x00;

	TRISB = 0x01;
	TRISC = 0x00;
	TRISD = 0x0F;

	INTE = 1; // enable external interrupt pin RB0
	INTF = 0; // set EI flag of pin RB0 to 0

	OPTION_REG = 0x44;

	T0IE = 1; // set Timer0 interrupt (enable) 
	T0IF = 0; // clear Timer0 interrupt flag

	GIE = 1; // accept oncoming interrupt requests

	PORTC = segCnt; // send data to 7-segment

	while(1)
	{
		delay(122);
		if(segCnt == 0x00)
		{
			segCnt = 0x00;
		}
		else if(int_flag)
		{
			int_flag = 0;
		}else
		{
			segCnt++;
		}
		PORTC = segCnt;
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
	GIE = 0; // DO NOT accept any interrupts
	if(INTF)
	{
		INTF = 0;
		segCnt = keypress(PORTD);
		int_flag = 1;
	}
	else if(T0IF)
	{
		T0IF = 0;
		count_flag = 1;
	}
	GIE = 1;
}

unsigned char keypress(unsigned char kpad)  {

	if(kpad > 0x0A){
		return 0x00;
	}

	switch(kpad){
		case (0x00): kpad = 0x01;
		break;
		
		case (0x01): kpad = 0x02;
		break;

		case (0x02): kpad = 0x03;
		break;

		case (0x08): kpad = 0x07;
		break;

		case (0x09): kpad = 0x08;
		break;

		case (0x0A): kpad = 0x09;
		break;

	}
	return kpad;
}