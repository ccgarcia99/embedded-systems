opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_I2C_Master_Start
	FNCALL	_main,_I2C_Master_Stop
	FNCALL	_main,_I2C_Master_Write
	FNCALL	_main,_init_I2C_Master
	FNCALL	_I2C_Master_Write,_I2C_Master_Wait
	FNCALL	_I2C_Master_Stop,_I2C_Master_Wait
	FNCALL	_I2C_Master_Start,_I2C_Master_Wait
	FNROOT	_main
	global	_PORTD
_PORTD	set	0x8
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISD
_TRISD	set	0x88
	global	_ACKDT
_ACKDT	set	0x48D
	global	_ACKEN
_ACKEN	set	0x48C
	global	_PEN
_PEN	set	0x48A
	global	_RCEN
_RCEN	set	0x48B
	global	_RSEN
_RSEN	set	0x489
	global	_SEN
_SEN	set	0x488
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _I2C_Master_Wait
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"7-1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_I2C_Master_Wait:	; 0 bytes @ 0x0
??_I2C_Master_Wait:	; 0 bytes @ 0x0
?_I2C_Master_Start:	; 0 bytes @ 0x0
??_I2C_Master_Start:	; 0 bytes @ 0x0
?_I2C_Master_Stop:	; 0 bytes @ 0x0
??_I2C_Master_Stop:	; 0 bytes @ 0x0
?_I2C_Master_Write:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	I2C_Master_Write@dataOUT
I2C_Master_Write@dataOUT:	; 2 bytes @ 0x0
	ds	2
??_I2C_Master_Write:	; 0 bytes @ 0x2
??_main:	; 0 bytes @ 0x2
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       5
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_I2C_Master_Write
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0     101
;!                                              2 COMMON     3     3      0
;!                   _I2C_Master_Start
;!                    _I2C_Master_Stop
;!                   _I2C_Master_Write
;!                    _init_I2C_Master
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Master_Write                                     2     0      2     101
;!                                              0 COMMON     2     0      2
;!                    _I2C_Master_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Master_Stop                                      0     0      0       0
;!                    _I2C_Master_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Master_Start                                     0     0      0       0
;!                    _I2C_Master_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Master_Wait                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Master_Start
;!     _I2C_Master_Wait
;!   _I2C_Master_Stop
;!     _I2C_Master_Wait
;!   _I2C_Master_Write
;!     _I2C_Master_Wait
;!   _init_I2C_Master
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       5       1       35.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_7-1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Master_Start
;;		_I2C_Master_Stop
;;		_I2C_Master_Write
;;		_init_I2C_Master
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_7-1.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_7-1.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	16
	
l560:	
;BajanDecierdo_7-1.c: 16: TRISD = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	17
	
l562:	
;BajanDecierdo_7-1.c: 17: init_I2C_Master();
	fcall	_init_I2C_Master
	goto	l564
	line	19
;BajanDecierdo_7-1.c: 18: for(;;)
	
l59:	
	line	20
	
