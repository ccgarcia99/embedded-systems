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
	FNCALL	_main,_I2C_Master_init
	FNCALL	_main,_LCD_Char
	FNCALL	_main,_LCD_Init
	FNCALL	_LCD_Init,_LCD_Command
	FNCALL	_LCD_Command,_I2C_Send
	FNCALL	_LCD_Command,_I2C_Start
	FNCALL	_LCD_Command,_I2C_Stop
	FNCALL	_LCD_Char,_I2C_Send
	FNCALL	_LCD_Char,_I2C_Start
	FNCALL	_LCD_Char,_I2C_Stop
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNROOT	_main
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
__ptext0:	;psect for function _I2C_Master_init
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
	file	"lcd_iic.as"
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
?_I2C_Master_init:	; 0 bytes @ 0x0
??_I2C_Master_init:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
?_LCD_Command:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_LCD_Char:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	I2C_Send@dataOUT
I2C_Send@dataOUT:	; 1 bytes @ 0x0
	ds	1
??_LCD_Command:	; 0 bytes @ 0x1
??_LCD_Char:	; 0 bytes @ 0x1
	ds	2
	global	LCD_Command@command
LCD_Command@command:	; 1 bytes @ 0x3
	global	LCD_Char@data
LCD_Char@data:	; 1 bytes @ 0x3
	ds	1
??_LCD_Init:	; 0 bytes @ 0x4
	global	LCD_Char@chUPPER
LCD_Char@chUPPER:	; 1 bytes @ 0x4
	ds	1
	global	LCD_Char@chLOWER
LCD_Char@chLOWER:	; 1 bytes @ 0x5
	ds	1
	global	LCD_Char@control_byte
LCD_Char@control_byte:	; 1 bytes @ 0x6
	ds	1
??_main:	; 0 bytes @ 0x7
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
;!    COMMON           14      7       7
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
;!    _main->_LCD_Char
;!    _LCD_Init->_LCD_Command
;!    _LCD_Command->_I2C_Send
;!    _LCD_Char->_I2C_Send
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     195
;!                    _I2C_Master_init
;!                           _LCD_Char
;!                           _LCD_Init
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      30
;!                                              4 COMMON     2     2      0
;!                        _LCD_Command
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Command                                          3     3      0      30
;!                                              1 COMMON     3     3      0
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Char                                             6     6      0     165
;!                                              1 COMMON     6     6      0
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Start                                            0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Send                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Master_init                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Master_init
;!   _LCD_Char
;!     _I2C_Send
;!       _I2C_Wait
;!     _I2C_Start
;!       _I2C_Wait
;!     _I2C_Stop
;!       _I2C_Wait
;!   _LCD_Init
;!     _LCD_Command
;!       _I2C_Send
;!         _I2C_Wait
;!       _I2C_Start
;!         _I2C_Wait
;!       _I2C_Stop
;!         _I2C_Wait
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       7       1       50.0%
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
;;		line 16 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\main.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Master_init
;;		_LCD_Char
;;		_LCD_Init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\main.c"
	line	16
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l620:	
;main.c: 18: I2C_Master_init();
	fcall	_I2C_Master_init
	line	19
;main.c: 19: LCD_Init();
	fcall	_LCD_Init
	line	20
;main.c: 20: LCD_Char('A');
	movlw	(041h)
	fcall	_LCD_Char
	line	21
;main.c: 21: while(1)
	
l64:	
	line	23
