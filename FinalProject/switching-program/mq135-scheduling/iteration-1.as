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
	FNCALL	_main,_checkMode
	FNCALL	_main,_initADC
	FNCALL	_main,_initInterrupt
	FNCALL	_main,_initLCD
	FNCALL	_main,_runTime
	FNCALL	_main,_updateDisplay
	FNCALL	_updateDisplay,_displayPPM
	FNCALL	_updateDisplay,_displayTime
	FNCALL	_updateDisplay,_instCTRL
	FNCALL	_updateDisplay,_printToLCD
	FNCALL	_displayTime,_printToLCD
	FNCALL	_displayTime,_sprintf
	FNCALL	_displayPPM,_CalcMQ135
	FNCALL	_displayPPM,_Read_ADC_MQ135
	FNCALL	_displayPPM,___awtoft
	FNCALL	_displayPPM,___ftadd
	FNCALL	_displayPPM,___ftmul
	FNCALL	_displayPPM,___ftneg
	FNCALL	_displayPPM,___fttol
	FNCALL	_displayPPM,_printToLCD
	FNCALL	_displayPPM,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_printToLCD,_instCTRL
	FNCALL	_CalcMQ135,___awtoft
	FNCALL	_CalcMQ135,___ftadd
	FNCALL	_CalcMQ135,___ftdiv
	FNCALL	_CalcMQ135,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_initLCD,_instCTRL
	FNCALL	_checkMode,_instCTRL
	FNROOT	_main
	FNCALL	_ISR,___awmod
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_lastMode
	global	_DEF_HOURS
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	9

;initializer for _lastMode
	retlw	0FFh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	10

;initializer for _DEF_HOURS
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
	global	_mode
	global	_ACTV_HOURS
	global	_DEF_MINUTES
	global	_ACTV_MINS
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_GO_DONE
_GO_DONE	set	0xFA
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_INTEDG
_INTEDG	set	0x40E
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_7:	
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
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_3:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
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
	file	"iteration-1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_mode:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	9
_lastMode:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_ACTV_HOURS:
       ds      2

_DEF_MINUTES:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	10
_DEF_HOURS:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ACTV_MINS:
       ds      2

	file	"iteration-1.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	displayPPM@strBuffer
displayPPM@strBuffer:	; 50 bytes @ 0x0
	ds	50
	global	displayPPM@PPM
displayPPM@PPM:	; 3 bytes @ 0x32
	ds	3
	global	displayPPM@ppmWhole
displayPPM@ppmWhole:	; 2 bytes @ 0x35
	ds	2
	global	displayPPM@ppmFraction
displayPPM@ppmFraction:	; 2 bytes @ 0x37
	ds	2
	global	displayPPM@bufPtr
displayPPM@bufPtr:	; 1 bytes @ 0x39
	ds	1
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	CalcMQ135@voltage
CalcMQ135@voltage:	; 3 bytes @ 0x0
	ds	3
	global	CalcMQ135@ratio6
CalcMQ135@ratio6:	; 3 bytes @ 0x3
	ds	3
	global	_CalcMQ135$587
_CalcMQ135$587:	; 3 bytes @ 0x6
	ds	3
	global	_CalcMQ135$588
_CalcMQ135$588:	; 3 bytes @ 0x9
	ds	3
	global	_CalcMQ135$589
_CalcMQ135$589:	; 3 bytes @ 0xC
	ds	3
	global	_CalcMQ135$590
_CalcMQ135$590:	; 3 bytes @ 0xF
	ds	3
	global	_CalcMQ135$591
_CalcMQ135$591:	; 3 bytes @ 0x12
	ds	3
	global	CalcMQ135@ratio2
CalcMQ135@ratio2:	; 3 bytes @ 0x15
	ds	3
	global	CalcMQ135@ratio3
CalcMQ135@ratio3:	; 3 bytes @ 0x18
	ds	3
	global	CalcMQ135@ratio4
CalcMQ135@ratio4:	; 3 bytes @ 0x1B
	ds	3
	global	CalcMQ135@ratio5
CalcMQ135@ratio5:	; 3 bytes @ 0x1E
	ds	3
	global	CalcMQ135@co2
CalcMQ135@co2:	; 3 bytes @ 0x21
	ds	3
	global	CalcMQ135@ratio
CalcMQ135@ratio:	; 3 bytes @ 0x24
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initADC:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_initInterrupt:	; 0 bytes @ 0x0
?_checkMode:	; 0 bytes @ 0x0
?_runTime:	; 0 bytes @ 0x0
?_updateDisplay:	; 0 bytes @ 0x0
?_instCTRL:	; 0 bytes @ 0x0
?_displayPPM:	; 0 bytes @ 0x0
?_displayTime:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
??_ISR:	; 0 bytes @ 0x7
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_initADC:	; 0 bytes @ 0x0
??_initInterrupt:	; 0 bytes @ 0x0
??_runTime:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
??_isdigit:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
	global	?_Read_ADC_MQ135
?_Read_ADC_MQ135:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	_isdigit$373
_isdigit$373:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x1
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_initLCD:	; 0 bytes @ 0x2
??_checkMode:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
??_Read_ADC_MQ135:	; 0 bytes @ 0x2
	global	printToLCD@str
printToLCD@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??_printToLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	ds	1
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0xE
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0xE
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0xE
	ds	2
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x10
	ds	1
??___ftneg:	; 0 bytes @ 0x11
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x11
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x11
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x14
	ds	1
??_sprintf:	; 0 bytes @ 0x15
	ds	2
??___ftadd:	; 0 bytes @ 0x17
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x18
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x19
	ds	1
	global	sprintf@ccnt
sprintf@ccnt:	; 2 bytes @ 0x1A
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1B
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1C
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x1C
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1D
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1E
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1E
	ds	2
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x20
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x21
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x21
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x23
	ds	1
??_displayTime:	; 0 bytes @ 0x24
??___ftmul:	; 0 bytes @ 0x24
	ds	1
	global	displayTime@time
displayTime@time:	; 20 bytes @ 0x25
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x28
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x29
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2C
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2D
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x2E
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2E
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x2E
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2E
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x31
	ds	1
??___fttol:	; 0 bytes @ 0x32
	ds	2
??___ftdiv:	; 0 bytes @ 0x34
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x36
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x37
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x38
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x39
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3B
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x3C
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x3D
	ds	1
	global	?_CalcMQ135
?_CalcMQ135:	; 3 bytes @ 0x3E
	global	CalcMQ135@RAW_ADC
CalcMQ135@RAW_ADC:	; 2 bytes @ 0x3E
	ds	3
??_displayPPM:	; 0 bytes @ 0x41
??_CalcMQ135:	; 0 bytes @ 0x41
	ds	2
??_updateDisplay:	; 0 bytes @ 0x43
	ds	3
??_main:	; 0 bytes @ 0x46
	ds	3
