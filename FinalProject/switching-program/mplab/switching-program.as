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
	FNCALL	_main,_checkTime
	FNCALL	_main,_displayTime
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCTRL
	FNCALL	_main,_printToLCD
	FNCALL	_main,_setTimer
	FNCALL	_setTimer,_instCTRL
	FNCALL	_setTimer,_printToLCD
	FNCALL	_setTimer,_sprintf
	FNCALL	_initLCD,_instCTRL
	FNCALL	_displayTime,_instCTRL
	FNCALL	_displayTime,_printToLCD
	FNCALL	_displayTime,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_checkTime,_instCTRL
	FNCALL	_checkTime,_printToLCD
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_printToLCD,_instCTRL
	FNROOT	_main
	FNCALL	_ISR,i1_instCTRL
	FNCALL	_ISR,i1_printToLCD
	FNCALL	i1_printToLCD,i1_dataCTRL
	FNCALL	i1_printToLCD,i1_instCTRL
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_hours
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	31

;initializer for _hours
	retlw	08h
	retlw	0

	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_mins
	global	_mode
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global __stringdata
__stringdata:
	
STR_4:	
	retlw	67	;'C'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	84	;'T'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_7:	
	retlw	76	;'L'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	76	;'L'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_2:	
	retlw	82	;'R'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_3:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	strings
STR_5	equ	STR_4+0
STR_6	equ	STR_4+4
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
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
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"switching-program.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_mins:
       ds      2

_mode:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	31
_hours:
       ds      2

	file	"switching-program.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_displayTime:	; 0 bytes @ 0x0
?_setTimer:	; 0 bytes @ 0x0
?_checkTime:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?i1_instCTRL:	; 0 bytes @ 0x0
??i1_instCTRL:	; 0 bytes @ 0x0
?i1_dataCTRL:	; 0 bytes @ 0x0
??i1_dataCTRL:	; 0 bytes @ 0x0
	ds	1
	global	i1instCTRL@CMD
i1instCTRL@CMD:	; 1 bytes @ 0x1
	global	i1dataCTRL@DAT
i1dataCTRL@DAT:	; 1 bytes @ 0x1
	ds	1
?i1_printToLCD:	; 0 bytes @ 0x2
	global	i1printToLCD@str
i1printToLCD@str:	; 2 bytes @ 0x2
	ds	2
??_ISR:	; 0 bytes @ 0x4
??i1_printToLCD:	; 0 bytes @ 0x4
	ds	7
	global	_ISR$81
_ISR$81:	; 1 bytes @ 0xB
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_isdigit:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	_isdigit$311
_isdigit$311:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x1
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_initLCD:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
	global	printToLCD@str
printToLCD@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
??_checkTime:	; 0 bytes @ 0x4
??_printToLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	ds	5
??_sprintf:	; 0 bytes @ 0x13
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x18
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1C
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1D
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1F
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x20
	ds	1
??_displayTime:	; 0 bytes @ 0x21
??_setTimer:	; 0 bytes @ 0x21
	ds	2
	global	displayTime@time
displayTime@time:	; 20 bytes @ 0x23
	ds	1
	global	setTimer@time
setTimer@time:	; 20 bytes @ 0x24
	ds	20
??_main:	; 0 bytes @ 0x38
	ds	3
