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
	FNCALL	_main,_checkSelect
	FNCALL	_main,_checkTime
	FNCALL	_main,_handlePPM
	FNCALL	_main,_initADC
	FNCALL	_main,_initInterrupt
	FNCALL	_main,_runClock
	FNCALL	_main,_runMQ135
	FNCALL	_main,_setPortDirections
	FNCALL	_main,_startUpLCD
	FNCALL	_main,_updateState
	FNCALL	_updateState,_displayPPM
	FNCALL	_updateState,_displayTime
	FNCALL	_updateState,_instCTRL
	FNCALL	_updateState,_printStatusPPM
	FNCALL	_updateState,_printToLCD
	FNCALL	_updateState,_setHoursEnd
	FNCALL	_updateState,_setHoursStart
	FNCALL	_updateState,_setMinutesEnd
	FNCALL	_updateState,_setMinutesStart
	FNCALL	_updateState,_sprintf
	FNCALL	_setMinutesStart,___awmod
	FNCALL	_setMinutesStart,_printToLCD
	FNCALL	_setMinutesStart,_sprintf
	FNCALL	_setMinutesEnd,___awmod
	FNCALL	_setMinutesEnd,_printToLCD
	FNCALL	_setMinutesEnd,_sprintf
	FNCALL	_setHoursStart,___awmod
	FNCALL	_setHoursStart,_printToLCD
	FNCALL	_setHoursStart,_sprintf
	FNCALL	_setHoursEnd,___awmod
	FNCALL	_setHoursEnd,_printToLCD
	FNCALL	_setHoursEnd,_sprintf
	FNCALL	_printStatusPPM,_printToLCD
	FNCALL	_displayTime,_printToLCD
	FNCALL	_displayTime,_sprintf
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
	FNCALL	_startUpLCD,_initLCD
	FNCALL	_startUpLCD,_instCTRL
	FNCALL	_startUpLCD,_printToLCD
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_printToLCD,_instCTRL
	FNCALL	_initLCD,_instCTRL
	FNCALL	_runMQ135,_CalcMQ135
	FNCALL	_runMQ135,_Read_ADC_MQ135
	FNCALL	_CalcMQ135,___awtoft
	FNCALL	_CalcMQ135,___ftadd
	FNCALL	_CalcMQ135,___ftdiv
	FNCALL	_CalcMQ135,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_handlePPM,___ftge
	FNCALL	_checkSelect,_instCTRL
	FNCALL	_checkMode,_instCTRL
	FNROOT	_main
	FNCALL	_ISR,i1_instCTRL
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_hours
	global	_lastKeyState
	global	_lastMode
	global	_savedHoursEnd
	global	_savedHoursStart
	global	_savedMinutesEnd
	global	_savedMinutesStart
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	12

;initializer for _hours
	retlw	04h
	line	20

;initializer for _lastKeyState
	retlw	0FFh
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	15

;initializer for _lastMode
	retlw	0FFh
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	16

;initializer for _savedHoursEnd
	retlw	0Ah
	line	14

;initializer for _savedHoursStart
	retlw	09h
	line	17

;initializer for _savedMinutesEnd
	retlw	01Eh
	line	15

;initializer for _savedMinutesStart
	retlw	01Eh
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
	global	_key
	global	_keyValid
	global	_minutes
	global	_PPM
	global	checkSelect@lastRB1State
	global	_mode
	global	_ppmFlag
	global	_select
	global	_debugInfo
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
	
STR_25:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_6:	
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
	
STR_21:	
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
	
STR_24:	
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
	
STR_28:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_22:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_23:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	50	;'2'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_27:	
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
	
STR_26:	
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
	
STR_8:	
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
	
STR_7:	
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
	
STR_9:	
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
	
STR_4:	
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_31:	
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	0
psect	strings
	
STR_5:	
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	0
psect	strings
	
STR_20:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_19:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
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
	
STR_2:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	strings
STR_12	equ	STR_9+0
STR_15	equ	STR_9+0
STR_18	equ	STR_9+0
STR_10	equ	STR_7+0
STR_13	equ	STR_7+0
STR_16	equ	STR_7+0
STR_11	equ	STR_8+0
STR_14	equ	STR_8+0
STR_17	equ	STR_8+0
STR_29	equ	STR_26+0
STR_30	equ	STR_27+0
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
_key:
       ds      1

_keyValid:
       ds      1

_minutes:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	12
_hours:
       ds      1

psect	dataCOMMON
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	20
_lastKeyState:
       ds      1

psect	dataCOMMON
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	15
_lastMode:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_PPM:
       ds      3

checkSelect@lastRB1State:
       ds      2

_mode:
       ds      1

_ppmFlag:
       ds      1

_select:
       ds      1

_debugInfo:
       ds      10

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	16
_savedHoursEnd:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	14
_savedHoursStart:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	17
_savedMinutesEnd:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	15
_savedMinutesStart:
       ds      1

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
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+012h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	fcall	__pidataCOMMON+2		;fetch initializer
	movwf	__pdataCOMMON+2&07fh		
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
	global	_CalcMQ135$657
_CalcMQ135$657:	; 3 bytes @ 0x6
	ds	3
	global	_CalcMQ135$658
_CalcMQ135$658:	; 3 bytes @ 0x9
	ds	3
	global	_CalcMQ135$659
_CalcMQ135$659:	; 3 bytes @ 0xC
	ds	3
	global	_CalcMQ135$660
_CalcMQ135$660:	; 3 bytes @ 0xF
	ds	3
	global	_CalcMQ135$661
_CalcMQ135$661:	; 3 bytes @ 0x12
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
?_checkSelect:	; 0 bytes @ 0x0
?_checkMode:	; 0 bytes @ 0x0
?_updateState:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_runMQ135:	; 0 bytes @ 0x0
?_displayPPM:	; 0 bytes @ 0x0
?_printStatusPPM:	; 0 bytes @ 0x0
?_runClock:	; 0 bytes @ 0x0
?_displayTime:	; 0 bytes @ 0x0
?_setHoursStart:	; 0 bytes @ 0x0
?_setHoursEnd:	; 0 bytes @ 0x0
?_setMinutesStart:	; 0 bytes @ 0x0
?_setMinutesEnd:	; 0 bytes @ 0x0
?_checkTime:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?i1_instCTRL:	; 0 bytes @ 0x0
??i1_instCTRL:	; 0 bytes @ 0x0
?_handlePPM:	; 1 bytes @ 0x0
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
??_isdigit:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
??_runClock:	; 0 bytes @ 0x0
??_checkTime:	; 0 bytes @ 0x0
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
	global	_isdigit$426
_isdigit$426:	; 1 bytes @ 0x0
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
??_Read_ADC_MQ135:	; 0 bytes @ 0x2
??_checkSelect:	; 0 bytes @ 0x2
??_checkMode:	; 0 bytes @ 0x2
??_initLCD:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
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
??_printStatusPPM:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	printStatusPPM@handler
printStatusPPM@handler:	; 1 bytes @ 0x4
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
??_handlePPM:	; 0 bytes @ 0xC
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
??_setHoursStart:	; 0 bytes @ 0x23
??_setHoursEnd:	; 0 bytes @ 0x23
??_setMinutesStart:	; 0 bytes @ 0x23
??_setMinutesEnd:	; 0 bytes @ 0x23
	ds	1
??___ftmul:	; 0 bytes @ 0x24
	ds	4
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
??_displayPPM:	; 0 bytes @ 0x3C
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x3C
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x3D
	ds	1
??_updateState:	; 0 bytes @ 0x3E
	global	?_CalcMQ135
?_CalcMQ135:	; 3 bytes @ 0x3E
	global	CalcMQ135@RAW_ADC
CalcMQ135@RAW_ADC:	; 2 bytes @ 0x3E
	ds	3
??_CalcMQ135:	; 0 bytes @ 0x41
??_runMQ135:	; 0 bytes @ 0x41
	ds	2
	global	updateState@buffer
updateState@buffer:	; 10 bytes @ 0x43
	ds	10
??_main:	; 0 bytes @ 0x4D
	ds	3