;!
;!Data Sizes:
;!    Strings     87
;!    Constant    10
;!    Data        3
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     73      79
;!    BANK1            80     39      41
;!    BANK3            96     58      58
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 20
;!		 -> STR_7(CODE[20]), STR_6(CODE[9]), STR_5(CODE[3]), STR_4(CODE[6]), 
;!		 -> STR_3(CODE[11]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 50
;!		 -> displayTime@time(BANK0[20]), displayPPM@strBuffer(BANK3[50]), displayRawADC@buffer(BANK0[30]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S177$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    displayPPM@bufPtr	PTR unsigned char  size(1) Largest target is 50
;!		 -> displayPPM@strBuffer(BANK3[50]), 
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 50
;!		 -> displayTime@time(BANK0[20]), displayPPM@strBuffer(BANK3[50]), displayRawADC@buffer(BANK0[30]), STR_2(CODE[21]), 
;!		 -> STR_1(CODE[17]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->___awmod
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_updateDisplay
;!    _updateDisplay->_displayPPM
;!    _displayTime->_sprintf
;!    _displayPPM->_CalcMQ135
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _printToLCD->_dataCTRL
;!    _printToLCD->_instCTRL
;!    ___fttol->___ftmul
;!    ___ftneg->___awtoft
;!    _CalcMQ135->___ftdiv
;!    ___ftmul->___ftadd
;!    ___ftdiv->___ftmul
;!    ___ftadd->___ftneg
;!    ___awtoft->___ftpack
;!    _initLCD->_instCTRL
;!    _checkMode->_instCTRL
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _displayPPM->_CalcMQ135
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    _updateDisplay->_displayPPM
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
;! (0) _main                                                 3     3      0   26512
;!                                             70 BANK0      3     3      0
;!                          _checkMode
;!                            _initADC
;!                      _initInterrupt
;!                            _initLCD
;!                            _runTime
;!                      _updateDisplay
;! ---------------------------------------------------------------------------------
;! (1) _updateDisplay                                        3     3      0   26468
;!                                             67 BANK0      3     3      0
;!                         _displayPPM
;!                        _displayTime
;!                           _instCTRL
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (2) _displayTime                                         21    21      0    2570
;!                                             36 BANK0     21    21      0
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _displayPPM                                          60    60      0   23522
;!                                             65 BANK0      2     2      0
;!                                              0 BANK3     58    58      0
;!                          _CalcMQ135
;!                     _Read_ADC_MQ135
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) _sprintf                                             22    15      7    2156
;!                                             14 BANK0     22    15      7
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (4) _isdigit                                              2     2      0      68
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     198
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     265
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     268
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _printToLCD                                           2     0      2     354
;!                                              2 BANK0      2     0      2
;!                           _dataCTRL
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (3) _dataCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             14    10      4     358
;!                                             46 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftneg                                              3     0      3      98
;!                                             14 BANK0      3     0      3
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _Read_ADC_MQ135                                       4     2      2       0
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (3) _CalcMQ135                                           42    39      3   11518
;!                                             62 BANK0      3     0      3
;!                                              0 BANK1     39    39      0
;!                     _Read_ADC_MQ135 (ARG)
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    3495
;!                                             30 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             16    10      6    2177
;!                                             46 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3347
;!                                             17 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    1882
;!                                              8 BANK0      6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1685
;!                                              0 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _runTime                                              2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0      22
;!                                              2 BANK0      1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _initInterrupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkMode                                            2     2      0      22
;!                                              2 BANK0      2     2      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (3) _instCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _ISR                                                  5     5      0     281
;!                                              7 COMMON     5     5      0
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (7) ___awmod                                              7     3      4     281
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkMode
;!     _instCTRL
;!   _initADC
;!   _initInterrupt
;!   _initLCD
;!     _instCTRL
;!   _runTime
;!   _updateDisplay
;!     _displayPPM
;!       _CalcMQ135
;!         _Read_ADC_MQ135 (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!       _Read_ADC_MQ135
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftneg
;!         ___awtoft (ARG)
;!           ___ftpack
;!       ___fttol
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!         ___wmul
;!         _isdigit
;!     _displayTime
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!         ___wmul
;!         _isdigit
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!
;! _ISR (ROOT)
;!   ___awmod
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     3A      3A       9       60.4%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     27      29       7       51.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     49      4F       5       98.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      C0      12        0.0%
;!ABS                  0      0      C0       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_checkMode
;;		_initADC
;;		_initInterrupt
;;		_initLCD
;;		_runTime
;;		_updateDisplay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l1912:	
;main.c: 15: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	16
;main.c: 16: TRISB = 0x03;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	17
	
l1914:	
;main.c: 17: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	18
	
l1916:	
;main.c: 18: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	19
;main.c: 19: OPTION_REG = 0b11000000;
	movlw	(0C0h)
	movwf	(129)^080h	;volatile
	line	21
	
l1918:	
;main.c: 21: initADC();
	fcall	_initADC
	line	22
	
l1920:	
;main.c: 22: initLCD();
	fcall	_initLCD
	line	23
	
l1922:	
;main.c: 23: initInterrupt();
	fcall	_initInterrupt
	line	24
	
l1924:	
;main.c: 24: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2457:
	decfsz	((??_main+0)+0),f
	goto	u2457
	decfsz	((??_main+0)+0+1),f
	goto	u2457
	decfsz	((??_main+0)+0+2),f
	goto	u2457
	nop2
opt asmopt_on

	goto	l1926
	line	25
;main.c: 25: while (1)
	
l77:	
	line	27
	
l1926:	
;main.c: 26: {
;main.c: 27: checkMode();
	fcall	_checkMode
	line	28
	
l1928:	
;main.c: 28: runTime();
	fcall	_runTime
	line	29
	
l1930:	
;main.c: 29: updateDisplay();
	fcall	_updateDisplay
	goto	l1926
	line	30
	
l78:	
	line	25
	goto	l1926
	
l79:	
	line	31
	
l80:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateDisplay

;; *************** function _updateDisplay *****************
;; Defined at:
;;		line 59 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_displayPPM
;;		_displayTime
;;		_instCTRL
;;		_printToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	59
global __ptext1
__ptext1:	;psect for function _updateDisplay
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	59
	global	__size_of_updateDisplay
	__size_of_updateDisplay	equ	__end_of_updateDisplay-_updateDisplay
	
_updateDisplay:	
;incstack = 0
	opt	stack 1
; Regs used in _updateDisplay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	61
	
l1886:	
;main.c: 61: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_updateDisplay+0)+0+1),f
	movlw	238
movwf	((??_updateDisplay+0)+0),f
u2467:
	decfsz	((??_updateDisplay+0)+0),f
	goto	u2467
	decfsz	((??_updateDisplay+0)+0+1),f
	goto	u2467
	nop
opt asmopt_on

	line	62
	
l1888:	
;main.c: 62: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	63
	
l1890:	
;main.c: 63: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	64
	
l1892:	
;main.c: 64: if (mode == DISP_CMN)
	movf	(_mode),f	;volatile
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l1902
u2410:
	line	66
	
l1894:	
;main.c: 65: {
;main.c: 66: printToLCD("MODE: DISP STATS");
	movlw	low((STR_1)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	67
	
l1896:	
;main.c: 67: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	69
	
l1898:	
;main.c: 69: displayPPM();
	fcall	_displayPPM
	line	70
;main.c: 70: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	71
	
l1900:	
;main.c: 71: displayTime();
	fcall	_displayTime
	line	72
;main.c: 72: }
	goto	l1910
	line	73
	
l93:	
	
l1902:	
;main.c: 73: else if (mode == SET_ACTV)
	movf	(_mode),w	;volatile
	xorlw	01h
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l1910
u2420:
	line	75
	
l1904:	
;main.c: 74: {
;main.c: 75: printToLCD("MODE: SET ACTIVE HRS");
	movlw	low((STR_2)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	76
	
l1906:	
;main.c: 76: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	77
	
l1908:	
;main.c: 77: displayPPM();
	fcall	_displayPPM
	goto	l1910
	line	78
	
l95:	
	goto	l1910
	line	79
	
l94:	
	
l1910:	
;main.c: 78: }
;main.c: 79: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_updateDisplay+0)+0+2),f
movlw	138
movwf	((??_updateDisplay+0)+0+1),f
	movlw	86
movwf	((??_updateDisplay+0)+0),f
u2477:
	decfsz	((??_updateDisplay+0)+0),f
	goto	u2477
	decfsz	((??_updateDisplay+0)+0+1),f
	goto	u2477
	decfsz	((??_updateDisplay+0)+0+2),f
	goto	u2477
	nop2
opt asmopt_on

	line	80
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_updateDisplay
	__end_of_updateDisplay:
	signat	_updateDisplay,88
	global	_displayTime

;; *************** function _displayTime *****************
;; Defined at:
;;		line 215 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time           20   37[BANK0 ] unsigned char [20]
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	215
global __ptext2
__ptext2:	;psect for function _displayTime
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	215
	global	__size_of_displayTime
	__size_of_displayTime	equ	__end_of_displayTime-_displayTime
	
_displayTime:	
;incstack = 0
	opt	stack 2
; Regs used in _displayTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	218
	
l1846:	
;main.c: 217: char time[20];
;main.c: 218: sprintf(time, "Time: %02d:%02d    ", DEF_HOURS, DEF_MINUTES);
	movlw	(displayTime@time&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	movlw	(0x0)
	movwf	(sprintf@sp+1)
	movlw	((STR_7)-__stringbase)&0ffh
	movwf	(??_displayTime+0)+0
	movf	(??_displayTime+0)+0,w
	movwf	(sprintf@f)
	movf	(_DEF_HOURS+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(_DEF_HOURS),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movf	(_DEF_MINUTES+1),w
	clrf	1+(?_sprintf)+05h
	addwf	1+(?_sprintf)+05h
	movf	(_DEF_MINUTES),w
	clrf	0+(?_sprintf)+05h
	addwf	0+(?_sprintf)+05h

	fcall	_sprintf
	line	219
;main.c: 219: printToLCD(time);
	movlw	(displayTime@time&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	220
	
l142:	
	return
	opt stack 0
GLOBAL	__end_of_displayTime
	__end_of_displayTime:
	signat	_displayTime,88
	global	_displayPPM

;; *************** function _displayPPM *****************
;; Defined at:
;;		line 175 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  strBuffer      50    0[BANK3 ] unsigned char [50]
;;  PPM             3   50[BANK3 ] float 
;;  ppmFraction     2   55[BANK3 ] int 
;;  ppmWhole        2   53[BANK3 ] int 
;;  bufPtr          1   57[BANK3 ] PTR unsigned char 
;;		 -> displayPPM@strBuffer(50), 
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
;;      Locals:         0       0       0      58       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0      58       0
;;Total ram usage:       60 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CalcMQ135
;;		_Read_ADC_MQ135
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateDisplay
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	175
global __ptext3
__ptext3:	;psect for function _displayPPM
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	175
	global	__size_of_displayPPM
	__size_of_displayPPM	equ	__end_of_displayPPM-_displayPPM
	
_displayPPM:	
;incstack = 0
	opt	stack 1
; Regs used in _displayPPM: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	178
	
l1824:	
;main.c: 177: char strBuffer[50];
;main.c: 178: float PPM = CalcMQ135(Read_ADC_MQ135());
	fcall	_Read_ADC_MQ135
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Read_ADC_MQ135)),w
	clrf	(CalcMQ135@RAW_ADC+1)
	addwf	(CalcMQ135@RAW_ADC+1)
	movf	(0+(?_Read_ADC_MQ135)),w
	clrf	(CalcMQ135@RAW_ADC)
	addwf	(CalcMQ135@RAW_ADC)

	fcall	_CalcMQ135
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_CalcMQ135)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(displayPPM@PPM)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_CalcMQ135)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(displayPPM@PPM+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_CalcMQ135)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(displayPPM@PPM+2)^0180h
	line	179
;main.c: 179: int ppmWhole = (int)PPM;
	movf	(displayPPM@PPM)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@PPM+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@PPM+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(displayPPM@ppmWhole+1)^0180h
	addwf	(displayPPM@ppmWhole+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(displayPPM@ppmWhole)^0180h
	addwf	(displayPPM@ppmWhole)^0180h

	line	180
;main.c: 180: int ppmFraction = (int)((PPM - ppmWhole) * 100);
	movf	(displayPPM@ppmWhole+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@ppmWhole)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftneg@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@PPM)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@PPM+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@PPM+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xc8
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(displayPPM@ppmFraction+1)^0180h
	addwf	(displayPPM@ppmFraction+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(displayPPM@ppmFraction)^0180h
	addwf	(displayPPM@ppmFraction)^0180h

	line	183
	
l1826:	
;main.c: 183: char *bufPtr = strBuffer;
	movlw	(displayPPM@strBuffer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(displayPPM@bufPtr)^0180h
	line	184
	
l1828:	
;main.c: 184: bufPtr += sprintf(bufPtr, "CO2: ");
	movf	(displayPPM@bufPtr)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	movlw	(0x1)
	movwf	(sprintf@sp+1)
	movlw	((STR_4)-__stringbase)&0ffh
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	movwf	(sprintf@f)
	fcall	_sprintf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_sprintf)),w
	movwf	(??_displayPPM+1)+0
	movf	(??_displayPPM+1)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(displayPPM@bufPtr)^0180h,f
	line	185
	
l1830:	
;main.c: 185: bufPtr += sprintf(bufPtr, "%d", ppmWhole);
	movf	(displayPPM@bufPtr)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	movlw	(0x1)
	movwf	(sprintf@sp+1)
	movlw	((STR_5)-__stringbase)&0ffh
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@ppmWhole+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@ppmWhole)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	fcall	_sprintf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_sprintf)),w
	movwf	(??_displayPPM+1)+0
	movf	(??_displayPPM+1)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(displayPPM@bufPtr)^0180h,f
	line	186
	