;!
;!Data Sizes:
;!    Strings     70
;!    Constant    10
;!    Data        2
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      12
;!    BANK0            80     59      64
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 24
;!		 -> STR_6(CODE[20]), STR_5(CODE[24]), STR_4(CODE[24]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> displayTime@time(BANK0[20]), setTimer@time(BANK0[20]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S115$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    ISR$81	PTR const unsigned char  size(1) Largest target is 4
;!		 -> STR_3(CODE[4]), STR_2(CODE[4]), 
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 20
;!		 -> STR_8(CODE[11]), STR_7(CODE[11]), displayTime@time(BANK0[20]), setTimer@time(BANK0[20]), 
;!		 -> STR_3(CODE[4]), STR_2(CODE[4]), STR_1(CODE[16]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1_printToLCD
;!    i1_printToLCD->i1_dataCTRL
;!    i1_printToLCD->i1_instCTRL
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_setTimer
;!    _setTimer->_sprintf
;!    _initLCD->_instCTRL
;!    _displayTime->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _checkTime->_printToLCD
;!    _printToLCD->_dataCTRL
;!    _printToLCD->_instCTRL
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 3     3      0    5908
;!                                             56 BANK0      3     3      0
;!                          _checkTime
;!                        _displayTime
;!                            _initLCD
;!                           _instCTRL
;!                         _printToLCD
;!                           _setTimer
;! ---------------------------------------------------------------------------------
;! (1) _setTimer                                            23    23      0    2509
;!                                             33 BANK0     23    23      0
;!                           _instCTRL
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0      22
;!                                              2 BANK0      1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _displayTime                                         22    22      0    2465
;!                                             33 BANK0     22    22      0
;!                           _instCTRL
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             19    14      5    1947
;!                                             14 BANK0     19    14      5
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (3) _isdigit                                              2     2      0      68
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     198
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     268
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _checkTime                                            1     1      0     456
;!                                              4 BANK0      1     1      0
;!                           _instCTRL
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (2) _printToLCD                                           2     0      2     434
;!                                              2 BANK0      2     0      2
;!                           _dataCTRL
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (3) _instCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _dataCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  8     8      0     161
;!                                              4 COMMON     8     8      0
;!                         i1_instCTRL
;!                       i1_printToLCD
;! ---------------------------------------------------------------------------------
;! (5) i1_printToLCD                                         2     0      2     115
;!                                              2 COMMON     2     0      2
;!                         i1_dataCTRL
;!                         i1_instCTRL
;! ---------------------------------------------------------------------------------
;! (6) i1_instCTRL                                           2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (6) i1_dataCTRL                                           2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkTime
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!   _displayTime
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _initLCD
;!     _instCTRL
;!   _instCTRL
;!   _printToLCD
;!     _dataCTRL
;!     _instCTRL
;!   _setTimer
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!
;! _ISR (ROOT)
;!   i1_instCTRL
;!   i1_printToLCD
;!     i1_dataCTRL
;!     i1_instCTRL
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     3B      40       5       80.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4C      12        0.0%
;!ABS                  0      0      4C       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_checkTime
;;		_displayTime
;;		_initLCD
;;		_instCTRL
;;		_printToLCD
;;		_setTimer
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	34
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
l1284:	
;main.c: 36: TRISB = 0x03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	37
	
l1286:	
;main.c: 37: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	38
	
l1288:	
;main.c: 38: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	39
	
l1290:	
;main.c: 39: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	40
	
l1292:	
;main.c: 40: PORTD = 0x00;
	clrf	(8)	;volatile
	line	42
;main.c: 42: OPTION_REG = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	43
	
l1294:	
;main.c: 43: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	44
	
l1296:	
;main.c: 44: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	45
	
l1298:	
;main.c: 45: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	47
	
l1300:	
;main.c: 47: initLCD();
	fcall	_initLCD
	line	48
	
l1302:	
;main.c: 48: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	49
;main.c: 49: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u977:
decfsz	(??_main+0)+0,f
	goto	u977
opt asmopt_on

	line	50
	
l1304:	
;main.c: 50: printToLCD("Initializing...");
	movlw	low((STR_1)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	51
	
l1306:	
;main.c: 51: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u987:
	decfsz	((??_main+0)+0),f
	goto	u987
	decfsz	((??_main+0)+0+1),f
	goto	u987
	decfsz	((??_main+0)+0+2),f
	goto	u987
	nop2
opt asmopt_on

	line	52
	
l1308:	
;main.c: 52: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	53
	
l1310:	
;main.c: 53: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u997:
	decfsz	((??_main+0)+0),f
	goto	u997
	decfsz	((??_main+0)+0+1),f
	goto	u997
	decfsz	((??_main+0)+0+2),f
	goto	u997
	nop2
opt asmopt_on

	goto	l1318
	line	54
;main.c: 54: while (1)
	
l62:	
	line	56
;main.c: 55: {
;main.c: 56: switch (mode)
	goto	l1318
	line	58
;main.c: 57: {
;main.c: 58: case RUN:
	
l64:	
	line	59
	
l1312:	
;main.c: 59: displayTime();
	fcall	_displayTime
	line	60
;main.c: 60: break;
	goto	l1320
	line	61
;main.c: 61: case SET:
	
l66:	
	line	62
	
l1314:	
;main.c: 62: setTimer();
	fcall	_setTimer
	line	63
;main.c: 63: break;
	goto	l1320
	line	64
;main.c: 64: default:
	
l67:	
	line	65
;main.c: 65: break;
	goto	l1320
	line	66
	
l1316:	
;main.c: 66: }
	goto	l1320
	line	56
	
l63:	
	
l1318:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w	;volatile
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1312
	xorlw	1^0	; case 1
	skipnz
	goto	l1314
	goto	l1320
	opt asmopt_on

	line	66
	
l65:	
	line	67
	
l1320:	
;main.c: 67: checkTime();
	fcall	_checkTime
	goto	l1318
	line	68
	
l68:	
	line	54
	goto	l1318
	
l69:	
	line	69
	
l70:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_setTimer

;; *************** function _setTimer *****************
;; Defined at:
;;		line 87 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time           20   36[BANK0 ] unsigned char [20]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      20       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      23       0       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_instCTRL
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	87
global __ptext1
__ptext1:	;psect for function _setTimer
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	87
	global	__size_of_setTimer
	__size_of_setTimer	equ	__end_of_setTimer-_setTimer
	
_setTimer:	
;incstack = 0
	opt	stack 2
; Regs used in _setTimer: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	90
	
l1238:	
;main.c: 89: char time[20];
;main.c: 90: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	91
	
l1240:	
;main.c: 91: sprintf(time, "CurrTime: %02d:%02d    ", hours, mins);
	movlw	((STR_4)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setTimer+0)+0
	movf	(??_setTimer+0)+0,w
	movwf	(sprintf@f)
	movf	(_hours+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_hours),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(_mins+1),w	;volatile
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(_mins),w	;volatile
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(setTimer@time)&0ffh
	fcall	_sprintf
	line	92
	
l1242:	
;main.c: 92: printToLCD(time);
	movlw	(setTimer@time&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	94
	
l1244:	
;main.c: 94: if (RB1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u901
	goto	u900
u901:
	goto	l83
u900:
	line	96
	
l1246:	
;main.c: 95: {
;main.c: 96: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_setTimer+0)+0+2),f
movlw	138
movwf	((??_setTimer+0)+0+1),f
	movlw	86
movwf	((??_setTimer+0)+0),f
u1007:
	decfsz	((??_setTimer+0)+0),f
	goto	u1007
	decfsz	((??_setTimer+0)+0+1),f
	goto	u1007
	decfsz	((??_setTimer+0)+0+2),f
	goto	u1007
	nop2
opt asmopt_on

	line	98
;main.c: 98: hours++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_hours),f	;volatile
	skipnc
	incf	(_hours+1),f	;volatile
	movlw	high(01h)
	addwf	(_hours+1),f	;volatile
	line	99
	
l1248:	
;main.c: 99: if (hours >= 24)
	movf	(_hours+1),w	;volatile
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u915
	movlw	low(018h)
	subwf	(_hours),w	;volatile
u915:

	skipc
	goto	u911
	goto	u910
u911:
	goto	l1252
u910:
	line	101
	
l1250:	
;main.c: 100: {
;main.c: 101: hours = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_hours)	;volatile
	clrf	(_hours+1)	;volatile
	goto	l1252
	line	102
	
l82:	
	line	105
	
l1252:	
;main.c: 102: }
;main.c: 105: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	106
	
l1254:	
;main.c: 106: sprintf(time, "CurrTime: %02d:%02d    ", hours, mins);
	movlw	((STR_5)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setTimer+0)+0
	movf	(??_setTimer+0)+0,w
	movwf	(sprintf@f)
	movf	(_hours+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_hours),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(_mins+1),w	;volatile
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(_mins),w	;volatile
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(setTimer@time)&0ffh
	fcall	_sprintf
	line	107
	
l1256:	
;main.c: 107: printToLCD(time);
	movlw	(setTimer@time&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	goto	l83
	line	108
	
l81:	
	line	109
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_setTimer
	__end_of_setTimer:
	signat	_setTimer,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 34 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	34
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	34
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l1206:	
;lcd_functions.h: 35: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	36
	
l1208:	
;lcd_functions.h: 36: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_initLCD+0)+0,f
u1017:
decfsz	(??_initLCD+0)+0,f
	goto	u1017
	nop
opt asmopt_on

	line	37
	
l1210:	
;lcd_functions.h: 37: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	38
	
l1212:	
;lcd_functions.h: 38: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	39
	
l1214:	
;lcd_functions.h: 39: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	40
	
l1216:	
;lcd_functions.h: 40: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	41
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_displayTime

;; *************** function _displayTime *****************
;; Defined at:
;;		line 111 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time           20   35[BANK0 ] unsigned char [20]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      20       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      22       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_instCTRL
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	111
global __ptext3
__ptext3:	;psect for function _displayTime
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	111
	global	__size_of_displayTime
	__size_of_displayTime	equ	__end_of_displayTime-_displayTime
	
_displayTime:	
;incstack = 0
	opt	stack 2
; Regs used in _displayTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	114
	
l1218:	
;main.c: 113: char time[20];
;main.c: 114: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	115
	
l1220:	
;main.c: 115: sprintf(time, "Time: %02d:%02d    ", hours, mins);
	movlw	((STR_6)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayTime+0)+0
	movf	(??_displayTime+0)+0,w
	movwf	(sprintf@f)
	movf	(_hours+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_hours),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(_mins+1),w	;volatile
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(_mins),w	;volatile
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(displayTime@time)&0ffh
	fcall	_sprintf
	line	116
	
l1222:	
;main.c: 116: printToLCD(time);
	movlw	(displayTime@time&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	117
	
l1224:	
;main.c: 117: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_displayTime+0)+0+1),f
	movlw	238
movwf	((??_displayTime+0)+0),f
u1027:
	decfsz	((??_displayTime+0)+0),f
	goto	u1027
	decfsz	((??_displayTime+0)+0+1),f
	goto	u1027
	nop
opt asmopt_on

	line	120
	
l1226:	
;main.c: 120: mins++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_mins),f	;volatile
	skipnc
	incf	(_mins+1),f	;volatile
	movlw	high(01h)
	addwf	(_mins+1),f	;volatile
	line	121
	
l1228:	
;main.c: 121: if (mins >= 60)
	movf	(_mins+1),w	;volatile
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u885
	movlw	low(03Ch)
	subwf	(_mins),w	;volatile
u885:

	skipc
	goto	u881
	goto	u880
u881:
	goto	l88
u880:
	line	123
	
l1230:	
;main.c: 122: {
;main.c: 123: mins = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_mins)	;volatile
	clrf	(_mins+1)	;volatile
	line	124
	
l1232:	
;main.c: 124: hours++;
	movlw	low(01h)
	addwf	(_hours),f	;volatile
	skipnc
	incf	(_hours+1),f	;volatile
	movlw	high(01h)
	addwf	(_hours+1),f	;volatile
	line	125
	
l1234:	
;main.c: 125: if (hours >= 24)
	movf	(_hours+1),w	;volatile
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u895
	movlw	low(018h)
	subwf	(_hours),w	;volatile
u895:

	skipc
	goto	u891
	goto	u890
u891:
	goto	l88
u890:
	line	127
	
l1236:	
;main.c: 126: {
;main.c: 127: hours = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_hours)	;volatile
	clrf	(_hours+1)	;volatile
	goto	l88
	line	128
	
l87:	
	goto	l88
	line	129
	
l86:	
	line	130
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_displayTime
	__end_of_displayTime:
	signat	_displayTime,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> displayTime@time(20), setTimer@time(20), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(20), STR_5(24), STR_4(24), 
;; Auto vars:     Size  Location     Type
;;  sp              1   31[BANK0 ] PTR unsigned char 
;;		 -> displayTime@time(20), setTimer@time(20), 
;;  _val            4   24[BANK0 ] struct .
;;  width           2   29[BANK0 ] int 
;;  c               1   32[BANK0 ] char 
;;  flag            1   28[BANK0 ] unsigned char 
;;  prec            1   23[BANK0 ] char 
;;  ap              1   22[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_setTimer
;;		_displayTime
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext4
__ptext4:	;psect for function _sprintf
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 2
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l1076:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l1180
	
l105:	
	line	547
	
l1078:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u691
	goto	u690
u691:
	goto	l1084
u690:
	line	550
	
l1080:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1082:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l1180
	line	552
	
l106:	
	line	555
	
l1084:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l1090
	line	559
;doprnt.c: 559: for(;;) {
	
l107:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l1090
	line	588
;doprnt.c: 588: case '0':
	
l109:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
	
l1086:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	591
;doprnt.c: 591: continue;
	goto	l1090
	line	593
	
l1088:	
;doprnt.c: 593: }
	goto	l1092
	line	560
	
l108:	
	
l1090:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l109
	goto	l1092
	opt asmopt_on

	line	593
	
l111:	
	line	594
;doprnt.c: 594: break;
	goto	l1092
	line	595
	
l110:	
;doprnt.c: 595: }
	goto	l1090
	
l112:	
	line	606
	
l1092:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u701
	goto	u700
u701:
	goto	l1106
u700:
	line	607
	
l1094:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1096
	line	608
;doprnt.c: 608: do {
	
l114:	
	line	609
	
l1096:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___wmul@multiplier)
	movlw	high(0Ah)
	movwf	((___wmul@multiplier))+1
	movf	(sprintf@width+1),w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(sprintf@width),w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(sprintf@width+1)
	addwf	(sprintf@width+1)
	movf	(0+(?___wmul)),w
	clrf	(sprintf@width)
	addwf	(sprintf@width)

	line	610
	
l1098:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??_sprintf+0)+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)+0)+1
	movf	0+(??_sprintf+0)+0,w
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movf	1+(??_sprintf+0)+0,w
	addwf	(sprintf@width+1),f
	