;!
;!Data Sizes:
;!    Strings     211
;!    Constant    10
;!    Data        7
;!    BSS         21
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      13
;!    BANK0            80     80      80
;!    BANK1            80     55      77
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_23(CODE[13]), STR_22(CODE[14]), STR_18(CODE[10]), STR_17(CODE[10]), 
;!		 -> STR_16(CODE[10]), STR_15(CODE[10]), STR_14(CODE[10]), STR_13(CODE[10]), 
;!		 -> STR_12(CODE[10]), STR_11(CODE[10]), STR_10(CODE[10]), STR_9(CODE[10]), 
;!		 -> STR_8(CODE[10]), STR_7(CODE[10]), STR_6(CODE[16]), STR_3(CODE[9]), 
;!		 -> STR_2(CODE[3]), STR_1(CODE[6]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 50
;!		 -> updateState@buffer(BANK0[10]), debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[10]), displayPPM@strBuffer(BANK1[50]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S230$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    displayPPM@bufPtr	PTR unsigned char  size(1) Largest target is 50
;!		 -> displayPPM@strBuffer(BANK1[50]), 
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 50
;!		 -> STR_31(CODE[8]), STR_30(CODE[12]), STR_29(CODE[10]), STR_28(CODE[14]), 
;!		 -> STR_27(CODE[12]), STR_26(CODE[10]), STR_25(CODE[16]), STR_24(CODE[15]), 
;!		 -> updateState@buffer(BANK0[10]), STR_21(CODE[15]), STR_20(CODE[7]), STR_19(CODE[7]), 
;!		 -> debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[10]), STR_5(CODE[8]), STR_4(CODE[8]), 
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
;!    _main->_updateState
;!    _updateState->_displayPPM
;!    _setMinutesStart->_sprintf
;!    _setMinutesEnd->_sprintf
;!    _setHoursStart->_sprintf
;!    _setHoursEnd->_sprintf
;!    _printStatusPPM->_printToLCD
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
;!    _runMQ135->_CalcMQ135
;!    _CalcMQ135->___ftdiv
;!    ___ftmul->___ftadd
;!    ___ftdiv->___ftmul
;!    ___ftadd->___ftneg
;!    ___awtoft->___ftpack
;!    _handlePPM->___ftge
;!    _checkSelect->_instCTRL
;!    _checkMode->_instCTRL
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _updateState->_displayPPM
;!    _runMQ135->_CalcMQ135
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
;! (0) _main                                                 3     3      0   67888
;!                                             77 BANK0      3     3      0
;!                          _checkMode
;!                        _checkSelect
;!                          _checkTime
;!                          _handlePPM
;!                            _initADC
;!                      _initInterrupt
;!                           _runClock
;!                           _runMQ135
;!                  _setPortDirections
;!                         _startUpLCD
;!                        _updateState
;! ---------------------------------------------------------------------------------
;! (1) _updateState                                         15    15      0   54256
;!                                             62 BANK0     15    15      0
;!                         _displayPPM
;!                        _displayTime
;!                           _instCTRL
;!                     _printStatusPPM
;!                         _printToLCD
;!                        _setHoursEnd
;!                      _setHoursStart
;!                      _setMinutesEnd
;!                    _setMinutesStart
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setMinutesStart                                      3     3      0    6602
;!                                             35 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setMinutesEnd                                        3     3      0    6602
;!                                             35 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setHoursStart                                        3     3      0    6602
;!                                             35 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setHoursEnd                                          3     3      0    6602
;!                                             35 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4    1144
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _printStatusPPM                                       1     1      0    1536
;!                                              4 BANK0      1     1      0
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (2) _displayTime                                         15    15      0    5568
;!                                             35 BANK0     15    15      0
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _displayPPM                                          57    57      0   15092
;!                                             60 BANK0      2     2      0
;!                                              0 BANK1     55    55      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             21    16      5    3984
;!                                             14 BANK0     21    16      5
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (3) _isdigit                                              2     2      0      99
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     266
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     268
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
;! (1) _startUpLCD                                           0     0      0    1518
;!                            _initLCD
;!                           _instCTRL
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (3) _printToLCD                                           2     0      2    1474
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
;! (1) _runMQ135                                             0     0      0   11783
;!                          _CalcMQ135
;!                     _Read_ADC_MQ135
;! ---------------------------------------------------------------------------------
;! (2) _Read_ADC_MQ135                                       4     2      2       0
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _CalcMQ135                                           42    39      3   11783
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
;! (3) ___ftdiv                                             16    10      6    2177
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
;! (1) _runClock                                             2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _initInterrupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _handlePPM                                            0     0      0     242
;!                             ___ftge
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     242
;!                                              0 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (1) _checkTime                                            0     0      0       0
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
;!   _checkMode
;!     _instCTRL
;!   _checkSelect
;!     _instCTRL
;!   _checkTime
;!   _handlePPM
;!     ___ftge
;!   _initADC
;!   _initInterrupt
;!   _runClock
;!   _runMQ135
;!     _CalcMQ135
;!       _Read_ADC_MQ135 (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
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
;!         ___ftpack (ARG)
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
;!     _Read_ADC_MQ135
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
;!     _printStatusPPM
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _setHoursEnd
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
;!     _setHoursStart
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
;!     _setMinutesEnd
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
;!     _setMinutesStart
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
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
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
;!BANK0               50     50      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       D       1       92.9%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      AA      12        0.0%
;!ABS                  0      0      AA       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
;;		_checkMode
;;		_checkSelect
;;		_checkTime
;;		_handlePPM
;;		_initADC
;;		_initInterrupt
;;		_runClock
;;		_runMQ135
;;		_setPortDirections
;;		_startUpLCD
;;		_updateState
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	32
	
l3246:	
;main.c: 32: setPortDirections();
	fcall	_setPortDirections
	line	33
;main.c: 33: initADC();
	fcall	_initADC
	line	34
	
l3248:	
;main.c: 34: initInterrupt();
	fcall	_initInterrupt
	line	35
	
l3250:	
;main.c: 35: startUpLCD();
	fcall	_startUpLCD
	line	36
	
l3252:	
;main.c: 36: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u4607:
	decfsz	((??_main+0)+0),f
	goto	u4607
	decfsz	((??_main+0)+0+1),f
	goto	u4607
	decfsz	((??_main+0)+0+2),f
	goto	u4607
	nop2
opt asmopt_on

	goto	l3254
	line	37
;main.c: 37: while (1)
	
l232:	
	line	39
	
l3254:	
;main.c: 38: {
;main.c: 39: runClock();
	fcall	_runClock
	line	40
	
l3256:	
;main.c: 40: checkTime();
	fcall	_checkTime
	line	41
	
l3258:	
;main.c: 41: runMQ135();
	fcall	_runMQ135
	line	42
	
l3260:	
;main.c: 42: ppmFlag = handlePPM();
	fcall	_handlePPM
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ppmFlag)^080h
	line	43
	
l3262:	
;main.c: 43: checkSelect();
	fcall	_checkSelect
	line	44
	
l3264:	
;main.c: 44: checkMode();
	fcall	_checkMode
	line	45
;main.c: 45: updateState();
	fcall	_updateState
	goto	l3254
	line	46
	
l233:	
	line	37
	goto	l3254
	
l234:	
	line	47
	
l235:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateState

;; *************** function _updateState *****************
;; Defined at:
;;		line 96 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         10   67[BANK0 ] unsigned char [10]
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_displayPPM
;;		_displayTime
;;		_instCTRL
;;		_printStatusPPM
;;		_printToLCD
;;		_setHoursEnd
;;		_setHoursStart
;;		_setMinutesEnd
;;		_setMinutesStart
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	96
global __ptext1
__ptext1:	;psect for function _updateState
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	96
	global	__size_of_updateState
	__size_of_updateState	equ	__end_of_updateState-_updateState
	
_updateState:	
;incstack = 0
	opt	stack 2
; Regs used in _updateState: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	99
	
l3166:	
;main.c: 98: char buffer[10];
;main.c: 99: switch (mode)
	goto	l3244
	line	101
;main.c: 100: {
;main.c: 101: case DISP_CMN:
	
l255:	
	line	102
	
l3168:	
;main.c: 102: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	103
	
l3170:	
;main.c: 103: printToLCD("MODE: ");
	movlw	low((STR_20)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	104
;main.c: 104: switch (select)
	goto	l3194
	line	106
;main.c: 105: {
;main.c: 106: case 0:
	
l257:	
	line	107
	
l3172:	
;main.c: 107: printToLCD("DISP CMMON PG1");
	movlw	low((STR_21)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	108
	
l3174:	
;main.c: 108: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	109
	
l3176:	
;main.c: 109: displayTime();
	fcall	_displayTime
	line	110
;main.c: 110: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	111
	
l3178:	
;main.c: 111: sprintf(buffer, "STRT: %2d:%2d", savedHoursStart, savedMinutesStart);
	movlw	((STR_22)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+0)+0
	movf	(??_updateState+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+1)+0
	clrf	(??_updateState+1)+0+1
	movf	0+(??_updateState+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_updateState+1)+0,w
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+3)+0
	clrf	(??_updateState+3)+0+1
	movf	0+(??_updateState+3)+0,w
	movwf	0+(?_sprintf)+03h
	movf	1+(??_updateState+3)+0,w
	movwf	1+(?_sprintf)+03h
	movlw	(updateState@buffer)&0ffh
	fcall	_sprintf
	line	112
	
l3180:	
;main.c: 112: printToLCD(buffer);
	movlw	(updateState@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	113
;main.c: 113: instCTRL(0xD4);
	movlw	(0D4h)
	fcall	_instCTRL
	line	114
	
l3182:	
;main.c: 114: sprintf(buffer, "END: %2d:%2d", savedHoursEnd, savedMinutesEnd);
	movlw	((STR_23)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+0)+0
	movf	(??_updateState+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+1)+0
	clrf	(??_updateState+1)+0+1
	movf	0+(??_updateState+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_updateState+1)+0,w
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+3)+0
	clrf	(??_updateState+3)+0+1
	movf	0+(??_updateState+3)+0,w
	movwf	0+(?_sprintf)+03h
	movf	1+(??_updateState+3)+0,w
	movwf	1+(?_sprintf)+03h
	movlw	(updateState@buffer)&0ffh
	fcall	_sprintf
	line	115
	
l3184:	
;main.c: 115: printToLCD(buffer);
	movlw	(updateState@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	116
;main.c: 116: break;
	goto	l273
	line	117
;main.c: 117: case 1:
	
l259:	
	line	118
	
l3186:	
;main.c: 118: printToLCD("DISP CMMON PG2");
	movlw	low((STR_24)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	119
	
l3188:	
;main.c: 119: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	120
	
l3190:	
;main.c: 120: displayPPM();
	fcall	_displayPPM
	line	121
;main.c: 121: break;
	goto	l273
	line	122
	
l3192:	
;main.c: 122: }
	goto	l273
	line	104
	
l256:	
	
l3194:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_select)^080h,w	;volatile
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
	goto	l3172
	xorlw	1^0	; case 1
	skipnz
	goto	l3186
	goto	l273
	opt asmopt_on

	line	122
	
l258:	
	line	123
;main.c: 123: break;
	goto	l273
	line	124
;main.c: 124: case SET_ACTV_START:
	
l261:	
	line	125
	
l3196:	
;main.c: 125: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	126
	
l3198:	
;main.c: 126: printToLCD("SET HRS - START");
	movlw	low((STR_25)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	127
;main.c: 127: switch (select)
	goto	l3214
	line	129
;main.c: 128: {
;main.c: 129: case 0:
	
l263:	
	line	130
	
l3200:	
;main.c: 130: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	131
	
l3202:	
;main.c: 131: printToLCD("SET HOURS");
	movlw	low((STR_26)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	132
	
l3204:	
;main.c: 132: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	133
;main.c: 133: setHoursStart();
	fcall	_setHoursStart
	line	134
;main.c: 134: break;
	goto	l273
	line	135
;main.c: 135: case 1:
	
l265:	
	line	136
	
l3206:	
;main.c: 136: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	137
	
l3208:	
;main.c: 137: printToLCD("SET MINUTES");
	movlw	low((STR_27)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	138
	
l3210:	
;main.c: 138: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	139
;main.c: 139: setMinutesStart();
	fcall	_setMinutesStart
	line	140
;main.c: 140: break;
	goto	l273
	line	141
	
l3212:	
;main.c: 141: }
	goto	l273
	line	127
	
l262:	
	
l3214:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_select)^080h,w	;volatile
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
	goto	l3200
	xorlw	1^0	; case 1
	skipnz
	goto	l3206
	goto	l273
	opt asmopt_on

	line	141
	
l264:	
	line	142
;main.c: 142: break;
	goto	l273
	line	143
;main.c: 143: case SET_ACTV_END:
	
l266:	
	line	144
	
l3216:	
;main.c: 144: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	145
	
l3218:	
;main.c: 145: printToLCD("SET HRS - END");
	movlw	low((STR_28)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	146
;main.c: 146: switch (select)
	goto	l3234
	line	148
;main.c: 147: {
;main.c: 148: case 0:
	
l268:	
	line	149
	
l3220:	
;main.c: 149: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	150
	
l3222:	
;main.c: 150: printToLCD("SET HOURS");
	movlw	low((STR_29)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	151
	
l3224:	
;main.c: 151: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	152
;main.c: 152: setHoursEnd();
	fcall	_setHoursEnd
	line	153
;main.c: 153: break;
	goto	l273
	line	154
;main.c: 154: case 1:
	
l270:	
	line	155
	
l3226:	
;main.c: 155: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	156
	
l3228:	
;main.c: 156: printToLCD("SET MINUTES");
	movlw	low((STR_30)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	157
	
l3230:	
;main.c: 157: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	158
;main.c: 158: setMinutesEnd();
	fcall	_setMinutesEnd
	line	159
;main.c: 159: break;
	goto	l273
	line	160
	
l3232:	
;main.c: 160: }
	goto	l273
	line	146
	
l267:	
	
l3234:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_select)^080h,w	;volatile
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
	goto	l3220
	xorlw	1^0	; case 1
	skipnz
	goto	l3226
	goto	l273
	opt asmopt_on

	line	160
	
l269:	
	line	161
;main.c: 161: break;
	goto	l273
	line	162
;main.c: 162: case CHCK_IO:
	
l271:	
	line	163
	
l3236:	
;main.c: 163: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	164
	
l3238:	
;main.c: 164: printToLCD("CHCK IO");
	movlw	low((STR_31)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	165
	
l3240:	
;main.c: 165: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	166
;main.c: 166: printStatusPPM(ppmFlag);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ppmFlag)^080h,w
	fcall	_printStatusPPM
	line	167
;main.c: 167: break;
	goto	l273
	line	168
;main.c: 168: default:
	
l272:	
	line	169
;main.c: 169: break;
	goto	l273
	line	170
	
l3242:	
;main.c: 170: }
	goto	l273
	line	99
	
l254:	
	
l3244:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           20     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3168
	xorlw	1^0	; case 1
	skipnz
	goto	l3196
	xorlw	2^1	; case 2
	skipnz
	goto	l3216
	xorlw	3^2	; case 3
	skipnz
	goto	l3236
	goto	l273
	opt asmopt_on

	line	170
	
l260:	
	line	171
	
l273:	
	return
	opt stack 0
GLOBAL	__end_of_updateState
	__end_of_updateState:
	signat	_updateState,88
	global	_setMinutesStart

;; *************** function _setMinutesStart *****************
;; Defined at:
;;		line 132 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	132
global __ptext2
__ptext2:	;psect for function _setMinutesStart
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	132
	global	__size_of_setMinutesStart
	__size_of_setMinutesStart	equ	__end_of_setMinutesStart-_setMinutesStart
	
_setMinutesStart:	
;incstack = 0
	opt	stack 2
; Regs used in _setMinutesStart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	134
	
l3020:	
;time_scheduler.h: 134: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutesStart+0)+0
	movlw	03h
u4235:
	clrc
	rrf	(??_setMinutesStart+0)+0,f
	addlw	-1
	skipz
	goto	u4235
	movf	0+(??_setMinutesStart+0)+0,w
	andlw	01h
	movwf	(??_setMinutesStart+1)+0
	movf	(??_setMinutesStart+1)+0,w
	movwf	(_keyValid)
	line	135
;time_scheduler.h: 135: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setMinutesStart+0)+0
	movlw	04h
u4245:
	clrc
	rrf	(??_setMinutesStart+0)+0,f
	addlw	-1
	skipz
	goto	u4245
	movf	0+(??_setMinutesStart+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutesStart+1)+0
	movf	(??_setMinutesStart+1)+0,w
	movwf	(_key)
	line	137
	
l3022:	
;time_scheduler.h: 137: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutesStart+0)+0+1),f
	movlw	238
movwf	((??_setMinutesStart+0)+0),f
u4617:
	decfsz	((??_setMinutesStart+0)+0),f
	goto	u4617
	decfsz	((??_setMinutesStart+0)+0+1),f
	goto	u4617
	nop
opt asmopt_on

	line	139
	
l3024:	
;time_scheduler.h: 139: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4250
	goto	l3050
u4250:
	
l3026:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4261
	goto	u4260
u4261:
	goto	l3050
u4260:
	line	141
	
l3028:	
;time_scheduler.h: 140: {
;time_scheduler.h: 141: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l3034
u4270:
	line	143
	
l3030:	
;time_scheduler.h: 142: {
;time_scheduler.h: 143: savedMinutesStart = (savedMinutesStart + 5) % 60;
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	addlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(05h)
	skipnc
	movlw	(high(05h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedMinutesStart)^080h	;volatile
	line	144
	
l3032:	
;time_scheduler.h: 144: sprintf(debugInfo, "INC: %02d", savedMinutesStart);
	movlw	((STR_13)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+1)+0
	clrf	(??_setMinutesStart+1)+0+1
	movf	0+(??_setMinutesStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	145
;time_scheduler.h: 145: }
	goto	l173
	line	146
	
l172:	
	
l3034:	
;time_scheduler.h: 146: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4281
	goto	u4280
u4281:
	goto	l3040
u4280:
	line	148
	
l3036:	
;time_scheduler.h: 147: {
;time_scheduler.h: 148: savedMinutesStart = (savedMinutesStart - 5 + 60) % 60;
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	addlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(037h)
	skipnc
	movlw	(high(037h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedMinutesStart)^080h	;volatile
	line	149
	
l3038:	
;time_scheduler.h: 149: sprintf(debugInfo, "DEC: %02d", savedMinutesStart);
	movlw	((STR_14)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+1)+0
	clrf	(??_setMinutesStart+1)+0+1
	movf	0+(??_setMinutesStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	150
;time_scheduler.h: 150: }
	goto	l173
	line	151
	
l174:	
	
l3040:	
;time_scheduler.h: 151: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l173
u4290:
	line	153
	
l3042:	
;time_scheduler.h: 152: {
;time_scheduler.h: 153: sprintf(debugInfo, "SET: %02d", savedMinutesStart);
	movlw	((STR_15)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+1)+0
	clrf	(??_setMinutesStart+1)+0+1
	movf	0+(??_setMinutesStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l173
	line	154
	
l176:	
	goto	l173
	line	156
	
l175:	
	
l173:	
;time_scheduler.h: 154: }
;time_scheduler.h: 156: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	157
	
l3044:	
;time_scheduler.h: 157: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_lastKeyState)
	line	159
;time_scheduler.h: 159: while ((PORTB & 0x08) != 0)
	goto	l3048
	
l178:	
	line	161
	
l3046:	
;time_scheduler.h: 160: {
;time_scheduler.h: 161: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutesStart+0)+0+1),f
	movlw	251
movwf	((??_setMinutesStart+0)+0),f
u4627:
	decfsz	((??_setMinutesStart+0)+0),f
	goto	u4627
	decfsz	((??_setMinutesStart+0)+0+1),f
	goto	u4627
	nop2
opt asmopt_on

	goto	l3048
	line	162
	
l177:	
	line	159
	
l3048:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4301
	goto	u4300
u4301:
	goto	l3046
u4300:
	goto	l182
	
l179:	
	line	163
;time_scheduler.h: 162: }
;time_scheduler.h: 163: }
	goto	l182
	line	164
	
l171:	
	
l3050:	
;time_scheduler.h: 164: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4311
	goto	u4310
u4311:
	goto	l182
u4310:
	line	166
	
l3052:	
;time_scheduler.h: 165: {
;time_scheduler.h: 166: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_lastKeyState)
	goto	l182
	line	167
	
l181:	
	goto	l182
	line	168
	
l180:	
	
l182:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutesStart
	__end_of_setMinutesStart:
	signat	_setMinutesStart,88
	global	_setMinutesEnd

;; *************** function _setMinutesEnd *****************
;; Defined at:
;;		line 170 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
	line	170
global __ptext3
__ptext3:	;psect for function _setMinutesEnd
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	170
	global	__size_of_setMinutesEnd
	__size_of_setMinutesEnd	equ	__end_of_setMinutesEnd-_setMinutesEnd
	
_setMinutesEnd:	
;incstack = 0
	opt	stack 2
; Regs used in _setMinutesEnd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	172
	
l3054:	
;time_scheduler.h: 172: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutesEnd+0)+0
	movlw	03h
u4325:
	clrc
	rrf	(??_setMinutesEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4325
	movf	0+(??_setMinutesEnd+0)+0,w
	andlw	01h
	movwf	(??_setMinutesEnd+1)+0
	movf	(??_setMinutesEnd+1)+0,w
	movwf	(_keyValid)
	line	173
;time_scheduler.h: 173: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setMinutesEnd+0)+0
	movlw	04h
u4335:
	clrc
	rrf	(??_setMinutesEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4335
	movf	0+(??_setMinutesEnd+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutesEnd+1)+0
	movf	(??_setMinutesEnd+1)+0,w
	movwf	(_key)
	line	175
	
l3056:	
;time_scheduler.h: 175: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutesEnd+0)+0+1),f
	movlw	238
movwf	((??_setMinutesEnd+0)+0),f
u4637:
	decfsz	((??_setMinutesEnd+0)+0),f
	goto	u4637
	decfsz	((??_setMinutesEnd+0)+0+1),f
	goto	u4637
	nop
opt asmopt_on

	line	177
	
l3058:	
;time_scheduler.h: 177: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4340
	goto	l3084
u4340:
	
l3060:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4351
	goto	u4350
u4351:
	goto	l3084
u4350:
	line	179
	
l3062:	
;time_scheduler.h: 178: {
;time_scheduler.h: 179: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l3068
u4360:
	line	181
	
l3064:	
;time_scheduler.h: 180: {
;time_scheduler.h: 181: savedMinutesEnd = (savedMinutesEnd + 5) % 60;
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	addlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(05h)
	skipnc
	movlw	(high(05h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedMinutesEnd)^080h	;volatile
	line	182
	
l3066:	
;time_scheduler.h: 182: sprintf(debugInfo, "INC: %02d", savedMinutesEnd);
	movlw	((STR_16)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+1)+0
	clrf	(??_setMinutesEnd+1)+0+1
	movf	0+(??_setMinutesEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	183
;time_scheduler.h: 183: }
	goto	l187
	line	184
	
l186:	
	
l3068:	
;time_scheduler.h: 184: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4371
	goto	u4370
u4371:
	goto	l3074
u4370:
	line	186
	
l3070:	
;time_scheduler.h: 185: {
;time_scheduler.h: 186: savedMinutesEnd = (savedMinutesEnd - 5 + 60) % 60;
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	addlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(037h)
	skipnc
	movlw	(high(037h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedMinutesEnd)^080h	;volatile
	line	187
	
l3072:	
;time_scheduler.h: 187: sprintf(debugInfo, "DEC: %02d", savedMinutesEnd);
	movlw	((STR_17)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+1)+0
	clrf	(??_setMinutesEnd+1)+0+1
	movf	0+(??_setMinutesEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	188
;time_scheduler.h: 188: }
	goto	l187
	line	189
	
l188:	
	
l3074:	
;time_scheduler.h: 189: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l187
u4380:
	line	191
	
l3076:	
;time_scheduler.h: 190: {
;time_scheduler.h: 191: sprintf(debugInfo, "SET: %02d", savedMinutesEnd);
	movlw	((STR_18)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+1)+0
	clrf	(??_setMinutesEnd+1)+0+1
	movf	0+(??_setMinutesEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l187
	line	192
	
l190:	
	goto	l187
	line	194
	
l189:	
	
l187:	
;time_scheduler.h: 192: }
;time_scheduler.h: 194: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	195
	
l3078:	
;time_scheduler.h: 195: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_lastKeyState)
	line	197
;time_scheduler.h: 197: while ((PORTB & 0x08) != 0)
	goto	l3082
	
l192:	
	line	199
	
l3080:	
;time_scheduler.h: 198: {
;time_scheduler.h: 199: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutesEnd+0)+0+1),f
	movlw	251
movwf	((??_setMinutesEnd+0)+0),f
u4647:
	decfsz	((??_setMinutesEnd+0)+0),f
	goto	u4647
	decfsz	((??_setMinutesEnd+0)+0+1),f
	goto	u4647
	nop2
opt asmopt_on

	goto	l3082
	line	200
	
l191:	
	line	197
	
l3082:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4391
	goto	u4390
u4391:
	goto	l3080
u4390:
	goto	l196
	
l193:	
	line	201
;time_scheduler.h: 200: }
;time_scheduler.h: 201: }
	goto	l196
	line	202
	
l185:	
	
l3084:	
;time_scheduler.h: 202: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l196
u4400:
	line	204
	
l3086:	
;time_scheduler.h: 203: {
;time_scheduler.h: 204: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_lastKeyState)
	goto	l196
	line	205
	
l195:	
	goto	l196
	line	206
	
l194:	
	
l196:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutesEnd
	__end_of_setMinutesEnd:
	signat	_setMinutesEnd,88
	global	_setHoursStart

;; *************** function _setHoursStart *****************
;; Defined at:
;;		line 55 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	55
global __ptext4
__ptext4:	;psect for function _setHoursStart
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	55
	global	__size_of_setHoursStart
	__size_of_setHoursStart	equ	__end_of_setHoursStart-_setHoursStart
	
_setHoursStart:	
;incstack = 0
	opt	stack 2
; Regs used in _setHoursStart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	57
	
l2952:	
;time_scheduler.h: 57: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHoursStart+0)+0
	movlw	03h
u4055:
	clrc
	rrf	(??_setHoursStart+0)+0,f
	addlw	-1
	skipz
	goto	u4055
	movf	0+(??_setHoursStart+0)+0,w
	andlw	01h
	movwf	(??_setHoursStart+1)+0
	movf	(??_setHoursStart+1)+0,w
	movwf	(_keyValid)
	line	58
;time_scheduler.h: 58: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setHoursStart+0)+0
	movlw	04h
u4065:
	clrc
	rrf	(??_setHoursStart+0)+0,f
	addlw	-1
	skipz
	goto	u4065
	movf	0+(??_setHoursStart+0)+0,w
	andlw	0Fh
	movwf	(??_setHoursStart+1)+0
	movf	(??_setHoursStart+1)+0,w
	movwf	(_key)
	line	60
	
l2954:	
;time_scheduler.h: 60: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHoursStart+0)+0+1),f
	movlw	238
movwf	((??_setHoursStart+0)+0),f
u4657:
	decfsz	((??_setHoursStart+0)+0),f
	goto	u4657
	decfsz	((??_setHoursStart+0)+0+1),f
	goto	u4657
	nop
opt asmopt_on

	line	62
	
l2956:	
;time_scheduler.h: 62: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4070
	goto	l2982
u4070:
	
l2958:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4081
	goto	u4080
u4081:
	goto	l2982
u4080:
	line	64
	
l2960:	
;time_scheduler.h: 63: {
;time_scheduler.h: 64: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l2966
u4090:
	line	66
	
l2962:	
;time_scheduler.h: 65: {
;time_scheduler.h: 66: savedHoursStart = (savedHoursStart + 1) % 24;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedHoursStart)^080h	;volatile
	line	67
	
l2964:	
;time_scheduler.h: 67: sprintf(debugInfo, "INC: %02d", savedHoursStart);
	movlw	((STR_7)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+1)+0
	clrf	(??_setHoursStart+1)+0+1
	movf	0+(??_setHoursStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	68
;time_scheduler.h: 68: }
	goto	l145
	line	69
	
l144:	
	
l2966:	
;time_scheduler.h: 69: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l2972
u4100:
	line	71
	
l2968:	
;time_scheduler.h: 70: {
;time_scheduler.h: 71: savedHoursStart = (savedHoursStart - 1 + 24) % 24;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	addlw	low(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(017h)
	skipnc
	movlw	(high(017h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedHoursStart)^080h	;volatile
	line	72
	
l2970:	
;time_scheduler.h: 72: sprintf(debugInfo, "DEC: %02d", savedHoursStart);
	movlw	((STR_8)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+1)+0
	clrf	(??_setHoursStart+1)+0+1
	movf	0+(??_setHoursStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	73
;time_scheduler.h: 73: }
	goto	l145
	line	74
	
l146:	
	
l2972:	
;time_scheduler.h: 74: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l145
u4110:
	line	76
	
l2974:	
;time_scheduler.h: 75: {
;time_scheduler.h: 76: sprintf(debugInfo, "SET: %02d", savedHoursStart);
	movlw	((STR_9)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+1)+0
	clrf	(??_setHoursStart+1)+0+1
	movf	0+(??_setHoursStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l145
	line	78
	
l148:	
	goto	l145
	line	80
	
l147:	
	
l145:	
;time_scheduler.h: 78: }
;time_scheduler.h: 80: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	81
	
l2976:	
;time_scheduler.h: 81: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_lastKeyState)
	line	83
;time_scheduler.h: 83: while ((PORTB & 0x08) != 0)
	goto	l2980
	
l150:	
	line	85
	
l2978:	
;time_scheduler.h: 84: {
;time_scheduler.h: 85: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHoursStart+0)+0+1),f
	movlw	251
movwf	((??_setHoursStart+0)+0),f
u4667:
	decfsz	((??_setHoursStart+0)+0),f
	goto	u4667
	decfsz	((??_setHoursStart+0)+0+1),f
	goto	u4667
	nop2
opt asmopt_on

	goto	l2980
	line	86
	
l149:	
	line	83
	
l2980:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4121
	goto	u4120
u4121:
	goto	l2978
u4120:
	goto	l154
	
l151:	
	line	87
;time_scheduler.h: 86: }
;time_scheduler.h: 87: }
	goto	l154
	line	88
	
l143:	
	
l2982:	
;time_scheduler.h: 88: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l154
u4130:
	line	90
	
l2984:	
;time_scheduler.h: 89: {
;time_scheduler.h: 90: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_lastKeyState)
	goto	l154
	line	91
	
l153:	
	goto	l154
	line	92
	
l152:	
	
l154:	
	return
	opt stack 0
GLOBAL	__end_of_setHoursStart
	__end_of_setHoursStart:
	signat	_setHoursStart,88
	global	_setHoursEnd

;; *************** function _setHoursEnd *****************
;; Defined at:
;;		line 94 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	94
global __ptext5
__ptext5:	;psect for function _setHoursEnd
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	94
	global	__size_of_setHoursEnd
	__size_of_setHoursEnd	equ	__end_of_setHoursEnd-_setHoursEnd
	
_setHoursEnd:	
;incstack = 0
	opt	stack 2
; Regs used in _setHoursEnd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	96
	
l2986:	
;time_scheduler.h: 96: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHoursEnd+0)+0
	movlw	03h
u4145:
	clrc
	rrf	(??_setHoursEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4145
	movf	0+(??_setHoursEnd+0)+0,w
	andlw	01h
	movwf	(??_setHoursEnd+1)+0
	movf	(??_setHoursEnd+1)+0,w
	movwf	(_keyValid)
	line	97
;time_scheduler.h: 97: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setHoursEnd+0)+0
	movlw	04h
u4155:
	clrc
	rrf	(??_setHoursEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4155
	movf	0+(??_setHoursEnd+0)+0,w
	andlw	0Fh
	movwf	(??_setHoursEnd+1)+0
	movf	(??_setHoursEnd+1)+0,w
	movwf	(_key)
	line	99
	
l2988:	
;time_scheduler.h: 99: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHoursEnd+0)+0+1),f
	movlw	238
