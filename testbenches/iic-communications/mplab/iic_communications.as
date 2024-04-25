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
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_str
	FNCALL	_lcd_str,_lcd_data
	FNCALL	_lcd_data,_IIC_Send
	FNCALL	_lcd_data,_IIC_Start
	FNCALL	_lcd_data,_IIC_Stop
	FNCALL	_lcd_init,_iic_init
	FNCALL	_lcd_init,_lcd_cmd
	FNCALL	_lcd_cmd,_IIC_Send
	FNCALL	_lcd_cmd,_IIC_Start
	FNCALL	_lcd_cmd,_IIC_Stop
	FNCALL	_IIC_Stop,_IIC_Wait
	FNCALL	_IIC_Start,_IIC_Wait
	FNCALL	_IIC_Send,_IIC_Wait
	FNROOT	_main
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_TMR0
_TMR0	set	0x1
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISC
_TRISC	set	0x87
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
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	44	;','
	retlw	32	;' '
	retlw	87	;'W'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	108	;'l'
	retlw	100	;'d'
	retlw	33	;'!'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
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
	file	"iic_communications.as"
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
?_lcd_cmd:	; 0 bytes @ 0x0
?_IIC_Wait:	; 0 bytes @ 0x0
??_IIC_Wait:	; 0 bytes @ 0x0
?_iic_init:	; 0 bytes @ 0x0
??_iic_init:	; 0 bytes @ 0x0
?_IIC_Start:	; 0 bytes @ 0x0
??_IIC_Start:	; 0 bytes @ 0x0
?_IIC_Stop:	; 0 bytes @ 0x0
??_IIC_Stop:	; 0 bytes @ 0x0
?_IIC_Send:	; 0 bytes @ 0x0
??_IIC_Send:	; 0 bytes @ 0x0
?_lcd_init:	; 0 bytes @ 0x0
?_lcd_data:	; 0 bytes @ 0x0
?_lcd_str:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	IIC_Send@data
IIC_Send@data:	; 1 bytes @ 0x0
	ds	1
??_lcd_cmd:	; 0 bytes @ 0x1
??_lcd_data:	; 0 bytes @ 0x1
	ds	1
	global	lcd_cmd@cmd
lcd_cmd@cmd:	; 1 bytes @ 0x2
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x2
	ds	1
??_lcd_init:	; 0 bytes @ 0x3
??_lcd_str:	; 0 bytes @ 0x3
	ds	1
	global	lcd_str@str
lcd_str@str:	; 1 bytes @ 0x4
	ds	1