l1100:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l1102:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u711
	goto	u710
u711:
	goto	l1096
u710:
	goto	l1106
	
l115:	
	goto	l1106
	line	617
	
l113:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l1106
	line	646
;doprnt.c: 646: case 0:
	
l117:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l1182
	line	706
;doprnt.c: 706: case 'd':
	
l119:	
	goto	l1108
	line	707
	
l120:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l1108
	line	811
;doprnt.c: 811: default:
	
l122:	
	line	822
;doprnt.c: 822: continue;
	goto	l1180
	line	831
	
l1104:	
;doprnt.c: 831: }
	goto	l1108
	line	644
	
l116:	
	
l1106:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1182
	xorlw	100^0	; case 100
	skipnz
	goto	l1108
	xorlw	105^100	; case 105
	skipnz
	goto	l1108
	goto	l1180
	opt asmopt_on

	line	831
	
l121:	
	line	1268
	
l1108:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l1110:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l1112:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u721
	goto	u720
u721:
	goto	l1118
u720:
	line	1271
	
l1114:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l1116:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l1118
	line	1273
	
l123:	
	line	1314
	
l1118:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1122
u730:
	goto	l1130
	
l1120:	
	goto	l1130
	line	1315
	
l124:	
	
l1122:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u745
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u745:
	skipnc
	goto	u741
	goto	u740