;main.c: 22: {
;main.c: 23: LCD_Char('A');
	movlw	(041h)
	fcall	_LCD_Char
	goto	l64
	line	24
	
l65:	
	line	21
	goto	l64
	
l66:	
	line	25
	
l67:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 31 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
	line	31
global __ptext1
__ptext1:	;psect for function _LCD_Init
psect	text1
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
	line	31
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l552:	
;lcd_i2c.h: 33: _delay((unsigned long)((40)*(4000000/4000.0)));
	opt asmopt_off
movlw	52
movwf	((??_LCD_Init+0)+0+1),f
	movlw	241
movwf	((??_LCD_Init+0)+0),f
u67:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u67
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u67
	nop2
opt asmopt_on

	line	35
	
l554:	
;lcd_i2c.h: 35: LCD_Command(0x30);
	movlw	(030h)
	fcall	_LCD_Command
	line	36
	
l556:	
;lcd_i2c.h: 36: _delay((unsigned long)((5)*(4000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_LCD_Init+0)+0+1),f
	movlw	125
movwf	((??_LCD_Init+0)+0),f
u77:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u77
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u77
opt asmopt_on

	line	37
;lcd_i2c.h: 37: LCD_Command(0x30);
	movlw	(030h)
	fcall	_LCD_Command
	line	38
	
l558:	
;lcd_i2c.h: 38: _delay((unsigned long)((200)*(4000000/4000000.0)));
	opt asmopt_off
movlw	66
movwf	(??_LCD_Init+0)+0,f
u87:
decfsz	(??_LCD_Init+0)+0,f
	goto	u87
	nop
opt asmopt_on

	line	39
	
l560:	
;lcd_i2c.h: 39: LCD_Command(0x30);
	movlw	(030h)
	fcall	_LCD_Command
	line	41
	
l562:	
;lcd_i2c.h: 41: LCD_Command(0x28);
	movlw	(028h)
	fcall	_LCD_Command
	line	42
	
l564:	
;lcd_i2c.h: 42: LCD_Command(0x08);
	movlw	(08h)
	fcall	_LCD_Command
	line	43
	
l566:	
;lcd_i2c.h: 43: LCD_Command(0x01);
	movlw	(01h)
	fcall	_LCD_Command
	line	44
	
l568:	
;lcd_i2c.h: 44: LCD_Command(0x06);
	movlw	(06h)
	fcall	_LCD_Command
	line	45
	
l570:	
;lcd_i2c.h: 45: LCD_Command(0x0F);
	movlw	(0Fh)
	fcall	_LCD_Command
	line	46
	
l572:	
;lcd_i2c.h: 46: LCD_Command(0x02);
	movlw	(02h)
	fcall	_LCD_Command
	line	47
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_Command

;; *************** function _LCD_Command *****************
;; Defined at:
;;		line 21 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
;; Parameters:    Size  Location     Type
;;  command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  command         1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;; This function is called by:
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	21
global __ptext2
__ptext2:	;psect for function _LCD_Command
psect	text2
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
	line	21
	global	__size_of_LCD_Command
	__size_of_LCD_Command	equ	__end_of_LCD_Command-_LCD_Command
	
_LCD_Command:	
;incstack = 0
	opt	stack 4
; Regs used in _LCD_Command: [wreg+status,2+status,0+pclath+cstack]
;LCD_Command@command stored from wreg
	movwf	(LCD_Command@command)
	line	23
	
l540:	
;lcd_i2c.h: 23: I2C_Start();
	fcall	_I2C_Start
	line	24
;lcd_i2c.h: 24: I2C_Send(0x27 << 1);
	movlw	(04Eh)
	fcall	_I2C_Send
	line	25
;lcd_i2c.h: 25: I2C_Send(0x00);
	movlw	(0)
	fcall	_I2C_Send
	line	26
;lcd_i2c.h: 26: I2C_Send(command);
	movf	(LCD_Command@command),w
	fcall	_I2C_Send
	line	27
;lcd_i2c.h: 27: I2C_Stop();
	fcall	_I2C_Stop
	line	28
	
l542:	
;lcd_i2c.h: 28: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_LCD_Command+0)+0+1),f
	movlw	151
movwf	((??_LCD_Command+0)+0),f
u97:
	decfsz	((??_LCD_Command+0)+0),f
	goto	u97
	decfsz	((??_LCD_Command+0)+0+1),f
	goto	u97
	nop2
