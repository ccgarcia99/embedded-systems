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
	FNCALL	_main,_CalcMQ135
	FNCALL	_main,_Read_ADC_MQ135
	FNCALL	_main,_checkMode
	FNCALL	_main,_checkSelect
	FNCALL	_main,_handlePPM
	FNCALL	_main,_initADC
	FNCALL	_main,_initInterrupt
	FNCALL	_main,_runClock
	FNCALL	_main,_setPortDirections
	FNCALL	_main,_startUpLCD
	FNCALL	_main,_updateState
	FNCALL	_updateState,_displayPPM
	FNCALL	_updateState,_displayTime
	FNCALL	_updateState,_instCTRL
	FNCALL	_updateState,_printToLCD
	FNCALL	_updateState,_setHours
	FNCALL	_updateState,_setMinutes
	FNCALL	_setMinutes,___awmod
	FNCALL	_setMinutes,_printToLCD
	FNCALL	_setMinutes,_sprintf
	FNCALL	_setHours,___awmod
	FNCALL	_setHours,_printToLCD
	FNCALL	_setHours,_sprintf
	FNCALL	_displayTime,_printToLCD
	FNCALL	_displayTime,_sprintf
	FNCALL	_displayPPM,___awtoft
	FNCALL	_displayPPM,___ftadd
	FNCALL	_displayPPM,___ftmul
	FNCALL	_displayPPM,___ftneg
	FNCALL	_displayPPM,___fttol
	FNCALL	_displayPPM,_instCTRL
	FNCALL	_displayPPM,_printToLCD
	FNCALL	_displayPPM,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_startUpLCD,_initLCD
	FNCALL	_startUpLCD,_instCTRL
	FNCALL	_startUpLCD,_printToLCD
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_printToLCD,_instCTRL
	FNCALL	_initLCD,_instCTRL
	FNCALL	_handlePPM,___ftge
	FNCALL	_checkSelect,_instCTRL
	FNCALL	_checkMode,_instCTRL
	FNCALL	_CalcMQ135,___awtoft
	FNCALL	_CalcMQ135,___ftadd
	FNCALL	_CalcMQ135,___ftdiv
	FNCALL	_CalcMQ135,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	FNCALL	_ISR,i1_instCTRL
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_lastMode
	global	_savedMinutesEnd
	global	_hours
	global	_savedHoursEnd
	global	_savedHoursStart
	global	setHours@lastKeyState
	global	setMinutes@lastKeyState
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	13

;initializer for _lastMode
	retlw	0FFh
	line	20

;initializer for _savedMinutesEnd
	retlw	01Eh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	15

;initializer for _hours
	retlw	08h
	line	19

;initializer for _savedHoursEnd
	retlw	0Ah
	line	17

;initializer for _savedHoursStart
	retlw	09h
	line	206

;initializer for setHours@lastKeyState
	retlw	0FFh
	line	248

;initializer for setMinutes@lastKeyState
	retlw	0FFh
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
	global	checkSelect@lastRB1State
	global	_PPM
	global	_minutes
	global	_mode
	global	_savedMinutesStart
	global	_select
	global	_ppmHandler
	global	setHours@debugInfo
	global	setMinutes@debugInfo
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
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
	global	_RB1
_RB1	set	0x31
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RC3
_RC3	set	0x3B
	global	_RC4
_RC4	set	0x3C
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
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
	
STR_10:	
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
	retlw	86	;'V'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_5:	
	retlw	65	;'A'
	retlw	105	;'i'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	65	;'A'
	retlw	105	;'i'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_13:	
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
	retlw	0
psect	strings
	
STR_8:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	71	;'G'
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_9:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	71	;'G'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_12:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_11:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_15:	
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_14:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	67	;'C'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_16:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
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
	
STR_7:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_19	equ	STR_16+0
STR_17	equ	STR_14+0
STR_18	equ	STR_15+0
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
	file	"iteration-2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
checkSelect@lastRB1State:
       ds      2

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	13
_lastMode:
       ds      1

psect	dataCOMMON
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	20
_savedMinutesEnd:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_PPM:
       ds      3

_minutes:
       ds      1

_mode:
       ds      1

_savedMinutesStart:
       ds      1

_select:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	15
_hours:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	19
_savedHoursEnd:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	17
_savedHoursStart:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	206
setHours@lastKeyState:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	248
setMinutes@lastKeyState:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ppmHandler:
       ds      2

setHours@debugInfo:
       ds      10

setMinutes@debugInfo:
       ds      10

	file	"iteration-2.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+016h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	CalcMQ135@voltage
CalcMQ135@voltage:	; 3 bytes @ 0x0
	global	displayPPM@strBuffer
displayPPM@strBuffer:	; 50 bytes @ 0x0
	ds	3
	global	CalcMQ135@ratio6
CalcMQ135@ratio6:	; 3 bytes @ 0x3
	ds	3
	global	_CalcMQ135$628
_CalcMQ135$628:	; 3 bytes @ 0x6
	ds	3
	global	_CalcMQ135$629
_CalcMQ135$629:	; 3 bytes @ 0x9
	ds	3
	global	_CalcMQ135$630
_CalcMQ135$630:	; 3 bytes @ 0xC
	ds	3
	global	_CalcMQ135$631
_CalcMQ135$631:	; 3 bytes @ 0xF
	ds	3
	global	_CalcMQ135$632
_CalcMQ135$632:	; 3 bytes @ 0x12
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
	ds	14
	global	displayPPM@ppmWhole
displayPPM@ppmWhole:	; 2 bytes @ 0x32
	ds	2
	global	displayPPM@ppmFraction
displayPPM@ppmFraction:	; 2 bytes @ 0x34
	ds	2
	global	displayPPM@bufPtr
displayPPM@bufPtr:	; 1 bytes @ 0x36
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_setPortDirections:	; 0 bytes @ 0x0
?_initADC:	; 0 bytes @ 0x0
?_initInterrupt:	; 0 bytes @ 0x0
?_startUpLCD:	; 0 bytes @ 0x0
?_runClock:	; 0 bytes @ 0x0
?_checkSelect:	; 0 bytes @ 0x0
?_checkMode:	; 0 bytes @ 0x0
?_updateState:	; 0 bytes @ 0x0
?_displayTime:	; 0 bytes @ 0x0
?_setHours:	; 0 bytes @ 0x0
?_setMinutes:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?i1_instCTRL:	; 0 bytes @ 0x0
??i1_instCTRL:	; 0 bytes @ 0x0
	ds	1
	global	i1instCTRL@CMD
i1instCTRL@CMD:	; 1 bytes @ 0x1
	ds	1
??_ISR:	; 0 bytes @ 0x2
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_setPortDirections:	; 0 bytes @ 0x0
??_initADC:	; 0 bytes @ 0x0
??_initInterrupt:	; 0 bytes @ 0x0
??_runClock:	; 0 bytes @ 0x0
??_isdigit:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
	global	?_Read_ADC_MQ135
?_Read_ADC_MQ135:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	_isdigit$411
_isdigit$411:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x1
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_checkSelect:	; 0 bytes @ 0x2
??_checkMode:	; 0 bytes @ 0x2
??_initLCD:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
??_Read_ADC_MQ135:	; 0 bytes @ 0x2
	global	printToLCD@str
printToLCD@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_startUpLCD:	; 0 bytes @ 0x4
??_printToLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	checkSelect@currentRB1State
checkSelect@currentRB1State:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
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
	global	?_handlePPM
?_handlePPM:	; 2 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
??_handlePPM:	; 0 bytes @ 0xE
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0xE
	ds	3
??___ftneg:	; 0 bytes @ 0x11
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x11
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x11
	ds	2
??_sprintf:	; 0 bytes @ 0x13
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x14
	ds	2
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x16
	ds	1
??___ftadd:	; 0 bytes @ 0x17
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@ccnt
sprintf@ccnt:	; 2 bytes @ 0x18
	ds	2
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x1A
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1B
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1C
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1D
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1E
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1E
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1E
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1F
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x21
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x21
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x22
	ds	1
??_displayTime:	; 0 bytes @ 0x23
??_setHours:	; 0 bytes @ 0x23
??_setMinutes:	; 0 bytes @ 0x23
	ds	1
??___ftmul:	; 0 bytes @ 0x24
	ds	2
	global	setHours@keyValid
setHours@keyValid:	; 1 bytes @ 0x26
	global	setMinutes@keyValid
setMinutes@keyValid:	; 1 bytes @ 0x26
	ds	1
	global	setHours@key
setHours@key:	; 1 bytes @ 0x27
	global	setMinutes@key
setMinutes@key:	; 1 bytes @ 0x27
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x28
	global	displayTime@timeFormat
displayTime@timeFormat:	; 10 bytes @ 0x28
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
?_displayPPM:	; 0 bytes @ 0x3C
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x3C
	global	displayPPM@ppmHandler
displayPPM@ppmHandler:	; 2 bytes @ 0x3C
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x3D
	ds	1
??_displayPPM:	; 0 bytes @ 0x3E
	global	?_CalcMQ135
?_CalcMQ135:	; 3 bytes @ 0x3E
	global	CalcMQ135@RAW_ADC
CalcMQ135@RAW_ADC:	; 2 bytes @ 0x3E
	ds	2
??_updateState:	; 0 bytes @ 0x40
	ds	1
??_CalcMQ135:	; 0 bytes @ 0x41
??_main:	; 0 bytes @ 0x41
	ds	3