u741:
	goto	l1126
u740:
	goto	l1130
	line	1316
	
l1124:	
;doprnt.c: 1316: break;
	goto	l1130
	
l126:	
	line	1314
	
l1126:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l1128:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u751
	goto	u750
u751:
	goto	l1122
u750:
	goto	l1130
	
l125:	
	line	1354
	
l1130:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u761
	goto	u760
u761:
	goto	l127
u760:
	
l1132:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u771
	goto	u770
u771:
	goto	l127
u770:
	line	1355
	
l1134:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l127:	
	line	1390
;doprnt.c: 1390: if(width > c)
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u785
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u785:

	skipnc
	goto	u781
	goto	u780
u781:
	goto	l1138
u780:
	line	1391
	
l1136:	
;doprnt.c: 1391: width -= c;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l1140
	line	1392
	
l128:	
	line	1393
	
l1138:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1140
	
l129:	
	line	1396
	
l1140:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u791
	goto	u790
u791:
	goto	l1156
u790:
	line	1401
	
l1142:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u801
	goto	u800
u801:
	goto	l1148
u800:
	line	1402
	
l1144:	
;doprnt.c: 1402: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1146:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1148
	
l131:	
	line	1424
	
l1148:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u811
	goto	u810
u811:
	goto	l1170
u810:
	goto	l1150
	line	1425