movwf	((??_setHoursEnd+0)+0),f
u4677:
	decfsz	((??_setHoursEnd+0)+0),f
	goto	u4677
	decfsz	((??_setHoursEnd+0)+0+1),f
	goto	u4677
	nop
opt asmopt_on

	line	101
	
l2990:	
;time_scheduler.h: 101: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4160
	goto	l3016
u4160:
	
l2992:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4171
	goto	u4170
u4171:
	goto	l3016
u4170:
	line	103
	
l2994:	
;time_scheduler.h: 102: {
;time_scheduler.h: 103: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l3000
u4180:
	line	105
	
l2996:	
;time_scheduler.h: 104: {
;time_scheduler.h: 105: savedHoursEnd = (savedHoursEnd + 1) % 24;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	addlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedHoursEnd)^080h	;volatile
	line	106
	
l2998:	
;time_scheduler.h: 106: sprintf(debugInfo, "INC: %02d", savedHoursEnd);
	movlw	((STR_10)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+1)+0
	clrf	(??_setHoursEnd+1)+0+1
	movf	0+(??_setHoursEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	107
;time_scheduler.h: 107: }
	goto	l159
	line	108
	
l158:	
	
l3000:	
;time_scheduler.h: 108: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l3006
u4190:
	line	110
	
l3002:	
;time_scheduler.h: 109: {
;time_scheduler.h: 110: savedHoursEnd = (savedHoursEnd - 1 + 24) % 24;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	addlw	low(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@dividend)
	movlw	high(017h)
	skipnc
	movlw	(high(017h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_savedHoursEnd)^080h	;volatile
	line	111
	
l3004:	
;time_scheduler.h: 111: sprintf(debugInfo, "DEC: %02d", savedHoursEnd);
	movlw	((STR_11)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+1)+0
	clrf	(??_setHoursEnd+1)+0+1
	movf	0+(??_setHoursEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	112
;time_scheduler.h: 112: }
	goto	l159
	line	113
	
l160:	
	
l3006:	
;time_scheduler.h: 113: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l159
u4200:
	line	115
	
l3008:	
;time_scheduler.h: 114: {
;time_scheduler.h: 115: sprintf(debugInfo, "SET: %02d", savedHoursEnd);
	movlw	((STR_12)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+1)+0
	clrf	(??_setHoursEnd+1)+0+1
	movf	0+(??_setHoursEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l159
	line	116
	
l162:	
	goto	l159
	line	118
	
l161:	
	
l159:	
;time_scheduler.h: 116: }
;time_scheduler.h: 118: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	119
	
l3010:	
;time_scheduler.h: 119: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_lastKeyState)
	line	121
;time_scheduler.h: 121: while ((PORTB & 0x08) != 0)
	goto	l3014
	
l164:	
	line	123
	
l3012:	
;time_scheduler.h: 122: {
;time_scheduler.h: 123: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHoursEnd+0)+0+1),f
	movlw	251
movwf	((??_setHoursEnd+0)+0),f
u4687:
	decfsz	((??_setHoursEnd+0)+0),f
	goto	u4687
	decfsz	((??_setHoursEnd+0)+0+1),f
	goto	u4687
	nop2
opt asmopt_on

	goto	l3014
	line	124
	
l163:	
	line	121
	
l3014:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4211
	goto	u4210
u4211:
	goto	l3012
u4210:
	goto	l168
	
l165:	
	line	125
;time_scheduler.h: 124: }
;time_scheduler.h: 125: }
	goto	l168
	line	126
	