;!
;!Data Sizes:
;!    Strings     181
;!    Constant    10
;!    Data        7
;!    BSS         31
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     68      80
;!    BANK1            80     55      77
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_19(CODE[10]), STR_18(CODE[10]), STR_17(CODE[10]), STR_16(CODE[10]), 
;!		 -> STR_15(CODE[10]), STR_14(CODE[10]), STR_13(CODE[16]), STR_3(CODE[9]), 
;!		 -> STR_2(CODE[3]), STR_1(CODE[6]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;!		 -> setMinutes@debugInfo(BANK1[10]), setHours@debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[10]), displayPPM@strBuffer(BANK1[50]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S215$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    displayPPM@bufPtr	PTR unsigned char  size(1) Largest target is 50
;!		 -> displayPPM@strBuffer(BANK1[50]), 
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 50
;!		 -> setMinutes@debugInfo(BANK1[10]), setHours@debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[10]), STR_12(CODE[12]), 
;!		 -> STR_11(CODE[10]), STR_10(CODE[19]), STR_9(CODE[15]), STR_8(CODE[15]), 
;!		 -> STR_7(CODE[7]), STR_6(CODE[5]), STR_5(CODE[17]), STR_4(CODE[17]), 
;!		 -> displayPPM@strBuffer(BANK1[50]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1_instCTRL
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_CalcMQ135
;!    _updateState->_displayPPM
;!    _setMinutes->_sprintf
;!    _setHours->_sprintf
;!    _displayTime->_sprintf
;!    _displayPPM->___fttol
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    ___fttol->___ftmul
;!    ___ftneg->___awtoft
;!    _startUpLCD->_printToLCD
;!    _printToLCD->_dataCTRL
;!    _printToLCD->_instCTRL
;!    _initLCD->_instCTRL
;!    _handlePPM->___ftge
;!    _checkSelect->_instCTRL
;!    _checkMode->_instCTRL
;!    _CalcMQ135->___ftdiv
;!    ___ftmul->___ftadd
;!    ___ftdiv->___ftmul
;!    ___ftadd->___ftneg
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _updateState->_displayPPM
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
;! (0) _main                                                 3     3      0   42548
;!                                             65 BANK0      3     3      0
;!                          _CalcMQ135
;!                     _Read_ADC_MQ135
;!                          _checkMode
;!                        _checkSelect
;!                          _handlePPM
;!                            _initADC
;!                      _initInterrupt
;!                           _runClock
;!                  _setPortDirections
;!                         _startUpLCD
;!                        _updateState
;! ---------------------------------------------------------------------------------
;! (1) _updateState                                         10    10      0   29436
;!                         _displayPPM
;!                        _displayTime
;!                           _instCTRL
;!                         _printToLCD
;!                           _setHours
;!                         _setMinutes
;! ---------------------------------------------------------------------------------
;! (2) _setMinutes                                           5     5      0    5121
;!                                             35 BANK0      5     5      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setHours                                             5     5      0    5121
;!                                             35 BANK0      5     5      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     720
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _displayTime                                         15    15      0    4288
;!                                             35 BANK0     15    15      0
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _displayPPM                                          59    57      2   13930
;!                                             60 BANK0      4     2      2
;!                                              0 BANK1     55    55      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           _instCTRL
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) _sprintf                                             21    16      5    3224
;!                                             14 BANK0     21    16      5
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (4) _isdigit                                              2     2      0      99
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     266
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              6     2      4     265
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     268
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (3) ___fttol                                             14    10      4     358
;!                                             46 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftneg                                              3     0      3     130
;!                                             14 BANK0      3     0      3
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _startUpLCD                                           0     0      0     998
;!                            _initLCD
;!                           _instCTRL
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (3) _printToLCD                                           2     0      2     954
;!                                              2 BANK0      2     0      2
;!                           _dataCTRL
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (4) _dataCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _initLCD                                              1     1      0      22
;!                                              2 BANK0      1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _setPortDirections                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _runClock                                             2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _initInterrupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _handlePPM                                            2     0      2     242
;!                                             12 BANK0      2     0      2
;!                             ___ftge
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     242
;!                                              0 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (1) _checkSelect                                          4     4      0      67
;!                                              2 BANK0      4     4      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _checkMode                                            2     2      0      22
;!                                              2 BANK0      2     2      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (4) _instCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _Read_ADC_MQ135                                       4     2      2       0
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _CalcMQ135                                           42    39      3   11783
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
;! (2) ___ftdiv                                             16    10      6    2177
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
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  5     5      0      22
;!                                              2 COMMON     5     5      0
;!                         i1_instCTRL
;! ---------------------------------------------------------------------------------
;! (6) i1_instCTRL                                           2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _CalcMQ135
;!     _Read_ADC_MQ135 (ARG)
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
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
;!       ___ftpack (ARG)
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!   _Read_ADC_MQ135
;!   _checkMode
;!     _instCTRL
;!   _checkSelect
;!     _instCTRL
;!   _handlePPM
;!     ___ftge
;!   _initADC
;!   _initInterrupt
;!   _runClock
;!   _setPortDirections
;!   _startUpLCD
;!     _initLCD
;!       _instCTRL
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!   _updateState
;!     _displayPPM
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
;!       _instCTRL
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
;!     _setHours
;!       ___awmod
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!         ___wmul
;!         _isdigit
;!     _setMinutes
;!       ___awmod
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!         ___wmul
;!         _isdigit
;!
;! _ISR (ROOT)
;!   i1_instCTRL
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
;!BANK1               50     37      4D       7       96.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     44      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       B       1       78.6%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      A8      12        0.0%
;!ABS                  0      0      A8       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
;;		_CalcMQ135
;;		_Read_ADC_MQ135
;;		_checkMode
;;		_checkSelect
;;		_handlePPM
;;		_initADC
;;		_initInterrupt
;;		_runClock
;;		_setPortDirections
;;		_startUpLCD
;;		_updateState
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	37
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	37
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l2844:	
;main.c: 39: setPortDirections();
	fcall	_setPortDirections
	line	40
;main.c: 40: initADC();
	fcall	_initADC
	line	41
	
l2846:	
;main.c: 41: initInterrupt();
	fcall	_initInterrupt
	line	42
	
l2848:	
;main.c: 42: startUpLCD();
	fcall	_startUpLCD
	line	43
	
l2850:	
;main.c: 43: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3527:
	decfsz	((??_main+0)+0),f
	goto	u3527
	decfsz	((??_main+0)+0+1),f
	goto	u3527
	decfsz	((??_main+0)+0+2),f
	goto	u3527
	nop2
opt asmopt_on

	goto	l2852
	line	44
;main.c: 44: while (1)
	
l134:	
	line	46
	
l2852:	
;main.c: 45: {
;main.c: 46: runClock();
	fcall	_runClock
	line	47
	
l2854:	
;main.c: 47: PPM = CalcMQ135(Read_ADC_MQ135());
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
	movwf	(_PPM)	;volatile
	movf	(1+(?_CalcMQ135)),w
	movwf	(_PPM+1)	;volatile
	movf	(2+(?_CalcMQ135)),w
	movwf	(_PPM+2)	;volatile
	line	48
	
l2856:	
;main.c: 48: ppmHandler = handlePPM();
	fcall	_handlePPM
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_handlePPM)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ppmHandler+1)^080h
	addwf	(_ppmHandler+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_handlePPM)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ppmHandler)^080h
	addwf	(_ppmHandler)^080h

	line	49
	
l2858:	
;main.c: 49: checkSelect();
	fcall	_checkSelect
	line	50
	
l2860:	
;main.c: 50: checkMode();
	fcall	_checkMode
	line	51
	
l2862:	
;main.c: 51: updateState();
	fcall	_updateState
	line	52
	
l2864:	
;main.c: 52: if (hours >= savedHoursStart && hours <= savedHoursEnd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_savedHoursStart),w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l135
u3500:
	
l2866:	
	movf	(_hours),w	;volatile
	subwf	(_savedHoursEnd),w	;volatile
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l135
u3510:
	line	54
	
l2868:	
;main.c: 53: {
;main.c: 54: RC4 = 1;
	bsf	(60/8),(60)&7	;volatile
	line	55
;main.c: 55: }
	goto	l2852
	line	56
	
l135:	
	line	58