opt asmopt_on

	line	29
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Command
	__end_of_LCD_Command:
	signat	_LCD_Command,4216
	global	_LCD_Char

;; *************** function _LCD_Char *****************
;; Defined at:
;;		line 49 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] unsigned char 
;;  control_byte    1    6[COMMON] unsigned char 
;;  chLOWER         1    5[COMMON] unsigned char 
;;  chUPPER         1    4[COMMON] unsigned char 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	49
global __ptext3
__ptext3:	;psect for function _LCD_Char
psect	text3
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\lcd_i2c.h"
	line	49
	global	__size_of_LCD_Char
	__size_of_LCD_Char	equ	__end_of_LCD_Char-_LCD_Char
	
_LCD_Char:	
;incstack = 0
	opt	stack 5
; Regs used in _LCD_Char: [wreg+status,2+status,0+pclath+cstack]
;LCD_Char@data stored from wreg
	movwf	(LCD_Char@data)
	line	53
	
l574:	
;lcd_i2c.h: 51: char chUPPER, chLOWER, control_byte;
;lcd_i2c.h: 53: chUPPER = (data & 0xF0);
	movf	(LCD_Char@data),w
	andlw	0F0h
	movwf	(??_LCD_Char+0)+0
	movf	(??_LCD_Char+0)+0,w
	movwf	(LCD_Char@chUPPER)
	line	54
	
l576:	
;lcd_i2c.h: 54: chLOWER = (data << 4) & 0xF0;
	movf	(LCD_Char@data),w
	movwf	(??_LCD_Char+0)+0
	movlw	(04h)-1
u35:
	clrc
	rlf	(??_LCD_Char+0)+0,f
	addlw	-1
	skipz
	goto	u35
	clrc
	rlf	(??_LCD_Char+0)+0,w
	andlw	0F0h
	movwf	(??_LCD_Char+1)+0
	movf	(??_LCD_Char+1)+0,w
	movwf	(LCD_Char@chLOWER)
	line	56
	
l578:	
;lcd_i2c.h: 56: control_byte = 0x01 | 0x08;
	movlw	(09h)
	movwf	(??_LCD_Char+0)+0
	movf	(??_LCD_Char+0)+0,w
	movwf	(LCD_Char@control_byte)
	line	59
	
l580:	
;lcd_i2c.h: 59: I2C_Start();
	fcall	_I2C_Start
	line	60
	
l582:	
;lcd_i2c.h: 60: I2C_Send(0x27 << 1);
	movlw	(04Eh)
	fcall	_I2C_Send
	line	61
	
l584:	
;lcd_i2c.h: 61: I2C_Send(chUPPER | control_byte | 0x04);
	movf	(LCD_Char@chUPPER),w
	iorwf	(LCD_Char@control_byte),w
	iorlw	04h
	fcall	_I2C_Send
	line	62
	
l586:	
;lcd_i2c.h: 62: I2C_Send(chUPPER | control_byte);
	movf	(LCD_Char@chUPPER),w
	iorwf	(LCD_Char@control_byte),w
	fcall	_I2C_Send
	line	63
	
l588:	
;lcd_i2c.h: 63: I2C_Stop();
	fcall	_I2C_Stop
	line	66
	
l590:	
;lcd_i2c.h: 66: I2C_Start();
	fcall	_I2C_Start
	line	67
	
l592:	
;lcd_i2c.h: 67: I2C_Send(0x27 << 1);
	movlw	(04Eh)
	fcall	_I2C_Send
	line	68
	
l594:	
;lcd_i2c.h: 68: I2C_Send(chLOWER | control_byte | 0x04);
	movf	(LCD_Char@chLOWER),w
	iorwf	(LCD_Char@control_byte),w
	iorlw	04h
	fcall	_I2C_Send
	line	69
	