l157:	
	
l3016:	
;time_scheduler.h: 126: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l168
u4220:
	line	128
	
l3018:	
;time_scheduler.h: 127: {
;time_scheduler.h: 128: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_lastKeyState)
	goto	l168
	line	129
	
l167:	
	goto	l168
	line	130
	
l166:	
	
l168:	
	return
	opt stack 0
GLOBAL	__end_of_setHoursEnd
	__end_of_setHoursEnd:
	signat	_setHoursEnd,88
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
;;		_setHoursStart
;;		_setHoursEnd
;;		_setMinutesStart
;;		_setMinutesEnd
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l2038:	
	btfss	(___awmod@dividend+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l2044
u2380:
	line	15
	
l2040:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2042:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2044
	line	17
	
l553:	
	line	18
	
l2044:	
	btfss	(___awmod@divisor+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l2048
u2390:
	line	19
	
l2046:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2048
	
l554:	
	line	20
	
l2048:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l2066
u2400:
	line	21
	
l2050:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2056
	
l557:	
	line	23
	
l2052:	
	movlw	01h
	
u2415:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2415
	line	24
	
l2054:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2056
	line	25
	
l556:	
	line	22
	
l2056:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l2052
u2420:
	goto	l2058
	
l558:	
	goto	l2058
	line	26
	
l559:	
	line	27
	
l2058:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2435
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2435:
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l2062
u2430:
	line	28
	
l2060:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2062
	
l560:	
	line	29
	
l2062:	
	movlw	01h
	
u2445:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2445
	line	30
	
l2064:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2058
u2450:
	goto	l2066
	
l561:	
	goto	l2066
	line	31
	
l555:	
	line	32
	
l2066:	
	movf	(___awmod@sign),w
	skipz
	goto	u2460
	goto	l2070
u2460:
	line	33
	
l2068:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2070
	
l562:	
	line	34
	
l2070:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l563
	
l2072:	
	line	35
	
l563:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_printStatusPPM

;; *************** function _printStatusPPM *****************
;; Defined at:
;;		line 66 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;  handler         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  handler         1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printToLCD
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	66
global __ptext7
__ptext7:	;psect for function _printStatusPPM
psect	text7
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	66
	global	__size_of_printStatusPPM
	__size_of_printStatusPPM	equ	__end_of_printStatusPPM-_printStatusPPM
	
_printStatusPPM:	
;incstack = 0
	opt	stack 2
; Regs used in _printStatusPPM: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printStatusPPM@handler stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printStatusPPM@handler)
	line	68
	
l2942:	
;mq135_module.h: 68: if (handler == 1)
	movf	(printStatusPPM@handler),w
	xorlw	01h
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l2946
u4030:
	line	70
	
l2944:	
;mq135_module.h: 69: {
;mq135_module.h: 70: printToLCD("PURF HI");
	movlw	low((STR_4)-__stringbase)
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	71
;mq135_module.h: 71: }
	goto	l103
	line	72
	
l100:	
	
l2946:	
;mq135_module.h: 72: else if (handler == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printStatusPPM@handler),f
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l103
u4040:
	line	74
	
l2948:	
;mq135_module.h: 73: {
;mq135_module.h: 74: printToLCD("PURF LO");
	movlw	low((STR_5)-__stringbase)
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	goto	l103
	line	75
	
l102:	
	goto	l103
	line	76
	
l101:	
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_printStatusPPM
	__end_of_printStatusPPM:
	signat	_printStatusPPM,4216
	global	_displayTime

;; *************** function _displayTime *****************
;; Defined at:
;;		line 48 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	48
global __ptext8
__ptext8:	;psect for function _displayTime
psect	text8
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	48
	global	__size_of_displayTime
	__size_of_displayTime	equ	__end_of_displayTime-_displayTime
	
_displayTime:	
;incstack = 0
	opt	stack 2
; Regs used in _displayTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l2950:	
;time_scheduler.h: 50: char timeFormat[10];
;time_scheduler.h: 51: sprintf(timeFormat, "Time: %02d:%02d", hours, minutes);
	movlw	((STR_6)-__stringbase)&0ffh
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
	line	52
;time_scheduler.h: 52: printToLCD(timeFormat);
	movlw	(displayTime@timeFormat&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	53
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_displayTime
	__end_of_displayTime:
	signat	_displayTime,88
	global	_displayPPM

;; *************** function _displayPPM *****************
;; Defined at:
;;		line 35 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      55       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      55       0       0
;;Total ram usage:       57 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	35
global __ptext9
__ptext9:	;psect for function _displayPPM
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	35
	global	__size_of_displayPPM
	__size_of_displayPPM	equ	__end_of_displayPPM-_displayPPM
	
_displayPPM:	
;incstack = 0
	opt	stack 2
; Regs used in _displayPPM: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l2920:	
;mq135_module.h: 37: char strBuffer[50];
;mq135_module.h: 38: int ppmWhole = (int)PPM;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM+2)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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

	line	39
;mq135_module.h: 39: int ppmFraction = (int)((PPM - ppmWhole) * 100);
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM+2)^080h,w	;volatile
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

	line	42
	
l2922:	
;mq135_module.h: 42: char *bufPtr = strBuffer;
	movlw	(displayPPM@strBuffer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(displayPPM@bufPtr)^080h
	line	43
	
l2924:	
;mq135_module.h: 43: bufPtr += sprintf(bufPtr, "CO2: ");
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
	line	44
	
l2926:	
;mq135_module.h: 44: bufPtr += sprintf(bufPtr, "%d", ppmWhole);
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
	line	45
	
l2928:	
;mq135_module.h: 45: *bufPtr++ = '.';
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
	
l2930:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	46
	
l2932:	
;mq135_module.h: 46: if (ppmFraction < 10)
	movf	(displayPPM@ppmFraction+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4025
	movlw	low(0Ah)
	subwf	(displayPPM@ppmFraction)^080h,w
u4025:

	skipnc
	goto	u4021
	goto	u4020
u4021:
	goto	l2938
u4020:
	line	47
	
l2934:	
;mq135_module.h: 47: *bufPtr++ = '0';
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
	
l2936:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	goto	l2938
	
l91:	
	line	48
	
l2938:	
;mq135_module.h: 48: sprintf(bufPtr, "%d ppm  ", ppmFraction);
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
	line	49
	
l2940:	
;mq135_module.h: 49: printToLCD(strBuffer);
	movlw	(displayPPM@strBuffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	50
	
l92:	
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
;;  sp              1    wreg     PTR unsigned char 
;;		 -> updateState@buffer(10), debugInfo(10), displayTime@timeFormat(10), displayPPM@strBuffer(50), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_23(13), STR_22(14), STR_18(10), STR_17(10), 
;;		 -> STR_16(10), STR_15(10), STR_14(10), STR_13(10), 
;;		 -> STR_12(10), STR_11(10), STR_10(10), STR_9(10), 
;;		 -> STR_8(10), STR_7(10), STR_6(16), STR_3(9), 
;;		 -> STR_2(3), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   34[BANK0 ] PTR unsigned char 
;;		 -> updateState@buffer(10), debugInfo(10), displayTime@timeFormat(10), displayPPM@strBuffer(50), 
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
;;		_setHoursStart
;;		_setHoursEnd
;;		_setMinutesStart
;;		_setMinutesEnd
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext10
__ptext10:	;psect for function _sprintf
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 3
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	510
	
l2780:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 510: int ccnt = 0;
	clrf	(sprintf@ccnt)
	clrf	(sprintf@ccnt+1)
	line	542
	
l2782:	
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
	goto	l2898
	
l295:	
	line	547
	
l2784:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u3821
	goto	u3820
u3821:
	goto	l2792
u3820:
	line	550
	
l2786:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2788:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2790:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	551
;doprnt.c: 551: continue;
	goto	l2898
	line	552
	
l296:	
	line	555
	
l2792:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l2798
	line	559
;doprnt.c: 559: for(;;) {
	
l297:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l2798
	line	588
;doprnt.c: 588: case '0':
	
l299:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
	
l2794:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	591
;doprnt.c: 591: continue;
	goto	l2798
	line	593
	
l2796:	
;doprnt.c: 593: }
	goto	l2800
	line	560
	
l298:	
	
l2798:	
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
	goto	l299
	goto	l2800
	opt asmopt_on

	line	593
	
l301:	
	line	594
;doprnt.c: 594: break;
	goto	l2800
	line	595
	
l300:	
;doprnt.c: 595: }
	goto	l2798
	
l302:	
	line	606
	
l2800:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3831
	goto	u3830
u3831:
	goto	l2814
u3830:
	line	607
	
l2802:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2804
	line	608
;doprnt.c: 608: do {
	
l304:	
	line	609
	
l2804:	
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
	
l2806:	
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
	
l2808:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l2810:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3841
	goto	u3840
u3841:
	goto	l2804
u3840:
	goto	l2814
	
l305:	
	goto	l2814
	line	617
	
l303:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l2814
	line	646
;doprnt.c: 646: case 0:
	
l307:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2900
	line	706
;doprnt.c: 706: case 'd':
	
l309:	
	goto	l2816
	line	707
	
l310:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2816
	line	811
;doprnt.c: 811: default:
	
l312:	
	line	822
;doprnt.c: 822: continue;
	goto	l2898
	line	831
	
l2812:	
;doprnt.c: 831: }
	goto	l2816
	line	644
	
l306:	
	
l2814:	
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
	goto	l2900
	xorlw	100^0	; case 100
	skipnz
	goto	l2816
	xorlw	105^100	; case 105
	skipnz
	goto	l2816
	goto	l2898
	opt asmopt_on

	line	831
	
l311:	
	line	1268
	
l2816:	
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
	
l2818:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l2820:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u3851
	goto	u3850
u3851:
	goto	l2826
u3850:
	line	1271
	
l2822:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l2824:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2826
	line	1273
	
l313:	
	line	1314
	
l2826:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l2830
u3860:
	goto	l2838
	
l2828:	
	goto	l2838
	line	1315
	
l314:	
	
l2830:	
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
	goto	u3875
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u3875:
	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l2834
u3870:
	goto	l2838
	line	1316
	
l2832:	
;doprnt.c: 1316: break;
	goto	l2838
	
l316:	
	line	1314
	
l2834:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2836:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l2830
u3880:
	goto	l2838
	
l315:	
	line	1354
	
l2838:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3891
	goto	u3890
u3891:
	goto	l317
u3890:
	
l2840:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l317
u3900:
	line	1355
	
l2842:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l317:	
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
	goto	u3915
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u3915:

	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l2846
u3910:
	line	1391
	
l2844:	
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
	goto	l2848
	line	1392
	
l318:	
	line	1393
	
l2846:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2848
	
l319:	
	line	1396
	
l2848:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l2868
u3920:
	line	1401
	
l2850:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l2858
u3930:
	line	1402
	
l2852:	
;doprnt.c: 1402: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2854:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2856:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2858
	
l321:	
	line	1424
	
l2858:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3941
	goto	u3940
u3941:
	goto	l2886
u3940:
	goto	l2860
	line	1425
;doprnt.c: 1425: do
	
l323:	
	line	1426
	
l2860:	
;doprnt.c: 1426: ((*sp++ = ('0')),(++ccnt));
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2862:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2864:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1427
	
l2866:	
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
	goto	u3951
	goto	u3950
u3951:
	goto	l2860
u3950:
	goto	l2886
	
l324:	
	goto	l2886
	
l322:	
	line	1429
;doprnt.c: 1429: } else
	goto	l2886
	
l320:	
	line	1437
	
l2868:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3961
	goto	u3960
u3961:
	goto	l2878
u3960:
	goto	l2870
	line	1438
;doprnt.c: 1438: do
	
l327:	
	line	1439
	
l2870:	
;doprnt.c: 1439: ((*sp++ = (' ')),(++ccnt));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2872:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2874:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1440
	
l2876:	
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
	goto	u3971
	goto	u3970
u3971:
	goto	l2870
u3970:
	goto	l2878
	
l328:	
	goto	l2878
	
l326:	
	line	1447
	
l2878:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l2886
u3980:
	line	1448
	
l2880:	
;doprnt.c: 1448: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2882:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2884:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2886
	
l329:	
	goto	l2886
	line	1478
	
l325:	
	line	1481
	
l2886:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2896
	
l331:	
	line	1498
	
l2888:	
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
	
l2890:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2892:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2894:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2896
	line	1534
	
l330:	
	line	1483
	
l2896:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l2888
u3990:
	goto	l2898
	
l332:	
	goto	l2898
	line	1542
	
l294:	
	line	545
	
l2898:	
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
	goto	u4001
	goto	u4000
u4001:
	goto	l2784
u4000:
	goto	l2900
	
l333:	
	goto	l2900
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l308:	
	line	1547
	
l2900:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1549
	
l2902:	
;doprnt.c: 1549: return ccnt;
	movf	(sprintf@ccnt+1),w
	clrf	(?_sprintf+1)
	addwf	(?_sprintf+1)
	movf	(sprintf@ccnt),w
	clrf	(?_sprintf)
	addwf	(?_sprintf)

	goto	l334
	
l2904:	
	line	1550
	
l334:	
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext11
__ptext11:	;psect for function _isdigit
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 3
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l2748:	
	clrf	(_isdigit$426)
	
l2750:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3751
	goto	u3750
u3751:
	goto	l2756
u3750:
	
l2752:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l2756
u3760:
	
l2754:	
	clrf	(_isdigit$426)
	incf	(_isdigit$426),f
	goto	l2756
	
l674:	
	
l2756:	
	rrf	(_isdigit$426),w
	
	goto	l675
	
l2758:	
	line	15
	
l675:	
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
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext12
__ptext12:	;psect for function ___wmul
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2760:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2762
	line	44
	
l417:	
	line	45
	
l2762:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l418
u3770:
	line	46
	
l2764:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l418:	
	line	47
	movlw	01h
	
u3785:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3785
	line	48
	
l2766:	
	movlw	01h
	
u3795:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3795
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l2762
u3800:
	goto	l2768
	
l419:	
	line	52
	
l2768:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l420
	
l2770:	
	line	53
	
l420:	
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
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___lwmod
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1880:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l1898
u2120:
	line	14
	
l1882:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1888
	
l764:	
	line	16
	
l1884:	
	movlw	01h
	
u2135:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2135
	line	17
	
l1886:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1888
	line	18
	
l763:	
	line	15
	
l1888:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l1884
u2140:
	goto	l1890
	
l765:	
	goto	l1890
	line	19
	
l766:	
	line	20
	
l1890:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2155
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2155:
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l1894
u2150:
	line	21
	
l1892:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1894
	
l767:	
	line	22
	
l1894:	
	movlw	01h
	
u2165:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2165
	line	23
	
l1896:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l1890
u2170:
	goto	l1898
	
l768:	
	goto	l1898
	line	24
	
l762:	
	line	25
	
l1898:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l769
	
l1900:	
	line	26
	
l769:	
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
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___lwdiv
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1854:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1856:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2051
	goto	u2050
u2051:
	goto	l1876
u2050:
	line	16
	
l1858:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1864
	
l754:	
	line	18
	
l1860:	
	movlw	01h
	
u2065:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2065
	line	19
	
l1862:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1864
	line	20
	
l753:	
	line	17
	
l1864:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l1860
u2070:
	goto	l1866
	
l755:	
	goto	l1866
	line	21
	
l756:	
	line	22
	
l1866:	
	movlw	01h
	
u2085:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2085
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2095
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2095:
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l1872
u2090:
	line	24
	
l1868:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1870:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1872
	line	26
	
l757:	
	line	27
	
l1872:	
	movlw	01h
	
u2105:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2105
	line	28
	
l1874:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l1866
u2110:
	goto	l1876
	
l758:	
	goto	l1876
	line	29
	
l752:	
	line	30
	
l1876:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l759
	
l1878:	
	line	31
	
l759:	
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
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext15
__ptext15:	;psect for function ___fttol
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2258:	
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
	goto	u2951
	goto	u2950
u2951:
	goto	l2264
u2950:
	line	50
	
l2260:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l660
	
l2262:	
	goto	l660
	
l659:	
	line	51
	
l2264:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2965:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2960:
	addlw	-1
	skipz
	goto	u2965
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2266:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2268:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2270:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2272:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2274:	
	btfss	(___fttol@exp1),7
	goto	u2971
	goto	u2970
u2971:
	goto	l2284
u2970:
	line	57
	
l2276:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l2282
u2980:
	line	58
	
l2278:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l660
	
l2280:	
	goto	l660
	
l662:	
	goto	l2282
	line	59
	
l663:	
	line	60
	
l2282:	
	movlw	01h
u2995:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2995

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l2282
u3000:
	goto	l2294
	
l664:	
	line	62
	goto	l2294
	
l661:	
	line	63
	
l2284:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l2292
u3010:
	line	64
	
l2286:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l660
	
l2288:	
	goto	l660
	
l666:	
	line	65
	goto	l2292
	
l668:	
	line	66
	
l2290:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3025:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3025
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2292
	line	68
	
l667:	
	line	65
	
l2292:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l2290
u3030:
	goto	l2294
	
l669:	
	goto	l2294
	line	69
	
l665:	
	line	70
	
l2294:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3040
	goto	l2298
u3040:
	line	71
	
l2296:	
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
	goto	l2298
	
l670:	
	line	72
	
l2298:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l660
	
l2300:	
	line	73
	
l660:	
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext16
__ptext16:	;psect for function ___ftneg
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l2906:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u4011
	goto	u4010
u4011:
	goto	l2910
u4010:
	line	18
	
l2908:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2910
	
l650:	
	line	19
	
l2910:	
	goto	l651
	
l2912:	
	line	20
	
l651:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_startUpLCD

;; *************** function _startUpLCD *****************
;; Defined at:
;;		line 68 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	68
global __ptext17
__ptext17:	;psect for function _startUpLCD
psect	text17
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	68
	global	__size_of_startUpLCD
	__size_of_startUpLCD	equ	__end_of_startUpLCD-_startUpLCD
	
_startUpLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _startUpLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l3162:	
;main.c: 70: initLCD();
	fcall	_initLCD
	line	71
;main.c: 71: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	72
	
l3164:	
;main.c: 72: printToLCD("PWR ON");
	movlw	low((STR_19)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	73
	
l244:	
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
;;		 -> STR_31(8), STR_30(12), STR_29(10), STR_28(14), 
;;		 -> STR_27(12), STR_26(10), STR_25(16), STR_24(15), 
;;		 -> updateState@buffer(10), STR_21(15), STR_20(7), STR_19(7), 
;;		 -> debugInfo(10), displayTime@timeFormat(10), STR_5(8), STR_4(8), 
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
;;		_printStatusPPM
;;		_displayTime
;;		_setHoursStart
;;		_setHoursEnd
;;		_setMinutesStart
;;		_setMinutesEnd
;;		_startUpLCD
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	47
global __ptext18
__ptext18:	;psect for function _printToLCD
psect	text18
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	47
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2772:	
;lcd_functions.h: 49: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	50
;lcd_functions.h: 50: while (*str)
	goto	l2778
	
l81:	
	line	52
	
l2774:	
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
	
l2776:	
;lcd_functions.h: 53: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l2778
	line	54
	
l80:	
	line	50
	
l2778:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l2774
u3810:
	goto	l83
	
l82:	
	line	55
	
l83:	
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
psect	text19,local,class=CODE,delta=2,merge=1
	line	27
global __ptext19
__ptext19:	;psect for function _dataCTRL
psect	text19
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
	
l1790:	
;lcd_functions.h: 29: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	30
	
l1792:	
;lcd_functions.h: 30: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	31
	
l1794:	
;lcd_functions.h: 31: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	32
	
l1796:	
;lcd_functions.h: 32: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	33
;lcd_functions.h: 33: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u4697:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u4697
	nop2	;nop
	nop
opt asmopt_on

	line	34
	
l1798:	
;lcd_functions.h: 34: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	35
	
l74:	
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
psect	text20,local,class=CODE,delta=2,merge=1
	line	37
global __ptext20
__ptext20:	;psect for function _initLCD
psect	text20
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	37
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2302:	
;lcd_functions.h: 39: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	40
	
l2304:	
;lcd_functions.h: 40: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_initLCD+0)+0,f
u4707:
decfsz	(??_initLCD+0)+0,f
	goto	u4707
	nop
opt asmopt_on

	line	41
	
l2306:	
;lcd_functions.h: 41: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	42
	
l2308:	
;lcd_functions.h: 42: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	43
	
l2310:	
;lcd_functions.h: 43: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	44
	
l2312:	
;lcd_functions.h: 44: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	45
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_setPortDirections

;; *************** function _setPortDirections *****************
;; Defined at:
;;		line 50 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	50
global __ptext21
__ptext21:	;psect for function _setPortDirections
psect	text21
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	50
	global	__size_of_setPortDirections
	__size_of_setPortDirections	equ	__end_of_setPortDirections-_setPortDirections
	
_setPortDirections:	
;incstack = 0
	opt	stack 5
; Regs used in _setPortDirections: [wreg+status,2]
	line	52
	
l3144:	
;main.c: 52: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	53
;main.c: 53: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	54
	
l3146:	
;main.c: 54: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	55
	
l3148:	
;main.c: 55: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	56
	
l3150:	
;main.c: 56: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	57
	
l3152:	
;main.c: 57: PORTB = 0x00;
	clrf	(6)	;volatile
	line	58
	
l3154:	
;main.c: 58: PORTC = 0x00;
	clrf	(7)	;volatile
	line	59
	
l3156:	
;main.c: 59: PORTD = 0x00;
	clrf	(8)	;volatile
	line	60
	
l238:	
	return
	opt stack 0
GLOBAL	__end_of_setPortDirections
	__end_of_setPortDirections:
	signat	_setPortDirections,88
	global	_runMQ135

;; *************** function _runMQ135 *****************
;; Defined at:
;;		line 30 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_CalcMQ135
;;		_Read_ADC_MQ135
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	30
global __ptext22
__ptext22:	;psect for function _runMQ135
psect	text22
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	30
	global	__size_of_runMQ135
	__size_of_runMQ135	equ	__end_of_runMQ135-_runMQ135
	
_runMQ135:	
;incstack = 0
	opt	stack 2
; Regs used in _runMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l3088:	
;mq135_module.h: 32: PPM = CalcMQ135(Read_ADC_MQ135());
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_PPM)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_CalcMQ135)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_PPM+1)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_CalcMQ135)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_PPM+2)^080h	;volatile
	line	33
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_runMQ135
	__end_of_runMQ135:
	signat	_runMQ135,88
	global	_Read_ADC_MQ135