;doprnt.c: 1425: do
	
l133:	
	line	1426
	
l1150:	
;doprnt.c: 1426: ((*sp++ = ('0')));
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1152:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1427
	
l1154:	
;doprnt.c: 1427: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u821
	goto	u820
u821:
	goto	l1150
u820:
	goto	l1170
	
l134:	
	goto	l1170
	
l132:	
	line	1429
;doprnt.c: 1429: } else
	goto	l1170
	
l130:	
	line	1437
	
l1156:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u831
	goto	u830
u831:
	goto	l1164
u830:
	goto	l1158
	line	1438
;doprnt.c: 1438: do
	
l137:	
	line	1439
	
l1158:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1160:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1440
	
l1162:	
;doprnt.c: 1440: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u841
	goto	u840
u841:
	goto	l1158
u840:
	goto	l1164
	
l138:	
	goto	l1164
	
l136:	
	line	1447
	
l1164:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u851
	goto	u850
u851:
	goto	l1170
u850:
	line	1448
	
l1166:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1168:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1170
	
l139:	
	goto	l1170
	line	1478
	
l135:	
	line	1481
	
l1170:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l1178
	
l141:	
	line	1498
	
l1172:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l1174:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1176:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1178
	line	1534
	
l140:	
	line	1483
	
l1178:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u861
	goto	u860
u861:
	goto	l1172
u860:
	goto	l1180
	
l142:	
	goto	l1180
	line	1542
	
l104:	
	line	545
	
l1180:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1078
u870:
	goto	l1182
	
l143:	
	goto	l1182
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l118:	
	line	1547
	
l1182:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l144
	line	1549
	
l1184:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext5
__ptext5:	;psect for function _isdigit
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l996:	
	clrf	(_isdigit$311)
	
l998:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u491
	goto	u490
u491:
	goto	l1004
u490:
	
l1000:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l1004
u500:
	
l1002:	
	clrf	(_isdigit$311)
	incf	(_isdigit$311),f
	goto	l1004
	
l484:	
	
l1004:	
	rrf	(_isdigit$311),w
	
	goto	l485
	
l1006:	
	line	15
	
l485:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext6
__ptext6:	;psect for function ___wmul
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1008:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1010
	line	44
	
l227:	
	line	45
	
l1010:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u511
	goto	u510
u511:
	goto	l228
u510:
	line	46
	
l1012:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l228:	
	line	47
	movlw	01h
	
u525:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u525
	line	48
	
l1014:	
	movlw	01h
	
u535:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u535
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u541
	goto	u540
u541:
	goto	l1010
u540:
	goto	l1016
	
l229:	
	line	52
	
l1016:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l230
	
l1018:	
	line	53
	