;main.c: 56: else
;main.c: 57: {
;main.c: 58: RC4 = 0;
	bcf	(60/8),(60)&7	;volatile
	goto	l2852
	line	59
	
l136:	
	goto	l2852
	line	60
	
l137:	
	line	44
	goto	l2852
	
l138:	
	line	61
	
l139:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateState

;; *************** function _updateState *****************
;; Defined at:
;;		line 110 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         10    0        unsigned char [10]
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_displayPPM
;;		_displayTime
;;		_instCTRL
;;		_printToLCD
;;		_setHours
;;		_setMinutes
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	110
global __ptext1
__ptext1:	;psect for function _updateState
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	110
	global	__size_of_updateState
	__size_of_updateState	equ	__end_of_updateState-_updateState
	
_updateState:	
;incstack = 0
	opt	stack 2
; Regs used in _updateState: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	113
	
l2798:	
;main.c: 112: char buffer[10];
;main.c: 113: switch (mode)
	goto	l2842
	line	115
;main.c: 114: {
;main.c: 115: case DISP_CMN:
	
l159:	
	line	116
	
l2800:	
;main.c: 116: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	117
	
l2802:	
;main.c: 117: printToLCD("MODE: ");
	movlw	low((STR_7)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	118
;main.c: 118: switch (select)
	goto	l2818
	line	120
;main.c: 119: {
;main.c: 120: case 0:
	
l161:	
	line	121
	
l2804:	
;main.c: 121: printToLCD("DISP CMMON PG1");
	movlw	low((STR_8)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	122
	
l2806:	
;main.c: 122: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	123
	
l2808:	
;main.c: 123: displayPPM(ppmHandler);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ppmHandler+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(displayPPM@ppmHandler+1)
	addwf	(displayPPM@ppmHandler+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ppmHandler)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(displayPPM@ppmHandler)
	addwf	(displayPPM@ppmHandler)

	fcall	_displayPPM
	line	125
;main.c: 125: break;
	goto	l171
	line	126
;main.c: 126: case 1:
	
l163:	
	line	127
	
l2810:	
;main.c: 127: printToLCD("DISP CMMON PG2");
	movlw	low((STR_9)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	128
	
l2812:	
;main.c: 128: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	129
	
l2814:	
;main.c: 129: displayTime();
	fcall	_displayTime
	line	130
;main.c: 130: break;
	goto	l171
	line	131
	
l2816:	
;main.c: 131: }
	goto	l171
	line	118
	
l160:	
	
l2818:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_select),w	;volatile
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
	goto	l2804
	xorlw	1^0	; case 1
	skipnz
	goto	l2810
	goto	l171
	opt asmopt_on

	line	131
	
l162:	
	line	132
;main.c: 132: break;
	goto	l171
	line	133
;main.c: 133: case SET_ACTV:
	
l165:	
	line	134
	
l2820:	
;main.c: 134: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	135
	
l2822:	
;main.c: 135: printToLCD("MODE: SET ACTV HRS");
	movlw	low((STR_10)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	136
;main.c: 136: switch (select)
	goto	l2838
	line	138
;main.c: 137: {
;main.c: 138: case 0:
	
l167:	
	line	139
	
l2824:	
;main.c: 139: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	140
	
l2826:	
;main.c: 140: printToLCD("SET HOURS");
	movlw	low((STR_11)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	141
	
l2828:	
;main.c: 141: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	142
;main.c: 142: setHours();
	fcall	_setHours
	line	143
;main.c: 143: break;
	goto	l171
	line	144
;main.c: 144: case 1:
	
l169:	
	line	145
	
l2830:	
;main.c: 145: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	146
	
l2832:	
;main.c: 146: printToLCD("SET MINUTES");
	movlw	low((STR_12)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	147
	
l2834:	
;main.c: 147: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	148
;main.c: 148: setMinutes();
	fcall	_setMinutes
	line	149
;main.c: 149: break;
	goto	l171
	line	150
	
l2836:	
;main.c: 150: }
	goto	l171
	line	136
	
l166:	
	
l2838:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_select),w	;volatile
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
	goto	l2824
	xorlw	1^0	; case 1
	skipnz
	goto	l2830
	goto	l171
	opt asmopt_on

	line	150
	
l168:	
	line	151
;main.c: 151: break;
	goto	l171
	line	152
;main.c: 152: default:
	
l170:	
	line	153
;main.c: 153: break;
	goto	l171
	line	154
	
l2840:	
;main.c: 154: }
	goto	l171
	line	113
	
l158:	
	
l2842:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
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
	goto	l2800
	xorlw	1^0	; case 1
	skipnz
	goto	l2820
	goto	l171
	opt asmopt_on

	line	154
	
l164:	
	line	155
	
l171:	
	return
	opt stack 0
GLOBAL	__end_of_updateState
	__end_of_updateState:
	signat	_updateState,88
	global	_setMinutes

;; *************** function _setMinutes *****************
;; Defined at:
;;		line 245 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1   39[BANK0 ] unsigned char 
;;  keyValid        1   38[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	245
global __ptext2
__ptext2:	;psect for function _setMinutes
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	245
	global	__size_of_setMinutes
	__size_of_setMinutes	equ	__end_of_setMinutes-_setMinutes
	
_setMinutes:	
;incstack = 0
	opt	stack 2
; Regs used in _setMinutes: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	250
	
l2722:	
;main.c: 247: static char debugInfo[10];
;main.c: 248: static unsigned char lastKeyState = 0xFF;
;main.c: 250: unsigned char keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutes+0)+0
	movlw	03h
u3405:
	clrc
	rrf	(??_setMinutes+0)+0,f
	addlw	-1
	skipz
	goto	u3405
	movf	0+(??_setMinutes+0)+0,w
	andlw	01h
	movwf	(??_setMinutes+1)+0
	movf	(??_setMinutes+1)+0,w
	movwf	(setMinutes@keyValid)
	line	251
;main.c: 251: unsigned char key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setMinutes+0)+0
	movlw	04h
u3415:
	clrc
	rrf	(??_setMinutes+0)+0,f
	addlw	-1
	skipz
	goto	u3415
	movf	0+(??_setMinutes+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutes+1)+0
	movf	(??_setMinutes+1)+0,w
	movwf	(setMinutes@key)
	line	253
	
l2724:	
;main.c: 253: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutes+0)+0+1),f
	movlw	238
movwf	((??_setMinutes+0)+0),f
u3537:
	decfsz	((??_setMinutes+0)+0),f
	goto	u3537
	decfsz	((??_setMinutes+0)+0+1),f
	goto	u3537
	nop
opt asmopt_on

	line	255
	
l2726:	
;main.c: 255: if (keyValid && key != lastKeyState)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setMinutes@keyValid),w
	skipz
	goto	u3420
	goto	l2752
u3420:
	
l2728:	
	movf	(setMinutes@key),w
	xorwf	(setMinutes@lastKeyState),w
	skipnz
	goto	u3431
	goto	u3430
u3431:
	goto	l2752
u3430:
	line	257
	
l2730:	
;main.c: 256: {
;main.c: 257: if (key == 0b00001100)
	movf	(setMinutes@key),w
	xorlw	0Ch
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l2736
u3440:
	line	259
	
l2732:	
;main.c: 258: {
;main.c: 259: savedMinutesStart = (savedMinutesStart + 5) % 60;
	movlw	low(03Ch)
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_savedMinutesStart),w	;volatile
	addlw	low(05h)
	movwf	(___awmod@dividend)
	movlw	high(05h)
	skipnc
	movlw	(high(05h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(_savedMinutesStart)	;volatile
	line	260
	
l2734:	
;main.c: 260: sprintf(debugInfo, "INC: %02d", savedMinutesStart);
	movlw	((STR_17)-__stringbase)&0ffh
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_setMinutes+1)+0
	clrf	(??_setMinutes+1)+0+1
	movf	0+(??_setMinutes+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutes+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(setMinutes@debugInfo)&0ffh
	fcall	_sprintf
	line	261
;main.c: 261: }
	goto	l216
	line	262
	
l215:	
	
l2736:	
;main.c: 262: else if (key == 0b00001110)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setMinutes@key),w
	xorlw	0Eh
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l2742
u3450:
	line	264
	
l2738:	
;main.c: 263: {
;main.c: 264: savedMinutesStart = (savedMinutesStart - 5 + 60) % 60;
	movlw	low(03Ch)
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_savedMinutesStart),w	;volatile
	addlw	low(037h)
	movwf	(___awmod@dividend)
	movlw	high(037h)
	skipnc
	movlw	(high(037h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(_savedMinutesStart)	;volatile
	line	265
	
l2740:	
;main.c: 265: sprintf(debugInfo, "DEC: %02d", savedMinutesStart);
	movlw	((STR_18)-__stringbase)&0ffh
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_setMinutes+1)+0
	clrf	(??_setMinutes+1)+0+1
	movf	0+(??_setMinutes+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutes+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(setMinutes@debugInfo)&0ffh
	fcall	_sprintf
	line	266
;main.c: 266: }
	goto	l216
	line	267
	
l217:	
	
l2742:	
;main.c: 267: else if (key == 0b00001101)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setMinutes@key),w
	xorlw	0Dh
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l216
u3460:
	line	269
	
l2744:	
;main.c: 268: {
;main.c: 269: sprintf(debugInfo, "SET: %02d", savedMinutesStart);
	movlw	((STR_19)-__stringbase)&0ffh
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_setMinutes+1)+0
	clrf	(??_setMinutes+1)+0+1
	movf	0+(??_setMinutes+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutes+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(setMinutes@debugInfo)&0ffh
	fcall	_sprintf
	goto	l216
	line	270
	
l219:	
	goto	l216
	line	272
	
l218:	
	
l216:	
;main.c: 270: }
;main.c: 272: printToLCD(debugInfo);
	movlw	(setMinutes@debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	273
	
l2746:	
;main.c: 273: lastKeyState = key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setMinutes@key),w
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(setMinutes@lastKeyState)
	line	275
;main.c: 275: while ((PORTB & 0x08) != 0)
	goto	l2750
	
l221:	
	line	277
	
l2748:	
;main.c: 276: {
;main.c: 277: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutes+0)+0+1),f
	movlw	251
movwf	((??_setMinutes+0)+0),f
u3547:
	decfsz	((??_setMinutes+0)+0),f
	goto	u3547
	decfsz	((??_setMinutes+0)+0+1),f
	goto	u3547
	nop2
opt asmopt_on

	goto	l2750
	line	278
	
l220:	
	line	275
	
l2750:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u3471
	goto	u3470
u3471:
	goto	l2748
u3470:
	goto	l225
	
l222:	
	line	279
;main.c: 278: }
;main.c: 279: }
	goto	l225
	line	280
	
l214:	
	
l2752:	
;main.c: 280: else if (!keyValid)
	movf	(setMinutes@keyValid),f
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l225
u3480:
	line	282
	
l2754:	
;main.c: 281: {
;main.c: 282: lastKeyState = 0xFF;
	movlw	(0FFh)
	movwf	(??_setMinutes+0)+0
	movf	(??_setMinutes+0)+0,w
	movwf	(setMinutes@lastKeyState)
	goto	l225
	line	283
	
l224:	
	goto	l225
	line	284
	
l223:	
	
l225:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutes
	__end_of_setMinutes:
	signat	_setMinutes,88
	global	_setHours

;; *************** function _setHours *****************
;; Defined at:
;;		line 203 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1   39[BANK0 ] unsigned char 
;;  keyValid        1   38[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	203
global __ptext3
__ptext3:	;psect for function _setHours
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	203
	global	__size_of_setHours
	__size_of_setHours	equ	__end_of_setHours-_setHours
	
_setHours:	
;incstack = 0
	opt	stack 2
; Regs used in _setHours: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	208
	
l2684:	
;main.c: 205: static char debugInfo[10];
;main.c: 206: static unsigned char lastKeyState = 0xFF;
;main.c: 208: unsigned char keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHours+0)+0
	movlw	03h
u3315:
	clrc
	rrf	(??_setHours+0)+0,f
	addlw	-1
	skipz
	goto	u3315
	movf	0+(??_setHours+0)+0,w
	andlw	01h
	movwf	(??_setHours+1)+0
	movf	(??_setHours+1)+0,w
	movwf	(setHours@keyValid)
	line	209
;main.c: 209: unsigned char key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setHours+0)+0
	movlw	04h
u3325:
	clrc
	rrf	(??_setHours+0)+0,f
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??_setHours+0)+0,w
	andlw	0Fh
	movwf	(??_setHours+1)+0
	movf	(??_setHours+1)+0,w
	movwf	(setHours@key)
	line	211
	
l2686:	
;main.c: 211: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHours+0)+0+1),f
	movlw	238
movwf	((??_setHours+0)+0),f
u3557:
	decfsz	((??_setHours+0)+0),f
	goto	u3557
	decfsz	((??_setHours+0)+0+1),f
	goto	u3557
	nop
opt asmopt_on

	line	213
	
l2688:	
;main.c: 213: if (keyValid && key != lastKeyState)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setHours@keyValid),w
	skipz
	goto	u3330
	goto	l2718
u3330:
	
l2690:	
	movf	(setHours@key),w
	xorwf	(setHours@lastKeyState),w
	skipnz
	goto	u3341
	goto	u3340
u3341:
	goto	l2718
u3340:
	line	215
	