;; *************** function _Read_ADC_MQ135 *****************
;; Defined at:
;;		line 78 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
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
;;		_runMQ135
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,inline
	line	78
global __ptext23
__ptext23:	;psect for function _Read_ADC_MQ135
psect	text23
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	78
	global	__size_of_Read_ADC_MQ135
	__size_of_Read_ADC_MQ135	equ	__end_of_Read_ADC_MQ135-_Read_ADC_MQ135
	
_Read_ADC_MQ135:	
;incstack = 0
	opt	stack 4
; Regs used in _Read_ADC_MQ135: [wreg+status,2+status,0]
	line	80
	
l2314:	
;mq135_module.h: 80: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Read_ADC_MQ135+0)+0+1),f
	movlw	221
movwf	((??_Read_ADC_MQ135+0)+0),f
u4717:
	decfsz	((??_Read_ADC_MQ135+0)+0),f
	goto	u4717
	decfsz	((??_Read_ADC_MQ135+0)+0+1),f
	goto	u4717
	nop2
opt asmopt_on

	line	81
	
l2316:	
;mq135_module.h: 81: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	82
;mq135_module.h: 82: while (GO_DONE)
	goto	l106
	
l107:	
	line	83
;mq135_module.h: 83: ;
	
l106:	
	line	82
	btfsc	(250/8),(250)&7	;volatile
	goto	u3051
	goto	u3050