l1832:	
;main.c: 186: *bufPtr++ = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@bufPtr)^0180h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l1834:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(displayPPM@bufPtr)^0180h,f
	line	187
	
l1836:	
;main.c: 187: if (ppmFraction < 10)
	movf	(displayPPM@ppmFraction+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(0Ah)
	subwf	(displayPPM@ppmFraction)^0180h,w
u2375:

	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l1842
u2370:
	line	188
	
l1838:	
;main.c: 188: *bufPtr++ = '0';
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@bufPtr)^0180h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l1840:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(displayPPM@bufPtr)^0180h,f
	goto	l1842
	
l130:	
	line	189
	
l1842:	
;main.c: 189: sprintf(bufPtr, "%d ppm  ", ppmFraction);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@bufPtr)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	movlw	(0x1)
	movwf	(sprintf@sp+1)
	movlw	((STR_6)-__stringbase)&0ffh
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@ppmFraction+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(displayPPM@ppmFraction)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	fcall	_sprintf
	line	191
	
l1844:	
;main.c: 191: printToLCD(strBuffer);
	movlw	(displayPPM@strBuffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x1)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	192
	
l131:	
	return
	opt stack 0
GLOBAL	__end_of_displayPPM
	__end_of_displayPPM:
	signat	_displayPPM,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2   14[BANK0 ] PTR unsigned char 