l2692:	
;main.c: 214: {
;main.c: 215: if (key == 0b00001100)
	movf	(setHours@key),w
	xorlw	0Ch
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l2698
u3350:
	line	217
	
l2694:	
;main.c: 216: {
;main.c: 217: savedHoursStart = (savedHoursStart + 1) % 24;
	movlw	low(018h)
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	movf	(_savedHoursStart),w	;volatile
	addlw	low(01h)
	movwf	(___awmod@dividend)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(_savedHoursStart)	;volatile
	line	218
	
l2696:	
;main.c: 218: sprintf(debugInfo, "INC: %02d", savedHoursStart);
	movlw	((STR_14)-__stringbase)&0ffh
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_setHours+1)+0
	clrf	(??_setHours+1)+0+1
	movf	0+(??_setHours+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHours+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(setHours@debugInfo)&0ffh
	fcall	_sprintf
	line	219
;main.c: 219: }
	goto	l2710
	line	220
	
l197:	
	
l2698:	
;main.c: 220: else if (key == 0b00001110)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setHours@key),w
	xorlw	0Eh
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l2704
u3360:
	line	222
	
l2700:	
;main.c: 221: {
;main.c: 222: savedHoursStart = (savedHoursStart - 1 + 24) % 24;
	movlw	low(018h)
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	movf	(_savedHoursStart),w	;volatile
	addlw	low(017h)
	movwf	(___awmod@dividend)
	movlw	high(017h)
	skipnc
	movlw	(high(017h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(_savedHoursStart)	;volatile
	line	223
	
l2702:	
;main.c: 223: sprintf(debugInfo, "DEC: %02d", savedHoursStart);
	movlw	((STR_15)-__stringbase)&0ffh
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_setHours+1)+0
	clrf	(??_setHours+1)+0+1
	movf	0+(??_setHours+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHours+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(setHours@debugInfo)&0ffh
	fcall	_sprintf
	line	224
;main.c: 224: }
	goto	l2710
	line	225
	
l199:	
	
l2704:	
;main.c: 225: else if (key == 0b00001101)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setHours@key),w
	xorlw	0Dh
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l2710
u3370:
	line	227
	
l2706:	
;main.c: 226: {
;main.c: 227: sprintf(debugInfo, "SET: %02d", savedHoursStart);
	movlw	((STR_16)-__stringbase)&0ffh
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_setHours+1)+0
	clrf	(??_setHours+1)+0+1
	movf	0+(??_setHours+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHours+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(setHours@debugInfo)&0ffh
	fcall	_sprintf
	line	228
	
l2708:	
;main.c: 228: savedHoursEnd = savedHoursStart + 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_savedHoursStart),w	;volatile
	addlw	02h
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(_savedHoursEnd)	;volatile
	goto	l2710
	line	229
	
l201:	
	goto	l2710
	line	231
	
l200:	
	goto	l2710
	
l198:	
	
l2710:	
;main.c: 229: }
;main.c: 231: printToLCD(debugInfo);
	movlw	(setHours@debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	232
	
l2712:	
;main.c: 232: lastKeyState = key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setHours@key),w
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(setHours@lastKeyState)
	line	234
;main.c: 234: while ((PORTB & 0x08) != 0)
	goto	l2716
	
l203:	
	line	236
	
l2714:	
;main.c: 235: {
;main.c: 236: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHours+0)+0+1),f
	movlw	251
movwf	((??_setHours+0)+0),f
u3567:
	decfsz	((??_setHours+0)+0),f
	goto	u3567
	decfsz	((??_setHours+0)+0+1),f
	goto	u3567
	nop2
opt asmopt_on

	goto	l2716
	line	237
	
l202:	
	line	234
	
l2716:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l2714
u3380:
	goto	l207
	
l204:	
	line	238
;main.c: 237: }
;main.c: 238: }
	goto	l207
	line	239
	
l196:	
	
l2718:	
;main.c: 239: else if (!keyValid)
	movf	(setHours@keyValid),f
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l207
u3390:
	line	241
	