u3051:
	goto	l106
u3050:
	goto	l2318
	
l108:	
	line	84
	
l2318:	
;mq135_module.h: 84: return ((ADRESH << 8) + ADRESL);
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

	goto	l109
	
l2320:	
	line	85
	
l109:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC_MQ135
	__end_of_Read_ADC_MQ135:
	signat	_Read_ADC_MQ135,90
	global	_CalcMQ135

;; *************** function _CalcMQ135 *****************
;; Defined at:
;;		line 87 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
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
;;		_runMQ135
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	87
global __ptext24
__ptext24:	;psect for function _CalcMQ135
psect	text24
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	87
	global	__size_of_CalcMQ135
	__size_of_CalcMQ135	equ	__end_of_CalcMQ135-_CalcMQ135
	
_CalcMQ135:	
;incstack = 0
	opt	stack 2
; Regs used in _CalcMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	89
	
l2914:	
;mq135_module.h: 89: float voltage = (RAW_ADC * 5.0) / 1023.0;
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
	line	90
;mq135_module.h: 90: float ratio = voltage / 5.0;
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
	line	93
;mq135_module.h: 93: float ratio2 = ratio * ratio;
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
	line	94
;mq135_module.h: 94: float ratio3 = ratio2 * ratio;
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
	line	95
;mq135_module.h: 95: float ratio4 = ratio3 * ratio;
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
	line	96
;mq135_module.h: 96: float ratio5 = ratio4 * ratio;
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
	line	97
;mq135_module.h: 97: float ratio6 = ratio5 * ratio;
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
	line	101
;mq135_module.h: 100: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 101: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movwf	(_CalcMQ135$657)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$657+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$657+2)^080h
;mq135_module.h: 100: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 101: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$657)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$657+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$657+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$658)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$658+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$658+2)^080h
;mq135_module.h: 100: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 101: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$658)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$658+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$658+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$659)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$659+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$659+2)^080h
;mq135_module.h: 100: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 101: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$659)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$659+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$659+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$660)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$660+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$660+2)^080h
;mq135_module.h: 100: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 101: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$660)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$660+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$660+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$661)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$661+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$661+2)^080h
;mq135_module.h: 100: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 101: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$661)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$661+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$661+2)^080h,w
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
	line	103
;mq135_module.h: 103: co2 *= 415.58;
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
	line	104
	
l2916:	
;mq135_module.h: 104: return co2;
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
	goto	l112
	
l2918:	
	line	105
	
l112:	
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
;;		_displayPPM
;;		_CalcMQ135
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext25
__ptext25:	;psect for function ___ftmul
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2200:	
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
	goto	u2801
	goto	u2800
u2801:
	goto	l2206
u2800:
	line	68
	
l2202:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l640
	
l2204:	
	goto	l640
	
l639:	
	line	69
	
l2206:	
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
	goto	u2811
	goto	u2810
u2811:
	goto	l2212