;;		 -> displayTime@time(20), displayPPM@strBuffer(50), displayRawADC@buffer(30), 
;;  f               1   16[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(20), STR_6(9), STR_5(3), STR_4(6), 
;;		 -> STR_3(11), 
;; Auto vars:     Size  Location     Type
;;  _val            4   28[BANK0 ] struct .
;;  width           2   33[BANK0 ] int 
;;  ccnt            2   26[BANK0 ] int 
;;  c               1   35[BANK0 ] char 
;;  flag            1   32[BANK0 ] unsigned char 
;;  prec            1   25[BANK0 ] char 
;;  ap              1   24[BANK0 ] PTR void [1]
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
;;      Params:         0       7       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      22       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_displayPPM
;;		_displayTime
;;		_displayRawADC
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
	line	510
	
l1640:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 510: int ccnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@ccnt)
	clrf	(sprintf@ccnt+1)
	line	542
	
l1642:	
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+03h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l1758
	
l159:	
	line	547
	
l1644:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u2071
	goto	u2070
u2071:
	goto	l1652
u2070:
	line	550
	
l1646:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movf	(sprintf@c),w
	movwf	indf
	
l1648:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	
l1650:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	551
;doprnt.c: 551: continue;
	goto	l1758
	line	552
	
l160:	
	line	555
	
l1652:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l1658
	line	559
;doprnt.c: 559: for(;;) {
	
l161:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l1658
	line	588
;doprnt.c: 588: case '0':
	
l163:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
	
l1654:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	591
;doprnt.c: 591: continue;
	goto	l1658
	line	593
	
l1656:	
;doprnt.c: 593: }
	goto	l1660
	line	560
	
l162:	
	
l1658:	
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
	goto	l163
	goto	l1660
	opt asmopt_on

	line	593
	
l165:	
	line	594
;doprnt.c: 594: break;
	goto	l1660
	line	595
	
l164:	
;doprnt.c: 595: }
	goto	l1658
	
l166:	
	line	606
	
l1660:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u2081
	goto	u2080
u2081:
	goto	l1674
u2080:
	line	607
	
l1662:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1664
	line	608
;doprnt.c: 608: do {
	
l168:	
	line	609
	
l1664:	
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
	
l1666:	
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
	
l1668:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l1670:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u2091
	goto	u2090
u2091:
	goto	l1664
u2090:
	goto	l1674
	
l169:	
	goto	l1674
	line	617
	
l167:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l1674
	line	646
;doprnt.c: 646: case 0:
	
l171:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l1760
	line	706
;doprnt.c: 706: case 'd':
	
l173:	
	goto	l1676
	line	707
	
l174:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l1676
	line	811
;doprnt.c: 811: default:
	
l176:	
	line	822
;doprnt.c: 822: continue;
	goto	l1758
	line	831
	
l1672:	
;doprnt.c: 831: }
	goto	l1676
	line	644
	
l170:	
	
l1674:	
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
	goto	l1760
	xorlw	100^0	; case 100
	skipnz
	goto	l1676
	xorlw	105^100	; case 105
	skipnz
	goto	l1676
	goto	l1758
	opt asmopt_on

	line	831
	
l175:	
	line	1268
	
l1676:	
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
	
l1678:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l1680:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u2101
	goto	u2100
u2101:
	goto	l1686
u2100:
	line	1271
	
l1682:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l1684:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l1686
	line	1273
	
l177:	
	line	1314
	
l1686:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2111
	goto	u2110
u2111:
	goto	l1690
u2110:
	goto	l1698
	
l1688:	
	goto	l1698
	line	1315
	
l178:	
	
l1690:	
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
	goto	u2125
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u2125:
	skipnc
	goto	u2121
	goto	u2120
u2121:
	goto	l1694
u2120:
	goto	l1698
	line	1316
	
l1692:	
;doprnt.c: 1316: break;
	goto	l1698
	
l180:	
	line	1314
	
l1694:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l1696:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u2131
	goto	u2130
u2131:
	goto	l1690
u2130:
	goto	l1698
	
l179:	
	line	1354
	
l1698:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2141
	goto	u2140
u2141:
	goto	l181
u2140:
	
l1700:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l181
u2150:
	line	1355
	
l1702:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l181:	
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
	goto	u2165
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u2165:

	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l1706
u2160:
	line	1391
	
l1704:	
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
	goto	l1708
	line	1392
	
l182:	
	line	1393
	
l1706:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1708
	
l183:	
	line	1396
	
l1708:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1728
u2170:
	line	1401
	
l1710:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l1718
u2180:
	line	1402
	
l1712:	
;doprnt.c: 1402: ((*sp++ = ('-')),(++ccnt));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	02Dh
	movwf	indf
	
l1714:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	
l1716:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l1718
	
l185:	
	line	1424
	
l1718:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2191
	goto	u2190
u2191:
	goto	l1746
u2190:
	goto	l1720
	line	1425
;doprnt.c: 1425: do
	
l187:	
	line	1426
	
l1720:	
;doprnt.c: 1426: ((*sp++ = ('0')),(++ccnt));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	030h
	movwf	indf
	
l1722:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	
l1724:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1427
	
l1726:	
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
	goto	u2201
	goto	u2200
u2201:
	goto	l1720
u2200:
	goto	l1746
	
l188:	
	goto	l1746
	
l186:	
	line	1429
;doprnt.c: 1429: } else
	goto	l1746
	
l184:	
	line	1437
	
l1728:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l1738
u2210:
	goto	l1730
	line	1438
;doprnt.c: 1438: do
	
l191:	
	line	1439
	
l1730:	
;doprnt.c: 1439: ((*sp++ = (' ')),(++ccnt));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	020h
	movwf	indf
	
l1732:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	
l1734:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1440
	
l1736:	
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
	goto	u2221
	goto	u2220
u2221:
	goto	l1730
u2220:
	goto	l1738
	
l192:	
	goto	l1738
	
l190:	
	line	1447
	
l1738:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l1746
u2230:
	line	1448
	
l1740:	
;doprnt.c: 1448: ((*sp++ = ('-')),(++ccnt));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	02Dh
	movwf	indf
	
l1742:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	
l1744:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l1746
	
l193:	
	goto	l1746
	line	1478
	
l189:	
	line	1481
	
l1746:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l1756
	
l195:	
	line	1498
	
l1748:	
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
	
l1750:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movf	(sprintf@c),w
	movwf	indf
	
l1752:	
	movlw	01h
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	
l1754:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l1756
	line	1534
	
l194:	
	line	1483
	
l1756:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l1748
u2240:
	goto	l1758
	
l196:	
	goto	l1758
	line	1542
	
l158:	
	line	545
	
l1758:	
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
	goto	u2251
	goto	u2250
u2251:
	goto	l1644
u2250:
	goto	l1760
	
l197:	
	goto	l1760
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l172:	
	line	1547
	
l1760:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1),0
	bcf	status,7
	clrf	indf
	line	1549
	
l1762:	
;doprnt.c: 1549: return ccnt;
	movf	(sprintf@ccnt+1),w
	clrf	(?_sprintf+1)
	addwf	(?_sprintf+1)
	movf	(sprintf@ccnt),w
	clrf	(?_sprintf)
	addwf	(?_sprintf)

	goto	l198
	
l1764:	
	line	1550
	
l198:	
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
;; Hardware stack levels required when called:    2
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
	
l1376:	
	clrf	(_isdigit$373)
	
l1378:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1391
	goto	u1390
u1391:
	goto	l1384
u1390:
	
l1380:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l1384
u1400:
	
l1382:	
	clrf	(_isdigit$373)
	incf	(_isdigit$373),f
	goto	l1384
	
l538:	
	
l1384:	
	rrf	(_isdigit$373),w
	
	goto	l539
	
l1386:	
	line	15
	
l539:	
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
;; Hardware stack levels required when called:    2
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
	
