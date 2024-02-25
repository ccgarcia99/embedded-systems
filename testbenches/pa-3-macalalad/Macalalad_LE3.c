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

bit int_flag = 0;
bit count_flag = 0;

void interrupt ISR ();
unsigned char cnt = 0x00;

unsigned char keypress_correct (unsigned char x)  {

	if(x > 0x0A){
		return 0x00;
	}

	switch(x){
		case (0x00): x = 0x01;
		break;
		
		case (0x01): x = 0x02;
		break;

		case (0x02): x = 0x03;
		break;

		case (0x08): x = 0x07;
		break;

		case (0x09): x = 0x08;
		break;

		case (0x0A): x = 0x09;
		break;

	}
	return x;
}

void interrupt ISR(){
	GIE = 0;

	if(INTF){
		INTF = 0;
		cnt = keypress_correct(PORTD);
		int_flag = 1;
	} else if (T0IF) {
		T0IF = 0;
		count_flag = 1;
	}
	
	GIE = 1;
}

void delay (int delay){
	int y = 0;
	
	while(y < delay) {
		if(count_flag == 1){
			count_flag = 0;
			y++;
		}
	}
}

void main(){
	cnt = 0x00;

	TRISB = 0x01;
	TRISC = 0x00;
	TRISD = 0xFF;	

	INTE = 1;
	INTF = 0;

	OPTION_REG = 0x44;

	T0IE = 1;
	T0IF = 0;

	GIE = 1;

	PORTC = cnt;
	
	while(1){
		delay(98);
		
		if(cnt == 0x00){
			cnt = 0x00;
		} else if(int_flag) {
			int_flag = 0;
		} else {
			cnt++;
		}

		PORTC = cnt;
	}
}