u2810:
	line	70
	
l2208:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l640
	
l2210:	
	goto	l640
	
l641:	
	line	71
	
l2212:	
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
u2825:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2820:
	addlw	-1
	skipz
	goto	u2825
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
u2835:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2830:
	addlw	-1
	skipz
	goto	u2835
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
	
l2214:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2216:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2218:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2220:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2222:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2224
	line	135
	
l642:	
	line	136
	
l2224:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l2228
u2840:
	line	137
	
l2226:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2851
	addwf	(___ftmul@f3_as_product+1),f
u2851:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2852
	addwf	(___ftmul@f3_as_product+2),f
u2852:

	goto	l2228
	
l643:	
	line	138
	
l2228:	
	movlw	01h
u2865:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2865

	line	139
	
l2230:	
	movlw	01h
u2875:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2875
	line	140
	
l2232:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2224
u2880:
	goto	l2234
	
l644:	
	line	143
	
l2234:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2236
	line	144
	
l645:	
	line	145
	
l2236:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l2240
u2890:
	line	146
	
l2238:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2901
	addwf	(___ftmul@f3_as_product+1),f
u2901:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2902
	addwf	(___ftmul@f3_as_product+2),f
u2902:

	goto	l2240
	
l646:	
	line	147
	
l2240:	
	movlw	01h
u2915:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2915

	line	148
	
l2242:	
	movlw	01h
u2925:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2925

	line	149
	
l2244:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l2236
u2930:
	goto	l2246
	
l647:	
	line	156
	
l2246:	
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
	goto	l640
	
l2248:	
	line	157
	
l640:	
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext26
__ptext26:	;psect for function ___ftdiv
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2158:	
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
	goto	u2721
	goto	u2720
u2721:
	goto	l2164
u2720:
	line	56
	
l2160:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l625
	
l2162:	
	goto	l625
	
l624:	
	line	57
	
l2164:	
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
	goto	u2731
	goto	u2730
u2731:
	goto	l2170
u2730:
	line	58
	
l2166:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l625
	
l2168:	
	goto	l625
	
l626:	
	line	59
	
l2170:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2172:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2174:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2745:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2740:
	addlw	-1
	skipz
	goto	u2745
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2176:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2755:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2750:
	addlw	-1
	skipz
	goto	u2755
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2178:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2180:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2182:	
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
	goto	l2184
	line	69
	
l627:	
	line	70
	
l2184:	
	movlw	01h
u2765:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2765
	line	71
	
l2186:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2775
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2775
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2775:
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2192
u2770:
	line	72
	
l2188:	
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
	
l2190:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2192
	line	74
	
l628:	
	line	75
	
l2192:	
	movlw	01h
u2785:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2785
	line	76
	
l2194:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2184
u2790:
	goto	l2196
	
l629:	
	line	77
	
l2196:	
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
	goto	l625
	
l2198:	
	line	78
	
l625:	
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
;;		_displayPPM
;;		_CalcMQ135
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext27
__ptext27:	;psect for function ___ftadd
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2086:	
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
	
l2088:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2480
	goto	l2094
u2480:
	
l2090:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2098
u2490:
	
l2092:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2098
u2500:
	goto	l2094
	
l593:	
	line	93
	
l2094:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l594
	
l2096:	
	goto	l594
	
l591:	
	line	94
	
l2098:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2510
	goto	l597
u2510:
	
l2100:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l2104
u2520:
	
l2102:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l2104
u2530:
	
l597:	
	line	95
	goto	l594
	
l595:	
	line	96
	
l2104:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2106:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l598
u2540:
	line	98
	
l2108:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l598:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l599
u2550:
	line	100
	
l2110:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l599:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2112:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2114:	
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
	goto	u2561
	goto	u2560
u2561:
	goto	l2126
u2560:
	goto	l2116
	line	109
	
l601:	
	line	110
	
l2116:	
	movlw	01h
u2575:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2575
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2118:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2581
	goto	u2580
u2581:
	goto	l2124
u2580:
	
l2120:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2116
u2590:
	goto	l2124
	
l603:	
	goto	l2124
	
l604:	
	line	113
	goto	l2124
	
l606:	
	line	114
	
l2122:	
	movlw	01h
u2605:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2605

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2124
	line	116
	
l605:	
	line	113
	
l2124:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2122
u2610:
	goto	l608
	
l607:	
	line	117
	goto	l608
	
l600:	
	
l2126:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l608
u2620:
	goto	l2128
	line	120
	
l610:	
	line	121
	
l2128:	
	movlw	01h
u2635:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2635
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2130:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2641
	goto	u2640
u2641:
	goto	l2136
u2640:
	
l2132:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2128
u2650:
	goto	l2136
	
l612:	
	goto	l2136
	
l613:	
	line	124
	goto	l2136
	
l615:	
	line	125
	
l2134:	
	movlw	01h
u2665:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2665

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2136
	line	127
	
l614:	
	line	124
	
l2136:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l2134
u2670:
	goto	l608
	
l616:	
	goto	l608
	line	128
	
l609:	
	line	129
	
l608:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l2140
u2680:
	line	131
	
l2138:	
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
	goto	l2140
	line	133
	
l617:	
	line	134
	
l2140:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l2144
u2690:
	line	136
	
l2142:	
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
	goto	l2144
	line	138
	
l618:	
	line	139
	
l2144:	
	clrf	(___ftadd@sign)
	line	140
	
l2146:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2701
	addwf	(___ftadd@f2+1),f
u2701:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2702
	addwf	(___ftadd@f2+2),f
u2702:

	line	141
	
l2148:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l2154
u2710:
	line	142
	
l2150:	
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
	
l2152:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l2154
	line	145
	
l619:	
	line	146
	
l2154:	
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
	goto	l594
	
l2156:	
	line	148
	
l594:	
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
;;		_displayPPM
;;		_CalcMQ135
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext28
__ptext28:	;psect for function ___awtoft
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2074:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l2076:	
	btfss	(___awtoft@c+1),7
	goto	u2471
	goto	u2470
u2471:
	goto	l2082
u2470:
	line	38
	
l2078:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2080:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l2082
	line	40
	
l568:	
	line	41
	
l2082:	
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
	goto	l569
	
l2084:	
	line	42
	
l569:	
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext29
__ptext29:	;psect for function ___ftpack
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1824:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u1940
	goto	l1828
u1940:
	
l1826:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l1834
u1950:
	goto	l1828
	
l574:	
	line	65
	
l1828:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l575
	
l1830:	
	goto	l575
	
l572:	
	line	66
	goto	l1834
	
l577:	
	line	67
	
l1832:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1965:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1965

	goto	l1834
	line	69
	
l576:	
	line	66
	
l1834:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l1832
u1970:
	goto	l579
	
l578:	
	line	70
	goto	l579
	
l580:	
	line	71
	
l1836:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1838:	
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
	
l1840:	
	movlw	01h
u1985:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1985

	line	74
	
l579:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l1836
u1990:
	goto	l1844
	
l581:	
	line	75
	goto	l1844
	
l583:	
	line	76
	
l1842:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2005:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2005
	goto	l1844
	line	78
	
l582:	
	line	75
	
l1844:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2011
	goto	u2010
u2011:
	goto	l1842
u2010:
	
l584:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2021
	goto	u2020
u2021:
	goto	l585
u2020:
	line	80
	
l1846:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l585:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1848:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2035:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2030:
	addlw	-1
	skipz
	goto	u2035
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1850:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2040
	goto	l586
u2040:
	line	84
	
l1852:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l586:	
	line	85
	line	86
	
l575:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_runClock

;; *************** function _runClock *****************
;; Defined at:
;;		line 33 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
psect	text30,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	33
global __ptext30
__ptext30:	;psect for function _runClock
psect	text30
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	33
	global	__size_of_runClock
	__size_of_runClock	equ	__end_of_runClock-_runClock
	
_runClock:	
;incstack = 0
	opt	stack 5
; Regs used in _runClock: [wreg+status,2+status,0]
	line	35
	
l2532:	
;time_scheduler.h: 35: minutes++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_minutes),f	;volatile
	line	36
	
l2534:	
;time_scheduler.h: 36: if (minutes >= 60)
	movlw	(03Ch)
	subwf	(_minutes),w	;volatile
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l2544
u3510:
	line	38
	
l2536:	
;time_scheduler.h: 37: {
;time_scheduler.h: 38: minutes = 0;
	clrf	(_minutes)	;volatile
	line	39
	
l2538:	
;time_scheduler.h: 39: hours++;
	movlw	(01h)
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_hours),f	;volatile
	line	40
	
l2540:	
;time_scheduler.h: 40: if (hours >= 24)
	movlw	(018h)
	subwf	(_hours),w	;volatile
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l2544
u3520:
	line	42
	
l2542:	
;time_scheduler.h: 41: {
;time_scheduler.h: 42: hours = 0;
	clrf	(_hours)	;volatile
	goto	l2544
	line	43
	
l136:	
	goto	l2544
	line	44
	
l135:	
	line	45
	
l2544:	
;time_scheduler.h: 43: }
;time_scheduler.h: 44: }
;time_scheduler.h: 45: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_runClock+0)+0+1),f
	movlw	238
movwf	((??_runClock+0)+0),f
u4727:
	decfsz	((??_runClock+0)+0),f
	goto	u4727
	decfsz	((??_runClock+0)+0+1),f
	goto	u4727
	nop
opt asmopt_on

	line	46
	
l137:	
	return
	opt stack 0
GLOBAL	__end_of_runClock
	__end_of_runClock:
	signat	_runClock,88
	global	_initInterrupt

;; *************** function _initInterrupt *****************
;; Defined at:
;;		line 75 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text31,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	75
global __ptext31
__ptext31:	;psect for function _initInterrupt
psect	text31
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	75
	global	__size_of_initInterrupt
	__size_of_initInterrupt	equ	__end_of_initInterrupt-_initInterrupt
	
_initInterrupt:	
;incstack = 0
	opt	stack 5
; Regs used in _initInterrupt: []
	line	77
	
l3160:	
;main.c: 77: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	78
;main.c: 78: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	79
;main.c: 79: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	80
;main.c: 80: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	81
	
l247:	
	return
	opt stack 0
GLOBAL	__end_of_initInterrupt
	__end_of_initInterrupt:
	signat	_initInterrupt,88
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 62 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text32,local,class=CODE,delta=2,merge=1
	line	62
global __ptext32
__ptext32:	;psect for function _initADC
psect	text32
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	62
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	stack 5
; Regs used in _initADC: [wreg]
	line	64
	
l3158:	
;main.c: 64: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	65
;main.c: 65: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	66
	
l241:	
	return
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,88
	global	_handlePPM

;; *************** function _handlePPM *****************
;; Defined at:
;;		line 52 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		___ftge
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	52
global __ptext33
__ptext33:	;psect for function _handlePPM
psect	text33
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\mq135_module.h"
	line	52
	global	__size_of_handlePPM
	__size_of_handlePPM	equ	__end_of_handlePPM-_handlePPM
	
_handlePPM:	
;incstack = 0
	opt	stack 4
; Regs used in _handlePPM: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l3090:	
;mq135_module.h: 54: if (PPM > 9)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0x10
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_PPM+2)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4411
	goto	u4410
u4411:
	goto	l95
u4410:
	line	56
	
l3092:	
;mq135_module.h: 55: {
;mq135_module.h: 56: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	57
	
l3094:	
;mq135_module.h: 57: return 1;
	movlw	(01h)
	goto	l96
	
l3096:	
	goto	l96
	line	58
	
l3098:	
;mq135_module.h: 58: }
	goto	l96
	line	59
	
l95:	
	line	61