l230:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[BANK0 ] unsigned int 
;;  dividend        2   10[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1046:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u621
	goto	u620
u621:
	goto	l1064
u620:
	line	14
	
l1048:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1054
	
l574:	
	line	16
	
l1050:	
	movlw	01h
	
u635:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u635
	line	17
	
l1052:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1054
	line	18
	
l573:	
	line	15
	
l1054:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u641
	goto	u640
u641:
	goto	l1050
u640:
	goto	l1056
	
l575:	
	goto	l1056
	line	19
	
l576:	
	line	20
	
l1056:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u655
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u655:
	skipc
	goto	u651
	goto	u650
u651:
	goto	l1060
u650:
	line	21
	
l1058:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1060
	
l577:	
	line	22
	
l1060:	
	movlw	01h
	
u665:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u665
	line	23
	
l1062:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1056
u670:
	goto	l1064
	
l578:	
	goto	l1064
	line	24
	
l572:	
	line	25
	
l1064:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l579
	
l1066:	
	line	26
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1020:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1022:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u551
	goto	u550
u551:
	goto	l1042
u550:
	line	16
	
l1024:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1030
	
l564:	
	line	18
	
l1026:	
	movlw	01h
	
u565:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u565
	line	19
	
l1028:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1030
	line	20
	
l563:	
	line	17
	
l1030:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u571
	goto	u570
u571:
	goto	l1026
u570:
	goto	l1032
	
l565:	
	goto	l1032
	line	21
	
l566:	
	line	22
	
l1032:	
	movlw	01h
	
u585:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u585
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u595
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u595:
	skipc
	goto	u591
	goto	u590
u591:
	goto	l1038
u590:
	line	24
	
l1034:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1036:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1038
	line	26
	
l567:	
	line	27
	
l1038:	
	movlw	01h
	
u605:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u605
	line	28
	
l1040:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1032
u610:
	goto	l1042
	
l568:	
	goto	l1042
	line	29
	
l562:	
	line	30
	
l1042:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l569
	
l1044:	
	line	31
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_checkTime

;; *************** function _checkTime *****************
;; Defined at:
;;		line 132 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_instCTRL
;;		_printToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	132
global __ptext9
__ptext9:	;psect for function _checkTime
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	132
	global	__size_of_checkTime
	__size_of_checkTime	equ	__end_of_checkTime-_checkTime
	
_checkTime:	
;incstack = 0
	opt	stack 2
; Regs used in _checkTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	134
	
l1258:	
;main.c: 134: if (hours >= 17 && hours <= 24)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hours+1),w	;volatile
	xorlw	80h
	movwf	btemp+1
	movlw	(high(011h))^80h
	subwf	btemp+1,w
	skipz
	goto	u925
	movlw	low(011h)
	subwf	(_hours),w	;volatile
u925:

	skipc
	goto	u921
	goto	u920
u921:
	goto	l91
u920:
	
l1260:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hours+1),w	;volatile
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u935
	movlw	low(019h)
	subwf	(_hours),w	;volatile
u935:

	skipnc
	goto	u931
	goto	u930
u931:
	goto	l91
u930:
	line	136
	
l1262:	
;main.c: 135: {
;main.c: 136: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	137
	
l1264:	
;main.c: 137: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_checkTime+0)+0,f
u1037:
decfsz	(??_checkTime+0)+0,f
	goto	u1037
opt asmopt_on

	line	138
	
l1266:	
;main.c: 138: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	139
	
l1268:	
;main.c: 139: printToLCD("Lights ON ");
	movlw	low((STR_7)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	140
;main.c: 140: }
	goto	l93
	line	141
	
l91:	
	line	143