l2720:	
;main.c: 240: {
;main.c: 241: lastKeyState = 0xFF;
	movlw	(0FFh)
	movwf	(??_setHours+0)+0
	movf	(??_setHours+0)+0,w
	movwf	(setHours@lastKeyState)
	goto	l207
	line	242
	
l206:	
	goto	l207
	line	243
	
l205:	
	
l207:	
	return
	opt stack 0
GLOBAL	__end_of_setHours
	__end_of_setHours:
	signat	_setHours,88
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setHours
;;		_setMinutes
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___awmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1872:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1874:	
	btfss	(___awmod@dividend+1),7
	goto	u2021
	goto	u2020
u2021:
	goto	l1880
u2020:
	line	15
	
l1876:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1878:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1880
	line	17
	
l495:	
	line	18
	
l1880:	
	btfss	(___awmod@divisor+1),7
	goto	u2031
	goto	u2030
u2031:
	goto	l1884
u2030:
	line	19
	
l1882:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1884
	
l496:	
	line	20
	
l1884:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2041
	goto	u2040
u2041:
	goto	l1902
u2040:
	line	21
	
l1886:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1892
	
l499:	
	line	23
	
l1888:	
	movlw	01h
	
u2055:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2055
	line	24
	
l1890:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1892
	line	25
	
l498:	
	line	22
	
l1892:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l1888
u2060:
	goto	l1894
	
l500:	
	goto	l1894
	line	26
	
l501:	
	line	27
	
l1894:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2075
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2075:
	skipc
	goto	u2071
	goto	u2070
u2071:
	goto	l1898
u2070:
	line	28
	
l1896:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1898
	
l502:	
	line	29
	
l1898:	
	movlw	01h
	
u2085:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2085
	line	30
	
l1900:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l1894
u2090:
	goto	l1902
	
l503:	
	goto	l1902
	line	31
	
l497:	
	line	32
	
l1902:	
	movf	(___awmod@sign),w
	skipz
	goto	u2100
	goto	l1906
u2100:
	line	33
	
l1904:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1906
	
l504:	
	line	34
	
l1906:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l505
	
l1908:	
	line	35
	
l505:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_displayTime

;; *************** function _displayTime *****************
;; Defined at:
;;		line 196 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  timeFormat     10   40[BANK0 ] unsigned char [10]
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
;;      Locals:         0      10       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	196
global __ptext5
__ptext5:	;psect for function _displayTime
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	196
	global	__size_of_displayTime
	__size_of_displayTime	equ	__end_of_displayTime-_displayTime
	
_displayTime:	
;incstack = 0
	opt	stack 2
; Regs used in _displayTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	199
	
l2682:	
;main.c: 198: char timeFormat[10];
;main.c: 199: sprintf(timeFormat, "Time: %02d:%02d", hours, minutes);
	movlw	((STR_13)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayTime+0)+0
	movf	(??_displayTime+0)+0,w
	movwf	(sprintf@f)
	movf	(_hours),w	;volatile
	movwf	(??_displayTime+1)+0
	clrf	(??_displayTime+1)+0+1
	movf	0+(??_displayTime+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_displayTime+1)+0,w
	movwf	1+(?_sprintf)+01h
	movf	(_minutes),w	;volatile
	movwf	(??_displayTime+3)+0
	clrf	(??_displayTime+3)+0+1
	movf	0+(??_displayTime+3)+0,w
	movwf	0+(?_sprintf)+03h
	movf	1+(??_displayTime+3)+0,w
	movwf	1+(?_sprintf)+03h
	movlw	(displayTime@timeFormat)&0ffh
	fcall	_sprintf
	line	200
;main.c: 200: printToLCD(timeFormat);
	movlw	(displayTime@timeFormat&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	201
	
l189:	
	return
	opt stack 0
GLOBAL	__end_of_displayTime
	__end_of_displayTime:
	signat	_displayTime,88
	global	_displayPPM

;; *************** function _displayPPM *****************
;; Defined at:
;;		line 57 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;  ppmHandler      2   60[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  strBuffer      50    0[BANK1 ] unsigned char [50]
;;  ppmFraction     2   52[BANK1 ] int 
;;  ppmWhole        2   50[BANK1 ] int 
;;  bufPtr          1   54[BANK1 ] PTR unsigned char 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0      55       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4      55       0       0
;;Total ram usage:       59 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		_instCTRL
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	57
global __ptext6
__ptext6:	;psect for function _displayPPM
psect	text6
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	57
	global	__size_of_displayPPM
	__size_of_displayPPM	equ	__end_of_displayPPM-_displayPPM
	
_displayPPM:	
;incstack = 0
	opt	stack 2
; Regs used in _displayPPM: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	61
	
l2644:	
;mq135_module.h: 59: char strBuffer[50];
;mq135_module.h: 61: int ppmWhole = (int)PPM;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_PPM),w	;volatile
	movwf	(___fttol@f1)
	movf	(_PPM+1),w	;volatile
	movwf	(___fttol@f1+1)
	movf	(_PPM+2),w	;volatile
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(displayPPM@ppmWhole+1)^080h
	addwf	(displayPPM@ppmWhole+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(displayPPM@ppmWhole)^080h
	addwf	(displayPPM@ppmWhole)^080h

	line	62
;mq135_module.h: 62: int ppmFraction = (int)((PPM - ppmWhole) * 100);
	movf	(displayPPM@ppmWhole+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmWhole)^080h,w
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
	movf	(_PPM),w	;volatile
	movwf	(___ftadd@f1)
	movf	(_PPM+1),w	;volatile
	movwf	(___ftadd@f1+1)
	movf	(_PPM+2),w	;volatile
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(displayPPM@ppmFraction+1)^080h
	addwf	(displayPPM@ppmFraction+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(displayPPM@ppmFraction)^080h
	addwf	(displayPPM@ppmFraction)^080h

	line	65
	
l2646:	
;mq135_module.h: 65: char *bufPtr = strBuffer;
	movlw	(displayPPM@strBuffer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(displayPPM@bufPtr)^080h
	line	66
	
l2648:	
;mq135_module.h: 66: bufPtr += sprintf(bufPtr, "CO2: ");
	movlw	((STR_1)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	fcall	_sprintf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_sprintf)),w
	movwf	(??_displayPPM+1)+0
	movf	(??_displayPPM+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	67
	
l2650:	
;mq135_module.h: 67: bufPtr += sprintf(bufPtr, "%d", ppmWhole);
	movlw	((STR_2)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmWhole+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmWhole)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	fcall	_sprintf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_sprintf)),w
	movwf	(??_displayPPM+1)+0
	movf	(??_displayPPM+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	68
	
l2652:	
;mq135_module.h: 68: *bufPtr++ = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_displayPPM+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2654:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	69
	
l2656:	
;mq135_module.h: 69: if (ppmFraction < 10)
	movf	(displayPPM@ppmFraction+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3305
	movlw	low(0Ah)
	subwf	(displayPPM@ppmFraction)^080h,w
u3305:

	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l2662
u3300:
	line	70
	
l2658:	
;mq135_module.h: 70: *bufPtr++ = '0';
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_displayPPM+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2660:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	goto	l2662
	
l101:	
	line	71
	
l2662:	
;mq135_module.h: 71: sprintf(bufPtr, "%d ppm  ", ppmFraction);
	movlw	((STR_3)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmFraction+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmFraction)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	fcall	_sprintf
	line	72
	
l2664:	
;mq135_module.h: 72: printToLCD(strBuffer);
	movlw	(displayPPM@strBuffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	73
;mq135_module.h: 73: switch (ppmHandler)
	goto	l2676
	line	75
;mq135_module.h: 74: {
;mq135_module.h: 75: case 0:
	
l103:	
	line	76
	
l2666:	
;mq135_module.h: 76: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	77
	
l2668:	
;mq135_module.h: 77: printToLCD("Air Purifier OFF");
	movlw	low((STR_4)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	78
;mq135_module.h: 78: break;
	goto	l106
	line	79
;mq135_module.h: 79: case 1:
	
l105:	
	line	80
	
l2670:	
;mq135_module.h: 80: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	81
	
l2672:	
;mq135_module.h: 81: printToLCD("Air Purifier ON ");
	movlw	low((STR_5)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	82
;mq135_module.h: 82: break;
	goto	l106
	line	83
	
l2674:	
;mq135_module.h: 83: }
	goto	l106
	line	73
	
l102:	
	
l2676:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (displayPPM@ppmHandler+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2890
	goto	l106
	opt asmopt_on
	
l2890:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (displayPPM@ppmHandler),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2666
	xorlw	1^0	; case 1
	skipnz
	goto	l2670
	goto	l106
	opt asmopt_on

	line	83
	
l104:	
	line	84
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_displayPPM
	__end_of_displayPPM:
	signat	_displayPPM,4216
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> setMinutes@debugInfo(10), setHours@debugInfo(10), displayTime@timeFormat(10), displayPPM@strBuffer(50), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_19(10), STR_18(10), STR_17(10), STR_16(10), 
;;		 -> STR_15(10), STR_14(10), STR_13(16), STR_3(9), 
;;		 -> STR_2(3), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   34[BANK0 ] PTR unsigned char 
;;		 -> setMinutes@debugInfo(10), setHours@debugInfo(10), displayTime@timeFormat(10), displayPPM@strBuffer(50), 
;;  _val            4   26[BANK0 ] struct .
;;  width           2   31[BANK0 ] int 
;;  ccnt            2   24[BANK0 ] int 
;;  c               1   33[BANK0 ] char 
;;  flag            1   30[BANK0 ] unsigned char 
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
;;      Locals:         0      13       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
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
;;		_setHours
;;		_setMinutes
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext7
__ptext7:	;psect for function _sprintf
psect	text7
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
	line	510
	
l2510:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 510: int ccnt = 0;
	clrf	(sprintf@ccnt)
	clrf	(sprintf@ccnt+1)
	line	542
	
l2512:	
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
	goto	l2628
	
l237:	
	line	547
	
l2514:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u3101
	goto	u3100
u3101:
	goto	l2522
u3100:
	line	550
	
l2516:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2518:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2520:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	551
;doprnt.c: 551: continue;
	goto	l2628
	line	552
	
l238:	
	line	555
	
l2522:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l2528
	line	559
;doprnt.c: 559: for(;;) {
	
l239:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l2528
	line	588
;doprnt.c: 588: case '0':
	
l241:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
	
l2524:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	591
;doprnt.c: 591: continue;
	goto	l2528
	line	593
	
l2526:	
;doprnt.c: 593: }
	goto	l2530
	line	560
	
l240:	
	
l2528:	
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
	goto	l241
	goto	l2530
	opt asmopt_on

	line	593
	
l243:	
	line	594
;doprnt.c: 594: break;
	goto	l2530
	line	595
	
l242:	
;doprnt.c: 595: }
	goto	l2528
	
l244:	
	line	606
	
l2530:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3111
	goto	u3110
u3111:
	goto	l2544
u3110:
	line	607
	
l2532:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2534
	line	608
;doprnt.c: 608: do {
	
l246:	
	line	609
	
l2534:	
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
	
l2536:	
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
	
l2538:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l2540:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3121
	goto	u3120
u3121:
	goto	l2534
u3120:
	goto	l2544
	
l247:	
	goto	l2544
	line	617
	
l245:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l2544
	line	646
;doprnt.c: 646: case 0:
	
l249:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2630
	line	706
;doprnt.c: 706: case 'd':
	
l251:	
	goto	l2546
	line	707
	
l252:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2546
	line	811
;doprnt.c: 811: default:
	
l254:	
	line	822
;doprnt.c: 822: continue;
	goto	l2628
	line	831
	
l2542:	
;doprnt.c: 831: }
	goto	l2546
	line	644
	
l248:	
	
l2544:	
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
	goto	l2630
	xorlw	100^0	; case 100
	skipnz
	goto	l2546
	xorlw	105^100	; case 105
	skipnz
	goto	l2546
	goto	l2628
	opt asmopt_on

	line	831
	
l253:	
	line	1268
	
l2546:	
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
	
l2548:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l2550:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u3131
	goto	u3130
u3131:
	goto	l2556
u3130:
	line	1271
	
l2552:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l2554:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2556
	line	1273
	
l255:	
	line	1314
	
l2556:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l2560
u3140:
	goto	l2568
	
l2558:	
	goto	l2568
	line	1315
	
l256:	
	
l2560:	
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
	goto	u3155
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u3155:
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l2564
u3150:
	goto	l2568
	line	1316
	
l2562:	
;doprnt.c: 1316: break;
	goto	l2568
	
l258:	
	line	1314
	
l2564:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2566:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l2560
u3160:
	goto	l2568
	
l257:	
	line	1354
	
l2568:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3171
	goto	u3170
u3171:
	goto	l259
u3170:
	
l2570:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l259
u3180:
	line	1355
	
l2572:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l259:	
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
	goto	u3195
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u3195:

	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l2576
u3190:
	line	1391
	
l2574:	
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
	goto	l2578
	line	1392
	
l260:	
	line	1393
	
l2576:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2578
	
l261:	
	line	1396
	
l2578:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l2598
u3200:
	line	1401
	
l2580:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l2588
u3210:
	line	1402
	
l2582:	
;doprnt.c: 1402: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2584:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2586:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2588
	
l263:	
	line	1424
	
l2588:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3221
	goto	u3220
u3221:
	goto	l2616
u3220:
	goto	l2590
	line	1425
;doprnt.c: 1425: do
	
l265:	
	line	1426
	
l2590:	
;doprnt.c: 1426: ((*sp++ = ('0')),(++ccnt));
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2592:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2594:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1427
	
l2596:	
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
	goto	u3231
	goto	u3230
u3231:
	goto	l2590
u3230:
	goto	l2616
	
l266:	
	goto	l2616
	
l264:	
	line	1429
;doprnt.c: 1429: } else
	goto	l2616
	
l262:	
	line	1437
	
l2598:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3241
	goto	u3240
u3241:
	goto	l2608
u3240:
	goto	l2600
	line	1438
;doprnt.c: 1438: do
	
l269:	
	line	1439
	
l2600:	
;doprnt.c: 1439: ((*sp++ = (' ')),(++ccnt));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2602:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2604:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1440
	
l2606:	
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
	goto	u3251
	goto	u3250
u3251:
	goto	l2600
u3250:
	goto	l2608
	
l270:	
	goto	l2608
	
l268:	
	line	1447
	
l2608:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l2616
u3260:
	line	1448
	
l2610:	
;doprnt.c: 1448: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2612:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2614:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2616
	
l271:	
	goto	l2616
	line	1478
	
l267:	
	line	1481
	
l2616:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2626
	
l273:	
	line	1498
	
l2618:	
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
	
l2620:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2622:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2624:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2626
	line	1534
	
l272:	
	line	1483
	
l2626:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l2618
u3270:
	goto	l2628
	
l274:	
	goto	l2628
	line	1542
	
l236:	
	line	545
	
l2628:	
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
	goto	u3281
	goto	u3280
u3281:
	goto	l2514
u3280:
	goto	l2630
	
l275:	
	goto	l2630
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l250:	
	line	1547
	
l2630:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1549
	
l2632:	
;doprnt.c: 1549: return ccnt;
	movf	(sprintf@ccnt+1),w
	clrf	(?_sprintf+1)
	addwf	(?_sprintf+1)
	movf	(sprintf@ccnt),w
	clrf	(?_sprintf)
	addwf	(?_sprintf)

	goto	l276
	
l2634:	
	line	1550
	
l276:	
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext8
__ptext8:	;psect for function _isdigit
psect	text8
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
	
l2478:	
	clrf	(_isdigit$411)
	
l2480:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l2486
u3030:
	
l2482:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l2486
u3040:
	
l2484:	
	clrf	(_isdigit$411)
	incf	(_isdigit$411),f
	goto	l2486
	
l616:	
	
l2486:	
	rrf	(_isdigit$411),w
	
	goto	l617
	
l2488:	
	line	15
	
l617:	
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
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext9
__ptext9:	;psect for function ___wmul
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2490:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2492
	line	44
	
l359:	
	line	45
	
l2492:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l360
u3050:
	line	46
	
l2494:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l360:	
	line	47
	movlw	01h
	
u3065:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3065
	line	48
	
l2496:	
	movlw	01h
	
u3075:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3075
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l2492
u3080:
	goto	l2498
	
l361:	
	line	52
	
l2498:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l362
	
l2500:	
	line	53
	
l362:	
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
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___lwmod
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1716:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1761
	goto	u1760
u1761:
	goto	l1734
u1760:
	line	14
	
l1718:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1724
	
l706:	
	line	16
	
l1720:	
	movlw	01h
	
u1775:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1775
	line	17
	
l1722:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1724
	line	18
	
l705:	
	line	15
	
l1724:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1720
u1780:
	goto	l1726
	
l707:	
	goto	l1726
	line	19
	
l708:	
	line	20
	
l1726:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1795
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1795:
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l1730
u1790:
	line	21
	
l1728:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1730
	
l709:	
	line	22
	
l1730:	
	movlw	01h
	
u1805:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u1805
	line	23
	
l1732:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l1726
u1810:
	goto	l1734
	
l710:	
	goto	l1734
	line	24
	
l704:	
	line	25
	
l1734:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l711
	
l1736:	
	line	26
	
l711:	
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___lwdiv
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1690:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1692:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u1691
	goto	u1690
u1691:
	goto	l1712
u1690:
	line	16
	
l1694:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1700
	
l696:	
	line	18
	
l1696:	
	movlw	01h
	
u1705:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1705
	line	19
	
l1698:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1700
	line	20
	
l695:	
	line	17
	
l1700:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l1696
u1710:
	goto	l1702
	
l697:	
	goto	l1702
	line	21
	
l698:	
	line	22
	
l1702:	
	movlw	01h
	
u1725:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1725
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1735
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1735:
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l1708
u1730:
	line	24
	
l1704:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1706:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1708
	line	26
	
l699:	
	line	27
	
l1708:	
	movlw	01h
	
u1745:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1745
	line	28
	
l1710:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l1702
u1750:
	goto	l1712
	
l700:	
	goto	l1712
	line	29
	
l694:	
	line	30
	
l1712:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l701
	
l1714:	
	line	31
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext12
__ptext12:	;psect for function ___fttol
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2052:	
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
	goto	u2511
	goto	u2510
u2511:
	goto	l2058
u2510:
	line	50
	
l2054:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l602
	
l2056:	
	goto	l602
	
l601:	
	line	51
	
l2058:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2525:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2520:
	addlw	-1
	skipz
	goto	u2525
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2060:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2062:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2064:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2066:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2068:	
	btfss	(___fttol@exp1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l2078
u2530:
	line	57
	
l2070:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l2076
u2540:
	line	58
	
l2072:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l602
	
l2074:	
	goto	l602
	
l604:	
	goto	l2076
	line	59
	
l605:	
	line	60
	
l2076:	
	movlw	01h
u2555:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2555

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2076
u2560:
	goto	l2088
	
l606:	
	line	62
	goto	l2088
	
l603:	
	line	63
	
l2078:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2086
u2570:
	line	64
	
l2080:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l602
	
l2082:	
	goto	l602
	
l608:	
	line	65
	goto	l2086
	
l610:	
	line	66
	
l2084:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2585:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2585
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2086
	line	68
	
l609:	
	line	65
	
l2086:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l2084
u2590:
	goto	l2088
	
l611:	
	goto	l2088
	line	69
	
l607:	
	line	70
	
l2088:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2600
	goto	l2092
u2600:
	line	71
	
l2090:	
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
	goto	l2092
	
l612:	
	line	72
	
l2092:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l602
	
l2094:	
	line	73
	
l602:	
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext13
__ptext13:	;psect for function ___ftneg
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l2636:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l2640
u3290:
	line	18
	
l2638:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2640
	
l592:	
	line	19
	
l2640:	
	goto	l593
	
l2642:	
	line	20
	
l593:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_startUpLCD

;; *************** function _startUpLCD *****************
;; Defined at:
;;		line 82 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_initLCD
;;		_instCTRL
;;		_printToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	82
global __ptext14
__ptext14:	;psect for function _startUpLCD
psect	text14
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	82
	global	__size_of_startUpLCD
	__size_of_startUpLCD	equ	__end_of_startUpLCD-_startUpLCD
	
_startUpLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _startUpLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	84
	
l2794:	
;main.c: 84: initLCD();
	fcall	_initLCD
	line	85
;main.c: 85: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	86
	
l2796:	
;main.c: 86: printToLCD("TEST");
	movlw	low((STR_6)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	87
	
l148:	
	return
	opt stack 0
GLOBAL	__end_of_startUpLCD
	__end_of_startUpLCD:
	signat	_startUpLCD,88
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 47 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> setMinutes@debugInfo(10), setHours@debugInfo(10), displayTime@timeFormat(10), STR_12(12), 
;;		 -> STR_11(10), STR_10(19), STR_9(15), STR_8(15), 
;;		 -> STR_7(7), STR_6(5), STR_5(17), STR_4(17), 
;;		 -> displayPPM@strBuffer(50), 
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
;;		_displayPPM
;;		_startUpLCD
;;		_updateState
;;		_displayTime
;;		_setHours
;;		_setMinutes
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	47
global __ptext15
__ptext15:	;psect for function _printToLCD
psect	text15
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	47
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2502:	
;lcd_functions.h: 49: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	50
;lcd_functions.h: 50: while (*str)
	goto	l2508
	
l85:	
	line	52
	
l2504:	
;lcd_functions.h: 51: {
;lcd_functions.h: 52: dataCTRL(*str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	53
	
l2506:	
;lcd_functions.h: 53: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l2508
	line	54
	
l84:	
	line	50
	
l2508:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l2504
u3090:
	goto	l87
	
l86:	
	line	55
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 27 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
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
psect	text16,local,class=CODE,delta=2,merge=1
	line	27
global __ptext16
__ptext16:	;psect for function _dataCTRL
psect	text16
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	27
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
	line	29
	
l1626:	
;lcd_functions.h: 29: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	30
	
l1628:	
;lcd_functions.h: 30: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	31
	
l1630:	
;lcd_functions.h: 31: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	32
	
l1632:	
;lcd_functions.h: 32: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	33
;lcd_functions.h: 33: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u3577:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u3577
	nop2	;nop
	nop
opt asmopt_on

	line	34
	
l1634:	
;lcd_functions.h: 34: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	35
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
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
;;		_startUpLCD
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	37
global __ptext17
__ptext17:	;psect for function _initLCD
psect	text17
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	37
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2096:	
;lcd_functions.h: 39: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	40
	
l2098:	
;lcd_functions.h: 40: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_initLCD+0)+0,f
u3587:
decfsz	(??_initLCD+0)+0,f
	goto	u3587
	nop
opt asmopt_on

	line	41
	
l2100:	
;lcd_functions.h: 41: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	42
	
l2102:	
;lcd_functions.h: 42: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	43
	
l2104:	
;lcd_functions.h: 43: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	44
	
l2106:	
;lcd_functions.h: 44: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	45
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_setPortDirections

;; *************** function _setPortDirections *****************
;; Defined at:
;;		line 64 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	64
global __ptext18
__ptext18:	;psect for function _setPortDirections
psect	text18
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	64
	global	__size_of_setPortDirections
	__size_of_setPortDirections	equ	__end_of_setPortDirections-_setPortDirections
	
_setPortDirections:	
;incstack = 0
	opt	stack 5
; Regs used in _setPortDirections: [wreg+status,2]
	line	66
	
l2776:	
;main.c: 66: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	67
;main.c: 67: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	68
	
l2778:	
;main.c: 68: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	69
	
l2780:	
;main.c: 69: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	70
	
l2782:	
;main.c: 70: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	71
	
l2784:	
;main.c: 71: PORTB = 0x00;
	clrf	(6)	;volatile
	line	72
	
l2786:	
;main.c: 72: PORTC = 0x00;
	clrf	(7)	;volatile
	line	73
	
l2788:	
;main.c: 73: PORTD = 0x00;
	clrf	(8)	;volatile
	line	74
	
l142:	
	return
	opt stack 0
GLOBAL	__end_of_setPortDirections
	__end_of_setPortDirections:
	signat	_setPortDirections,88
	global	_runClock

;; *************** function _runClock *****************
;; Defined at:
;;		line 181 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text19,local,class=CODE,delta=2,merge=1
	line	181
global __ptext19
__ptext19:	;psect for function _runClock
psect	text19
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	181
	global	__size_of_runClock
	__size_of_runClock	equ	__end_of_runClock-_runClock
	
_runClock:	
;incstack = 0
	opt	stack 5
; Regs used in _runClock: [wreg+status,2+status,0]
	line	183
	
l2332:	
;main.c: 183: minutes++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_minutes),f	;volatile
	line	184
	
l2334:	
;main.c: 184: if (minutes >= 60)
	movlw	(03Ch)
	subwf	(_minutes),w	;volatile
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l2344
u2950:
	line	186
	
l2336:	
;main.c: 185: {
;main.c: 186: minutes = 0;
	clrf	(_minutes)	;volatile
	line	187
	
l2338:	
;main.c: 187: hours++;
	movlw	(01h)
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_hours),f	;volatile
	line	188
	
l2340:	
;main.c: 188: if (hours >= 24)
	movlw	(018h)
	subwf	(_hours),w	;volatile
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l2344
u2960:
	line	190
	
l2342:	
;main.c: 189: {
;main.c: 190: hours = 0;
	clrf	(_hours)	;volatile
	goto	l2344
	line	191
	
l185:	
	goto	l2344
	line	192
	
l184:	
	line	193
	
l2344:	
;main.c: 191: }
;main.c: 192: }
;main.c: 193: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_runClock+0)+0+1),f
	movlw	238
movwf	((??_runClock+0)+0),f
u3597:
	decfsz	((??_runClock+0)+0),f
	goto	u3597
	decfsz	((??_runClock+0)+0+1),f
	goto	u3597
	nop
opt asmopt_on

	line	194
	
l186:	
	return
	opt stack 0
GLOBAL	__end_of_runClock
	__end_of_runClock:
	signat	_runClock,88
	global	_initInterrupt

;; *************** function _initInterrupt *****************
;; Defined at:
;;		line 89 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1
	line	89
global __ptext20
__ptext20:	;psect for function _initInterrupt
psect	text20
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	89
	global	__size_of_initInterrupt
	__size_of_initInterrupt	equ	__end_of_initInterrupt-_initInterrupt
	
_initInterrupt:	
;incstack = 0
	opt	stack 5
; Regs used in _initInterrupt: []
	line	91
	
l2792:	
;main.c: 91: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	92
;main.c: 92: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	93
;main.c: 93: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	94
;main.c: 94: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	95
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_initInterrupt
	__end_of_initInterrupt:
	signat	_initInterrupt,88
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 76 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	76
global __ptext21
__ptext21:	;psect for function _initADC
psect	text21
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	76
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	stack 5
; Regs used in _initADC: [wreg]
	line	78
	
l2790:	
;main.c: 78: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	79
;main.c: 79: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	80
	
l145:	
	return
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,88
	global	_handlePPM

;; *************** function _handlePPM *****************
;; Defined at:
;;		line 86 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		___ftge
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	86
global __ptext22
__ptext22:	;psect for function _handlePPM
psect	text22
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	86
	global	__size_of_handlePPM
	__size_of_handlePPM	equ	__end_of_handlePPM-_handlePPM
	
_handlePPM:	
;incstack = 0
	opt	stack 4
; Regs used in _handlePPM: [wreg+status,2+status,0+pclath+cstack]
	line	88
	
l2762:	
;mq135_module.h: 88: if(PPM > 9)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0x10
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	movf	(_PPM),w	;volatile
	movwf	(___ftge@ff2)
	movf	(_PPM+1),w	;volatile
	movwf	(___ftge@ff2+1)
	movf	(_PPM+2),w	;volatile
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3491
	goto	u3490
u3491:
	goto	l109
u3490:
	line	90
	
l2764:	
;mq135_module.h: 89: {
;mq135_module.h: 90: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	91
	
l2766:	
;mq135_module.h: 91: return 1;
	movlw	low(01h)
	movwf	(?_handlePPM)
	movlw	high(01h)
	movwf	((?_handlePPM))+1
	goto	l110
	
l2768:	
	goto	l110
	line	92
	
l2770:	
;mq135_module.h: 92: }
	goto	l110
	line	93
	
l109:	
	line	95
;mq135_module.h: 93: else
;mq135_module.h: 94: {
;mq135_module.h: 95: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	96
	
l2772:	
;mq135_module.h: 96: return 0;
	clrf	(?_handlePPM)
	clrf	(?_handlePPM+1)
	goto	l110
	
l2774:	
	goto	l110
	line	97
	
l111:	
	line	98
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_handlePPM
	__end_of_handlePPM:
	signat	_handlePPM,90
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handlePPM
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext23
__ptext23:	;psect for function ___ftge
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2262:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2266
u2880:
	line	7
	
l2264:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2891
	goto	u2892
u2891:
	addwf	(??___ftge+0)+1,f
	
u2892:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2893
	goto	u2894
u2893:
	addwf	(??___ftge+0)+2,f
	
u2894:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2266
	
l574:	
	line	8
	
l2266:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l2270
u2900:
	line	9
	
l2268:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2911
	goto	u2912
u2911:
	addwf	(??___ftge+0)+1,f
	
u2912:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2913
	goto	u2914
u2913:
	addwf	(??___ftge+0)+2,f
	
u2914:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2270
	
l575:	
	line	10
	
l2270:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2272:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2274:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2925
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2925
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2925:
	skipnc
	goto	u2921
	goto	u2920
u2921:
	goto	l2278
u2920:
	
l2276:	
	clrc
	
	goto	l576
	
l1612:	
	
l2278:	
	setc
	
	goto	l576
	
l1614:	
	goto	l576
	
l2280:	
	line	13
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_checkSelect

;; *************** function _checkSelect *****************
;; Defined at:
;;		line 168 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  currentRB1St    2    4[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	168
global __ptext24
__ptext24:	;psect for function _checkSelect
psect	text24
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	168
	global	__size_of_checkSelect
	__size_of_checkSelect	equ	__end_of_checkSelect-_checkSelect
	
_checkSelect:	
;incstack = 0
	opt	stack 4
; Regs used in _checkSelect: [wreg+status,2+status,0+pclath+cstack]
	line	171
	
l2346:	
;main.c: 170: static int lastRB1State = 0;
;main.c: 171: int currentRB1State = RB1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_checkSelect+0)+0
	clrf	(??_checkSelect+0)+0+1
	movf	0+(??_checkSelect+0)+0,w
	movwf	(checkSelect@currentRB1State)
	movf	1+(??_checkSelect+0)+0,w
	movwf	(checkSelect@currentRB1State+1)
	line	172
	
l2348:	
;main.c: 172: if (currentRB1State == 1 && lastRB1State == 0)
	movlw	01h
	xorwf	(checkSelect@currentRB1State),w
	iorwf	(checkSelect@currentRB1State+1),w
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l2356
u2970:
	
l2350:	
	movf	((checkSelect@lastRB1State+1)),w
	iorwf	((checkSelect@lastRB1State)),w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l2356
u2980:
	line	174
	
l2352:	
;main.c: 173: {
;main.c: 174: select ^= 1;
	movlw	(01h)
	movwf	(??_checkSelect+0)+0
	movf	(??_checkSelect+0)+0,w
	xorwf	(_select),f	;volatile
	line	176
	
l2354:	
;main.c: 176: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	goto	l2356
	line	177
	
l180:	
	line	178
	
l2356:	
;main.c: 177: }
;main.c: 178: lastRB1State = currentRB1State;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(checkSelect@currentRB1State+1),w
	clrf	(checkSelect@lastRB1State+1)
	addwf	(checkSelect@lastRB1State+1)
	movf	(checkSelect@currentRB1State),w
	clrf	(checkSelect@lastRB1State)
	addwf	(checkSelect@lastRB1State)

	line	179
	
l181:	
	return
	opt stack 0
GLOBAL	__end_of_checkSelect
	__end_of_checkSelect:
	signat	_checkSelect,88
	global	_checkMode

;; *************** function _checkMode *****************
;; Defined at:
;;		line 157 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text25,local,class=CODE,delta=2,merge=1
	line	157
global __ptext25
__ptext25:	;psect for function _checkMode
psect	text25
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	157
	global	__size_of_checkMode
	__size_of_checkMode	equ	__end_of_checkMode-_checkMode
	
_checkMode:	
;incstack = 0
	opt	stack 4
; Regs used in _checkMode: [wreg+status,2+status,0+pclath+cstack]
	line	159
	
l2358:	
;main.c: 159: if (lastMode != mode)
	movf	(_lastMode),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_mode),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l175
u2990:
	line	162
	
l2360:	
;main.c: 160: {
;main.c: 162: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	163
	
l2362:	
;main.c: 163: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_checkMode+0)+0+1),f
	movlw	238
movwf	((??_checkMode+0)+0),f
u3607:
	decfsz	((??_checkMode+0)+0),f
	goto	u3607
	decfsz	((??_checkMode+0)+0+1),f
	goto	u3607
	nop
opt asmopt_on

	line	164
	
l2364:	
;main.c: 164: lastMode = mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	movwf	(??_checkMode+0)+0
	movf	(??_checkMode+0)+0,w
	movwf	(_lastMode)
	goto	l175
	line	165
	
l174:	
	line	166
	
l175:	
	return
	opt stack 0
GLOBAL	__end_of_checkMode
	__end_of_checkMode:
	signat	_checkMode,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 17 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
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
;;		_initLCD
;;		_printToLCD
;;		_displayPPM
;;		_startUpLCD
;;		_updateState
;;		_checkMode
;;		_checkSelect
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	17
global __ptext26
__ptext26:	;psect for function _instCTRL
psect	text26
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	17
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
	line	19
	
l1616:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	20
	
l1618:	
;lcd_functions.h: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
l1620:	
;lcd_functions.h: 21: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	22
	
l1622:	
;lcd_functions.h: 22: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u3617:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u3617
	nop2	;nop
	nop
opt asmopt_on

	line	24
	
l1624:	
;lcd_functions.h: 24: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	25
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_Read_ADC_MQ135

;; *************** function _Read_ADC_MQ135 *****************
;; Defined at:
;;		line 28 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,inline
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	28
global __ptext27
__ptext27:	;psect for function _Read_ADC_MQ135
psect	text27
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	28
	global	__size_of_Read_ADC_MQ135
	__size_of_Read_ADC_MQ135	equ	__end_of_Read_ADC_MQ135-_Read_ADC_MQ135
	
_Read_ADC_MQ135:	
;incstack = 0
	opt	stack 5
; Regs used in _Read_ADC_MQ135: [wreg+status,2+status,0]
	line	30
	
l2282:	
;mq135_module.h: 30: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Read_ADC_MQ135+0)+0+1),f
	movlw	221
movwf	((??_Read_ADC_MQ135+0)+0),f
u3627:
	decfsz	((??_Read_ADC_MQ135+0)+0),f
	goto	u3627
	decfsz	((??_Read_ADC_MQ135+0)+0+1),f
	goto	u3627
	nop2
opt asmopt_on

	line	31
	
l2284:	
;mq135_module.h: 31: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	32
;mq135_module.h: 32: while (GO_DONE)
	goto	l92
	
l93:	
	line	33
;mq135_module.h: 33: ;
	
l92:	
	line	32
	btfsc	(250/8),(250)&7	;volatile
	goto	u2931
	goto	u2930
u2931:
	goto	l92
u2930:
	goto	l2286
	
l94:	
	line	34
	
l2286:	
;mq135_module.h: 34: return ((ADRESH << 8) + ADRESL);
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

	goto	l95
	
l2288:	
	line	35
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC_MQ135
	__end_of_Read_ADC_MQ135:
	signat	_Read_ADC_MQ135,90
	global	_CalcMQ135

;; *************** function _CalcMQ135 *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	37
global __ptext28
__ptext28:	;psect for function _CalcMQ135
psect	text28
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	37
	global	__size_of_CalcMQ135
	__size_of_CalcMQ135	equ	__end_of_CalcMQ135-_CalcMQ135
	
_CalcMQ135:	
;incstack = 0
	opt	stack 3
; Regs used in _CalcMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2756:	
;mq135_module.h: 39: float voltage = (RAW_ADC * 5.0) / 1023.0;
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
	line	40
;mq135_module.h: 40: float ratio = voltage / 5.0;
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
	line	43
;mq135_module.h: 43: float ratio2 = ratio * ratio;
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
	line	44
;mq135_module.h: 44: float ratio3 = ratio2 * ratio;
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
	line	45
;mq135_module.h: 45: float ratio4 = ratio3 * ratio;
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
	line	46
;mq135_module.h: 46: float ratio5 = ratio4 * ratio;
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
	line	47
;mq135_module.h: 47: float ratio6 = ratio5 * ratio;
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
	line	51
;mq135_module.h: 50: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 51: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movwf	(_CalcMQ135$628)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$628+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$628+2)^080h
;mq135_module.h: 50: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 51: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$628)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$628+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$628+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$629)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$629+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$629+2)^080h
;mq135_module.h: 50: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 51: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$629)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$629+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$629+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$630)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$630+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$630+2)^080h
;mq135_module.h: 50: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 51: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$630)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$630+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$630+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$631)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$631+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$631+2)^080h
;mq135_module.h: 50: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 51: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$631)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$631+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$631+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$632)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$632+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$632+2)^080h
;mq135_module.h: 50: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 51: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$632)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$632+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$632+2)^080h,w
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
	line	53