;mq135_module.h: 59: else
;mq135_module.h: 60: {
;mq135_module.h: 61: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	62
	
l3100:	
;mq135_module.h: 62: return 0;
	movlw	(0)
	goto	l96
	
l3102:	
	goto	l96
	line	63
	
l97:	
	line	64
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_handlePPM
	__end_of_handlePPM:
	signat	_handlePPM,89
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext34
__ptext34:	;psect for function ___ftge
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2496:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l2500
u3450:
	line	7
	
l2498:	
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
	goto	u3461
	goto	u3462
u3461:
	addwf	(??___ftge+0)+1,f
	
u3462:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3463
	goto	u3464
u3463:
	addwf	(??___ftge+0)+2,f
	
u3464:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2500
	
l632:	
	line	8
	
l2500:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l2504
u3470:
	line	9
	
l2502:	
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
	goto	u3481
	goto	u3482
u3481:
	addwf	(??___ftge+0)+1,f
	
u3482:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3483
	goto	u3484
u3483:
	addwf	(??___ftge+0)+2,f
	
u3484:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2504
	
l633:	
	line	10
	
l2504:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2506:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2508:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3495
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3495
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3495:
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l2512
u3490:
	
l2510:	
	clrc
	
	goto	l634
	
l1776:	
	
l2512:	
	setc
	
	goto	l634
	
l1778:	
	goto	l634
	
l2514:	
	line	13
	
l634:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_checkTime

;; *************** function _checkTime *****************
;; Defined at:
;;		line 208 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
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
psect	text35,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	208
global __ptext35
__ptext35:	;psect for function _checkTime
psect	text35
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\time_scheduler.h"
	line	208
	global	__size_of_checkTime
	__size_of_checkTime	equ	__end_of_checkTime-_checkTime
	
_checkTime:	
;incstack = 0
	opt	stack 5
; Regs used in _checkTime: [wreg]
	line	210
	
l3104:	
;time_scheduler.h: 210: if (hours == savedHoursEnd && minutes == savedMinutesEnd)
	movf	(_hours),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_savedHoursEnd)^080h,w	;volatile
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l3110
u4420:
	
l3106:	
	movf	(_minutes),w	;volatile
	xorwf	(_savedMinutesEnd)^080h,w	;volatile
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l3110
u4430:
	line	212
	
l3108:	
;time_scheduler.h: 211: {
;time_scheduler.h: 212: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	213
;time_scheduler.h: 213: }
	goto	l221
	line	214
	
l199:	
	
l3110:	
;time_scheduler.h: 214: else if (savedHoursEnd > savedHoursStart)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	subwf	(_savedHoursStart)^080h,w	;volatile
	skipnc
	goto	u4441
	goto	u4440
u4441:
	goto	l3124
u4440:
	line	218
	
l3112:	
;time_scheduler.h: 215: {
;time_scheduler.h: 217: if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) &&
;time_scheduler.h: 218: (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
	movf	(_hours),w	;volatile
	subwf	(_savedHoursStart)^080h,w	;volatile
	skipc
	goto	u4451
	goto	u4450
u4451:
	goto	l3118
u4450:
	
l3114:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursStart)^080h,w	;volatile
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l202
u4460:
	
l3116:	
	movf	(_savedMinutesStart)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipc
	goto	u4471
	goto	u4470
u4471:
	goto	l202
u4470:
	goto	l3118
	
l204:	
	
l3118:	
	movf	(_savedHoursEnd)^080h,w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l206
u4480:
	
l3120:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd)^080h,w	;volatile
	skipz
	goto	u4491
	goto	u4490
u4491:
	goto	l202
u4490:
	
l3122:	
	movf	(_savedMinutesEnd)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4501
	goto	u4500
u4501:
	goto	l202
u4500:
	
l206:	
	line	220
;time_scheduler.h: 219: {
;time_scheduler.h: 220: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	221
;time_scheduler.h: 221: }
	goto	l221
	line	222
	
l202:	
	line	224
;time_scheduler.h: 222: else
;time_scheduler.h: 223: {
;time_scheduler.h: 224: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	goto	l221
	line	225
	
l207:	
	line	226
;time_scheduler.h: 225: }
;time_scheduler.h: 226: }
	goto	l221
	line	227
	
l201:	
	
l3124:	
;time_scheduler.h: 227: else if (savedHoursEnd < savedHoursStart)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	subwf	(_savedHoursEnd)^080h,w	;volatile
	skipnc
	goto	u4511
	goto	u4510
u4511:
	goto	l3138
u4510:
	line	231
	
l3126:	
;time_scheduler.h: 228: {
;time_scheduler.h: 230: if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) ||
;time_scheduler.h: 231: (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
	movf	(_hours),w	;volatile
	subwf	(_savedHoursStart)^080h,w	;volatile
	skipc
	goto	u4521
	goto	u4520
u4521:
	goto	l212
u4520:
	
l3128:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursStart)^080h,w	;volatile
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l3132
u4530:
	
l3130:	
	movf	(_savedMinutesStart)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4541
	goto	u4540
u4541:
	goto	l212
u4540:
	goto	l3132
	
l214:	
	
l3132:	
	movf	(_savedHoursEnd)^080h,w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l212
u4550:
	
l3134:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd)^080h,w	;volatile
	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l210
u4560:
	
l3136:	
	movf	(_savedMinutesEnd)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l210
u4570:
	goto	l212
	
l216:	
	
l212:	
	line	233
;time_scheduler.h: 232: {
;time_scheduler.h: 233: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	234
;time_scheduler.h: 234: }
	goto	l221
	line	235
	
l210:	
	line	237
;time_scheduler.h: 235: else
;time_scheduler.h: 236: {
;time_scheduler.h: 237: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	goto	l221
	line	238
	
l217:	
	line	239
;time_scheduler.h: 238: }
;time_scheduler.h: 239: }
	goto	l221
	line	240
	
l209:	
	line	242
	
l3138:	
;time_scheduler.h: 240: else
;time_scheduler.h: 241: {
;time_scheduler.h: 242: if (minutes >= savedMinutesStart && minutes < savedMinutesEnd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l219
u4580:
	
l3140:	
	movf	(_savedMinutesEnd)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4591
	goto	u4590
u4591:
	goto	l219
u4590:
	line	244
	
l3142:	
;time_scheduler.h: 243: {
;time_scheduler.h: 244: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	245
;time_scheduler.h: 245: }
	goto	l221
	line	246
	
l219:	
	line	248
;time_scheduler.h: 246: else
;time_scheduler.h: 247: {
;time_scheduler.h: 248: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	goto	l221
	line	249
	
l220:	
	goto	l221
	line	250
	
l218:	
	goto	l221
	
l208:	
	goto	l221
	
l200:	
	line	251
	
l221:	
	return
	opt stack 0
GLOBAL	__end_of_checkTime
	__end_of_checkTime:
	signat	_checkTime,88
	global	_checkSelect

;; *************** function _checkSelect *****************
;; Defined at:
;;		line 184 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text36,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	184
global __ptext36
__ptext36:	;psect for function _checkSelect
psect	text36
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	184
	global	__size_of_checkSelect
	__size_of_checkSelect	equ	__end_of_checkSelect-_checkSelect
	
_checkSelect:	
;incstack = 0
	opt	stack 4
; Regs used in _checkSelect: [wreg+status,2+status,0+pclath+cstack]
	line	187
	
l2608:	
;main.c: 186: static int lastRB1State = 0;
;main.c: 187: int currentRB1State = RB1;
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
	line	188
	
l2610:	
;main.c: 188: if (currentRB1State == 1 && lastRB1State == 0)
	movlw	01h
	xorwf	(checkSelect@currentRB1State),w
	iorwf	(checkSelect@currentRB1State+1),w
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l2618
u3710:
	
l2612:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((checkSelect@lastRB1State+1)^080h),w
	iorwf	((checkSelect@lastRB1State)^080h),w
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l2618
u3720:
	line	190
	
l2614:	
;main.c: 189: {
;main.c: 190: select ^= 1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkSelect+0)+0
	movf	(??_checkSelect+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_select)^080h,f	;volatile
	line	192
	
l2616:	
;main.c: 192: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	goto	l2618
	line	193
	
l282:	
	line	194
	
l2618:	
;main.c: 193: }
;main.c: 194: lastRB1State = currentRB1State;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(checkSelect@currentRB1State+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkSelect@lastRB1State+1)^080h
	addwf	(checkSelect@lastRB1State+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(checkSelect@currentRB1State),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkSelect@lastRB1State)^080h
	addwf	(checkSelect@lastRB1State)^080h

	line	195
	
l283:	
	return
	opt stack 0
GLOBAL	__end_of_checkSelect
	__end_of_checkSelect:
	signat	_checkSelect,88
	global	_checkMode

;; *************** function _checkMode *****************
;; Defined at:
;;		line 173 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text37,local,class=CODE,delta=2,merge=1
	line	173
global __ptext37
__ptext37:	;psect for function _checkMode
psect	text37
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	173
	global	__size_of_checkMode
	__size_of_checkMode	equ	__end_of_checkMode-_checkMode
	
_checkMode:	
;incstack = 0
	opt	stack 4
; Regs used in _checkMode: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
l2620:	
;main.c: 175: if (lastMode != mode)
	movf	(_lastMode),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_mode)^080h,w
	skipnz
	goto	u3731
	goto	u3730
u3731:
	goto	l277
u3730:
	line	178
	
l2622:	
;main.c: 176: {
;main.c: 178: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	179
	
l2624:	
;main.c: 179: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_checkMode+0)+0+1),f
	movlw	238
movwf	((??_checkMode+0)+0),f
u4737:
	decfsz	((??_checkMode+0)+0),f
	goto	u4737
	decfsz	((??_checkMode+0)+0+1),f
	goto	u4737
	nop
opt asmopt_on

	line	180
	
l2626:	
;main.c: 180: lastMode = mode;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkMode+0)+0
	movf	(??_checkMode+0)+0,w
	movwf	(_lastMode)
	goto	l277
	line	181
	
l276:	
	line	182
	
l277:	
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
;;		_startUpLCD
;;		_updateState
;;		_checkMode
;;		_checkSelect
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	17
global __ptext38
__ptext38:	;psect for function _instCTRL
psect	text38
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
	
l1780:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	20
	
l1782:	
;lcd_functions.h: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
l1784:	
;lcd_functions.h: 21: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	22
	
l1786:	
;lcd_functions.h: 22: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u4747:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u4747
	nop2	;nop
	nop
opt asmopt_on

	line	24
	
l1788:	
;lcd_functions.h: 24: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	25
	
l71:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 83 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
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
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	83
global __ptext39
__ptext39:	;psect for function _ISR
psect	text39
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\main.c"
	line	83
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
psect	text39
	line	85
	
i1l2738:	
;main.c: 85: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	86
;main.c: 86: if (INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l2744
u374_20:
	line	88
	
i1l2740:	
;main.c: 87: {
;main.c: 88: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	89
	
i1l2742:	
;main.c: 89: mode = (mode + 1) % 4;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	addlw	01h
	andlw	03h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_mode)^080h
	goto	i1l2744
	line	90
	
i1l250:	
	line	91
	
i1l2744:	
;main.c: 90: }
;main.c: 91: instCTRL(0x01);
	movlw	(01h)
	fcall	i1_instCTRL
	line	92
	
i1l2746:	
;main.c: 92: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	93
	
i1l251:	
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
psect	text40,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\first-version\lcd_functions.h"
	line	17
global __ptext40
__ptext40:	;psect for function i1_instCTRL
psect	text40
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
	
i1l2708:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(i1instCTRL@CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
i1l2710:	
;lcd_functions.h: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
i1l2712:	
;lcd_functions.h: 21: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	22
	
i1l2714:	
;lcd_functions.h: 22: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??i1_instCTRL+0)+0,f
u475_27:
	nop
decfsz	(??i1_instCTRL+0)+0,f
	goto	u475_27
	nop2	;nop
	nop
opt asmopt_on

	line	24
	
i1l2716:	
;lcd_functions.h: 24: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	25
	
i1l71:	
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