l596:	
;lcd_i2c.h: 69: I2C_Send(chLOWER | control_byte);
	movf	(LCD_Char@chLOWER),w
	iorwf	(LCD_Char@control_byte),w
	fcall	_I2C_Send
	line	70
	
l598:	
;lcd_i2c.h: 70: I2C_Stop();
	fcall	_I2C_Stop
	line	72
	
l600:	
;lcd_i2c.h: 72: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_LCD_Char+0)+0+1),f
	movlw	151
movwf	((??_LCD_Char+0)+0),f
u107:
	decfsz	((??_LCD_Char+0)+0),f
	goto	u107
	decfsz	((??_LCD_Char+0)+0+1),f
	goto	u107
	nop2
opt asmopt_on

	line	73
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Char
	__end_of_LCD_Char:
	signat	_LCD_Char,4216
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 42 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
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
;;		_I2C_Wait
;; This function is called by:
;;		_LCD_Command
;;		_LCD_Char
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
	line	42
global __ptext4
__ptext4:	;psect for function _I2C_Stop
psect	text4
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
	line	42
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 4
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l532:	
;i2c_func.h: 44: I2C_Wait();
	fcall	_I2C_Wait
	line	45
	
l534:	
;i2c_func.h: 45: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	46
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 30 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
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
;;		_I2C_Wait
;; This function is called by:
;;		_LCD_Command
;;		_LCD_Char
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	30
global __ptext5
__ptext5:	;psect for function _I2C_Start
psect	text5
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
	line	30
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 4
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l528:	
;i2c_func.h: 32: I2C_Wait();
	fcall	_I2C_Wait
	line	33
	
l530:	
;i2c_func.h: 33: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	34
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 48 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
;; Parameters:    Size  Location     Type
;;  dataOUT         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataOUT         1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_LCD_Command
;;		_LCD_Char
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	48
global __ptext6
__ptext6:	;psect for function _I2C_Send
psect	text6
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
	line	48
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 4
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@dataOUT stored from wreg
	movwf	(I2C_Send@dataOUT)
	line	50
	
l536:	
;i2c_func.h: 50: I2C_Wait();
	fcall	_I2C_Wait
	line	51
	
l538:	
;i2c_func.h: 51: SSPBUF = dataOUT;
	movf	(I2C_Send@dataOUT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	52
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 25 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
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
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Send
;;		_I2C_Repeated_Start
;;		_I2C_Read
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	25
global __ptext7
__ptext7:	;psect for function _I2C_Wait
psect	text7
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
	line	25
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 4
; Regs used in _I2C_Wait: [wreg+status,2]
	line	27
	
l524:	
;i2c_func.h: 27: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l34
	
l35:	
	
l34:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l34
u10:
	
l526:	
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l34
u20:
	goto	l37
	
l36:	
	line	28
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Wait
	__end_of_I2C_Wait:
	signat	_I2C_Wait,88
	global	_I2C_Master_init

;; *************** function _I2C_Master_init *****************
;; Defined at:
;;		line 15 in file "C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	15
global __ptext8
__ptext8:	;psect for function _I2C_Master_init
psect	text8
	file	"C:\Users\ACER\Desktop\test\for-practice\mplab\practice1\i2c_func.h"
	line	15
	global	__size_of_I2C_Master_init
	__size_of_I2C_Master_init	equ	__end_of_I2C_Master_init-_I2C_Master_init
	
_I2C_Master_init:	
;incstack = 0
	opt	stack 7
; Regs used in _I2C_Master_init: [wreg+status,2]
	line	17
	
l544:	
;i2c_func.h: 17: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	18
;i2c_func.h: 18: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	19
	
l546:	
;i2c_func.h: 19: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	20
	
l548:	
;i2c_func.h: 20: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	21
	
l550:	
;i2c_func.h: 21: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	22
;i2c_func.h: 22: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	23
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Master_init
	__end_of_I2C_Master_init:
	signat	_I2C_Master_init,88
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