l564:	
;BajanDecierdo_7-1.c: 19: {
;BajanDecierdo_7-1.c: 20: I2C_Master_Start();
	fcall	_I2C_Master_Start
	line	21
	
l566:	
;BajanDecierdo_7-1.c: 21: I2C_Master_Write(0x10);
	movlw	low(010h)
	movwf	(I2C_Master_Write@dataOUT)
	movlw	high(010h)
	movwf	((I2C_Master_Write@dataOUT))+1
	fcall	_I2C_Master_Write
	line	22
	
l568:	
;BajanDecierdo_7-1.c: 22: I2C_Master_Write(PORTD);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(I2C_Master_Write@dataOUT)
	movf	1+(??_main+0)+0,w
	movwf	(I2C_Master_Write@dataOUT+1)
	fcall	_I2C_Master_Write
	line	23
	
l570:	
;BajanDecierdo_7-1.c: 23: I2C_Master_Stop();
	fcall	_I2C_Master_Stop
	line	24
	
l572:	
;BajanDecierdo_7-1.c: 24: _delay((unsigned long)((200)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u57:
	decfsz	((??_main+0)+0),f
	goto	u57
	decfsz	((??_main+0)+0+1),f
	goto	u57
	decfsz	((??_main+0)+0+2),f
	goto	u57
	nop
opt asmopt_on

	line	25
;BajanDecierdo_7-1.c: 25: }
	goto	l564
	
l60:	
	line	26
	
l61:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 19 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
	line	19
global __ptext1
__ptext1:	;psect for function _init_I2C_Master
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
	line	19
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	21
	
l522:	
;BajanDecierdo_IIC.h: 21: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	22
;BajanDecierdo_IIC.h: 22: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	23
	
l524:	
;BajanDecierdo_IIC.h: 23: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	24
	
l526:	
;BajanDecierdo_IIC.h: 24: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	26
	
l528:	
;BajanDecierdo_IIC.h: 26: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	27
;BajanDecierdo_IIC.h: 27: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	28
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_I2C_Master_Write

;; *************** function _I2C_Master_Write *****************
;; Defined at:
;;		line 56 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
;; Parameters:    Size  Location     Type
;;  dataOUT         2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Master_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	56
global __ptext2
__ptext2:	;psect for function _I2C_Master_Write
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
	line	56
	global	__size_of_I2C_Master_Write
	__size_of_I2C_Master_Write	equ	__end_of_I2C_Master_Write-_I2C_Master_Write
	
_I2C_Master_Write:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Master_Write: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l538:	
;BajanDecierdo_IIC.h: 58: I2C_Master_Wait();
	fcall	_I2C_Master_Wait
	line	59
	
l540:	
;BajanDecierdo_IIC.h: 59: SSPBUF = dataOUT;
	movf	(I2C_Master_Write@dataOUT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	60
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Write
	__end_of_I2C_Master_Write:
	signat	_I2C_Master_Write,4216
	global	_I2C_Master_Stop

;; *************** function _I2C_Master_Stop *****************
;; Defined at:
;;		line 48 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Master_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	48
global __ptext3
__ptext3:	;psect for function _I2C_Master_Stop
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
	line	48
	global	__size_of_I2C_Master_Stop
	__size_of_I2C_Master_Stop	equ	__end_of_I2C_Master_Stop-_I2C_Master_Stop
	
_I2C_Master_Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Master_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l534:	
;BajanDecierdo_IIC.h: 50: I2C_Master_Wait();
	fcall	_I2C_Master_Wait
	line	51
	
l536:	
;BajanDecierdo_IIC.h: 51: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	52
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Stop
	__end_of_I2C_Master_Stop:
	signat	_I2C_Master_Stop,88
	global	_I2C_Master_Start

;; *************** function _I2C_Master_Start *****************
;; Defined at:
;;		line 36 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Master_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	36
global __ptext4
__ptext4:	;psect for function _I2C_Master_Start
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
	line	36
	global	__size_of_I2C_Master_Start
	__size_of_I2C_Master_Start	equ	__end_of_I2C_Master_Start-_I2C_Master_Start
	
_I2C_Master_Start:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Master_Start: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l530:	
;BajanDecierdo_IIC.h: 38: I2C_Master_Wait();
	fcall	_I2C_Master_Wait
	line	39
	
l532:	
;BajanDecierdo_IIC.h: 39: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	40
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Start
	__end_of_I2C_Master_Start:
	signat	_I2C_Master_Start,88
	global	_I2C_Master_Wait

;; *************** function _I2C_Master_Wait *****************
;; Defined at:
;;		line 30 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Master_Start
;;		_I2C_Master_Stop
;;		_I2C_Master_Write
;;		_I2C_Master_RepeatedStart
;;		_I2C_Master_Read
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	30
global __ptext5
__ptext5:	;psect for function _I2C_Master_Wait
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-1\BajanDecierdo_IIC.h"
	line	30
	global	__size_of_I2C_Master_Wait
	__size_of_I2C_Master_Wait	equ	__end_of_I2C_Master_Wait-_I2C_Master_Wait
	
_I2C_Master_Wait:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Master_Wait: [wreg+status,2]
	line	33
	
l518:	
;BajanDecierdo_IIC.h: 33: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l38
	
l39:	
	
l38:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l38
u10:
	
l520:	
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l38
u20:
	goto	l41
	
l40:	
	line	34
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_Wait
	__end_of_I2C_Master_Wait:
	signat	_I2C_Master_Wait,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