;mq135_module.h: 53: co2 *= 415.58;
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
	line	54
	
l2758:	
;mq135_module.h: 54: return co2;
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
	goto	l98
	
l2760:	
	line	55
	
l98:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext29
__ptext29:	;psect for function ___ftmul
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1994:	
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
	goto	u2361
	goto	u2360
u2361:
	goto	l2000
u2360:
	line	68
	
l1996:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l582
	
l1998:	
	goto	l582
	
l581:	
	line	69
	
l2000:	
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
	goto	u2371
	goto	u2370
u2371:
	goto	l2006
u2370:
	line	70
	
l2002:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l582
	
l2004:	
	goto	l582
	
l583:	
	line	71
	
l2006:	
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
u2385:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2380:
	addlw	-1
	skipz
	goto	u2385
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
u2395:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2390:
	addlw	-1
	skipz
	goto	u2395
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
	
l2008:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2010:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2012:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2014:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2016:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2018
	line	135
	
l584:	
	line	136
	
l2018:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l2022
u2400:
	line	137
	
l2020:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2411
	addwf	(___ftmul@f3_as_product+1),f
u2411:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2412
	addwf	(___ftmul@f3_as_product+2),f
u2412:

	goto	l2022
	
l585:	
	line	138
	
l2022:	
	movlw	01h
