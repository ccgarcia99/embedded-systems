#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay(int cnt);
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char DATA);
void keypad(unsigned char kpad);
void initLCD();

void main()
{
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x0F;

	unsigned char kpad;
	int bound = 0; //keeps track of the cursor position
	initLCD();

	for(;;)
	{
		if(RD4 == 1)
		{
			kpad = PORTD & 0x0F;
			keypad(kpad);
		}
	
	}
}

void keypad(unsigned char kpad)
{
	switch(kpad)
	{
		case 0x00: dataCtrl('1');
		break;
	}
}

void instCtrl(unsigned char INST)
{
	PORTB = INST; //variable to send opcodes to LCD
	RC0 = 0;	//RS = 0; LCD on PROGRAM mode
	RC1 = 0;	//RW = 0; LCD on WRITE
	RC2 = 1;	//Strobe E pin
	delay(5);
	RC2 = 0;
}

void dataCtrl(unsigned char INST)
{
	PORTB = INST; //variable to send data to LCD
	RC0 = 1;	//RS = 1; LCD on DISPLAY mode
	RC1 = 0;	//RW = 0; LCD on WRITE
	RC2 = 1;	//Strobe E pin
	delay(5);
	RC2 = 0;
}

void initLCD()
{
	instCtrl(0x38);
	delay(10);
	instCtrl(0x0C);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0f);
}

void delay(int cnt)
{
	int i, j;
	for(i=0;i<cnt;i++)
	{
		for(j=0;j<9999;j++);
	}
}