;main.c: 141: else
;main.c: 142: {
;main.c: 143: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	144
	
l1270:	
;main.c: 144: _delay((unsigned long)((100)*(4000000/4000000.0)));
	opt asmopt_off
movlw	33
movwf	(??_checkTime+0)+0,f
u1047:
decfsz	(??_checkTime+0)+0,f
	goto	u1047
opt asmopt_on

	line	145
	
l1272:	
;main.c: 145: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	146
	
l1274:	
;main.c: 146: printToLCD("Lights OFF");
	movlw	low((STR_8)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	goto	l93
	line	147
	
l92:	
	line	148
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_checkTime
	__end_of_checkTime:
	signat	_checkTime,88
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 43 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(11), STR_7(11), displayTime@time(20), setTimer@time(20), 
;;		 -> STR_3(4), STR_2(4), STR_1(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCTRL
;;		_instCTRL
;; This function is called by:
;;		_main
;;		_setTimer
;;		_displayTime
;;		_checkTime
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	43
global __ptext10
__ptext10:	;psect for function _printToLCD
psect	text10
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	43
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	44
	
l1068:	
;lcd_functions.h: 44: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	45
;lcd_functions.h: 45: while(*str){
	goto	l1074
	
l51:	
	line	46
	
l1070:	
;lcd_functions.h: 46: dataCTRL(*str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	47
	
l1072:	
;lcd_functions.h: 47: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l1074
	line	48
	
l50:	
	line	45
	
l1074:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1070
u680:
	goto	l53
	
l52:	
	line	49
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 16 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  CMD             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  CMD             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_printToLCD
;;		_main
;;		_setTimer
;;		_displayTime
;;		_checkTime
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	16
global __ptext11
__ptext11:	;psect for function _instCTRL
psect	text11
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	16
	global	__size_of_instCTRL
	__size_of_instCTRL	equ	__end_of_instCTRL-_instCTRL
	
_instCTRL:	
;incstack = 0
	opt	stack 2
; Regs used in _instCTRL: [wreg]
;instCTRL@CMD stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCTRL@CMD)
	line	17
	
l976:	
;lcd_functions.h: 17: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	18
	
l978:	
;lcd_functions.h: 18: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	19
	
l980:	
;lcd_functions.h: 19: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	20
	
l982:	
;lcd_functions.h: 20: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	21
;lcd_functions.h: 21: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u1057:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u1057
	nop2	;nop
	nop
opt asmopt_on

	line	22
	
l984:	
;lcd_functions.h: 22: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	23
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 25 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  DAT             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DAT             1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printToLCD
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	25
global __ptext12
__ptext12:	;psect for function _dataCTRL
psect	text12
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	25
	global	__size_of_dataCTRL
	__size_of_dataCTRL	equ	__end_of_dataCTRL-_dataCTRL
	
_dataCTRL:	
;incstack = 0
	opt	stack 2
; Regs used in _dataCTRL: [wreg]
;dataCTRL@DAT stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCTRL@DAT)
	line	26
	
l986:	
;lcd_functions.h: 26: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	27
	
l988:	
;lcd_functions.h: 27: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	28
	
l990:	
;lcd_functions.h: 28: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	29
	
l992:	
;lcd_functions.h: 29: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	30
;lcd_functions.h: 30: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u1067:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u1067
	nop2	;nop
	nop
opt asmopt_on

	line	31
	
l994:	
;lcd_functions.h: 31: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	32
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 71 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          7       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_instCTRL
;;		i1_printToLCD
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	71
global __ptext13
__ptext13:	;psect for function _ISR
psect	text13
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\main.c"
	line	71
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+3)
	movf	fsr0,w
	movwf	(??_ISR+4)
	movf	pclath,w
	movwf	(??_ISR+5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+6)
	ljmp	_ISR
psect	text13
	line	73
	
i1l1322:	
;main.c: 73: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	74
;main.c: 74: if (INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u95_21
	goto	u95_20
u95_21:
	goto	i1l1340
u95_20:
	line	76
	
i1l1324:	
;main.c: 75: {
;main.c: 76: mode ^= 1;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	xorwf	(_mode),f	;volatile
	line	77
	
i1l1326:	
;main.c: 77: instCTRL(0x01);
	movlw	(01h)
	fcall	i1_instCTRL
	line	78
	
i1l1328:	
;main.c: 78: instCTRL(0x80);
	movlw	(080h)
	fcall	i1_instCTRL
	line	79
	
i1l1330:	
;main.c: 79: printToLCD(mode == RUN ? "RUN" : "SET");
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w	;volatile
	skipz
	goto	u96_20
	goto	i1l1334
u96_20:
	
i1l1332:	
	movlw	((STR_3)-__stringbase)&0ffh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_ISR$81)
	goto	i1l1336
	
i1l75:	
	
i1l1334:	
	movlw	((STR_2)-__stringbase)&0ffh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_ISR$81)
	goto	i1l1336
	
i1l77:	
	
i1l1336:	
	movf	(_ISR$81),w
	movwf	(i1printToLCD@str)
	movlw	80h
	movwf	(i1printToLCD@str+1)
	fcall	i1_printToLCD
	line	80
	
i1l1338:	
;main.c: 80: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l1340
	line	81
	
i1l73:	
	line	82
	
i1l1340:	
;main.c: 81: }
;main.c: 82: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_ISR+0)+0+2),f
movlw	19
movwf	((??_ISR+0)+0+1),f
	movlw	177
movwf	((??_ISR+0)+0),f
u107_27:
	decfsz	((??_ISR+0)+0),f
	goto	u107_27
	decfsz	((??_ISR+0)+0+1),f
	goto	u107_27
	decfsz	((??_ISR+0)+0+2),f
	goto	u107_27
	nop2
opt asmopt_on

	line	83
	
i1l1342:	
;main.c: 83: instCTRL(0x01);
	movlw	(01h)
	fcall	i1_instCTRL
	line	84
	
i1l1344:	
;main.c: 84: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	85
	
i1l78:	
	movf	(??_ISR+6),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+5),w
	movwf	pclath
	movf	(??_ISR+4),w
	movwf	fsr0
	swapf	(??_ISR+3)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	i1_printToLCD