u2425:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2425

	line	139
	
l2024:	
	movlw	01h
u2435:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2435
	line	140
	
l2026:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2018
u2440:
	goto	l2028
	
l586:	
	line	143
	
l2028:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2030
	line	144
	
l587:	
	line	145
	
l2030:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2034
u2450:
	line	146
	
l2032:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2461
	addwf	(___ftmul@f3_as_product+1),f
u2461:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2462
	addwf	(___ftmul@f3_as_product+2),f
u2462:

	goto	l2034
	
l588:	
	line	147
	
l2034:	
	movlw	01h
u2475:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2475

	line	148
	
l2036:	
	movlw	01h
u2485:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2485

	line	149
	
l2038:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2030
u2490:
	goto	l2040
	
l589:	
	line	156
	
l2040:	
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
	goto	l582
	
l2042:	
	line	157
	
l582:	
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
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext30
__ptext30:	;psect for function ___ftdiv
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2220:	
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
	goto	u2801
	goto	u2800
u2801:
	goto	l2226
u2800:
	line	56
	
l2222:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l567
	
l2224:	
	goto	l567
	
l566:	
	line	57
	
l2226:	
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
	goto	u2811
	goto	u2810
u2811:
	goto	l2232
u2810:
	line	58
	
l2228:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l567
	