l1388:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1390
	line	44
	
l281:	
	line	45
	
l1390:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1411
	goto	u1410
u1411:
	goto	l282
u1410:
	line	46
	
l1392:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l282:	
	line	47
	movlw	01h
	
u1425:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1425
	line	48
	
l1394:	
	movlw	01h
	
u1435:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1435
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1441
	goto	u1440
u1441:
	goto	l1390
u1440:
	goto	l1396
	
l283:	
	line	52
	
l1396:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l284
	
l1398:	
	line	53
	
l284:	
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
;; Hardware stack levels required when called:    2
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
	
l1602:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1991
	goto	u1990
u1991:
	goto	l1620
u1990:
	line	14
	
l1604:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1610
	
l628:	
	line	16
	
l1606:	
	movlw	01h
	
u2005:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2005
	line	17
	
l1608:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1610
	line	18
	
l627:	
	line	15
	
l1610:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2011
	goto	u2010
u2011:
	goto	l1606
u2010:
	goto	l1612
	
l629:	
	goto	l1612
	line	19
	
l630:	
	line	20
	
l1612:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2025
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2025:
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l1616
u2020:
	line	21
	
l1614:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1616
	
l631:	
	line	22
	
l1616:	
	movlw	01h
	
u2035:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2035
	line	23
	
l1618:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l1612
u2040:
	goto	l1620
	
l632:	
	goto	l1620
	line	24
	
l626:	
	line	25
	
l1620:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l633
	
l1622:	
	line	26
	
l633:	
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
;; Hardware stack levels required when called:    2
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
	
l1576:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1578:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1921
	goto	u1920
u1921:
	goto	l1598
u1920:
	line	16
	
l1580:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1586
	
l618:	
	line	18
	
l1582:	
	movlw	01h
	
u1935:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1935
	line	19
	
l1584:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1586
	line	20
	
l617:	
	line	17
	
l1586:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1941
	goto	u1940
u1941:
	goto	l1582
u1940:
	goto	l1588
	
l619:	
	goto	l1588
	line	21
	
l620:	
	line	22
	
l1588:	
	movlw	01h
	
u1955:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1955
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1965
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1965:
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l1594
u1960:
	line	24
	
l1590:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1592:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1594
	line	26
	
l621:	
	line	27
	
l1594:	
	movlw	01h
	
u1975:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1975
	line	28
	
l1596:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l1588
u1980:
	goto	l1598
	
l622:	
	goto	l1598
	line	29
	
l616:	
	line	30
	
l1598:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l623
	
l1600:	
	line	31
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 135 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> displayTime@time(20), displayPPM@strBuffer(50), displayRawADC@buffer(30), STR_2(21), 
;;		 -> STR_1(17), 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCTRL
;;		_instCTRL
;; This function is called by:
;;		_updateDisplay
;;		_displayPPM
;;		_displayTime
;;		_displayRawADC
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	135
global __ptext9
__ptext9:	;psect for function _printToLCD
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	135
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	137
	
l1624:	
;main.c: 137: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	138
;main.c: 138: while (*str)
	goto	l1630
	
l116:	
	line	140
	
l1626:	
;main.c: 139: {
;main.c: 140: dataCTRL(*str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	141
	
l1628:	
;main.c: 141: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l1630
	line	142
	
l115:	
	line	138
	
l1630:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l1626
u2050:
	goto	l118
	
l117:	
	line	143
	
l118:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 115 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printToLCD
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	115
global __ptext10
__ptext10:	;psect for function _dataCTRL
psect	text10
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	115
	global	__size_of_dataCTRL
	__size_of_dataCTRL	equ	__end_of_dataCTRL-_dataCTRL
	
_dataCTRL:	
;incstack = 0
	opt	stack 3
; Regs used in _dataCTRL: [wreg]
;dataCTRL@DAT stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCTRL@DAT)
	line	117
	
l1366:	
;main.c: 117: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	118
	
l1368:	
;main.c: 118: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	119
	
l1370:	
;main.c: 119: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	120
	
l1372:	
;main.c: 120: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	121
;main.c: 121: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u2487:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u2487
	nop2	;nop
	nop
opt asmopt_on

	line	122
	
l1374:	
;main.c: 122: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	123
	
l109:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   46[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   55[BANK0 ] unsigned long 
;;  exp1            1   59[BANK0 ] unsigned char 
;;  sign1           1   54[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   46[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_displayPPM
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext11
__ptext11:	;psect for function ___fttol
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1780:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l1786
u2270:
	line	50
	
l1782:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l524
	
l1784:	
	goto	l524
	
l523:	
	line	51
	
l1786:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2285:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2280:
	addlw	-1
	skipz
	goto	u2285
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1788:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1790:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1792:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1794:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l1796:	
	btfss	(___fttol@exp1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l1806
u2290:
	line	57
	
l1798:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l1804
u2300:
	line	58
	
l1800:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l524
	
l1802:	
	goto	l524
	
l526:	
	goto	l1804
	line	59
	
l527:	
	line	60
	
l1804:	
	movlw	01h
u2315:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2315

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l1804
u2320:
	goto	l1816
	
l528:	
	line	62
	goto	l1816
	
l525:	
	line	63
	
l1806:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1814
u2330:
	line	64
	
l1808:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l524
	
l1810:	
	goto	l524
	
l530:	
	line	65
	goto	l1814
	
l532:	
	line	66
	
l1812:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2345:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2345
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l1814
	line	68
	
l531:	
	line	65
	
l1814:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l1812
u2350:
	goto	l1816
	
l533:	
	goto	l1816
	line	69
	
l529:	
	line	70
	
l1816:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2360
	goto	l1820
u2360:
	line	71
	
l1818:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l1820
	
l534:	
	line	72
	
l1820:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l524
	
l1822:	
	line	73
	
l524:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_displayPPM
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext12
__ptext12:	;psect for function ___ftneg
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l1772:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l1776
u2260:
	line	18
	
l1774:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l1776
	
l514:	
	line	19
	
l1776:	
	goto	l515
	
l1778:	
	line	20
	
l515:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_Read_ADC_MQ135

;; *************** function _Read_ADC_MQ135 *****************
;; Defined at:
;;		line 147 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_displayPPM
;;		_displayRawADC
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,inline
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	147
global __ptext13
__ptext13:	;psect for function _Read_ADC_MQ135
psect	text13
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	147
	global	__size_of_Read_ADC_MQ135
	__size_of_Read_ADC_MQ135	equ	__end_of_Read_ADC_MQ135-_Read_ADC_MQ135
	
_Read_ADC_MQ135:	
;incstack = 0
	opt	stack 3
; Regs used in _Read_ADC_MQ135: [wreg+status,2+status,0]
	line	149
	
l1632:	
;main.c: 149: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Read_ADC_MQ135+0)+0+1),f
	movlw	221
movwf	((??_Read_ADC_MQ135+0)+0),f
u2497:
	decfsz	((??_Read_ADC_MQ135+0)+0),f
	goto	u2497
	decfsz	((??_Read_ADC_MQ135+0)+0+1),f
	goto	u2497
	nop2
opt asmopt_on

	line	150
	
l1634:	
;main.c: 150: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	151
;main.c: 151: while (GO_DONE);
	goto	l121
	
l122:	
	
l121:	
	btfsc	(250/8),(250)&7	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l121
u2060:
	goto	l1636
	
l123:	
	line	152
	
l1636:	
;main.c: 152: return ((ADRESH << 8) + ADRESL);
	movf	(30),w	;volatile
	clrf	(?_Read_ADC_MQ135+1)
	addwf	(?_Read_ADC_MQ135+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_Read_ADC_MQ135)
	addwf	(?_Read_ADC_MQ135)

	goto	l124
	
l1638:	
	line	153
	
l124:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC_MQ135
	__end_of_Read_ADC_MQ135:
	signat	_Read_ADC_MQ135,90
	global	_CalcMQ135

;; *************** function _CalcMQ135 *****************
;; Defined at:
;;		line 155 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;  RAW_ADC         2   62[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  ratio           3   36[BANK1 ] float 
;;  co2             3   33[BANK1 ] float 
;;  ratio5          3   30[BANK1 ] float 
;;  ratio4          3   27[BANK1 ] float 
;;  ratio3          3   24[BANK1 ] float 
;;  ratio2          3   21[BANK1 ] float 
;;  ratio6          3    3[BANK1 ] float 
;;  voltage         3    0[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0      39       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3      39       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_displayPPM
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	155
global __ptext14
__ptext14:	;psect for function _CalcMQ135
psect	text14
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	155
	global	__size_of_CalcMQ135
	__size_of_CalcMQ135	equ	__end_of_CalcMQ135-_CalcMQ135
	
_CalcMQ135:	
;incstack = 0
	opt	stack 1
; Regs used in _CalcMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	157
	
l1766:	
;main.c: 157: float voltage = (RAW_ADC * 5.0) / 1023.0;
	movlw	0xc0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movlw	0x7f
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xa0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movf	(CalcMQ135@RAW_ADC+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(CalcMQ135@RAW_ADC),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@voltage)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@voltage+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@voltage+2)^080h
	line	158
;main.c: 158: float ratio = voltage / 5.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movlw	0xa0
	movwf	(___ftdiv@f2+1)
	movlw	0x40
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@voltage)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@voltage+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@voltage+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio+2)^080h
	line	161
;main.c: 161: float ratio2 = ratio * ratio;
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio2+2)^080h
	line	162
;main.c: 162: float ratio3 = ratio2 * ratio;
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio3+2)^080h
	line	163