;; *************** function i1_printToLCD *****************
;; Defined at:
;;		line 43 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  str             2    2[COMMON] PTR const unsigned char 
;;		 -> STR_8(11), STR_7(11), displayTime@time(20), setTimer@time(20), 
;;		 -> STR_3(4), STR_2(4), STR_1(16), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		i1_dataCTRL
;;		i1_instCTRL
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	43
global __ptext14
__ptext14:	;psect for function i1_printToLCD
psect	text14
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	43
	global	__size_ofi1_printToLCD
	__size_ofi1_printToLCD	equ	__end_ofi1_printToLCD-i1_printToLCD
	
i1_printToLCD:	
;incstack = 0
	opt	stack 2
; Regs used in i1_printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	44
	
i1l1276:	
;lcd_functions.h: 44: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	i1_instCTRL
	line	45
;lcd_functions.h: 45: while(*str){
	goto	i1l1282
	
i1l51:	
	line	46
	
i1l1278:	
;lcd_functions.h: 46: dataCTRL(*str);
	movf	(i1printToLCD@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	i1_dataCTRL
	line	47
	
i1l1280:	
;lcd_functions.h: 47: str++;
	movlw	01h
	addwf	(i1printToLCD@str),f
	skipnc
	incf	(i1printToLCD@str+1),f
	goto	i1l1282
	line	48
	
i1l50:	
	line	45
	
i1l1282:	
	movf	(i1printToLCD@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u94_21
	goto	u94_20
u94_21:
	goto	i1l1278
u94_20:
	goto	i1l53
	
i1l52:	
	line	49
	
i1l53:	
	return
	opt stack 0
GLOBAL	__end_ofi1_printToLCD
	__end_ofi1_printToLCD:
	signat	i1_printToLCD,88
	global	i1_instCTRL

;; *************** function i1_instCTRL *****************
;; Defined at:
;;		line 16 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  CMD             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  CMD             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;;		i1_printToLCD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	16
global __ptext15
__ptext15:	;psect for function i1_instCTRL
psect	text15
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	16
	global	__size_ofi1_instCTRL
	__size_ofi1_instCTRL	equ	__end_ofi1_instCTRL-i1_instCTRL
	
i1_instCTRL:	
;incstack = 0
	opt	stack 2
; Regs used in i1_instCTRL: [wreg]
;i1instCTRL@CMD stored from wreg
	movwf	(i1instCTRL@CMD)
	line	17
	
i1l1186:	
;lcd_functions.h: 17: PORTD = CMD;
	movf	(i1instCTRL@CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	18
	
i1l1188:	
;lcd_functions.h: 18: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	19
	
i1l1190:	
;lcd_functions.h: 19: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	20
	
i1l1192:	
;lcd_functions.h: 20: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	21
;lcd_functions.h: 21: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??i1_instCTRL+0)+0,f
u108_27:
	nop
decfsz	(??i1_instCTRL+0)+0,f
	goto	u108_27
	nop2	;nop
	nop
opt asmopt_on

	line	22
	
i1l1194:	
;lcd_functions.h: 22: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	23
	
i1l41:	
	return
	opt stack 0
GLOBAL	__end_ofi1_instCTRL
	__end_ofi1_instCTRL:
	signat	i1_instCTRL,88
	global	i1_dataCTRL

;; *************** function i1_dataCTRL *****************
;; Defined at:
;;		line 25 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  DAT             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DAT             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_printToLCD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	25
global __ptext16
__ptext16:	;psect for function i1_dataCTRL
psect	text16
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mplab\lcd_functions.h"
	line	25
	global	__size_ofi1_dataCTRL
	__size_ofi1_dataCTRL	equ	__end_ofi1_dataCTRL-i1_dataCTRL
	
i1_dataCTRL:	
;incstack = 0
	opt	stack 2
; Regs used in i1_dataCTRL: [wreg]
;i1dataCTRL@DAT stored from wreg
	movwf	(i1dataCTRL@DAT)
	line	26
	
i1l1196:	
;lcd_functions.h: 26: PORTD = DAT;
	movf	(i1dataCTRL@DAT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	27
	
i1l1198:	
;lcd_functions.h: 27: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	28
	
i1l1200:	
;lcd_functions.h: 28: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	29
	
i1l1202:	
;lcd_functions.h: 29: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	30
;lcd_functions.h: 30: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??i1_dataCTRL+0)+0,f
u109_27:
	nop
decfsz	(??i1_dataCTRL+0)+0,f
	goto	u109_27
	nop2	;nop
	nop
opt asmopt_on

	line	31
	
i1l1204:	
;lcd_functions.h: 31: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	32
	
i1l44:	
	return
	opt stack 0
GLOBAL	__end_ofi1_dataCTRL
	__end_ofi1_dataCTRL:
	signat	i1_dataCTRL,88
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