l2230:	
	goto	l567
	
l568:	
	line	59
	
l2232:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2234:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2236:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2825:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2820:
	addlw	-1
	skipz
	goto	u2825
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2238:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2835:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2830:
	addlw	-1
	skipz
	goto	u2835
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2240:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2242:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2244:	
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
	goto	l2246
	line	69
	
l569:	
	line	70
	
l2246:	
	movlw	01h
u2845:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2845
	line	71
	
l2248:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2855
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2855
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2855:
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l2254
u2850:
	line	72
	
l2250:	
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
	
l2252:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2254
	line	74
	
l570:	
	line	75
	
l2254:	
	movlw	01h
u2865:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2865
	line	76
	
l2256:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2246
u2870:
	goto	l2258
	
l571:	
	line	77
	
l2258:	
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
	goto	l567
	
l2260:	
	line	78
	
l567:	
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
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext31
__ptext31:	;psect for function ___ftadd
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1922:	
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
	
l1924:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2120
	goto	l1930
u2120:
	
l1926:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2131
	goto	u2130
u2131:
	goto	l1934
u2130:
	
l1928:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1934
u2140:
	goto	l1930
	
l535:	
	line	93
	
l1930:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l536
	
l1932:	
	goto	l536
	
l533:	
	line	94
	
l1934:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2150
	goto	l539
u2150:
	
l1936:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l1940
u2160:
	
l1938:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1940
u2170:
	
l539:	
	line	95
	goto	l536
	
l537:	
	line	96
	
l1940:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1942:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l540
u2180:
	line	98
	
l1944:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l540:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l541
u2190:
	line	100
	
l1946:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l541:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1948:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1950:	
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
	goto	u2201
	goto	u2200
u2201:
	goto	l1962
u2200:
	goto	l1952
	line	109
	
l543:	
	line	110
	
l1952:	
	movlw	01h
u2215:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2215
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1954:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2221
	goto	u2220
u2221:
	goto	l1960
u2220:
	
l1956:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l1952
u2230:
	goto	l1960
	
l545:	
	goto	l1960
	
l546:	
	line	113
	goto	l1960
	
l548:	
	line	114
	
l1958:	
	movlw	01h
u2245:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2245

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1960
	line	116
	
l547:	
	line	113
	
l1960:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l1958
u2250:
	goto	l550
	
l549:	
	line	117
	goto	l550
	
l542:	
	
l1962:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l550
u2260:
	goto	l1964
	line	120
	
l552:	
	line	121
	
l1964:	
	movlw	01h
u2275:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2275
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1966:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2281
	goto	u2280
u2281:
	goto	l1972
u2280:
	
l1968:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l1964
u2290:
	goto	l1972
	
l554:	
	goto	l1972
	
l555:	
	line	124
	goto	l1972
	
l557:	
	line	125
	
l1970:	
	movlw	01h
u2305:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2305

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1972
	line	127
	
l556:	
	line	124
	
l1972:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l1970
u2310:
	goto	l550
	
l558:	
	goto	l550
	line	128
	
l551:	
	line	129
	
l550:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1976
u2320:
	line	131
	
l1974:	
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
	goto	l1976
	line	133
	
l559:	
	line	134
	
l1976:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l1980
u2330:
	line	136
	
l1978:	
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
	goto	l1980
	line	138
	
l560:	
	line	139
	
l1980:	
	clrf	(___ftadd@sign)
	line	140
	
l1982:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2341
	addwf	(___ftadd@f2+1),f
u2341:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2342
	addwf	(___ftadd@f2+2),f
u2342:

	line	141
	
l1984:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1990
u2350:
	line	142
	
l1986:	
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
	
l1988:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1990
	line	145
	
l561:	
	line	146
	
l1990:	
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
	goto	l536
	
l1992:	
	line	148
	
l536:	
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
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext32
__ptext32:	;psect for function ___awtoft
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1910:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l1912:	
	btfss	(___awtoft@c+1),7
	goto	u2111
	goto	u2110
u2111:
	goto	l1918
u2110:
	line	38
	
l1914:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l1916:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l1918
	line	40
	
l510:	
	line	41
	
l1918:	
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
	goto	l511
	
l1920:	
	line	42
	
l511:	
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext33
__ptext33:	;psect for function ___ftpack
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1660:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u1580
	goto	l1664
u1580:
	
l1662:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1591
	goto	u1590
u1591:
	goto	l1670
u1590:
	goto	l1664
	
l516:	
	line	65
	
l1664:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l517
	
l1666:	
	goto	l517
	
l514:	
	line	66
	goto	l1670
	
l519:	
	line	67
	
l1668:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1605:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1605

	goto	l1670
	line	69
	
l518:	
	line	66
	
l1670:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l1668
u1610:
	goto	l521
	
l520:	
	line	70
	goto	l521
	
l522:	
	line	71
	
l1672:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1674:	
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
	
l1676:	
	movlw	01h
u1625:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1625

	line	74
	
l521:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l1672
u1630:
	goto	l1680
	
l523:	
	line	75
	goto	l1680
	
l525:	
	line	76
	
l1678:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1645:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1645
	goto	l1680
	line	78
	
l524:	
	line	75
	
l1680:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l1678
u1650:
	
l526:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l527
u1660:
	line	80
	
l1682:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l527:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1684:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1675:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1670:
	addlw	-1
	skipz
	goto	u1675
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1686:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1680
	goto	l528
u1680:
	line	84
	
l1688:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l528:	
	line	85
	line	86
	
l517:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 97 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
;;		i1_instCTRL
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	97
global __ptext34
__ptext34:	;psect for function _ISR
psect	text34
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	97
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
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
psect	text34
	line	99
	
i1l2448:	
;main.c: 99: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	100
;main.c: 100: if (INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l2454
u302_20:
	line	102
	
i1l2450:	
;main.c: 101: {
;main.c: 102: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	103
	
i1l2452:	
;main.c: 103: mode = (mode + 1) % 2;
	movf	(_mode),w
	addlw	01h
	andlw	01h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_mode)
	goto	i1l2454
	line	104
	
i1l154:	
	line	105
	
i1l2454:	
;main.c: 104: }
;main.c: 105: instCTRL(0x01);
	movlw	(01h)
	fcall	i1_instCTRL
	line	106
	
i1l2456:	
;main.c: 106: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	107
	
i1l155:	
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
	global	i1_instCTRL

;; *************** function i1_instCTRL *****************
;; Defined at:
;;		line 17 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
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
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	17
global __ptext35
__ptext35:	;psect for function i1_instCTRL
psect	text35
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	17
	global	__size_ofi1_instCTRL
	__size_ofi1_instCTRL	equ	__end_ofi1_instCTRL-i1_instCTRL
	
i1_instCTRL:	
;incstack = 0
	opt	stack 2
; Regs used in i1_instCTRL: [wreg]
;i1instCTRL@CMD stored from wreg
	movwf	(i1instCTRL@CMD)
	line	19
	
i1l2412:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(i1instCTRL@CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
i1l2414:	
;lcd_functions.h: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
i1l2416:	
;lcd_functions.h: 21: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	22
	
i1l2418:	
;lcd_functions.h: 22: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??i1_instCTRL+0)+0,f
u363_27:
	nop
decfsz	(??i1_instCTRL+0)+0,f
	goto	u363_27
	nop2	;nop
	nop
opt asmopt_on

	line	24
	
i1l2420:	
;lcd_functions.h: 24: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	25
	
i1l75:	
	return
	opt stack 0
GLOBAL	__end_ofi1_instCTRL
	__end_ofi1_instCTRL:
	signat	i1_instCTRL,88
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