??_main:	; 0 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     14
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
;!    lcd_str@str	PTR const unsigned char  size(1) Largest target is 14
;!		 -> STR_1(CODE[14]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_lcd_str
;!    _lcd_str->_lcd_data
;!    _lcd_data->_IIC_Send
;!    _lcd_init->_lcd_cmd
;!    _lcd_cmd->_IIC_Send
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
;! (0) _main                                                 0     0      0     168
;!                           _lcd_init
;!                            _lcd_str
;! ---------------------------------------------------------------------------------
;! (1) _lcd_str                                              2     2      0     123
;!                                              3 COMMON     2     2      0
;!                           _lcd_data
;! ---------------------------------------------------------------------------------
;! (2) _lcd_data                                             2     2      0      45
;!                                              1 COMMON     2     2      0
;!                           _IIC_Send
;!                          _IIC_Start
;!                           _IIC_Stop
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             0     0      0      45
;!                           _iic_init
;!                            _lcd_cmd
;! ---------------------------------------------------------------------------------
;! (2) _lcd_cmd                                              2     2      0      45
;!                                              1 COMMON     2     2      0
;!                           _IIC_Send
;!                          _IIC_Start
;!                           _IIC_Stop
;! ---------------------------------------------------------------------------------
;! (3) _IIC_Stop                                             0     0      0       0
;!                           _IIC_Wait
;! ---------------------------------------------------------------------------------
;! (3) _IIC_Start                                            0     0      0       0
;!                           _IIC_Wait
;! ---------------------------------------------------------------------------------
;! (3) _IIC_Send                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;!                           _IIC_Wait
;! ---------------------------------------------------------------------------------
;! (4) _IIC_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _iic_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _lcd_init
;!     _iic_init
;!     _lcd_cmd
;!       _IIC_Send
;!         _IIC_Wait
;!       _IIC_Start
;!         _IIC_Wait
;!       _IIC_Stop
;!         _IIC_Wait
;!   _lcd_str
;!     _lcd_data
;!       _IIC_Send
;!         _IIC_Wait
;!       _IIC_Start
;!         _IIC_Wait
;!       _IIC_Stop
;!         _IIC_Wait
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
;;		line 14 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_lcd_init
;;		_lcd_str
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\main.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\main.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	16
	
l641:	
;main.c: 16: TRISC = 0b00011000;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	17
	
l643:	
;main.c: 17: lcd_init();
	fcall	_lcd_init
	line	18
	
l645:	
;main.c: 18: lcd_str("Hello, World!");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_lcd_str
	line	19
;main.c: 19: while (1);
	
l95:	
	
l96:	
	goto	l95
	
l97:	
	line	20
	
l98:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_lcd_str

;; *************** function _lcd_str *****************
;; Defined at:
;;		line 46 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(14), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_data
;; This function is called by:
;;		_main
;;		_lcd_str_xy
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
	line	46
global __ptext1
__ptext1:	;psect for function _lcd_str
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
	line	46
	global	__size_of_lcd_str
	__size_of_lcd_str	equ	__end_of_lcd_str-_lcd_str
	
_lcd_str:	
;incstack = 0
	opt	stack 4
; Regs used in _lcd_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_str@str stored from wreg
	movwf	(lcd_str@str)
	line	47
	
l585:	
;iic_lcd.h: 47: while (*str) {
	goto	l591
	
l74:	
	line	48
	
l587:	
;iic_lcd.h: 48: lcd_data(*str++);
	movf	(lcd_str@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_data
	
l589:	
	movlw	(01h)
	movwf	(??_lcd_str+0)+0
	movf	(??_lcd_str+0)+0,w
	addwf	(lcd_str@str),f
	goto	l591
	line	49
	
l73:	
	line	47
	
l591:	
	movf	(lcd_str@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u51
	goto	u50
u51:
	goto	l587
u50:
	goto	l76
	
l75:	
	line	50
	
l76:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_str
	__end_of_lcd_str:
	signat	_lcd_str,4216
	global	_lcd_data

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 38 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_IIC_Send
;;		_IIC_Start
;;		_IIC_Stop
;; This function is called by:
;;		_lcd_str
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	38
global __ptext2
__ptext2:	;psect for function _lcd_data
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
	line	38
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
;incstack = 0
	opt	stack 4
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	39
	
l581:	
;iic_lcd.h: 39: IIC_Start();
	fcall	_IIC_Start
	line	40
;iic_lcd.h: 40: IIC_Send((0x20 << 1) | 0x01);
	movlw	(041h)
	fcall	_IIC_Send
	line	41
;iic_lcd.h: 41: IIC_Send(data & 0xF0);
	movf	(lcd_data@data),w
	andlw	0F0h
	fcall	_IIC_Send
	line	42
;iic_lcd.h: 42: IIC_Send((data << 4) & 0xF0);
	movf	(lcd_data@data),w
	movwf	(??_lcd_data+0)+0
	movlw	(04h)-1
u45:
	clrc
	rlf	(??_lcd_data+0)+0,f
	addlw	-1
	skipz
	goto	u45
	clrc
	rlf	(??_lcd_data+0)+0,w
	andlw	0F0h
	fcall	_IIC_Send
	line	43
;iic_lcd.h: 43: IIC_Stop();
	fcall	_IIC_Stop
	line	44
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
	signat	_lcd_data,4216
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 22 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_iic_init
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	22
global __ptext3
__ptext3:	;psect for function _lcd_init
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
	line	22
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;incstack = 0
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l583:	
;iic_lcd.h: 23: iic_init();
	fcall	_iic_init
	line	24
;iic_lcd.h: 24: lcd_cmd(0x38);
	movlw	(038h)
	fcall	_lcd_cmd
	line	25
;iic_lcd.h: 25: lcd_cmd(0x0C);
	movlw	(0Ch)
	fcall	_lcd_cmd
	line	26
;iic_lcd.h: 26: lcd_cmd(0x06);
	movlw	(06h)
	fcall	_lcd_cmd
	line	27
;iic_lcd.h: 27: lcd_cmd(0x01);
	movlw	(01h)
	fcall	_lcd_cmd
	line	28
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,88
	global	_lcd_cmd

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 30 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_IIC_Send
;;		_IIC_Start
;;		_IIC_Stop
;; This function is called by:
;;		_lcd_init
;;		_lcd_str_xy
;;		_lcd_clear
;;		_lcd_home
;;		_lcd_set_cursor
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	30
global __ptext4
__ptext4:	;psect for function _lcd_cmd
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic_lcd.h"
	line	30
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
;incstack = 0
	opt	stack 4
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@cmd stored from wreg
	movwf	(lcd_cmd@cmd)
	line	31
	
l579:	
;iic_lcd.h: 31: IIC_Start();
	fcall	_IIC_Start
	line	32
;iic_lcd.h: 32: IIC_Send(0x20 << 1);
	movlw	(040h)
	fcall	_IIC_Send
	line	33
;iic_lcd.h: 33: IIC_Send(cmd & 0xF0);
	movf	(lcd_cmd@cmd),w
	andlw	0F0h
	fcall	_IIC_Send
	line	34
;iic_lcd.h: 34: IIC_Send((cmd << 4) & 0xF0);
	movf	(lcd_cmd@cmd),w
	movwf	(??_lcd_cmd+0)+0
	movlw	(04h)-1
u35:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u35
	clrc
	rlf	(??_lcd_cmd+0)+0,w
	andlw	0F0h
	fcall	_IIC_Send
	line	35
;iic_lcd.h: 35: IIC_Stop();
	fcall	_IIC_Stop
	line	36
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
	signat	_lcd_cmd,4216
	global	_IIC_Stop

;; *************** function _IIC_Stop *****************
;; Defined at:
;;		line 38 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
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
;;		_IIC_Wait
;; This function is called by:
;;		_lcd_cmd
;;		_lcd_data
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
	line	38
global __ptext5
__ptext5:	;psect for function _IIC_Stop
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
	line	38
	global	__size_of_IIC_Stop
	__size_of_IIC_Stop	equ	__end_of_IIC_Stop-_IIC_Stop
	
_IIC_Stop:	
;incstack = 0
	opt	stack 4
; Regs used in _IIC_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l565:	
;iic.h: 39: IIC_Wait();
	fcall	_IIC_Wait
	line	40
	
l567:	
;iic.h: 40: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	41
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Stop
	__end_of_IIC_Stop:
	signat	_IIC_Stop,88
	global	_IIC_Start

;; *************** function _IIC_Start *****************
;; Defined at:
;;		line 28 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
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
;;		_IIC_Wait
;; This function is called by:
;;		_lcd_cmd
;;		_lcd_data
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	28
global __ptext6
__ptext6:	;psect for function _IIC_Start
psect	text6
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
	line	28
	global	__size_of_IIC_Start
	__size_of_IIC_Start	equ	__end_of_IIC_Start-_IIC_Start
	
_IIC_Start:	
;incstack = 0
	opt	stack 4
; Regs used in _IIC_Start: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l561:	
;iic.h: 29: IIC_Wait();
	fcall	_IIC_Wait
	line	30
	
l563:	
;iic.h: 30: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	31
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Start
	__end_of_IIC_Start:
	signat	_IIC_Start,88
	global	_IIC_Send

;; *************** function _IIC_Send *****************
;; Defined at:
;;		line 43 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;		_IIC_Wait
;; This function is called by:
;;		_lcd_cmd
;;		_lcd_data
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	43
global __ptext7
__ptext7:	;psect for function _IIC_Send
psect	text7
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
	line	43
	global	__size_of_IIC_Send
	__size_of_IIC_Send	equ	__end_of_IIC_Send-_IIC_Send
	
_IIC_Send:	
;incstack = 0
	opt	stack 4
; Regs used in _IIC_Send: [wreg+status,2+status,0+pclath+cstack]
;IIC_Send@data stored from wreg
	movwf	(IIC_Send@data)
	line	44
	
l569:	
;iic.h: 44: IIC_Wait();
	fcall	_IIC_Wait
	line	45
	
l571:	
;iic.h: 45: SSPBUF = data;
	movf	(IIC_Send@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	46
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Send
	__end_of_IIC_Send:
	signat	_IIC_Send,4216
	global	_IIC_Wait

;; *************** function _IIC_Wait *****************
;; Defined at:
;;		line 17 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
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
;;		_IIC_Start
;;		_IIC_Stop
;;		_IIC_Send
;;		_IIC_Repeated_Start
;;		_IIC_Read
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	17
global __ptext8
__ptext8:	;psect for function _IIC_Wait
psect	text8
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
	line	17
	global	__size_of_IIC_Wait
	__size_of_IIC_Wait	equ	__end_of_IIC_Wait-_IIC_Wait
	
_IIC_Wait:	
;incstack = 0
	opt	stack 4
; Regs used in _IIC_Wait: [wreg+status,2]
	line	18
	
l555:	
;iic.h: 18: while ((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
	goto	l557
	
l32:	
	goto	l557
	
l31:	
	
l557:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l557
u10:
	
l559:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l557
u20:
	goto	l34
	
l33:	
	line	19
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_IIC_Wait
	__end_of_IIC_Wait:
	signat	_IIC_Wait,88
	global	_iic_init

;; *************** function _iic_init *****************
;; Defined at:
;;		line 21 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
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
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	21
global __ptext9
__ptext9:	;psect for function _iic_init
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\iic-communications\mplab\iic.h"
	line	21
	global	__size_of_iic_init
	__size_of_iic_init	equ	__end_of_iic_init-_iic_init
	
_iic_init:	
;incstack = 0
	opt	stack 6
; Regs used in _iic_init: [wreg+status,2]
	line	22
	
l573:	
;iic.h: 22: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	23
	
l575:	
;iic.h: 23: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	24
	
l577:	
;iic.h: 24: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	25
;iic.h: 25: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	26
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_iic_init
	__end_of_iic_init:
	signat	_iic_init,88
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
