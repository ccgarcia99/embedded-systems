#include <xc.h>
#include <stdio.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF 

int period;
int check;

void delay(int cnt){
	
	int i, j;
	for(i = cnt; i != 0; i--)
	for(j = 0; j < 1000; j++);
}

void instCtrl(unsigned char instr){
	
	PORTC = instr;
	RB0 = 0;
	RB1 = 1;
	delay(1);
	RB1 = 0;				
}

void initLCD(){
	
	instCtrl(0x38);
	delay(10);		
	instCtrl(0x0C);
	instCtrl(0x01);
	instCtrl(0x06); 
	instCtrl(0x0F);	
}

void dataCtrl(unsigned char data_in){
	
	PORTC = data_in;
	RB0 = 1;
	RB1 = 1;
	delay(5);
	RB1 = 0;
}

void interrupt ISR(void){
	
	period = 0;
	GIE = 0;
	
	if (CCP1IF == 1) {
	    CCP1IF = 0;	
		TMR1 = 0;
		period = CCPR1 / 125;
	}
	
	GIE = 1; 		
}

void textDisplay(){
	
    instCtrl(0x06);
    instCtrl(0x0F);
    instCtrl(0x9F);
   
    char digit[4];
    digit[3] = '\n';
    sprintf(digit, "%d", period);
   
    dataCtrl(digit[0]);
    dataCtrl(digit[1]);
    dataCtrl(digit[2]);
    
	if(check == 0) {
		instCtrl(0xA3);
		dataCtrl('m');
  	  	dataCtrl('s');
	}
}

void main(void)
{
	initLCD();
	OPTION_REG  = 0xC0;
	TRISA = 0x00;
	ADCON1 = 0x06;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0xFF;
	T1CON = 0x30;
	CCP1CON = 0x05;
	CCP1IE = 1;
	CCP1IF = 0;	
	PEIE = 1;
	GIE = 1;
	TMR1ON = 1;
	PORTB = 0x00;
	PORTC = 0x00;

	check = 0;
	instCtrl(0x06); 
    instCtrl(0x0F); 
	instCtrl(0x97);	
	dataCtrl('P');
    dataCtrl('e');
    dataCtrl('r');
    dataCtrl('i');
    dataCtrl('o');
    dataCtrl('d');
    dataCtrl(':');
    
	while(1) {
		textDisplay();
		check = 1;
	}
}