;main.c: 163: float ratio4 = ratio3 * ratio;
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio4)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio4+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio4+2)^080h
	line	164
;main.c: 164: float ratio5 = ratio4 * ratio;
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio4+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio4+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio5)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio5+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio5+2)^080h
	line	165
;main.c: 165: float ratio6 = ratio5 * ratio;
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio5)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio5+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio5+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio6)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio6+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@ratio6+2)^080h
	line	169
;main.c: 168: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;main.c: 169: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
	movlw	0x9c
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xb2
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	movlw	0xa9
	movwf	(___ftmul@f1)
	movlw	0xde
	movwf	(___ftmul@f1+1)
	movlw	0x3c
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$587)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$587+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$587+2)^080h
;main.c: 168: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;main.c: 169: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
	movlw	0xee
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xeb
	movwf	(___ftmul@f1+1)
	movlw	0x3a
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$587)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$587+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$587+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$588)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$588+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$588+2)^080h
;main.c: 168: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;main.c: 169: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
	movlw	0x74
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x5a
	movwf	(___ftmul@f1+1)
	movlw	0xbb
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio4+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio4+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$588)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$588+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$588+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$589)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$589+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$589+2)^080h
;main.c: 168: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;main.c: 169: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
	movlw	0x10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xfc
	movwf	(___ftmul@f1+1)
	movlw	0xba
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio5)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio5+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio5+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$589)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$589+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$589+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$590)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$590+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$590+2)^080h
;main.c: 168: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;main.c: 169: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
	movlw	0xa8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x90
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio6)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio6+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@ratio6+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$590)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$590+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$590+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$591)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$591+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$591+2)^080h
;main.c: 168: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;main.c: 169: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
	movlw	0x80
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xb7
	movwf	(___ftadd@f1+1)
	movlw	0x39
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$591)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$591+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$591+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@co2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@co2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@co2+2)^080h
	line	171
;main.c: 171: co2 *= 415.58;
	movlw	0xca
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xcf
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@co2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@co2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@co2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@co2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@co2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(CalcMQ135@co2+2)^080h
	line	172
	
l1768:	
;main.c: 172: return co2;
	movf	(CalcMQ135@co2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_CalcMQ135)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@co2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_CalcMQ135+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(CalcMQ135@co2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_CalcMQ135+2)
	goto	l127
	
l1770:	
	line	173
	
l127:	
	return
	opt stack 0
GLOBAL	__end_of_CalcMQ135
	__end_of_CalcMQ135:
	signat	_CalcMQ135,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   30[BANK0 ] float 
;;  f2              3   33[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   41[BANK0 ] unsigned um
;;  sign            1   45[BANK0 ] unsigned char 
;;  cntr            1   44[BANK0 ] unsigned char 
;;  exp             1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_CalcMQ135
;;		_displayPPM
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext15
__ptext15:	;psect for function ___ftmul
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1526:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1781
	goto	u1780
u1781:
	goto	l1532
u1780:
	line	68
	
l1528:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l504
	
l1530:	
	goto	l504
	
l503:	
	line	69
	
l1532:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1791
	goto	u1790
u1791:
	goto	l1538
u1790:
	line	70
	
l1534:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l504
	
l1536:	
	goto	l504
	
l505:	
	line	71
	
l1538:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1805:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1800:
	addlw	-1
	skipz
	goto	u1805
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u1815:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u1810:
	addlw	-1
	skipz
	goto	u1815
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
l1540:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1542:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1544:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1546:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1548:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1550
	line	135
	
l506:	
	line	136
	
l1550:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1821
	goto	u1820
u1821:
	goto	l1554
u1820:
	line	137
	
l1552:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1831
	addwf	(___ftmul@f3_as_product+1),f
u1831:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1832
	addwf	(___ftmul@f3_as_product+2),f
u1832:

	goto	l1554
	
l507:	
	line	138
	
l1554:	
	movlw	01h
u1845:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1845

	line	139
	
l1556:	
	movlw	01h
u1855:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u1855
	line	140
	
l1558:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l1550
u1860:
	goto	l1560
	
l508:	
	line	143
	
l1560:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1562
	line	144
	
l509:	
	line	145
	
l1562:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l1566
u1870:
	line	146
	
l1564:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1881
	addwf	(___ftmul@f3_as_product+1),f
u1881:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1882
	addwf	(___ftmul@f3_as_product+2),f
u1882:

	goto	l1566
	
l510:	
	line	147
	
l1566:	
	movlw	01h
u1895:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u1895

	line	148
	
l1568:	
	movlw	01h
u1905:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u1905

	line	149
	
l1570:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l1562
u1910:
	goto	l1572
	
l511:	
	line	156
	
l1572:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l504
	
l1574:	
	line	157
	
l504:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   46[BANK0 ] float 
;;  f1              3   49[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   57[BANK0 ] float 
;;  sign            1   61[BANK0 ] unsigned char 
;;  exp             1   60[BANK0 ] unsigned char 
;;  cntr            1   56[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   46[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_CalcMQ135
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext16
__ptext16:	;psect for function ___ftdiv
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l1484:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l1490
u1700:
	line	56
	
l1486:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l489
	
l1488:	
	goto	l489
	
l488:	
	line	57
	
l1490:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u1711
	goto	u1710
u1711:
	goto	l1496
u1710:
	line	58
	
l1492:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l489
	
l1494:	
	goto	l489
	
l490:	
	line	59
	
l1496:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l1498:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l1500:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1725:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1720:
	addlw	-1
	skipz
	goto	u1725
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l1502:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u1735:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u1730:
	addlw	-1
	skipz
	goto	u1735
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l1504:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l1506:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l1508:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l1510
	line	69
	
l491:	
	line	70
	
l1510:	
	movlw	01h
u1745:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u1745
	line	71
	
l1512:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1755
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1755
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1755:
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l1518
u1750:
	line	72
	
l1514:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l1516:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l1518
	line	74
	
l492:	
	line	75
	
l1518:	
	movlw	01h
u1765:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u1765
	line	76
	
l1520:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l1510
u1770:
	goto	l1522
	
l493:	
	line	77
	
l1522:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l489
	
l1524:	
	line	78
	
l489:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;;  f2              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   29[BANK0 ] unsigned char 
;;  exp2            1   28[BANK0 ] unsigned char 
;;  sign            1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_CalcMQ135
;;		_displayPPM
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext17
__ptext17:	;psect for function ___ftadd
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1412:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l1414:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u1460
	goto	l1420
u1460:
	
l1416:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1471
	goto	u1470
u1471:
	goto	l1424
u1470:
	
l1418:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l1424
u1480:
	goto	l1420
	
l457:	
	line	93
	
l1420:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l458
	
l1422:	
	goto	l458
	
l455:	
	line	94
	
l1424:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u1490
	goto	l461
u1490:
	
l1426:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1501
	goto	u1500
u1501:
	goto	l1430
u1500:
	
l1428:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l1430
u1510:
	
l461:	
	line	95
	goto	l458
	
l459:	
	line	96
	
l1430:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1432:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l462
u1520:
	line	98
	
l1434:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l462:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l463
u1530:
	line	100
	
l1436:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l463:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1438:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1440:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u1541
	goto	u1540
u1541:
	goto	l1452
u1540:
	goto	l1442
	line	109
	
l465:	
	line	110
	
l1442:	
	movlw	01h
u1555:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u1555
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1444:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1561
	goto	u1560
u1561:
	goto	l1450
u1560:
	
l1446:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l1442
u1570:
	goto	l1450
	
l467:	
	goto	l1450
	
l468:	
	line	113
	goto	l1450
	
l470:	
	line	114
	
l1448:	
	movlw	01h
u1585:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u1585

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1450
	line	116
	
l469:	
	line	113
	
l1450:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l1448
u1590:
	goto	l472
	
l471:	
	line	117
	goto	l472
	
l464:	
	
l1452:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l472
u1600:
	goto	l1454
	line	120
	
l474:	
	line	121
	
l1454:	
	movlw	01h
u1615:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u1615
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1456:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u1621
	goto	u1620
u1621:
	goto	l1462
u1620:
	
l1458:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l1454
u1630:
	goto	l1462
	
l476:	
	goto	l1462
	
l477:	
	line	124
	goto	l1462
	
l479:	
	line	125
	
l1460:	
	movlw	01h
u1645:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u1645

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1462
	line	127
	
l478:	
	line	124
	
l1462:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u1651
	goto	u1650
u1651:
	goto	l1460
u1650:
	goto	l472
	
l480:	
	goto	l472
	line	128
	
l473:	
	line	129
	
l472:	
	btfss	(___ftadd@sign),(7)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l1466
u1660:
	line	131
	
l1464:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l1466
	line	133
	
l481:	
	line	134
	
l1466:	
	btfss	(___ftadd@sign),(6)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l1470
u1670:
	line	136
	
l1468:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l1470
	line	138
	
l482:	
	line	139
	
l1470:	
	clrf	(___ftadd@sign)
	line	140
	
l1472:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u1681
	addwf	(___ftadd@f2+1),f
u1681:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u1682
	addwf	(___ftadd@f2+2),f
u1682:

	line	141
	
l1474:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l1480
u1690:
	line	142
	
l1476:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l1478:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1480
	line	145
	
l483:	
	line	146
	
l1480:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l458
	
l1482:	
	line	148
	
l458:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_CalcMQ135
;;		_displayPPM
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext18
__ptext18:	;psect for function ___awtoft
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1400:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l1402:	
	btfss	(___awtoft@c+1),7
	goto	u1451
	goto	u1450
u1451:
	goto	l1408
u1450:
	line	38
	
l1404:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1406:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1408
	line	40
	
l432:	
	line	41
	
l1408:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l433
	
l1410:	
	line	42
	
l433:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext19
__ptext19:	;psect for function ___ftpack
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1326:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u1280
	goto	l1330
u1280:
	
l1328:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1291
	goto	u1290
u1291:
	goto	l1336
u1290:
	goto	l1330
	
l438:	
	line	65
	
l1330:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l439
	
l1332:	
	goto	l439
	
l436:	
	line	66
	goto	l1336
	
l441:	
	line	67
	
l1334:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1305:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1305

	goto	l1336
	line	69
	
l440:	
	line	66
	
l1336:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1334
u1310:
	goto	l443
	
l442:	
	line	70
	goto	l443
	
l444:	
	line	71
	
l1338:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1340:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l1342:	
	movlw	01h
u1325:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1325

	line	74
	
l443:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l1338
u1330:
	goto	l1346
	
l445:	
	line	75
	goto	l1346
	
l447:	
	line	76
	
l1344:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1345:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1345
	goto	l1346
	line	78
	
l446:	
	line	75
	
l1346:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1351
	goto	u1350
u1351:
	goto	l1344
u1350:
	
l448:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l449
u1360:
	line	80
	
l1348:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l449:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1350:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1375:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1370:
	addlw	-1
	skipz
	goto	u1375
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1352:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1380
	goto	l450
u1380:
	line	84
	
l1354:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l450:	
	line	85
	line	86
	
l439:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_runTime

;; *************** function _runTime *****************
;; Defined at:
;;		line 222 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	222
global __ptext20
__ptext20:	;psect for function _runTime
psect	text20
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	222
	global	__size_of_runTime
	__size_of_runTime	equ	__end_of_runTime-_runTime
	
_runTime:	
;incstack = 0
	opt	stack 5
; Regs used in _runTime: [wreg+status,2+btemp+1]
	line	224
	
l1872:	
;main.c: 224: DEF_MINUTES++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_DEF_MINUTES),f
	skipnc
	incf	(_DEF_MINUTES+1),f
	movlw	high(01h)
	addwf	(_DEF_MINUTES+1),f
	line	225
	
l1874:	
;main.c: 225: if (DEF_MINUTES >= 60)
	movf	(_DEF_MINUTES+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(03Ch)
	subwf	(_DEF_MINUTES),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l147
u2390:
	line	227
	
l1876:	
;main.c: 226: {
;main.c: 227: DEF_MINUTES = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DEF_MINUTES)
	clrf	(_DEF_MINUTES+1)
	line	228
	
l1878:	
;main.c: 228: DEF_HOURS++;
	movlw	low(01h)
	addwf	(_DEF_HOURS),f
	skipnc
	incf	(_DEF_HOURS+1),f
	movlw	high(01h)
	addwf	(_DEF_HOURS+1),f
	line	229
	
l1880:	
;main.c: 229: if (DEF_HOURS >= 24)
	movf	(_DEF_HOURS+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(018h)
	subwf	(_DEF_HOURS),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l1884
u2400:
	line	231
	
l1882:	
;main.c: 230: {
;main.c: 231: DEF_HOURS = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DEF_HOURS)
	clrf	(_DEF_HOURS+1)
	goto	l1884
	line	232
	
l146:	
	line	233
	
l1884:	
;main.c: 232: }
;main.c: 233: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_runTime+0)+0+1),f
	movlw	238
movwf	((??_runTime+0)+0),f
u2507:
	decfsz	((??_runTime+0)+0),f
	goto	u2507
	decfsz	((??_runTime+0)+0+1),f
	goto	u2507
	nop
opt asmopt_on

	goto	l147
	line	234
	
l145:	
	line	235
	
l147:	
	return
	opt stack 0
GLOBAL	__end_of_runTime
	__end_of_runTime:
	signat	_runTime,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 125 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	125
global __ptext21
__ptext21:	;psect for function _initLCD
psect	text21
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	125
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l1850:	
;main.c: 127: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	128
	
l1852:	
;main.c: 128: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_initLCD+0)+0,f
u2517:
decfsz	(??_initLCD+0)+0,f
	goto	u2517
	nop
opt asmopt_on

	line	129
	
l1854:	
;main.c: 129: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	130
	
l1856:	
;main.c: 130: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	131
	
l1858:	
;main.c: 131: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	132
	
l1860:	
;main.c: 132: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	133
	
l112:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_initInterrupt

;; *************** function _initInterrupt *****************
;; Defined at:
;;		line 40 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	40
global __ptext22
__ptext22:	;psect for function _initInterrupt
psect	text22
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	40
	global	__size_of_initInterrupt
	__size_of_initInterrupt	equ	__end_of_initInterrupt-_initInterrupt
	
_initInterrupt:	
;incstack = 0
	opt	stack 5
; Regs used in _initInterrupt: []
	line	42
	
l1862:	
;main.c: 42: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	43
;main.c: 43: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	44
;main.c: 44: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	45
;main.c: 45: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	46
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_initInterrupt
	__end_of_initInterrupt:
	signat	_initInterrupt,88
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 34 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	34
global __ptext23
__ptext23:	;psect for function _initADC
psect	text23
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	34
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	stack 5
; Regs used in _initADC: [wreg]
	line	36
	
l1848:	
;main.c: 36: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	37
;main.c: 37: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	38
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,88
	global	_checkMode

;; *************** function _checkMode *****************
;; Defined at:
;;		line 82 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	82
global __ptext24
__ptext24:	;psect for function _checkMode
psect	text24
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	82
	global	__size_of_checkMode
	__size_of_checkMode	equ	__end_of_checkMode-_checkMode
	
_checkMode:	
;incstack = 0
	opt	stack 4
; Regs used in _checkMode: [wreg+status,2+status,0+pclath+cstack]
	line	84
	
l1864:	
;main.c: 84: if (lastMode != mode)
	movf	(_lastMode),w	;volatile
	xorwf	(_mode),w	;volatile
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l100
u2380:
	line	86
	
l1866:	
;main.c: 85: {
;main.c: 86: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	87
	
l1868:	
;main.c: 87: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_checkMode+0)+0+1),f
	movlw	238
movwf	((??_checkMode+0)+0),f
u2527:
	decfsz	((??_checkMode+0)+0),f
	goto	u2527
	decfsz	((??_checkMode+0)+0+1),f
	goto	u2527
	nop
opt asmopt_on

	line	88
	
l1870:	
;main.c: 88: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	89
;main.c: 89: lastMode = mode;
	movf	(_mode),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkMode+0)+0
	movf	(??_checkMode+0)+0,w
	movwf	(_lastMode)	;volatile
	goto	l100
	line	90
	
l99:	
	line	91
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_checkMode
	__end_of_checkMode:
	signat	_checkMode,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 105 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updateDisplay
;;		_checkMode
;;		_initLCD
;;		_printToLCD
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	105
global __ptext25
__ptext25:	;psect for function _instCTRL
psect	text25
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	105
	global	__size_of_instCTRL
	__size_of_instCTRL	equ	__end_of_instCTRL-_instCTRL
	
_instCTRL:	
;incstack = 0
	opt	stack 3
; Regs used in _instCTRL: [wreg]
;instCTRL@CMD stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCTRL@CMD)
	line	107
	
l1356:	
;main.c: 107: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	108
	
l1358:	
;main.c: 108: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	109
	
l1360:	
;main.c: 109: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	110
	
l1362:	
;main.c: 110: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	111
;main.c: 111: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u2537:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u2537
	nop2	;nop
	nop
opt asmopt_on

	line	112
	
l1364:	
;main.c: 112: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	113
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 48 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
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
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	48
global __ptext26
__ptext26:	;psect for function _ISR
psect	text26
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\mq135-scheduling\main.c"
	line	48
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 1
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text26
	line	50
	
i1l1304:	
;main.c: 50: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	51
;main.c: 51: if (INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u125_21
	goto	u125_20
u125_21:
	goto	i1l1310
u125_20:
	line	53
	
i1l1306:	
;main.c: 52: {
;main.c: 53: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	54
	
i1l1308:	
;main.c: 54: mode = (mode + 1) % 3;
	movlw	low(03h)
	movwf	(___awmod@divisor)
	movlw	high(03h)
	movwf	((___awmod@divisor))+1
	movf	(_mode),w	;volatile
	addlw	low(01h)
	movwf	(___awmod@dividend)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_mode)	;volatile
	goto	i1l1310
	line	55
	
i1l89:	
	line	56
	
i1l1310:	
;main.c: 55: }
;main.c: 56: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	57
	
i1l90:	
	movf	(??_ISR+4),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext27
__ptext27:	;psect for function ___awmod
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 1
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
i1l1246:	
	clrf	(___awmod@sign)
	line	14
	
i1l1248:	
	btfss	(___awmod@dividend+1),7
	goto	u116_21
	goto	u116_20
u116_21:
	goto	i1l1254
u116_20:
	line	15
	
i1l1250:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
i1l1252:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	i1l1254
	line	17
	
i1l417:	
	line	18
	
i1l1254:	
	btfss	(___awmod@divisor+1),7
	goto	u117_21
	goto	u117_20
u117_21:
	goto	i1l1258
u117_20:
	line	19
	
i1l1256:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	i1l1258
	
i1l418:	
	line	20
	
i1l1258:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u118_21
	goto	u118_20
u118_21:
	goto	i1l1276
u118_20:
	line	21
	
i1l1260:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	i1l1266
	
i1l421:	
	line	23
	
i1l1262:	
	movlw	01h
	
u119_25:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u119_25
	line	24
	
i1l1264:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	i1l1266
	line	25
	
i1l420:	
	line	22
	
i1l1266:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u120_21
	goto	u120_20
u120_21:
	goto	i1l1262
u120_20:
	goto	i1l1268
	
i1l422:	
	goto	i1l1268
	line	26
	
i1l423:	
	line	27
	
i1l1268:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u121_25
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u121_25:
	skipc
	goto	u121_21
	goto	u121_20
u121_21:
	goto	i1l1272
u121_20:
	line	28
	
i1l1270:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	i1l1272
	
i1l424:	
	line	29
	
i1l1272:	
	movlw	01h
	
u122_25:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u122_25
	line	30
	
i1l1274:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u123_21
	goto	u123_20
u123_21:
	goto	i1l1268
u123_20:
	goto	i1l1276
	
i1l425:	
	goto	i1l1276
	line	31
	
i1l419:	
	line	32
	
i1l1276:	
	movf	(___awmod@sign),w
	skipz
	goto	u124_20
	goto	i1l1280
u124_20:
	line	33
	
i1l1278:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	i1l1280
	
i1l426:	
	line	34
	
i1l1280:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	i1l427
	
i1l1282:	
	line	35
	
i1l427:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
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
