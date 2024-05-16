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
	FNCALL	_main,_activateHumidifier
	FNCALL	_main,_checkMode
	FNCALL	_main,_checkSEL
	FNCALL	_main,_checkTime
	FNCALL	_main,_displayDataDHT11
	FNCALL	_main,_displayPPM
	FNCALL	_main,_displayTime
	FNCALL	_main,_handlePPM
	FNCALL	_main,_initInterrupts
	FNCALL	_main,_initPorts
	FNCALL	_main,_initRegisters
	FNCALL	_main,_instCTRL
	FNCALL	_main,_printToLCD
	FNCALL	_main,_runClock
	FNCALL	_main,_runDHT11
	FNCALL	_main,_runMQ135
	FNCALL	_main,_setHoursEnd
	FNCALL	_main,_setHoursStart
	FNCALL	_main,_setMinutesEnd
	FNCALL	_main,_setMinutesStart
	FNCALL	_main,_sprintf
	FNCALL	_main,_startUpSequence
	FNCALL	_startUpSequence,_initDHT11
	FNCALL	_startUpSequence,_initLCD
	FNCALL	_startUpSequence,_instCTRL
	FNCALL	_startUpSequence,_printToLCD
	FNCALL	_initLCD,_instCTRL
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
	FNCALL	_runMQ135,_CalcMQ135
	FNCALL	_runMQ135,_readADC
	FNCALL	_CalcMQ135,___awtoft
	FNCALL	_CalcMQ135,___ftadd
	FNCALL	_CalcMQ135,___ftdiv
	FNCALL	_CalcMQ135,___ftmul
	FNCALL	___ftdiv,___ftpack
	FNCALL	_runDHT11,_instCTRL
	FNCALL	_runDHT11,_printToLCD
	FNCALL	_runDHT11,_readDHT11
	FNCALL	_handlePPM,___ftge
	FNCALL	_displayTime,_printToLCD
	FNCALL	_displayTime,_sprintf
	FNCALL	_displayPPM,___awtoft
	FNCALL	_displayPPM,___ftadd
	FNCALL	_displayPPM,___ftmul
	FNCALL	_displayPPM,___ftneg
	FNCALL	_displayPPM,___fttol
	FNCALL	_displayPPM,_printToLCD
	FNCALL	_displayPPM,_sprintf
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_displayDataDHT11,_instCTRL
	FNCALL	_displayDataDHT11,_printToLCD
	FNCALL	_displayDataDHT11,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_printToLCD,_instCTRL
	FNCALL	_checkSEL,_instCTRL
	FNCALL	_checkMode,_instCTRL
	FNROOT	_main
	FNCALL	_ISR,i1___awmod
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_hours
	global	_lastKeyState
	global	_savedHoursEnd
	global	_savedHoursStart
	global	_savedMinutesEnd
	global	_savedMinutesStart
	global	_lastMode
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	13

;initializer for _hours
	retlw	04h
	line	21

;initializer for _lastKeyState
	retlw	0FFh
	line	17

;initializer for _savedHoursEnd
	retlw	0Ah
	line	15

;initializer for _savedHoursStart
	retlw	09h
	line	18

;initializer for _savedMinutesEnd
	retlw	01Eh
	line	16

;initializer for _savedMinutesStart
	retlw	01Eh
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	16

;initializer for _lastMode
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
	global	_humidity
	global	_temperature
	global	_key
	global	_keyValid
	global	_minutes
	global	readDHT11@F1216
	global	_PPM
	global	checkSEL@lastRB1State
	global	_SEL
	global	_mode
	global	_ppmFlag
	global	_debugInfo
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTCbits
_PORTCbits	set	0x7
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
	global	_PEIE
_PEIE	set	0x5E
	global	_RB1
_RB1	set	0x31
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
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_INTEDG
_INTEDG	set	0x40E
	global __stringdata
__stringdata:
	
STR_22:	
	retlw	82	;'R'
	retlw	85	;'U'
	retlw	78	;'N'
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
	retlw	45	;'-'
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
	
STR_23:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	68	;'D'
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
	
STR_29:	
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
	
STR_26:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_9:	
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
	
STR_24:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_2:	
	retlw	72	;'H'
	retlw	77	;'M'
	retlw	68	;'D'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	37	;'%'
	retlw	37	;'%'
	retlw	0
psect	strings
	
STR_25:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_1:	
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	67	;'C'
	retlw	0
psect	strings
	
STR_27:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_11:	
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
	
STR_10:	
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
	
STR_12:	
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
	
STR_28:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_7:	
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_8:	
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	0
psect	strings
	
STR_3:	
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	33	;'!'
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
STR_15	equ	STR_12+0
STR_18	equ	STR_12+0
STR_21	equ	STR_12+0
STR_13	equ	STR_10+0
STR_16	equ	STR_10+0
STR_19	equ	STR_10+0
STR_14	equ	STR_11+0
STR_17	equ	STR_11+0
STR_20	equ	STR_11+0
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
	file	"dht11-isolated.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_humidity:
       ds      1

_temperature:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_key:
       ds      1

_keyValid:
       ds      1

_minutes:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	13
_hours:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	21
_lastKeyState:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	17
_savedHoursEnd:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	15
_savedHoursStart:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	18
_savedMinutesEnd:
       ds      1

psect	dataBANK0
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	16
_savedMinutesStart:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
readDHT11@F1216:
       ds      5

_PPM:
       ds      3

checkSEL@lastRB1State:
       ds      2

_SEL:
       ds      1

_mode:
       ds      1

_ppmFlag:
       ds      1

_debugInfo:
       ds      10

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	16
_lastMode:
       ds      1

	file	"dht11-isolated.as"
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
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+017h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
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
displayPPM@strBuffer:	; 20 bytes @ 0x0
	ds	3
	global	CalcMQ135@ratio6
CalcMQ135@ratio6:	; 3 bytes @ 0x3
	ds	3
	global	_CalcMQ135$765
_CalcMQ135$765:	; 3 bytes @ 0x6
	ds	3
	global	_CalcMQ135$766
_CalcMQ135$766:	; 3 bytes @ 0x9
	ds	3
	global	_CalcMQ135$767
_CalcMQ135$767:	; 3 bytes @ 0xC
	ds	3
	global	_CalcMQ135$768
_CalcMQ135$768:	; 3 bytes @ 0xF
	ds	3
	global	_CalcMQ135$769
_CalcMQ135$769:	; 3 bytes @ 0x12
	ds	2
	global	displayPPM@ppmWhole
displayPPM@ppmWhole:	; 2 bytes @ 0x14
	ds	1
	global	CalcMQ135@ratio2
CalcMQ135@ratio2:	; 3 bytes @ 0x15
	ds	1
	global	displayPPM@ppmFraction
displayPPM@ppmFraction:	; 2 bytes @ 0x16
	ds	2
	global	displayPPM@bufPtr
displayPPM@bufPtr:	; 1 bytes @ 0x18
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
	global	main@buffer
main@buffer:	; 16 bytes @ 0x27
	ds	16
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initPorts:	; 0 bytes @ 0x0
?_initRegisters:	; 0 bytes @ 0x0
?_initInterrupts:	; 0 bytes @ 0x0
?_startUpSequence:	; 0 bytes @ 0x0
?_checkMode:	; 0 bytes @ 0x0
?_checkSEL:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_initDHT11:	; 0 bytes @ 0x0
?_displayDataDHT11:	; 0 bytes @ 0x0
?_runDHT11:	; 0 bytes @ 0x0
?_activateHumidifier:	; 0 bytes @ 0x0
?_runMQ135:	; 0 bytes @ 0x0
?_displayPPM:	; 0 bytes @ 0x0
?_runClock:	; 0 bytes @ 0x0
?_displayTime:	; 0 bytes @ 0x0
?_setHoursStart:	; 0 bytes @ 0x0
?_setHoursEnd:	; 0 bytes @ 0x0
?_setMinutesStart:	; 0 bytes @ 0x0
?_setMinutesEnd:	; 0 bytes @ 0x0
?_checkTime:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_handlePPM:	; 1 bytes @ 0x0
	global	?i1___awmod
?i1___awmod:	; 2 bytes @ 0x0
	global	i1___awmod@divisor
i1___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	i1___awmod@dividend
i1___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
??i1___awmod:	; 0 bytes @ 0x4
	ds	1
	global	i1___awmod@counter
i1___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	i1___awmod@sign
i1___awmod@sign:	; 1 bytes @ 0x6
	ds	1
??_ISR:	; 0 bytes @ 0x7
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_initPorts:	; 0 bytes @ 0x0
??_initRegisters:	; 0 bytes @ 0x0
??_initInterrupts:	; 0 bytes @ 0x0
??_isdigit:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
??_initDHT11:	; 0 bytes @ 0x0
??_activateHumidifier:	; 0 bytes @ 0x0
??_runClock:	; 0 bytes @ 0x0
??_checkTime:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_readDHT11:	; 1 bytes @ 0x0
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	readDHT11@humidity
readDHT11@humidity:	; 1 bytes @ 0x0
	global	_isdigit$521
_isdigit$521:	; 1 bytes @ 0x0
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
??_readDHT11:	; 0 bytes @ 0x1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x1
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_checkMode:	; 0 bytes @ 0x2
??_checkSEL:	; 0 bytes @ 0x2
??_readADC:	; 0 bytes @ 0x2
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
??_startUpSequence:	; 0 bytes @ 0x4
??_printToLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	readADC@channel
readADC@channel:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	checkSEL@currentRB1State
checkSEL@currentRB1State:	; 2 bytes @ 0x4
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
	global	readDHT11@temperature
readDHT11@temperature:	; 1 bytes @ 0x7
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
	global	readDHT11@bits
readDHT11@bits:	; 5 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	ds	1
??_handlePPM:	; 0 bytes @ 0xC
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	readDHT11@i
readDHT11@i:	; 1 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0xE
	global	readDHT11@j
readDHT11@j:	; 1 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0xE
	ds	1
??_runDHT11:	; 0 bytes @ 0xF
	ds	2
??___ftneg:	; 0 bytes @ 0x11
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x11
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x11
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x14
	ds	3
??_sprintf:	; 0 bytes @ 0x17
??___ftmul:	; 0 bytes @ 0x17
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1A
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1B
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@ccnt
sprintf@ccnt:	; 2 bytes @ 0x1C
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1C
	ds	2
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1F
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1F
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x20
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x21
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x21
	global	sprintf@_val
sprintf@_val:	; 3 bytes @ 0x21
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x21
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x21
	ds	3
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x24
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x24
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x24
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x25
	ds	1
??_displayDataDHT11:	; 0 bytes @ 0x26
??_displayTime:	; 0 bytes @ 0x26
??_setHoursStart:	; 0 bytes @ 0x26
??_setHoursEnd:	; 0 bytes @ 0x26
??_setMinutesStart:	; 0 bytes @ 0x26
??_setMinutesEnd:	; 0 bytes @ 0x26
	ds	1
??___ftadd:	; 0 bytes @ 0x27
??___ftdiv:	; 0 bytes @ 0x27
	ds	2
	global	displayDataDHT11@buffer
displayDataDHT11@buffer:	; 15 bytes @ 0x29
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2B
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x2B
	global	displayTime@timeFormat
displayTime@timeFormat:	; 16 bytes @ 0x2B
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2C
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x2C
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2D
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2E
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2E
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x2F
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x30
	ds	1
	global	?_CalcMQ135
?_CalcMQ135:	; 3 bytes @ 0x31
	global	CalcMQ135@RAW_ADC
CalcMQ135@RAW_ADC:	; 2 bytes @ 0x31
	ds	1
??___fttol:	; 0 bytes @ 0x32
	ds	2
??_CalcMQ135:	; 0 bytes @ 0x34
??_runMQ135:	; 0 bytes @ 0x34
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x36
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x37
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3B
	ds	1
??_displayPPM:	; 0 bytes @ 0x3C
	ds	2
??_main:	; 0 bytes @ 0x3E
	ds	9
;!
;!Data Sizes:
;!    Strings     225
;!    Constant    10
;!    Data        7
;!    BSS         28
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     71      80
;!    BANK1            80     55      79
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@_val._cp	PTR const unsigned char  size(1) Largest target is 1
;!		 -> sprintf@c(BANK0[1]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 25
;!		 -> STR_22(CODE[25]), STR_21(CODE[10]), STR_20(CODE[10]), STR_19(CODE[10]), 
;!		 -> STR_18(CODE[10]), STR_17(CODE[10]), STR_16(CODE[10]), STR_15(CODE[10]), 
;!		 -> STR_14(CODE[10]), STR_13(CODE[10]), STR_12(CODE[10]), STR_11(CODE[10]), 
;!		 -> STR_10(CODE[10]), STR_9(CODE[16]), STR_6(CODE[9]), STR_5(CODE[3]), 
;!		 -> STR_4(CODE[6]), STR_2(CODE[11]), STR_1(CODE[10]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> main@buffer(BANK1[16]), debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[16]), displayPPM@strBuffer(BANK1[20]), 
;!		 -> displayDataDHT11@buffer(BANK0[15]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S323$_cp	PTR const unsigned char  size(1) Largest target is 1
;!		 -> sprintf@c(BANK0[1]), 
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 1
;!		 -> sprintf@c(BANK0[1]), 
;!
;!    displayPPM@bufPtr	PTR unsigned char  size(1) Largest target is 20
;!		 -> displayPPM@strBuffer(BANK1[20]), 
;!
;!    readDHT11@temperature	PTR unsigned char  size(1) Largest target is 1
;!		 -> temperature(COMMON[1]), 
;!
;!    readDHT11@humidity	PTR unsigned char  size(1) Largest target is 1
;!		 -> humidity(COMMON[1]), 
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 20
;!		 -> STR_29(CODE[16]), STR_28(CODE[9]), STR_27(CODE[10]), STR_26(CODE[16]), 
;!		 -> STR_25(CODE[11]), STR_24(CODE[12]), STR_23(CODE[18]), main@buffer(BANK1[16]), 
;!		 -> debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[16]), STR_8(CODE[8]), STR_7(CODE[8]), 
;!		 -> displayPPM@strBuffer(BANK1[20]), STR_3(CODE[7]), displayDataDHT11@buffer(BANK0[15]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1___awmod
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_displayPPM
;!    _startUpSequence->_printToLCD
;!    _initLCD->_instCTRL
;!    _setMinutesStart->_sprintf
;!    _setMinutesEnd->_sprintf
;!    _setHoursStart->_sprintf
;!    _setHoursEnd->_sprintf
;!    _runMQ135->_CalcMQ135
;!    _CalcMQ135->___ftdiv
;!    ___ftdiv->___ftmul
;!    _runDHT11->_readDHT11
;!    _handlePPM->___ftge
;!    _displayTime->_sprintf
;!    _displayPPM->___fttol
;!    ___fttol->___ftadd
;!    ___ftneg->___awtoft
;!    ___ftmul->___ftneg
;!    ___ftadd->___ftmul
;!    ___awtoft->___ftpack
;!    _displayDataDHT11->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _printToLCD->_dataCTRL
;!    _printToLCD->_instCTRL
;!    _checkSEL->_instCTRL
;!    _checkMode->_instCTRL
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
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
;;Main: autosize = 0, tempsize = 9, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                25    25      0   65794
;!                                             62 BANK0      9     9      0
;!                                             39 BANK1     16    16      0
;!                 _activateHumidifier
;!                          _checkMode
;!                           _checkSEL
;!                          _checkTime
;!                   _displayDataDHT11
;!                         _displayPPM
;!                        _displayTime
;!                          _handlePPM
;!                     _initInterrupts
;!                          _initPorts
;!                      _initRegisters
;!                           _instCTRL
;!                         _printToLCD
;!                           _runClock
;!                           _runDHT11
;!                           _runMQ135
;!                        _setHoursEnd
;!                      _setHoursStart
;!                      _setMinutesEnd
;!                    _setMinutesStart
;!                            _sprintf
;!                    _startUpSequence
;! ---------------------------------------------------------------------------------
;! (1) _startUpSequence                                      3     3      0    1140
;!                                              4 BANK0      3     3      0
;!                          _initDHT11
;!                            _initLCD
;!                           _instCTRL
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (2) _initLCD                                              1     1      0      22
;!                                              2 BANK0      1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (2) _initDHT11                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _setMinutesStart                                      3     3      0    5785
;!                                             38 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _setMinutesEnd                                        3     3      0    5785
;!                                             38 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _setHoursStart                                        3     3      0    5785
;!                                             38 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _setHoursEnd                                          3     3      0    5785
;!                                             38 BANK0      3     3      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4    1198
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _runMQ135                                             0     0      0   11540
;!                          _CalcMQ135
;!                            _readADC
;! ---------------------------------------------------------------------------------
;! (2) _readADC                                              5     3      2      22
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _CalcMQ135                                           42    39      3   11518
;!                                             49 BANK0      3     0      3
;!                                              0 BANK1     39    39      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2177
;!                                             33 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _runDHT11                                             3     3      0    1562
;!                                             15 BANK0      3     3      0
;!                           _instCTRL
;!                         _printToLCD
;!                          _readDHT11
;! ---------------------------------------------------------------------------------
;! (2) _readDHT11                                           15    14      1     444
;!                                              0 BANK0     15    14      1
;! ---------------------------------------------------------------------------------
;! (1) _runClock                                             2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _initRegisters                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initPorts                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initInterrupts                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _handlePPM                                            0     0      0     242
;!                             ___ftge
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     242
;!                                              0 BANK0     12     6      6
;! ---------------------------------------------------------------------------------
;! (1) _displayTime                                         21    21      0    4651
;!                                             38 BANK0     21    21      0
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _displayPPM                                          27    27      0   14040
;!                                             60 BANK0      2     2      0
;!                                              0 BANK1     25    25      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     358
;!                                             46 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3      98
;!                                             14 BANK0      3     0      3
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    3495
;!                                             17 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3347
;!                                             33 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
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
;! (1) _displayDataDHT11                                    18    18      0    4717
;!                                             38 BANK0     18    18      0
;!                           _instCTRL
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             24    15      9    3491
;!                                             14 BANK0     24    15      9
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     198
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                              8 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _printToLCD                                           2     0      2    1096
;!                                              2 BANK0      2     0      2
;!                           _dataCTRL
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (3) _dataCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _checkTime                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkSEL                                             4     4      0      67
;!                                              2 BANK0      4     4      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _checkMode                                            2     2      0      22
;!                                              2 BANK0      2     2      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (3) _instCTRL                                             2     2      0      22
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _activateHumidifier                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  5     5      0     348
;!                                              7 COMMON     5     5      0
;!                          i1___awmod
;! ---------------------------------------------------------------------------------
;! (6) i1___awmod                                            7     3      4     348
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _activateHumidifier
;!   _checkMode
;!     _instCTRL
;!   _checkSEL
;!     _instCTRL
;!   _checkTime
;!   _displayDataDHT11
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
;!   _displayPPM
;!     ___awtoft
;!       ___ftpack
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
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
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!     ___ftneg
;!       ___awtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
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
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _displayTime
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _handlePPM
;!     ___ftge
;!   _initInterrupts
;!   _initPorts
;!   _initRegisters
;!   _instCTRL
;!   _printToLCD
;!     _dataCTRL
;!     _instCTRL
;!   _runClock
;!   _runDHT11
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _readDHT11
;!   _runMQ135
;!     _CalcMQ135
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
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
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       _readADC (ARG)
;!     _readADC
;!   _setHoursEnd
;!     ___awmod
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _setHoursStart
;!     ___awmod
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _setMinutesEnd
;!     ___awmod
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _setMinutesStart
;!     ___awmod
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     ___wmul
;!     _isdigit
;!   _startUpSequence
;!     _initDHT11
;!     _initLCD
;!       _instCTRL
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!
;! _ISR (ROOT)
;!   i1___awmod
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
;!BANK1               50     37      4F       7       98.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     47      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      C       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      AD      12        0.0%
;!ABS                  0      0      AD       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         16   39[BANK1 ] unsigned char [16]
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
;;      Locals:         0       0      16       0       0
;;      Temps:          0       9       0       0       0
;;      Totals:         0       9      16       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_activateHumidifier
;;		_checkMode
;;		_checkSEL
;;		_checkTime
;;		_displayDataDHT11
;;		_displayPPM
;;		_displayTime
;;		_handlePPM
;;		_initInterrupts
;;		_initPorts
;;		_initRegisters
;;		_instCTRL
;;		_printToLCD
;;		_runClock
;;		_runDHT11
;;		_runMQ135
;;		_setHoursEnd
;;		_setHoursStart
;;		_setMinutesEnd
;;		_setMinutesStart
;;		_sprintf
;;		_startUpSequence
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	33
	
l2985:	
;main.c: 31: char buffer[16];
;main.c: 33: initPorts();
	fcall	_initPorts
	line	35
;main.c: 35: initRegisters();
	fcall	_initRegisters
	line	37
	
l2987:	
;main.c: 37: initInterrupts();
	fcall	_initInterrupts
	line	39
	
l2989:	
;main.c: 39: startUpSequence();
	fcall	_startUpSequence
	goto	l2991
	line	40
;main.c: 40: while (1)
	
l269:	
	line	43
	
l2991:	
;main.c: 41: {
;main.c: 43: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	44
	
l2993:	
;main.c: 44: PEIE = 0;
	bcf	(94/8),(94)&7	;volatile
	line	45
	
l2995:	
;main.c: 45: runDHT11();
	fcall	_runDHT11
	line	46
	
l2997:	
;main.c: 46: runMQ135();
	fcall	_runMQ135
	line	47
	
l2999:	
;main.c: 47: runClock();
	fcall	_runClock
	line	48
	
l3001:	
;main.c: 48: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	49
	
l3003:	
;main.c: 49: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	51
	
l3005:	
;main.c: 51: checkMode();
	fcall	_checkMode
	line	52
	
l3007:	
;main.c: 52: checkSEL();
	fcall	_checkSEL
	line	53
	
l3009:	
;main.c: 53: checkTime();
	fcall	_checkTime
	line	54
	
l3011:	
;main.c: 54: handlePPM();
	fcall	_handlePPM
	line	55
	
l3013:	
;main.c: 55: activateHumidifier();
	fcall	_activateHumidifier
	line	57
;main.c: 57: switch (mode)
	goto	l3077
	line	59
;main.c: 58: {
;main.c: 59: case STAT:
	
l271:	
	line	60
;main.c: 60: switch (SEL)
	goto	l3029
	line	62
;main.c: 61: {
;main.c: 62: case 0:
	
l273:	
	line	63
	
l3015:	
;main.c: 63: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	64
	
l3017:	
;main.c: 64: displayDataDHT11();
	fcall	_displayDataDHT11
	line	66
	
l3019:	
;main.c: 66: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	67
;main.c: 67: displayPPM();
	fcall	_displayPPM
	line	68
;main.c: 68: break;
	goto	l2991
	line	69
;main.c: 69: case 1:
	
l275:	
	line	70
	
l3021:	
;main.c: 70: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	71
	
l3023:	
;main.c: 71: displayTime();
	fcall	_displayTime
	line	72
	
l3025:	
;main.c: 72: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	73
;main.c: 73: sprintf(buffer, "RUN: %02d:%02d-%02d:%02d", savedHoursStart, savedMinutesStart, savedHoursEnd, savedMinutesEnd);
	movlw	((STR_22)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_main+1)+0
	clrf	(??_main+1)+0+1
	movf	0+(??_main+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_main+1)+0,w
	movwf	1+(?_sprintf)+01h
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_main+3)+0
	clrf	(??_main+3)+0+1
	movf	0+(??_main+3)+0,w
	movwf	0+(?_sprintf)+03h
	movf	1+(??_main+3)+0,w
	movwf	1+(?_sprintf)+03h
	movf	(_savedHoursEnd),w	;volatile
	movwf	(??_main+5)+0
	clrf	(??_main+5)+0+1
	movf	0+(??_main+5)+0,w
	movwf	0+(?_sprintf)+05h
	movf	1+(??_main+5)+0,w
	movwf	1+(?_sprintf)+05h
	movf	(_savedMinutesEnd),w	;volatile
	movwf	(??_main+7)+0
	clrf	(??_main+7)+0+1
	movf	0+(??_main+7)+0,w
	movwf	0+(?_sprintf)+07h
	movf	1+(??_main+7)+0,w
	movwf	1+(?_sprintf)+07h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	74
;main.c: 74: printToLCD(buffer);
	movlw	(main@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	75
;main.c: 75: break;
	goto	l2991
	line	76
;main.c: 76: default:
	
l276:	
	line	77
;main.c: 77: break;
	goto	l2991
	line	78
	
l3027:	
;main.c: 78: }
	goto	l2991
	line	60
	
l272:	
	
l3029:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_SEL)^080h,w	;volatile
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
	goto	l3015
	xorlw	1^0	; case 1
	skipnz
	goto	l3021
	goto	l2991
	opt asmopt_on

	line	78
	
l274:	
	line	79
;main.c: 79: break;
	goto	l2991
	line	80
;main.c: 80: case SET_TIME_START:
	
l278:	
	line	82
	
l3031:	
;main.c: 82: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	83
	
l3033:	
;main.c: 83: printToLCD("Set SCHED - START");
	movlw	low((STR_23)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	84
	
l3035:	
;main.c: 84: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	85
;main.c: 85: switch (SEL)
	goto	l3051
	line	87
;main.c: 86: {
;main.c: 87: case 0:
	
l280:	
	line	88
	
l3037:	
;main.c: 88: printToLCD("START HOURS");
	movlw	low((STR_24)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	89
	
l3039:	
;main.c: 89: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	90
	
l3041:	
;main.c: 90: setHoursStart();
	fcall	_setHoursStart
	line	91
;main.c: 91: break;
	goto	l2991
	line	92
;main.c: 92: case 1:
	
l282:	
	line	93
	
l3043:	
;main.c: 93: printToLCD("START MINS");
	movlw	low((STR_25)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	94
	
l3045:	
;main.c: 94: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	95
	
l3047:	
;main.c: 95: setMinutesStart();
	fcall	_setMinutesStart
	line	96
;main.c: 96: break;
	goto	l2991
	line	97
;main.c: 97: default:
	
l283:	
	line	98
;main.c: 98: break;
	goto	l2991
	line	99
	
l3049:	
;main.c: 99: }
	goto	l2991
	line	85
	
l279:	
	
l3051:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_SEL)^080h,w	;volatile
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
	goto	l3037
	xorlw	1^0	; case 1
	skipnz
	goto	l3043
	goto	l2991
	opt asmopt_on

	line	99
	
l281:	
	line	100
;main.c: 100: break;
	goto	l2991
	line	101
;main.c: 101: case SET_TIME_END:
	
l284:	
	line	103
	
l3053:	
;main.c: 103: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	104
	
l3055:	
;main.c: 104: printToLCD("Set SCHED - END");
	movlw	low((STR_26)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	105
	
l3057:	
;main.c: 105: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	106
;main.c: 106: switch (SEL)
	goto	l3073
	line	108
;main.c: 107: {
;main.c: 108: case 0:
	
l286:	
	line	109
	
l3059:	
;main.c: 109: printToLCD("END HOURS");
	movlw	low((STR_27)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	110
	
l3061:	
;main.c: 110: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	111
	
l3063:	
;main.c: 111: setHoursEnd();
	fcall	_setHoursEnd
	line	112
;main.c: 112: break;
	goto	l2991
	line	113
;main.c: 113: case 1:
	
l288:	
	line	114
	
l3065:	
;main.c: 114: printToLCD("END MINS");
	movlw	low((STR_28)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	115
	
l3067:	
;main.c: 115: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	116
	
l3069:	
;main.c: 116: setMinutesEnd();
	fcall	_setMinutesEnd
	line	117
;main.c: 117: break;
	goto	l2991
	line	118
;main.c: 118: default:
	
l289:	
	line	119
;main.c: 119: break;
	goto	l2991
	line	120
	
l3071:	
;main.c: 120: }
	goto	l2991
	line	106
	
l285:	
	
l3073:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_SEL)^080h,w	;volatile
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
	goto	l3059
	xorlw	1^0	; case 1
	skipnz
	goto	l3065
	goto	l2991
	opt asmopt_on

	line	120
	
l287:	
	line	121
;main.c: 121: break;
	goto	l2991
	line	122
;main.c: 122: default:
	
l290:	
	line	123
;main.c: 123: break;
	goto	l2991
	line	124
	
l3075:	
;main.c: 124: }
	goto	l2991
	line	57
	
l270:	
	
l3077:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           17     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3029
	xorlw	1^0	; case 1
	skipnz
	goto	l3031
	xorlw	2^1	; case 2
	skipnz
	goto	l3053
	goto	l2991
	opt asmopt_on

	line	124
	
l277:	
	goto	l2991
	line	125
	
l291:	
	line	40
	goto	l2991
	
l292:	
	line	126
	
l293:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_startUpSequence

;; *************** function _startUpSequence *****************
;; Defined at:
;;		line 163 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
;;		_initDHT11
;;		_initLCD
;;		_instCTRL
;;		_printToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	163
global __ptext1
__ptext1:	;psect for function _startUpSequence
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	163
	global	__size_of_startUpSequence
	__size_of_startUpSequence	equ	__end_of_startUpSequence-_startUpSequence
	
_startUpSequence:	
;incstack = 0
	opt	stack 3
; Regs used in _startUpSequence: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l2903:	
;main.c: 166: initLCD();
	fcall	_initLCD
	line	167
	
l2905:	
;main.c: 167: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_startUpSequence+0)+0+2),f
movlw	138
movwf	((??_startUpSequence+0)+0+1),f
	movlw	86
movwf	((??_startUpSequence+0)+0),f
u4297:
	decfsz	((??_startUpSequence+0)+0),f
	goto	u4297
	decfsz	((??_startUpSequence+0)+0+1),f
	goto	u4297
	decfsz	((??_startUpSequence+0)+0+2),f
	goto	u4297
	nop2
opt asmopt_on

	line	168
	
l2907:	
;main.c: 168: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	169
	
l2909:	
;main.c: 169: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	170
	
l2911:	
;main.c: 170: printToLCD("Initializing...");
	movlw	low((STR_29)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	172
	
l2913:	
;main.c: 172: initDHT11();
	fcall	_initDHT11
	line	173
	
l2915:	
;main.c: 173: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_startUpSequence+0)+0+2),f
movlw	38
movwf	((??_startUpSequence+0)+0+1),f
	movlw	102
movwf	((??_startUpSequence+0)+0),f
u4307:
	decfsz	((??_startUpSequence+0)+0),f
	goto	u4307
	decfsz	((??_startUpSequence+0)+0+1),f
	goto	u4307
	decfsz	((??_startUpSequence+0)+0+2),f
	goto	u4307
	nop2
opt asmopt_on

	line	174
	
l2917:	
;main.c: 174: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	175
	
l309:	
	return
	opt stack 0
GLOBAL	__end_of_startUpSequence
	__end_of_startUpSequence:
	signat	_startUpSequence,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 42 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
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
;;		_startUpSequence
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	42
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	42
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l2279:	
;lcd_functions.h: 44: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	45
	
l2281:	
;lcd_functions.h: 45: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_initLCD+0)+0,f
u4317:
decfsz	(??_initLCD+0)+0,f
	goto	u4317
	nop
opt asmopt_on

	line	46
	
l2283:	
;lcd_functions.h: 46: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	47
	
l2285:	
;lcd_functions.h: 47: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	48
	
l2287:	
;lcd_functions.h: 48: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	49
	
l2289:	
;lcd_functions.h: 49: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	50
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_initDHT11

;; *************** function _initDHT11 *****************
;; Defined at:
;;		line 21 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
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
;;		_startUpSequence
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	21
global __ptext3
__ptext3:	;psect for function _initDHT11
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	21
	global	__size_of_initDHT11
	__size_of_initDHT11	equ	__end_of_initDHT11-_initDHT11
	
_initDHT11:	
;incstack = 0
	opt	stack 4
; Regs used in _initDHT11: []
	line	23
	
l2299:	
;dht11_module.h: 23: TRISBbits.TRISB2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h,2	;volatile
	line	24
;dht11_module.h: 24: PORTBbits.RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),2	;volatile
	line	25
	
l94:	
	return
	opt stack 0
GLOBAL	__end_of_initDHT11
	__end_of_initDHT11:
	signat	_initDHT11,88
	global	_setMinutesStart

;; *************** function _setMinutesStart *****************
;; Defined at:
;;		line 133 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	133
global __ptext4
__ptext4:	;psect for function _setMinutesStart
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	133
	global	__size_of_setMinutesStart
	__size_of_setMinutesStart	equ	__end_of_setMinutesStart-_setMinutesStart
	
_setMinutesStart:	
;incstack = 0
	opt	stack 3
; Regs used in _setMinutesStart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	135
	
l2785:	
;time_scheduler.h: 135: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutesStart+0)+0
	movlw	03h
u3785:
	clrc
	rrf	(??_setMinutesStart+0)+0,f
	addlw	-1
	skipz
	goto	u3785
	movf	0+(??_setMinutesStart+0)+0,w
	andlw	01h
	movwf	(??_setMinutesStart+1)+0
	movf	(??_setMinutesStart+1)+0,w
	movwf	(_keyValid)
	line	136
;time_scheduler.h: 136: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setMinutesStart+0)+0
	movlw	04h
u3795:
	clrc
	rrf	(??_setMinutesStart+0)+0,f
	addlw	-1
	skipz
	goto	u3795
	movf	0+(??_setMinutesStart+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutesStart+1)+0
	movf	(??_setMinutesStart+1)+0,w
	movwf	(_key)
	line	138
	
l2787:	
;time_scheduler.h: 138: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutesStart+0)+0+1),f
	movlw	238
movwf	((??_setMinutesStart+0)+0),f
u4327:
	decfsz	((??_setMinutesStart+0)+0),f
	goto	u4327
	decfsz	((??_setMinutesStart+0)+0+1),f
	goto	u4327
	nop
opt asmopt_on

	line	140
	
l2789:	
;time_scheduler.h: 140: if (keyValid && key != lastKeyState)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keyValid),w
	skipz
	goto	u3800
	goto	l2815
u3800:
	
l2791:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u3811
	goto	u3810
u3811:
	goto	l2815
u3810:
	line	142
	
l2793:	
;time_scheduler.h: 141: {
;time_scheduler.h: 142: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l2799
u3820:
	line	144
	
l2795:	
;time_scheduler.h: 143: {
;time_scheduler.h: 144: savedMinutesStart = (savedMinutesStart + 5) % 60;
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
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_savedMinutesStart)	;volatile
	line	145
	
l2797:	
;time_scheduler.h: 145: sprintf(debugInfo, "INC: %02d", savedMinutesStart);
	movlw	((STR_16)-__stringbase)&0ffh
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_setMinutesStart+1)+0
	clrf	(??_setMinutesStart+1)+0+1
	movf	0+(??_setMinutesStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	146
;time_scheduler.h: 146: }
	goto	l212
	line	147
	
l211:	
	
l2799:	
;time_scheduler.h: 147: else if (key == 0b00001110)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l2805
u3830:
	line	149
	
l2801:	
;time_scheduler.h: 148: {
;time_scheduler.h: 149: savedMinutesStart = (savedMinutesStart - 5 + 60) % 60;
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
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_savedMinutesStart)	;volatile
	line	150
	
l2803:	
;time_scheduler.h: 150: sprintf(debugInfo, "DEC: %02d", savedMinutesStart);
	movlw	((STR_17)-__stringbase)&0ffh
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_setMinutesStart+1)+0
	clrf	(??_setMinutesStart+1)+0+1
	movf	0+(??_setMinutesStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	151
;time_scheduler.h: 151: }
	goto	l212
	line	152
	
l213:	
	
l2805:	
;time_scheduler.h: 152: else if (key == 0b00001101)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l212
u3840:
	line	154
	
l2807:	
;time_scheduler.h: 153: {
;time_scheduler.h: 154: sprintf(debugInfo, "SET: %02d", savedMinutesStart);
	movlw	((STR_18)-__stringbase)&0ffh
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesStart),w	;volatile
	movwf	(??_setMinutesStart+1)+0
	clrf	(??_setMinutesStart+1)+0+1
	movf	0+(??_setMinutesStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l212
	line	155
	
l215:	
	goto	l212
	line	157
	
l214:	
	
l212:	
;time_scheduler.h: 155: }
;time_scheduler.h: 157: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	158
	
l2809:	
;time_scheduler.h: 158: lastKeyState = key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_lastKeyState)
	line	160
;time_scheduler.h: 160: while ((PORTB & 0x08) != 0)
	goto	l2813
	
l217:	
	line	162
	
l2811:	
;time_scheduler.h: 161: {
;time_scheduler.h: 162: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutesStart+0)+0+1),f
	movlw	251
movwf	((??_setMinutesStart+0)+0),f
u4337:
	decfsz	((??_setMinutesStart+0)+0),f
	goto	u4337
	decfsz	((??_setMinutesStart+0)+0+1),f
	goto	u4337
	nop2
opt asmopt_on

	goto	l2813
	line	163
	
l216:	
	line	160
	
l2813:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u3851
	goto	u3850
u3851:
	goto	l2811
u3850:
	goto	l221
	
l218:	
	line	164
;time_scheduler.h: 163: }
;time_scheduler.h: 164: }
	goto	l221
	line	165
	
l210:	
	
l2815:	
;time_scheduler.h: 165: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l221
u3860:
	line	167
	
l2817:	
;time_scheduler.h: 166: {
;time_scheduler.h: 167: lastKeyState = 0xFF;
	movlw	(0FFh)
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_lastKeyState)
	goto	l221
	line	168
	
l220:	
	goto	l221
	line	169
	
l219:	
	
l221:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutesStart
	__end_of_setMinutesStart:
	signat	_setMinutesStart,88
	global	_setMinutesEnd

;; *************** function _setMinutesEnd *****************
;; Defined at:
;;		line 171 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	171
global __ptext5
__ptext5:	;psect for function _setMinutesEnd
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	171
	global	__size_of_setMinutesEnd
	__size_of_setMinutesEnd	equ	__end_of_setMinutesEnd-_setMinutesEnd
	
_setMinutesEnd:	
;incstack = 0
	opt	stack 3
; Regs used in _setMinutesEnd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	173
	
l2819:	
;time_scheduler.h: 173: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutesEnd+0)+0
	movlw	03h
u3875:
	clrc
	rrf	(??_setMinutesEnd+0)+0,f
	addlw	-1
	skipz
	goto	u3875
	movf	0+(??_setMinutesEnd+0)+0,w
	andlw	01h
	movwf	(??_setMinutesEnd+1)+0
	movf	(??_setMinutesEnd+1)+0,w
	movwf	(_keyValid)
	line	174
;time_scheduler.h: 174: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setMinutesEnd+0)+0
	movlw	04h
u3885:
	clrc
	rrf	(??_setMinutesEnd+0)+0,f
	addlw	-1
	skipz
	goto	u3885
	movf	0+(??_setMinutesEnd+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutesEnd+1)+0
	movf	(??_setMinutesEnd+1)+0,w
	movwf	(_key)
	line	176
	
l2821:	
;time_scheduler.h: 176: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutesEnd+0)+0+1),f
	movlw	238
movwf	((??_setMinutesEnd+0)+0),f
u4347:
	decfsz	((??_setMinutesEnd+0)+0),f
	goto	u4347
	decfsz	((??_setMinutesEnd+0)+0+1),f
	goto	u4347
	nop
opt asmopt_on

	line	178
	
l2823:	
;time_scheduler.h: 178: if (keyValid && key != lastKeyState)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keyValid),w
	skipz
	goto	u3890
	goto	l2849
u3890:
	
l2825:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l2849
u3900:
	line	180
	
l2827:	
;time_scheduler.h: 179: {
;time_scheduler.h: 180: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l2833
u3910:
	line	182
	
l2829:	
;time_scheduler.h: 181: {
;time_scheduler.h: 182: savedMinutesEnd = (savedMinutesEnd + 5) % 60;
	movlw	low(03Ch)
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_savedMinutesEnd),w	;volatile
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
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_savedMinutesEnd)	;volatile
	line	183
	
l2831:	
;time_scheduler.h: 183: sprintf(debugInfo, "INC: %02d", savedMinutesEnd);
	movlw	((STR_19)-__stringbase)&0ffh
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesEnd),w	;volatile
	movwf	(??_setMinutesEnd+1)+0
	clrf	(??_setMinutesEnd+1)+0+1
	movf	0+(??_setMinutesEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	184
;time_scheduler.h: 184: }
	goto	l226
	line	185
	
l225:	
	
l2833:	
;time_scheduler.h: 185: else if (key == 0b00001110)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l2839
u3920:
	line	187
	
l2835:	
;time_scheduler.h: 186: {
;time_scheduler.h: 187: savedMinutesEnd = (savedMinutesEnd - 5 + 60) % 60;
	movlw	low(03Ch)
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	movf	(_savedMinutesEnd),w	;volatile
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
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_savedMinutesEnd)	;volatile
	line	188
	
l2837:	
;time_scheduler.h: 188: sprintf(debugInfo, "DEC: %02d", savedMinutesEnd);
	movlw	((STR_20)-__stringbase)&0ffh
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesEnd),w	;volatile
	movwf	(??_setMinutesEnd+1)+0
	clrf	(??_setMinutesEnd+1)+0+1
	movf	0+(??_setMinutesEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	189
;time_scheduler.h: 189: }
	goto	l226
	line	190
	
l227:	
	
l2839:	
;time_scheduler.h: 190: else if (key == 0b00001101)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l226
u3930:
	line	192
	
l2841:	
;time_scheduler.h: 191: {
;time_scheduler.h: 192: sprintf(debugInfo, "SET: %02d", savedMinutesEnd);
	movlw	((STR_21)-__stringbase)&0ffh
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedMinutesEnd),w	;volatile
	movwf	(??_setMinutesEnd+1)+0
	clrf	(??_setMinutesEnd+1)+0+1
	movf	0+(??_setMinutesEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setMinutesEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l226
	line	193
	
l229:	
	goto	l226
	line	195
	
l228:	
	
l226:	
;time_scheduler.h: 193: }
;time_scheduler.h: 195: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	196
	
l2843:	
;time_scheduler.h: 196: lastKeyState = key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_lastKeyState)
	line	198
;time_scheduler.h: 198: while ((PORTB & 0x08) != 0)
	goto	l2847
	
l231:	
	line	200
	
l2845:	
;time_scheduler.h: 199: {
;time_scheduler.h: 200: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutesEnd+0)+0+1),f
	movlw	251
movwf	((??_setMinutesEnd+0)+0),f
u4357:
	decfsz	((??_setMinutesEnd+0)+0),f
	goto	u4357
	decfsz	((??_setMinutesEnd+0)+0+1),f
	goto	u4357
	nop2
opt asmopt_on

	goto	l2847
	line	201
	
l230:	
	line	198
	
l2847:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l2845
u3940:
	goto	l235
	
l232:	
	line	202
;time_scheduler.h: 201: }
;time_scheduler.h: 202: }
	goto	l235
	line	203
	
l224:	
	
l2849:	
;time_scheduler.h: 203: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l235
u3950:
	line	205
	
l2851:	
;time_scheduler.h: 204: {
;time_scheduler.h: 205: lastKeyState = 0xFF;
	movlw	(0FFh)
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_lastKeyState)
	goto	l235
	line	206
	
l234:	
	goto	l235
	line	207
	
l233:	
	
l235:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutesEnd
	__end_of_setMinutesEnd:
	signat	_setMinutesEnd,88
	global	_setHoursStart

;; *************** function _setHoursStart *****************
;; Defined at:
;;		line 56 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	56
global __ptext6
__ptext6:	;psect for function _setHoursStart
psect	text6
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	56
	global	__size_of_setHoursStart
	__size_of_setHoursStart	equ	__end_of_setHoursStart-_setHoursStart
	
_setHoursStart:	
;incstack = 0
	opt	stack 3
; Regs used in _setHoursStart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	58
	
l2717:	
;time_scheduler.h: 58: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHoursStart+0)+0
	movlw	03h
u3605:
	clrc
	rrf	(??_setHoursStart+0)+0,f
	addlw	-1
	skipz
	goto	u3605
	movf	0+(??_setHoursStart+0)+0,w
	andlw	01h
	movwf	(??_setHoursStart+1)+0
	movf	(??_setHoursStart+1)+0,w
	movwf	(_keyValid)
	line	59
;time_scheduler.h: 59: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setHoursStart+0)+0
	movlw	04h
u3615:
	clrc
	rrf	(??_setHoursStart+0)+0,f
	addlw	-1
	skipz
	goto	u3615
	movf	0+(??_setHoursStart+0)+0,w
	andlw	0Fh
	movwf	(??_setHoursStart+1)+0
	movf	(??_setHoursStart+1)+0,w
	movwf	(_key)
	line	61
	
l2719:	
;time_scheduler.h: 61: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHoursStart+0)+0+1),f
	movlw	238
movwf	((??_setHoursStart+0)+0),f
u4367:
	decfsz	((??_setHoursStart+0)+0),f
	goto	u4367
	decfsz	((??_setHoursStart+0)+0+1),f
	goto	u4367
	nop
opt asmopt_on

	line	63
	
l2721:	
;time_scheduler.h: 63: if (keyValid && key != lastKeyState)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keyValid),w
	skipz
	goto	u3620
	goto	l2747
u3620:
	
l2723:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u3631
	goto	u3630
u3631:
	goto	l2747
u3630:
	line	65
	
l2725:	
;time_scheduler.h: 64: {
;time_scheduler.h: 65: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l2731
u3640:
	line	67
	
l2727:	
;time_scheduler.h: 66: {
;time_scheduler.h: 67: savedHoursStart = (savedHoursStart + 1) % 24;
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
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_savedHoursStart)	;volatile
	line	68
	
l2729:	
;time_scheduler.h: 68: sprintf(debugInfo, "INC: %02d", savedHoursStart);
	movlw	((STR_10)-__stringbase)&0ffh
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_setHoursStart+1)+0
	clrf	(??_setHoursStart+1)+0+1
	movf	0+(??_setHoursStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	69
;time_scheduler.h: 69: }
	goto	l184
	line	70
	
l183:	
	
l2731:	
;time_scheduler.h: 70: else if (key == 0b00001110)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l2737
u3650:
	line	72
	
l2733:	
;time_scheduler.h: 71: {
;time_scheduler.h: 72: savedHoursStart = (savedHoursStart - 1 + 24) % 24;
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
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_savedHoursStart)	;volatile
	line	73
	
l2735:	
;time_scheduler.h: 73: sprintf(debugInfo, "DEC: %02d", savedHoursStart);
	movlw	((STR_11)-__stringbase)&0ffh
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_setHoursStart+1)+0
	clrf	(??_setHoursStart+1)+0+1
	movf	0+(??_setHoursStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	74
;time_scheduler.h: 74: }
	goto	l184
	line	75
	
l185:	
	
l2737:	
;time_scheduler.h: 75: else if (key == 0b00001101)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l184
u3660:
	line	77
	
l2739:	
;time_scheduler.h: 76: {
;time_scheduler.h: 77: sprintf(debugInfo, "SET: %02d", savedHoursStart);
	movlw	((STR_12)-__stringbase)&0ffh
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursStart),w	;volatile
	movwf	(??_setHoursStart+1)+0
	clrf	(??_setHoursStart+1)+0+1
	movf	0+(??_setHoursStart+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursStart+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l184
	line	79
	
l187:	
	goto	l184
	line	81
	
l186:	
	
l184:	
;time_scheduler.h: 79: }
;time_scheduler.h: 81: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	82
	
l2741:	
;time_scheduler.h: 82: lastKeyState = key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_lastKeyState)
	line	84
;time_scheduler.h: 84: while ((PORTB & 0x08) != 0)
	goto	l2745
	
l189:	
	line	86
	
l2743:	
;time_scheduler.h: 85: {
;time_scheduler.h: 86: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHoursStart+0)+0+1),f
	movlw	251
movwf	((??_setHoursStart+0)+0),f
u4377:
	decfsz	((??_setHoursStart+0)+0),f
	goto	u4377
	decfsz	((??_setHoursStart+0)+0+1),f
	goto	u4377
	nop2
opt asmopt_on

	goto	l2745
	line	87
	
l188:	
	line	84
	
l2745:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u3671
	goto	u3670
u3671:
	goto	l2743
u3670:
	goto	l193
	
l190:	
	line	88
;time_scheduler.h: 87: }
;time_scheduler.h: 88: }
	goto	l193
	line	89
	
l182:	
	
l2747:	
;time_scheduler.h: 89: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l193
u3680:
	line	91
	
l2749:	
;time_scheduler.h: 90: {
;time_scheduler.h: 91: lastKeyState = 0xFF;
	movlw	(0FFh)
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_lastKeyState)
	goto	l193
	line	92
	
l192:	
	goto	l193
	line	93
	
l191:	
	
l193:	
	return
	opt stack 0
GLOBAL	__end_of_setHoursStart
	__end_of_setHoursStart:
	signat	_setHoursStart,88
	global	_setHoursEnd

;; *************** function _setHoursEnd *****************
;; Defined at:
;;		line 95 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	95
global __ptext7
__ptext7:	;psect for function _setHoursEnd
psect	text7
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	95
	global	__size_of_setHoursEnd
	__size_of_setHoursEnd	equ	__end_of_setHoursEnd-_setHoursEnd
	
_setHoursEnd:	
;incstack = 0
	opt	stack 3
; Regs used in _setHoursEnd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	97
	
l2751:	
;time_scheduler.h: 97: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHoursEnd+0)+0
	movlw	03h
u3695:
	clrc
	rrf	(??_setHoursEnd+0)+0,f
	addlw	-1
	skipz
	goto	u3695
	movf	0+(??_setHoursEnd+0)+0,w
	andlw	01h
	movwf	(??_setHoursEnd+1)+0
	movf	(??_setHoursEnd+1)+0,w
	movwf	(_keyValid)
	line	98
;time_scheduler.h: 98: key = (PORTB & 0xF0) >> 4;
	movf	(6),w	;volatile
	movwf	(??_setHoursEnd+0)+0
	movlw	04h
u3705:
	clrc
	rrf	(??_setHoursEnd+0)+0,f
	addlw	-1
	skipz
	goto	u3705
	movf	0+(??_setHoursEnd+0)+0,w
	andlw	0Fh
	movwf	(??_setHoursEnd+1)+0
	movf	(??_setHoursEnd+1)+0,w
	movwf	(_key)
	line	100
	
l2753:	
;time_scheduler.h: 100: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHoursEnd+0)+0+1),f
	movlw	238
movwf	((??_setHoursEnd+0)+0),f
u4387:
	decfsz	((??_setHoursEnd+0)+0),f
	goto	u4387
	decfsz	((??_setHoursEnd+0)+0+1),f
	goto	u4387
	nop
opt asmopt_on

	line	102
	
l2755:	
;time_scheduler.h: 102: if (keyValid && key != lastKeyState)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keyValid),w
	skipz
	goto	u3710
	goto	l2781
u3710:
	
l2757:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u3721
	goto	u3720
u3721:
	goto	l2781
u3720:
	line	104
	
l2759:	
;time_scheduler.h: 103: {
;time_scheduler.h: 104: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l2765
u3730:
	line	106
	
l2761:	
;time_scheduler.h: 105: {
;time_scheduler.h: 106: savedHoursEnd = (savedHoursEnd + 1) % 24;
	movlw	low(018h)
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	movf	(_savedHoursEnd),w	;volatile
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
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_savedHoursEnd)	;volatile
	line	107
	
l2763:	
;time_scheduler.h: 107: sprintf(debugInfo, "INC: %02d", savedHoursEnd);
	movlw	((STR_13)-__stringbase)&0ffh
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursEnd),w	;volatile
	movwf	(??_setHoursEnd+1)+0
	clrf	(??_setHoursEnd+1)+0+1
	movf	0+(??_setHoursEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	108
;time_scheduler.h: 108: }
	goto	l198
	line	109
	
l197:	
	
l2765:	
;time_scheduler.h: 109: else if (key == 0b00001110)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l2771
u3740:
	line	111
	
l2767:	
;time_scheduler.h: 110: {
;time_scheduler.h: 111: savedHoursEnd = (savedHoursEnd - 1 + 24) % 24;
	movlw	low(018h)
	movwf	(___awmod@divisor)
	movlw	high(018h)
	movwf	((___awmod@divisor))+1
	movf	(_savedHoursEnd),w	;volatile
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
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_savedHoursEnd)	;volatile
	line	112
	
l2769:	
;time_scheduler.h: 112: sprintf(debugInfo, "DEC: %02d", savedHoursEnd);
	movlw	((STR_14)-__stringbase)&0ffh
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursEnd),w	;volatile
	movwf	(??_setHoursEnd+1)+0
	clrf	(??_setHoursEnd+1)+0+1
	movf	0+(??_setHoursEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	113
;time_scheduler.h: 113: }
	goto	l198
	line	114
	
l199:	
	
l2771:	
;time_scheduler.h: 114: else if (key == 0b00001101)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l198
u3750:
	line	116
	
l2773:	
;time_scheduler.h: 115: {
;time_scheduler.h: 116: sprintf(debugInfo, "SET: %02d", savedHoursEnd);
	movlw	((STR_15)-__stringbase)&0ffh
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(sprintf@f)
	movf	(_savedHoursEnd),w	;volatile
	movwf	(??_setHoursEnd+1)+0
	clrf	(??_setHoursEnd+1)+0+1
	movf	0+(??_setHoursEnd+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_setHoursEnd+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l198
	line	117
	
l201:	
	goto	l198
	line	119
	
l200:	
	
l198:	
;time_scheduler.h: 117: }
;time_scheduler.h: 119: printToLCD(debugInfo);
	movlw	(_debugInfo&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	120
	
l2775:	
;time_scheduler.h: 120: lastKeyState = key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_key),w
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_lastKeyState)
	line	122
;time_scheduler.h: 122: while ((PORTB & 0x08) != 0)
	goto	l2779
	
l203:	
	line	124
	
l2777:	
;time_scheduler.h: 123: {
;time_scheduler.h: 124: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHoursEnd+0)+0+1),f
	movlw	251
movwf	((??_setHoursEnd+0)+0),f
u4397:
	decfsz	((??_setHoursEnd+0)+0),f
	goto	u4397
	decfsz	((??_setHoursEnd+0)+0+1),f
	goto	u4397
	nop2
opt asmopt_on

	goto	l2779
	line	125
	
l202:	
	line	122
	
l2779:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u3761
	goto	u3760
u3761:
	goto	l2777
u3760:
	goto	l207
	
l204:	
	line	126
;time_scheduler.h: 125: }
;time_scheduler.h: 126: }
	goto	l207
	line	127
	
l196:	
	
l2781:	
;time_scheduler.h: 127: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l207
u3770:
	line	129
	
l2783:	
;time_scheduler.h: 128: {
;time_scheduler.h: 129: lastKeyState = 0xFF;
	movlw	(0FFh)
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_lastKeyState)
	goto	l207
	line	130
	
l206:	
	goto	l207
	line	131
	
l205:	
	
l207:	
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___awmod
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2529:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l2531:	
	btfss	(___awmod@dividend+1),7
	goto	u3281
	goto	u3280
u3281:
	goto	l2537
u3280:
	line	15
	
l2533:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2535:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2537
	line	17
	
l598:	
	line	18
	
l2537:	
	btfss	(___awmod@divisor+1),7
	goto	u3291
	goto	u3290
u3291:
	goto	l2541
u3290:
	line	19
	
l2539:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2541
	
l599:	
	line	20
	
l2541:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l2559
u3300:
	line	21
	
l2543:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2549
	
l602:	
	line	23
	
l2545:	
	movlw	01h
	
u3315:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3315
	line	24
	
l2547:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2549
	line	25
	
l601:	
	line	22
	
l2549:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l2545
u3320:
	goto	l2551
	
l603:	
	goto	l2551
	line	26
	
l604:	
	line	27
	
l2551:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3335
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3335:
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l2555
u3330:
	line	28
	
l2553:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2555
	
l605:	
	line	29
	
l2555:	
	movlw	01h
	
u3345:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3345
	line	30
	
l2557:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l2551
u3350:
	goto	l2559
	
l606:	
	goto	l2559
	line	31
	
l600:	
	line	32
	
l2559:	
	movf	(___awmod@sign),w
	skipz
	goto	u3360
	goto	l2563
u3360:
	line	33
	
l2561:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2563
	
l607:	
	line	34
	
l2563:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l608
	
l2565:	
	line	35
	
l608:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_runMQ135

;; *************** function _runMQ135 *****************
;; Defined at:
;;		line 32 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
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
;;		_readADC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	32
global __ptext9
__ptext9:	;psect for function _runMQ135
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	32
	global	__size_of_runMQ135
	__size_of_runMQ135	equ	__end_of_runMQ135-_runMQ135
	
_runMQ135:	
;incstack = 0
	opt	stack 2
; Regs used in _runMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l2667:	
;mq135_module.h: 34: PPM = CalcMQ135(readADC(0));
	movlw	(0)
	fcall	_readADC
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_readADC)),w
	clrf	(CalcMQ135@RAW_ADC+1)
	addwf	(CalcMQ135@RAW_ADC+1)
	movf	(0+(?_readADC)),w
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
	line	35
	
l133:	
	return
	opt stack 0
GLOBAL	__end_of_runMQ135
	__end_of_runMQ135:
	signat	_runMQ135,88
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 23 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\common_dependencies.h"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_runMQ135
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,inline
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\common_dependencies.h"
	line	23
global __ptext10
__ptext10:	;psect for function _readADC
psect	text10
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\common_dependencies.h"
	line	23
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	stack 4
; Regs used in _readADC: [wreg+status,2+status,0]
;readADC@channel stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readADC@channel)
	line	25
	
l2269:	
;common_dependencies.h: 25: ADCON0 &= 0xC3;
	movlw	(0C3h)
	movwf	(??_readADC+0)+0
	movf	(??_readADC+0)+0,w
	andwf	(31),f	;volatile
	line	26
;common_dependencies.h: 26: ADCON0 |= (channel << 3);
	movf	(readADC@channel),w
	movwf	(??_readADC+0)+0
	movlw	(03h)-1
u2925:
	clrc
	rlf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u2925
	clrc
	rlf	(??_readADC+0)+0,w
	movwf	(??_readADC+1)+0
	movf	(??_readADC+1)+0,w
	iorwf	(31),f	;volatile
	line	27
	
l2271:	
;common_dependencies.h: 27: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_readADC+0)+0,f
u4407:
decfsz	(??_readADC+0)+0,f
	goto	u4407
	nop
opt asmopt_on

	line	28
	
l2273:	
;common_dependencies.h: 28: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	29
;common_dependencies.h: 29: while (GO_DONE)
	goto	l69
	
l70:	
	line	30
;common_dependencies.h: 30: ;
	
l69:	
	line	29
	btfsc	(250/8),(250)&7	;volatile
	goto	u2931
	goto	u2930
u2931:
	goto	l69
u2930:
	goto	l2275
	
l71:	
	line	31
	
l2275:	
;common_dependencies.h: 31: return ((ADRESH << 8) + ADRESL);
	movf	(30),w	;volatile
	clrf	(?_readADC+1)
	addwf	(?_readADC+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_readADC)
	addwf	(?_readADC)

	goto	l72
	
l2277:	
	line	32
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_CalcMQ135

;; *************** function _CalcMQ135 *****************
;; Defined at:
;;		line 93 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;  RAW_ADC         2   49[BANK0 ] int 
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
;;                  3   49[BANK0 ] float 
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	93
global __ptext11
__ptext11:	;psect for function _CalcMQ135
psect	text11
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	93
	global	__size_of_CalcMQ135
	__size_of_CalcMQ135	equ	__end_of_CalcMQ135-_CalcMQ135
	
_CalcMQ135:	
;incstack = 0
	opt	stack 2
; Regs used in _CalcMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	95
	
l2523:	
;mq135_module.h: 95: float voltage = (RAW_ADC * 5.0) / 1023.0;
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
	line	96
;mq135_module.h: 96: float ratio = voltage / 5.0;
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
	line	99
;mq135_module.h: 99: float ratio2 = ratio * ratio;
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
	line	100
;mq135_module.h: 100: float ratio3 = ratio2 * ratio;
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
	line	101
;mq135_module.h: 101: float ratio4 = ratio3 * ratio;
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
	line	102
;mq135_module.h: 102: float ratio5 = ratio4 * ratio;
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
	line	103
;mq135_module.h: 103: float ratio6 = ratio5 * ratio;
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
	line	107
;mq135_module.h: 106: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 107: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movwf	(_CalcMQ135$765)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$765+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$765+2)^080h
;mq135_module.h: 106: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 107: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$765)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$765+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$765+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$766)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$766+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$766+2)^080h
;mq135_module.h: 106: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 107: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$766)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$766+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$766+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$767)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$767+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$767+2)^080h
;mq135_module.h: 106: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 107: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$767)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$767+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$767+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$768)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$768+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$768+2)^080h
;mq135_module.h: 106: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 107: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$768)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$768+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$768+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$769)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$769+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$769+2)^080h
;mq135_module.h: 106: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * ratio2) + (0.0018 * ratio3) +
;mq135_module.h: 107: (-0.003333333 * ratio4) + (-0.001923077 * ratio5) + (1.130128205 * ratio6);
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
	movf	(_CalcMQ135$769)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$769+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$769+2)^080h,w
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
	line	109
;mq135_module.h: 109: co2 *= 415.58;
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
	line	110
	
l2525:	
;mq135_module.h: 110: return co2;
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
	goto	l151
	
l2527:	
	line	111
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_CalcMQ135
	__end_of_CalcMQ135:
	signat	_CalcMQ135,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   33[BANK0 ] float 
;;  f1              3   36[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   44[BANK0 ] float 
;;  sign            1   48[BANK0 ] unsigned char 
;;  exp             1   47[BANK0 ] unsigned char 
;;  cntr            1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   33[BANK0 ] float 
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
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext12
__ptext12:	;psect for function ___ftdiv
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2129:	
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
	goto	u2571
	goto	u2570
u2571:
	goto	l2135
u2570:
	line	56
	
l2131:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l670
	
l2133:	
	goto	l670
	
l669:	
	line	57
	
l2135:	
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
	goto	u2581
	goto	u2580
u2581:
	goto	l2141
u2580:
	line	58
	
l2137:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l670
	
l2139:	
	goto	l670
	
l671:	
	line	59
	
l2141:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2143:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2145:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2595:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2590:
	addlw	-1
	skipz
	goto	u2595
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2147:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2605:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2600:
	addlw	-1
	skipz
	goto	u2605
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2149:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2151:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2153:	
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
	goto	l2155
	line	69
	
l672:	
	line	70
	
l2155:	
	movlw	01h
u2615:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2615
	line	71
	
l2157:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2625
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2625
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2163
u2620:
	line	72
	
l2159:	
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
	
l2161:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2163
	line	74
	
l673:	
	line	75
	
l2163:	
	movlw	01h
u2635:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2635
	line	76
	
l2165:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2155
u2640:
	goto	l2167
	
l674:	
	line	77
	
l2167:	
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
	goto	l670
	
l2169:	
	line	78
	
l670:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	_runDHT11

;; *************** function _runDHT11 *****************
;; Defined at:
;;		line 94 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
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
;;		_instCTRL
;;		_printToLCD
;;		_readDHT11
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	94
global __ptext13
__ptext13:	;psect for function _runDHT11
psect	text13
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	94
	global	__size_of_runDHT11
	__size_of_runDHT11	equ	__end_of_runDHT11-_runDHT11
	
_runDHT11:	
;incstack = 0
	opt	stack 3
; Regs used in _runDHT11: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	96
	
l2651:	
;dht11_module.h: 96: if (readDHT11(&temperature, &humidity))
	movlw	(_humidity)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_runDHT11+0)+0
	movf	(??_runDHT11+0)+0,w
	movwf	(readDHT11@humidity)
	movlw	(_temperature)&0ffh
	fcall	_readDHT11
	xorlw	0
	skipnz
	goto	u3531
	goto	u3530
u3531:
	goto	l2655
u3530:
	goto	l2659
	line	99
	
l2653:	
;dht11_module.h: 97: {
;dht11_module.h: 99: }
	goto	l2659
	line	100
	
l119:	
	line	102
	
l2655:	
;dht11_module.h: 100: else
;dht11_module.h: 101: {
;dht11_module.h: 102: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	103
;dht11_module.h: 103: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	104
	
l2657:	
;dht11_module.h: 104: printToLCD("ERROR!");
	movlw	low((STR_3)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	goto	l2659
	line	105
	
l120:	
	line	106
	
l2659:	
;dht11_module.h: 105: }
;dht11_module.h: 106: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_runDHT11+0)+0+2),f
movlw	138
movwf	((??_runDHT11+0)+0+1),f
	movlw	86
movwf	((??_runDHT11+0)+0),f
u4417:
	decfsz	((??_runDHT11+0)+0),f
	goto	u4417
	decfsz	((??_runDHT11+0)+0+1),f
	goto	u4417
	decfsz	((??_runDHT11+0)+0+2),f
	goto	u4417
	nop2
opt asmopt_on

	line	107
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_runDHT11
	__end_of_runDHT11:
	signat	_runDHT11,88
	global	_readDHT11

;; *************** function _readDHT11 *****************
;; Defined at:
;;		line 27 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
;; Parameters:    Size  Location     Type
;;  temperature     1    wreg     PTR unsigned char 
;;		 -> temperature(1), 
;;  humidity        1    0[BANK0 ] PTR unsigned char 
;;		 -> humidity(1), 
;; Auto vars:     Size  Location     Type
;;  temperature     1    7[BANK0 ] PTR unsigned char 
;;		 -> temperature(1), 
;;  bits            5    8[BANK0 ] unsigned char [5]
;;  j               1   14[BANK0 ] unsigned char 
;;  i               1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_runDHT11
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	27
global __ptext14
__ptext14:	;psect for function _readDHT11
psect	text14
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	27
	global	__size_of_readDHT11
	__size_of_readDHT11	equ	__end_of_readDHT11-_readDHT11
	
_readDHT11:	
;incstack = 0
	opt	stack 4
; Regs used in _readDHT11: [wreg-fsr0h+status,2+status,0]
;readDHT11@temperature stored from wreg
	line	28
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(readDHT11@temperature)
	line	29
	
l2301:	
;dht11_module.h: 29: uint8_t bits[5] = {0};
	movlw	(readDHT11@bits)&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(readDHT11@F1216)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	(readDHT11@F1216)^080h+1,w
	movwf	indf
	incf	fsr0,f
	movf	(readDHT11@F1216)^080h+2,w
	movwf	indf
	incf	fsr0,f
	movf	(readDHT11@F1216)^080h+3,w
	movwf	indf
	incf	fsr0,f
	movf	(readDHT11@F1216)^080h+4,w
	movwf	indf
	line	33
	
l2303:	
;dht11_module.h: 30: uint8_t i, j;
;dht11_module.h: 33: TRISBbits.TRISB2 = 0;
	bcf	(134)^080h,2	;volatile
	line	34
	
l2305:	
;dht11_module.h: 34: PORTBbits.RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	35
	
l2307:	
;dht11_module.h: 35: _delay((unsigned long)((18)*(4000000/4000.0)));
	opt asmopt_off
movlw	24
movwf	((??_readDHT11+0)+0+1),f
	movlw	95
movwf	((??_readDHT11+0)+0),f
u4427:
	decfsz	((??_readDHT11+0)+0),f
	goto	u4427
	decfsz	((??_readDHT11+0)+0+1),f
	goto	u4427
opt asmopt_on

	line	36
	
l2309:	
;dht11_module.h: 36: PORTBbits.RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),2	;volatile
	line	37
	
l2311:	
;dht11_module.h: 37: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_readDHT11+0)+0,f
u4437:
decfsz	(??_readDHT11+0)+0,f
	goto	u4437
	nop
opt asmopt_on

	line	38
	
l2313:	
;dht11_module.h: 38: TRISBbits.TRISB2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h,2	;volatile
	line	41
	
l2315:	
;dht11_module.h: 41: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_readDHT11+0)+0,f
u4447:
decfsz	(??_readDHT11+0)+0,f
	goto	u4447
opt asmopt_on

	line	42
	
l2317:	
;dht11_module.h: 42: if (PORTBbits.RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),2	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l2323
u2950:
	line	43
	
l2319:	
;dht11_module.h: 43: return 0;
	movlw	(0)
	goto	l100
	
l2321:	
	goto	l100
	
l99:	
	line	44
	
l2323:	
;dht11_module.h: 44: _delay((unsigned long)((80)*(4000000/4000000.0)));
	opt asmopt_off
movlw	26
movwf	(??_readDHT11+0)+0,f
u4457:
decfsz	(??_readDHT11+0)+0,f
	goto	u4457
	nop
opt asmopt_on

	line	45
	
l2325:	
;dht11_module.h: 45: if (!PORTBbits.RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),2	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l2331
u2960:
	line	46
	
l2327:	
;dht11_module.h: 46: return 0;
	movlw	(0)
	goto	l100
	
l2329:	
	goto	l100
	
l101:	
	line	47
	
l2331:	
;dht11_module.h: 47: _delay((unsigned long)((80)*(4000000/4000000.0)));
	opt asmopt_off
movlw	26
movwf	(??_readDHT11+0)+0,f
u4467:
decfsz	(??_readDHT11+0)+0,f
	goto	u4467
	nop
opt asmopt_on

	line	50
	
l2333:	
;dht11_module.h: 50: for (j = 0; j < 5; j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(readDHT11@j)
	
l2335:	
	movlw	(05h)
	subwf	(readDHT11@j),w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l2339
u2970:
	goto	l2359
	
l2337:	
	goto	l2359
	line	51
	
l102:	
	line	52
	
l2339:	
;dht11_module.h: 51: {
;dht11_module.h: 52: for (i = 0; i < 8; i++)
	clrf	(readDHT11@i)
	
l2341:	
	movlw	(08h)
	subwf	(readDHT11@i),w
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l106
u2980:
	goto	l2355
	
l2343:	
	goto	l2355
	line	53
	
l104:	
	line	54
;dht11_module.h: 53: {
;dht11_module.h: 54: while (!PORTBbits.RB2)
	goto	l106
	
l107:	
	line	55
;dht11_module.h: 55: ;
	
l106:	
	line	54
	btfss	(6),2	;volatile
	goto	u2991
	goto	u2990
u2991:
	goto	l106
u2990:
	goto	l2345
	
l108:	
	line	56
	
l2345:	
;dht11_module.h: 56: _delay((unsigned long)((30)*(4000000/4000000.0)));
	opt asmopt_off
movlw	9
movwf	(??_readDHT11+0)+0,f
u4477:
decfsz	(??_readDHT11+0)+0,f
	goto	u4477
	nop2	;nop
opt asmopt_on

	line	57
	
l2347:	
;dht11_module.h: 57: if (PORTBbits.RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),2	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l2351
u3000:
	line	59
	
l2349:	
;dht11_module.h: 58: {
;dht11_module.h: 59: bits[j] |= (1 << (7 - i));
	movlw	(01h)
	movwf	(??_readDHT11+0)+0
	decf	(readDHT11@i),w
	xorlw	0ffh
	addlw	07h
	addlw	1
	goto	u3014
u3015:
	clrc
	rlf	(??_readDHT11+0)+0,f
u3014:
	addlw	-1
	skipz
	goto	u3015
	movf	0+(??_readDHT11+0)+0,w
	movwf	(??_readDHT11+1)+0
	movf	(readDHT11@j),w
	addlw	readDHT11@bits&0ffh
	movwf	fsr0
	movf	(??_readDHT11+1)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,f
	line	60
;dht11_module.h: 60: while (PORTBbits.RB2)
	goto	l110
	
l111:	
	line	61
;dht11_module.h: 61: ;
	
l110:	
	line	60
	btfsc	(6),2	;volatile
	goto	u3021
	goto	u3020
u3021:
	goto	l110
u3020:
	goto	l2351
	
l112:	
	goto	l2351
	line	62
	
l109:	
	line	52
	
l2351:	
	movlw	(01h)
	movwf	(??_readDHT11+0)+0
	movf	(??_readDHT11+0)+0,w
	addwf	(readDHT11@i),f
	
l2353:	
	movlw	(08h)
	subwf	(readDHT11@i),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l106
u3030:
	goto	l2355
	
l105:	
	line	50
	
l2355:	
	movlw	(01h)
	movwf	(??_readDHT11+0)+0
	movf	(??_readDHT11+0)+0,w
	addwf	(readDHT11@j),f
	
l2357:	
	movlw	(05h)
	subwf	(readDHT11@j),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l2339
u3040:
	goto	l2359
	
l103:	
	line	67
	
l2359:	
;dht11_module.h: 62: }
;dht11_module.h: 63: }
;dht11_module.h: 64: }
;dht11_module.h: 67: if (bits[4] != (bits[0] + bits[1] + bits[2] + bits[3]))
	movf	(readDHT11@bits),w
	addwf	0+(readDHT11@bits)+01h,w
	movwf	(??_readDHT11+0)+0
	clrf	(??_readDHT11+0)+0+1
	rlf	1+(??_readDHT11+0)+0,f
	
	movf	0+(readDHT11@bits)+02h,w
	addwf	0+(??_readDHT11+0)+0,w
	movwf	(??_readDHT11+2)+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_readDHT11+0)+0,w
	movwf	1+(??_readDHT11+2)+0
	movf	0+(readDHT11@bits)+03h,w
	addwf	0+(??_readDHT11+2)+0,w
	movwf	(??_readDHT11+4)+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_readDHT11+2)+0,w
	movwf	1+(??_readDHT11+4)+0
	movf	0+(readDHT11@bits)+04h,w
	xorwf	0+(??_readDHT11+4)+0,w
	iorwf	1+(??_readDHT11+4)+0,w
	skipnz
	goto	u3051
	goto	u3050
u3051:
	goto	l2365
u3050:
	line	68
	
l2361:	
;dht11_module.h: 68: return 0;
	movlw	(0)
	goto	l100
	
l2363:	
	goto	l100
	
l113:	
	line	70
	
l2365:	
;dht11_module.h: 70: *humidity = bits[0];
	movf	(readDHT11@bits),w
	movwf	(??_readDHT11+0)+0
	movf	(readDHT11@humidity),w
	movwf	fsr0
	movf	(??_readDHT11+0)+0,w
	movwf	indf
	line	71
;dht11_module.h: 71: *temperature = bits[2];
	movf	0+(readDHT11@bits)+02h,w
	movwf	(??_readDHT11+0)+0
	movf	(readDHT11@temperature),w
	movwf	fsr0
	movf	(??_readDHT11+0)+0,w
	movwf	indf
	line	73
	
l2367:	
;dht11_module.h: 73: return 1;
	movlw	(01h)
	goto	l100
	
l2369:	
	line	74
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_readDHT11
	__end_of_readDHT11:
	signat	_readDHT11,8313
	global	_runClock

;; *************** function _runClock *****************
;; Defined at:
;;		line 34 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
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
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	34
global __ptext15
__ptext15:	;psect for function _runClock
psect	text15
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	34
	global	__size_of_runClock
	__size_of_runClock	equ	__end_of_runClock-_runClock
	
_runClock:	
;incstack = 0
	opt	stack 5
; Regs used in _runClock: [wreg+status,2+status,0]
	line	37
	
l2701:	
;time_scheduler.h: 37: minutes++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_minutes),f	;volatile
	line	38
	
l2703:	
;time_scheduler.h: 38: if (minutes >= 60)
	movlw	(03Ch)
	subwf	(_minutes),w	;volatile
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l2713
u3580:
	line	40
	
l2705:	
;time_scheduler.h: 39: {
;time_scheduler.h: 40: minutes = 0;
	clrf	(_minutes)	;volatile
	line	41
	
l2707:	
;time_scheduler.h: 41: hours++;
	movlw	(01h)
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_hours),f	;volatile
	line	42
	
l2709:	
;time_scheduler.h: 42: if (hours >= 24)
	movlw	(018h)
	subwf	(_hours),w	;volatile
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l2713
u3590:
	line	44
	
l2711:	
;time_scheduler.h: 43: {
;time_scheduler.h: 44: hours = 0;
	clrf	(_hours)	;volatile
	goto	l2713
	line	45
	
l175:	
	goto	l2713
	line	46
	
l174:	
	line	47
	
l2713:	
;time_scheduler.h: 45: }
;time_scheduler.h: 46: }
;time_scheduler.h: 47: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_runClock+0)+0+1),f
	movlw	221
movwf	((??_runClock+0)+0),f
u4487:
	decfsz	((??_runClock+0)+0),f
	goto	u4487
	decfsz	((??_runClock+0)+0+1),f
	goto	u4487
	nop2
opt asmopt_on

	line	48
	
l176:	
	return
	opt stack 0
GLOBAL	__end_of_runClock
	__end_of_runClock:
	signat	_runClock,88
	global	_initRegisters

;; *************** function _initRegisters *****************
;; Defined at:
;;		line 147 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	147
global __ptext16
__ptext16:	;psect for function _initRegisters
psect	text16
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	147
	global	__size_of_initRegisters
	__size_of_initRegisters	equ	__end_of_initRegisters-_initRegisters
	
_initRegisters:	
;incstack = 0
	opt	stack 5
; Regs used in _initRegisters: [wreg]
	line	150
	
l2899:	
;main.c: 150: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	151
;main.c: 151: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	152
	
l303:	
	return
	opt stack 0
GLOBAL	__end_of_initRegisters
	__end_of_initRegisters:
	signat	_initRegisters,88
	global	_initPorts

;; *************** function _initPorts *****************
;; Defined at:
;;		line 138 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1
	line	138
global __ptext17
__ptext17:	;psect for function _initPorts
psect	text17
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	138
	global	__size_of_initPorts
	__size_of_initPorts	equ	__end_of_initPorts-_initPorts
	
_initPorts:	
;incstack = 0
	opt	stack 5
; Regs used in _initPorts: [wreg+status,2]
	line	140
	
l2893:	
;main.c: 140: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	141
;main.c: 141: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	142
	
l2895:	
;main.c: 142: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	143
	
l2897:	
;main.c: 143: PORTC = 0b00111000;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	144
;main.c: 144: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	145
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_initPorts
	__end_of_initPorts:
	signat	_initPorts,88
	global	_initInterrupts

;; *************** function _initInterrupts *****************
;; Defined at:
;;		line 154 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1
	line	154
global __ptext18
__ptext18:	;psect for function _initInterrupts
psect	text18
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	154
	global	__size_of_initInterrupts
	__size_of_initInterrupts	equ	__end_of_initInterrupts-_initInterrupts
	
_initInterrupts:	
;incstack = 0
	opt	stack 5
; Regs used in _initInterrupts: []
	line	156
	
l2901:	
;main.c: 156: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	157
;main.c: 157: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	158
;main.c: 158: INTEDG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	159
;main.c: 159: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	160
;main.c: 160: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	161
	
l306:	
	return
	opt stack 0
GLOBAL	__end_of_initInterrupts
	__end_of_initInterrupts:
	signat	_initInterrupts,88
	global	_handlePPM

;; *************** function _handlePPM *****************
;; Defined at:
;;		line 54 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	54
global __ptext19
__ptext19:	;psect for function _handlePPM
psect	text19
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	54
	global	__size_of_handlePPM
	__size_of_handlePPM	equ	__end_of_handlePPM-_handlePPM
	
_handlePPM:	
;incstack = 0
	opt	stack 4
; Regs used in _handlePPM: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2691:	
;mq135_module.h: 56: if (PPM > 9)
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
	goto	u3571
	goto	u3570
u3571:
	goto	l140
u3570:
	line	58
	
l2693:	
;mq135_module.h: 57: {
;mq135_module.h: 58: PORTCbits.RC5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),5	;volatile
	line	59
;mq135_module.h: 59: ppmFlag = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ppmFlag)^080h
	incf	(_ppmFlag)^080h,f
	line	60
;mq135_module.h: 60: return 1;
;	Return value of _handlePPM is never used
	goto	l141
	line	61
	
l2695:	
;mq135_module.h: 61: }
	goto	l141
	line	62
	
l140:	
	line	64
;mq135_module.h: 62: else
;mq135_module.h: 63: {
;mq135_module.h: 64: PORTCbits.RC5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),5	;volatile
	line	65
	
l2697:	
;mq135_module.h: 65: ppmFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ppmFlag)^080h
	goto	l141
	line	66
	
l2699:	
;mq135_module.h: 66: return 0;
;	Return value of _handlePPM is never used
	goto	l141
	line	67
	
l142:	
	line	68
	
l141:	
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
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext20
__ptext20:	;psect for function ___ftge
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2567:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2571
u3370:
	line	7
	
l2569:	
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
	goto	u3381
	goto	u3382
u3381:
	addwf	(??___ftge+0)+1,f
	
u3382:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3383
	goto	u3384
u3383:
	addwf	(??___ftge+0)+2,f
	
u3384:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2571
	
l677:	
	line	8
	
l2571:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l2575
u3390:
	line	9
	
l2573:	
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
	goto	u3401
	goto	u3402
u3401:
	addwf	(??___ftge+0)+1,f
	
u3402:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3403
	goto	u3404
u3403:
	addwf	(??___ftge+0)+2,f
	
u3404:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2575
	
l678:	
	line	10
	
l2575:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2577:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2579:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3415
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3415
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3415:
	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l2583
u3410:
	
l2581:	
	clrc
	
	goto	l679
	
l1967:	
	
l2583:	
	setc
	
	goto	l679
	
l1969:	
	goto	l679
	
l2585:	
	line	13
	
l679:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_displayTime

;; *************** function _displayTime *****************
;; Defined at:
;;		line 50 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  timeFormat     16   43[BANK0 ] unsigned char [16]
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
;;      Locals:         0      16       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	50
global __ptext21
__ptext21:	;psect for function _displayTime
psect	text21
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	50
	global	__size_of_displayTime
	__size_of_displayTime	equ	__end_of_displayTime-_displayTime
	
_displayTime:	
;incstack = 0
	opt	stack 3
; Regs used in _displayTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	53
	
l2715:	
;time_scheduler.h: 52: char timeFormat[16];
;time_scheduler.h: 53: sprintf(timeFormat, "Time: %02d:%02d", hours, minutes);
	movlw	((STR_9)-__stringbase)&0ffh
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
	line	54
;time_scheduler.h: 54: printToLCD(timeFormat);
	movlw	(displayTime@timeFormat&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	55
	
l179:	
	return
	opt stack 0
GLOBAL	__end_of_displayTime
	__end_of_displayTime:
	signat	_displayTime,88
	global	_displayPPM

;; *************** function _displayPPM *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  strBuffer      20    0[BANK1 ] unsigned char [20]
;;  ppmFraction     2   22[BANK1 ] int 
;;  ppmWhole        2   20[BANK1 ] int 
;;  bufPtr          1   24[BANK1 ] PTR unsigned char 
;;		 -> displayPPM@strBuffer(20), 
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
;;      Locals:         0       0      25       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      25       0       0
;;Total ram usage:       27 bytes
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	37
global __ptext22
__ptext22:	;psect for function _displayPPM
psect	text22
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\mq135_module.h"
	line	37
	global	__size_of_displayPPM
	__size_of_displayPPM	equ	__end_of_displayPPM-_displayPPM
	
_displayPPM:	
;incstack = 0
	opt	stack 3
; Regs used in _displayPPM: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l2669:	
;mq135_module.h: 39: char strBuffer[20];
;mq135_module.h: 40: int ppmWhole = (int)PPM;
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

	line	41
;mq135_module.h: 41: int ppmFraction = (int)((PPM - ppmWhole) * 100);
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

	line	44
	
l2671:	
;mq135_module.h: 44: char *bufPtr = strBuffer;
	movlw	(displayPPM@strBuffer)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(displayPPM@bufPtr)^080h
	line	45
	
l2673:	
;mq135_module.h: 45: bufPtr += sprintf(bufPtr, "CO2: ");
	movlw	((STR_4)-__stringbase)&0ffh
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
	line	46
	
l2675:	
;mq135_module.h: 46: bufPtr += sprintf(bufPtr, "%d", ppmWhole);
	movlw	((STR_5)-__stringbase)&0ffh
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
	line	47
	
l2677:	
;mq135_module.h: 47: *bufPtr++ = '.';
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
	
l2679:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	48
	
l2681:	
;mq135_module.h: 48: if (ppmFraction < 10)
	movf	(displayPPM@ppmFraction+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3565
	movlw	low(0Ah)
	subwf	(displayPPM@ppmFraction)^080h,w
u3565:

	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l2687
u3560:
	line	49
	
l2683:	
;mq135_module.h: 49: *bufPtr++ = '0';
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
	
l2685:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	goto	l2687
	
l136:	
	line	50
	
l2687:	
;mq135_module.h: 50: sprintf(bufPtr, "%d ppm  ", ppmFraction);
	movlw	((STR_6)-__stringbase)&0ffh
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
	line	51
	
l2689:	
;mq135_module.h: 51: printToLCD(strBuffer);
	movlw	(displayPPM@strBuffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	52
	
l137:	
	return
	opt stack 0
GLOBAL	__end_of_displayPPM
	__end_of_displayPPM:
	signat	_displayPPM,88
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
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext23
__ptext23:	;psect for function ___fttol
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2595:	
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
	goto	u3431
	goto	u3430
u3431:
	goto	l2601
u3430:
	line	50
	
l2597:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l705
	
l2599:	
	goto	l705
	
l704:	
	line	51
	
l2601:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3445:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3440:
	addlw	-1
	skipz
	goto	u3445
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2603:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2605:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2607:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2609:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2611:	
	btfss	(___fttol@exp1),7
	goto	u3451
	goto	u3450
u3451:
	goto	l2621
u3450:
	line	57
	
l2613:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l2619
u3460:
	line	58
	
l2615:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l705
	
l2617:	
	goto	l705
	
l707:	
	goto	l2619
	line	59
	
l708:	
	line	60
	
l2619:	
	movlw	01h
u3475:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3475

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l2619
u3480:
	goto	l2631
	
l709:	
	line	62
	goto	l2631
	
l706:	
	line	63
	
l2621:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l2629
u3490:
	line	64
	
l2623:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l705
	
l2625:	
	goto	l705
	
l711:	
	line	65
	goto	l2629
	
l713:	
	line	66
	
l2627:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3505:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3505
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2629
	line	68
	
l712:	
	line	65
	
l2629:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l2627
u3510:
	goto	l2631
	
l714:	
	goto	l2631
	line	69
	
l710:	
	line	70
	
l2631:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3520
	goto	l2635
u3520:
	line	71
	
l2633:	
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
	goto	l2635
	
l715:	
	line	72
	
l2635:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l705
	
l2637:	
	line	73
	
l705:	
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
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext24
__ptext24:	;psect for function ___ftneg
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
l2587:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l2591
u3420:
	line	18
	
l2589:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2591
	
l695:	
	line	19
	
l2591:	
	goto	l696
	
l2593:	
	line	20
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;;  f2              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   28[BANK0 ] unsigned um
;;  sign            1   32[BANK0 ] unsigned char 
;;  cntr            1   31[BANK0 ] unsigned char 
;;  exp             1   27[BANK0 ] unsigned char 
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
	
l2171:	
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
	goto	u2651
	goto	u2650
u2651:
	goto	l2177
u2650:
	line	68
	
l2173:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l685
	
l2175:	
	goto	l685
	
l684:	
	line	69
	
l2177:	
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
	goto	u2661
	goto	u2660
u2661:
	goto	l2183
u2660:
	line	70
	
l2179:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l685
	
l2181:	
	goto	l685
	
l686:	
	line	71
	
l2183:	
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
u2675:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2670:
	addlw	-1
	skipz
	goto	u2675
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
u2685:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2680:
	addlw	-1
	skipz
	goto	u2685
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
	
l2185:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2187:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2189:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2191:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2193:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2195
	line	135
	
l687:	
	line	136
	
l2195:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l2199
u2690:
	line	137
	
l2197:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2701
	addwf	(___ftmul@f3_as_product+1),f
u2701:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2702
	addwf	(___ftmul@f3_as_product+2),f
u2702:

	goto	l2199
	
l688:	
	line	138
	
l2199:	
	movlw	01h
u2715:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2715

	line	139
	
l2201:	
	movlw	01h
u2725:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2725
	line	140
	
l2203:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2195
u2730:
	goto	l2205
	
l689:	
	line	143
	
l2205:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2207
	line	144
	
l690:	
	line	145
	
l2207:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l2211
u2740:
	line	146
	
l2209:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2751
	addwf	(___ftmul@f3_as_product+1),f
u2751:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2752
	addwf	(___ftmul@f3_as_product+2),f
u2752:

	goto	l2211
	
l691:	
	line	147
	
l2211:	
	movlw	01h
u2765:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2765

	line	148
	
l2213:	
	movlw	01h
u2775:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2775

	line	149
	
l2215:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2207
u2780:
	goto	l2217
	
l692:	
	line	156
	
l2217:	
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
	goto	l685
	
l2219:	
	line	157
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   33[BANK0 ] float 
;;  f2              3   36[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   45[BANK0 ] unsigned char 
;;  exp2            1   44[BANK0 ] unsigned char 
;;  sign            1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   33[BANK0 ] float 
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext26
__ptext26:	;psect for function ___ftadd
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2057:	
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
	
l2059:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2330
	goto	l2065
u2330:
	
l2061:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l2069
u2340:
	
l2063:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l2069
u2350:
	goto	l2065
	
l638:	
	line	93
	
l2065:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l639
	
l2067:	
	goto	l639
	
l636:	
	line	94
	
l2069:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2360
	goto	l642
u2360:
	
l2071:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l2075
u2370:
	
l2073:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2075
u2380:
	
l642:	
	line	95
	goto	l639
	
l640:	
	line	96
	
l2075:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2077:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l643
u2390:
	line	98
	
l2079:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l643:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l644
u2400:
	line	100
	
l2081:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l644:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2083:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2085:	
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
	goto	u2411
	goto	u2410
u2411:
	goto	l2097
u2410:
	goto	l2087
	line	109
	
l646:	
	line	110
	
l2087:	
	movlw	01h
u2425:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2425
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2089:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l2095
u2430:
	
l2091:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2087
u2440:
	goto	l2095
	
l648:	
	goto	l2095
	
l649:	
	line	113
	goto	l2095
	
l651:	
	line	114
	
l2093:	
	movlw	01h
u2455:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2455

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2095
	line	116
	
l650:	
	line	113
	
l2095:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2093
u2460:
	goto	l653
	
l652:	
	line	117
	goto	l653
	
l645:	
	
l2097:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l653
u2470:
	goto	l2099
	line	120
	
l655:	
	line	121
	
l2099:	
	movlw	01h
u2485:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2485
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2101:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2491
	goto	u2490
u2491:
	goto	l2107
u2490:
	
l2103:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2099
u2500:
	goto	l2107
	
l657:	
	goto	l2107
	
l658:	
	line	124
	goto	l2107
	
l660:	
	line	125
	
l2105:	
	movlw	01h
u2515:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2515

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2107
	line	127
	
l659:	
	line	124
	
l2107:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2105
u2520:
	goto	l653
	
l661:	
	goto	l653
	line	128
	
l654:	
	line	129
	
l653:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2111
u2530:
	line	131
	
l2109:	
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
	goto	l2111
	line	133
	
l662:	
	line	134
	
l2111:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l2115
u2540:
	line	136
	
l2113:	
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
	goto	l2115
	line	138
	
l663:	
	line	139
	
l2115:	
	clrf	(___ftadd@sign)
	line	140
	
l2117:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2551
	addwf	(___ftadd@f2+1),f
u2551:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2552
	addwf	(___ftadd@f2+2),f
u2552:

	line	141
	
l2119:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2125
u2560:
	line	142
	
l2121:	
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
	
l2123:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l2125
	line	145
	
l664:	
	line	146
	
l2125:	
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
	goto	l639
	
l2127:	
	line	148
	
l639:	
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext27
__ptext27:	;psect for function ___awtoft
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2045:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l2047:	
	btfss	(___awtoft@c+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l2053
u2320:
	line	38
	
l2049:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2051:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l2053
	line	40
	
l613:	
	line	41
	
l2053:	
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
	goto	l614
	
l2055:	
	line	42
	
l614:	
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext28
__ptext28:	;psect for function ___ftpack
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1971:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2150
	goto	l1975
u2150:
	
l1973:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l1981
u2160:
	goto	l1975
	
l619:	
	line	65
	
l1975:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l620
	
l1977:	
	goto	l620
	
l617:	
	line	66
	goto	l1981
	
l622:	
	line	67
	
l1979:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2175:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2175

	goto	l1981
	line	69
	
l621:	
	line	66
	
l1981:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l1979
u2180:
	goto	l624
	
l623:	
	line	70
	goto	l624
	
l625:	
	line	71
	
l1983:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1985:	
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
	
l1987:	
	movlw	01h
u2195:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2195

	line	74
	
l624:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l1983
u2200:
	goto	l1991
	
l626:	
	line	75
	goto	l1991
	
l628:	
	line	76
	
l1989:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2215:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2215
	goto	l1991
	line	78
	
l627:	
	line	75
	
l1991:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1989
u2220:
	
l629:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l630
u2230:
	line	80
	
l1993:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l630:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1995:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2245:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2240:
	addlw	-1
	skipz
	goto	u2245
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1997:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2250
	goto	l631
u2250:
	line	84
	
l1999:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l631:	
	line	85
	line	86
	
l620:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_displayDataDHT11

;; *************** function _displayDataDHT11 *****************
;; Defined at:
;;		line 76 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         15   41[BANK0 ] unsigned char [15]
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
;;      Locals:         0      15       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_instCTRL
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	76
global __ptext29
__ptext29:	;psect for function _displayDataDHT11
psect	text29
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	76
	global	__size_of_displayDataDHT11
	__size_of_displayDataDHT11	equ	__end_of_displayDataDHT11-_displayDataDHT11
	
_displayDataDHT11:	
;incstack = 0
	opt	stack 3
; Regs used in _displayDataDHT11: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	79
	
l2639:	
;dht11_module.h: 78: char buffer[15];
;dht11_module.h: 79: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_displayDataDHT11+0)+0+1),f
	movlw	151
movwf	((??_displayDataDHT11+0)+0),f
u4497:
	decfsz	((??_displayDataDHT11+0)+0),f
	goto	u4497
	decfsz	((??_displayDataDHT11+0)+0+1),f
	goto	u4497
	nop2
opt asmopt_on

	line	86
	
l2641:	
;dht11_module.h: 86: sprintf(buffer, "TEMP: %dC", temperature);
	movlw	((STR_1)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayDataDHT11+0)+0
	movf	(??_displayDataDHT11+0)+0,w
	movwf	(sprintf@f)
	movf	(_temperature),w
	movwf	(??_displayDataDHT11+1)+0
	clrf	(??_displayDataDHT11+1)+0+1
	movf	0+(??_displayDataDHT11+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_displayDataDHT11+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(displayDataDHT11@buffer)&0ffh
	fcall	_sprintf
	line	87
	
l2643:	
;dht11_module.h: 87: printToLCD(buffer);
	movlw	(displayDataDHT11@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	88
	
l2645:	
;dht11_module.h: 88: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	89
	
l2647:	
;dht11_module.h: 89: sprintf(buffer, "HMDT: %d%%", humidity);
	movlw	((STR_2)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayDataDHT11+0)+0
	movf	(??_displayDataDHT11+0)+0,w
	movwf	(sprintf@f)
	movf	(_humidity),w
	movwf	(??_displayDataDHT11+1)+0
	clrf	(??_displayDataDHT11+1)+0+1
	movf	0+(??_displayDataDHT11+1)+0,w
	movwf	0+(?_sprintf)+01h
	movf	1+(??_displayDataDHT11+1)+0,w
	movwf	1+(?_sprintf)+01h
	movlw	(displayDataDHT11@buffer)&0ffh
	fcall	_sprintf
	line	90
	
l2649:	
;dht11_module.h: 90: printToLCD(buffer);
	movlw	(displayDataDHT11@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	92
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_displayDataDHT11
	__end_of_displayDataDHT11:
	signat	_displayDataDHT11,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@buffer(16), debugInfo(10), displayTime@timeFormat(16), displayPPM@strBuffer(20), 
;;		 -> displayDataDHT11@buffer(15), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_22(25), STR_21(10), STR_20(10), STR_19(10), 
;;		 -> STR_18(10), STR_17(10), STR_16(10), STR_15(10), 
;;		 -> STR_14(10), STR_13(10), STR_12(10), STR_11(10), 
;;		 -> STR_10(10), STR_9(16), STR_6(9), STR_5(3), 
;;		 -> STR_4(6), STR_2(11), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  sp              1   37[BANK0 ] PTR unsigned char 
;;		 -> main@buffer(16), debugInfo(10), displayTime@timeFormat(16), displayPPM@strBuffer(20), 
;;		 -> displayDataDHT11@buffer(15), 
;;  _val            3   33[BANK0 ] struct .
;;  width           2   31[BANK0 ] int 
;;  ccnt            2   28[BANK0 ] int 
;;  c               1   36[BANK0 ] char 
;;  flag            1   30[BANK0 ] unsigned char 
;;  prec            1   27[BANK0 ] char 
;;  ap              1   26[BANK0 ] PTR void [1]
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
;;      Params:         0       9       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      24       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_displayDataDHT11
;;		_displayPPM
;;		_displayTime
;;		_setHoursStart
;;		_setHoursEnd
;;		_setMinutesStart
;;		_setMinutesEnd
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext30
__ptext30:	;psect for function _sprintf
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	510
	
l2371:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 510: int ccnt = 0;
	clrf	(sprintf@ccnt)
	clrf	(sprintf@ccnt+1)
	line	542
	
l2373:	
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
	goto	l2515
	
l331:	
	line	547
	
l2375:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u3061
	goto	u3060
u3061:
	goto	l2383
u3060:
	line	550
	
l2377:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2379:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2381:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	551
;doprnt.c: 551: continue;
	goto	l2515
	line	552
	
l332:	
	line	555
	
l2383:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l2389
	line	559
;doprnt.c: 559: for(;;) {
	
l333:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l2389
	line	588
;doprnt.c: 588: case '0':
	
l335:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
	
l2385:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	591
;doprnt.c: 591: continue;
	goto	l2389
	line	593
	
l2387:	
;doprnt.c: 593: }
	goto	l2391
	line	560
	
l334:	
	
l2389:	
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
	goto	l335
	goto	l2391
	opt asmopt_on

	line	593
	
l337:	
	line	594
;doprnt.c: 594: break;
	goto	l2391
	line	595
	
l336:	
;doprnt.c: 595: }
	goto	l2389
	
l338:	
	line	606
	
l2391:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3071
	goto	u3070
u3071:
	goto	l2431
u3070:
	line	607
	
l2393:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2395
	line	608
;doprnt.c: 608: do {
	
l340:	
	line	609
	
l2395:	
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
	
l2397:	
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
	
l2399:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l2401:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3081
	goto	u3080
u3081:
	goto	l2395
u3080:
	goto	l2431
	
l341:	
	goto	l2431
	line	617
	
l339:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l2431
	line	646
;doprnt.c: 646: case 0:
	
l343:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2517
	line	706
;doprnt.c: 706: case 'd':
	
l345:	
	goto	l2433
	line	707
	
l346:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l2433
	line	759
;doprnt.c: 759: dostring:
	
l348:	
	line	766
	
l2403:	
;doprnt.c: 766: if(width > _val._str._len)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@width+1),w
	subwf	1+(sprintf@_val)+01h,w
	skipz
	goto	u3095
	movf	(sprintf@width),w
	subwf	0+(sprintf@_val)+01h,w
u3095:
	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l2407
u3090:
	line	767
	
l2405:	
;doprnt.c: 767: width -= _val._str._len;
	movf	0+(sprintf@_val)+01h,w
	subwf	(sprintf@width),f
	movf	1+(sprintf@_val)+01h,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l2415
	line	768
	
l349:	
	line	769
	
l2407:	
;doprnt.c: 768: else
;doprnt.c: 769: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2415
	
l350:	
	line	773
;doprnt.c: 773: while(width--)
	goto	l2415
	
l352:	
	line	774
	
l2409:	
;doprnt.c: 774: ((*sp++ = (' ')),(++ccnt));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2411:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2413:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2415
	
l351:	
	line	773
	
l2415:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movlw	high(-1)
	xorwf	((sprintf@width+1)),w
	skipz
	goto	u3105
	movlw	low(-1)
	xorwf	((sprintf@width)),w
u3105:

	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l2409
u3100:
	goto	l2425
	
l353:	
	line	776
;doprnt.c: 776: while(_val._str._len--)
	goto	l2425
	
l355:	
	line	777
	
l2417:	
;doprnt.c: 777: ((*sp++ = (*_val._str._cp++)),(++ccnt));
	movf	(sprintf@_val),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	movwf	indf
	
l2419:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@_val),f
	
l2421:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2423:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2425
	
l354:	
	line	776
	
l2425:	
	movlw	low(01h)
	subwf	0+(sprintf@_val)+01h,f
	movlw	high(01h)
	skipc
	decf	1+(sprintf@_val)+01h,f
	subwf	1+(sprintf@_val)+01h,f
	movlw	high(0FFFFh)
	xorwf	(1+(sprintf@_val)+01h),w
	skipz
	goto	u3115
	movlw	low(0FFFFh)
	xorwf	(0+(sprintf@_val)+01h),w
u3115:

	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l2417
u3110:
	goto	l2515
	
l356:	
	line	783
;doprnt.c: 783: continue;
	goto	l2515
	line	811
;doprnt.c: 811: default:
	
l357:	
	line	814
	
l2427:	
;doprnt.c: 814: _val._str._cp = (char *)&c;
	movlw	(sprintf@c)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@_val)
	line	815
;doprnt.c: 815: _val._str._len = 1;
	movlw	low(01h)
	movwf	0+(sprintf@_val)+01h
	movlw	high(01h)
	movwf	(0+(sprintf@_val)+01h)+1
	line	816
;doprnt.c: 816: goto dostring;
	goto	l2403
	line	831
	
l2429:	
;doprnt.c: 831: }
	goto	l2433
	line	644
	
l342:	
	
l2431:	
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
	goto	l2517
	xorlw	100^0	; case 100
	skipnz
	goto	l2433
	xorlw	105^100	; case 105
	skipnz
	goto	l2433
	goto	l2427
	opt asmopt_on

	line	831
	
l347:	
	line	1268
	
l2433:	
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
	
l2435:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l2437:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u3121
	goto	u3120
u3121:
	goto	l2443
u3120:
	line	1271
	
l2439:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l2441:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l2443
	line	1273
	
l358:	
	line	1314
	
l2443:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l2447
u3130:
	goto	l2455
	
l2445:	
	goto	l2455
	line	1315
	
l359:	
	
l2447:	
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
	goto	u3145
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u3145:
	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l2451
u3140:
	goto	l2455
	line	1316
	
l2449:	
;doprnt.c: 1316: break;
	goto	l2455
	
l361:	
	line	1314
	
l2451:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l2453:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l2447
u3150:
	goto	l2455
	
l360:	
	line	1354
	
l2455:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3161
	goto	u3160
u3161:
	goto	l362
u3160:
	
l2457:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l362
u3170:
	line	1355
	
l2459:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l362:	
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
	goto	u3185
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u3185:

	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l2463
u3180:
	line	1391
	
l2461:	
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
	goto	l2465
	line	1392
	
l363:	
	line	1393
	
l2463:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l2465
	
l364:	
	line	1396
	
l2465:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l2485
u3190:
	line	1401
	
l2467:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l2475
u3200:
	line	1402
	
l2469:	
;doprnt.c: 1402: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2471:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2473:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2475
	
l366:	
	line	1424
	
l2475:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3211
	goto	u3210
u3211:
	goto	l2503
u3210:
	goto	l2477
	line	1425
;doprnt.c: 1425: do
	
l368:	
	line	1426
	
l2477:	
;doprnt.c: 1426: ((*sp++ = ('0')),(++ccnt));
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2479:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2481:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1427
	
l2483:	
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
	goto	u3221
	goto	u3220
u3221:
	goto	l2477
u3220:
	goto	l2503
	
l369:	
	goto	l2503
	
l367:	
	line	1429
;doprnt.c: 1429: } else
	goto	l2503
	
l365:	
	line	1437
	
l2485:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u3231
	goto	u3230
u3231:
	goto	l2495
u3230:
	goto	l2487
	line	1438
;doprnt.c: 1438: do
	
l372:	
	line	1439
	
l2487:	
;doprnt.c: 1439: ((*sp++ = (' ')),(++ccnt));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2489:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2491:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1440
	
l2493:	
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
	goto	u3241
	goto	u3240
u3241:
	goto	l2487
u3240:
	goto	l2495
	
l373:	
	goto	l2495
	
l371:	
	line	1447
	
l2495:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l2503
u3250:
	line	1448
	
l2497:	
;doprnt.c: 1448: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2499:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2501:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2503
	
l374:	
	goto	l2503
	line	1478
	
l370:	
	line	1481
	
l2503:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l2513
	
l376:	
	line	1498
	
l2505:	
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
	
l2507:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l2509:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l2511:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l2513
	line	1534
	
l375:	
	line	1483
	
l2513:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l2505
u3260:
	goto	l2515
	
l377:	
	goto	l2515
	line	1542
	
l330:	
	line	545
	
l2515:	
	movlw	01h
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
	goto	u3271
	goto	u3270
u3271:
	goto	l2375
u3270:
	goto	l2517
	
l378:	
	goto	l2517
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l344:	
	line	1547
	
l2517:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1549
	
l2519:	
;doprnt.c: 1549: return ccnt;
	movf	(sprintf@ccnt+1),w
	clrf	(?_sprintf+1)
	addwf	(?_sprintf+1)
	movf	(sprintf@ccnt),w
	clrf	(?_sprintf)
	addwf	(?_sprintf)

	goto	l379
	
l2521:	
	line	1550
	
l379:	
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
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext31
__ptext31:	;psect for function _isdigit
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l2021:	
	clrf	(_isdigit$521)
	
l2023:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l2029
u2260:
	
l2025:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2029
u2270:
	
l2027:	
	clrf	(_isdigit$521)
	incf	(_isdigit$521),f
	goto	l2029
	
l719:	
	
l2029:	
	rrf	(_isdigit$521),w
	
	goto	l720
	
l2031:	
	line	15
	
l720:	
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
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext32
__ptext32:	;psect for function ___wmul
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2033:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2035
	line	44
	
l462:	
	line	45
	
l2035:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l463
u2280:
	line	46
	
l2037:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l463:	
	line	47
	movlw	01h
	
u2295:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2295
	line	48
	
l2039:	
	movlw	01h
	
u2305:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2305
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l2035
u2310:
	goto	l2041
	
l464:	
	line	52
	
l2041:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l465
	
l2043:	
	line	53
	
l465:	
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext33
__ptext33:	;psect for function ___lwmod
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l2265
u2860:
	line	14
	
l2249:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2255
	
l809:	
	line	16
	
l2251:	
	movlw	01h
	
u2875:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2875
	line	17
	
l2253:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2255
	line	18
	
l808:	
	line	15
	
l2255:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2251
u2880:
	goto	l2257
	
l810:	
	goto	l2257
	line	19
	
l811:	
	line	20
	
l2257:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2895
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2895:
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2261
u2890:
	line	21
	
l2259:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2261
	
l812:	
	line	22
	
l2261:	
	movlw	01h
	
u2905:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2905
	line	23
	
l2263:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2257
u2910:
	goto	l2265
	
l813:	
	goto	l2265
	line	24
	
l807:	
	line	25
	
l2265:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l814
	
l2267:	
	line	26
	
l814:	
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext34
__ptext34:	;psect for function ___lwdiv
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2223:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l2243
u2790:
	line	16
	
l2225:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2231
	
l799:	
	line	18
	
l2227:	
	movlw	01h
	
u2805:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2805
	line	19
	
l2229:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2231
	line	20
	
l798:	
	line	17
	
l2231:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2227
u2810:
	goto	l2233
	
l800:	
	goto	l2233
	line	21
	
l801:	
	line	22
	
l2233:	
	movlw	01h
	
u2825:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2825
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2835
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l2239
u2830:
	line	24
	
l2235:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2237:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2239
	line	26
	
l802:	
	line	27
	
l2239:	
	movlw	01h
	
u2845:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2845
	line	28
	
l2241:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2233
u2850:
	goto	l2243
	
l803:	
	goto	l2243
	line	29
	
l797:	
	line	30
	
l2243:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l804
	
l2245:	
	line	31
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 52 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_29(16), STR_28(9), STR_27(10), STR_26(16), 
;;		 -> STR_25(11), STR_24(12), STR_23(18), main@buffer(16), 
;;		 -> debugInfo(10), displayTime@timeFormat(16), STR_8(8), STR_7(8), 
;;		 -> displayPPM@strBuffer(20), STR_3(7), displayDataDHT11@buffer(15), 
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
;;		_displayDataDHT11
;;		_runDHT11
;;		_displayPPM
;;		_displayTime
;;		_setHoursStart
;;		_setHoursEnd
;;		_setMinutesStart
;;		_setMinutesEnd
;;		_main
;;		_startUpSequence
;;		_printStatusPPM
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	52
global __ptext35
__ptext35:	;psect for function _printToLCD
psect	text35
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	52
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l2291:	
;lcd_functions.h: 54: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	55
;lcd_functions.h: 55: while (*str)
	goto	l2297
	
l85:	
	line	57
	
l2293:	
;lcd_functions.h: 56: {
;lcd_functions.h: 57: dataCTRL(*str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	58
	
l2295:	
;lcd_functions.h: 58: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l2297
	line	59
	
l84:	
	line	55
	
l2297:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l2293
u2940:
	goto	l87
	
l86:	
	line	60
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 32 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
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
psect	text36,local,class=CODE,delta=2,merge=1
	line	32
global __ptext36
__ptext36:	;psect for function _dataCTRL
psect	text36
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	32
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
	line	34
	
l2011:	
;lcd_functions.h: 34: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	35
	
l2013:	
;lcd_functions.h: 35: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	36
	
l2015:	
;lcd_functions.h: 36: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	37
	
l2017:	
;lcd_functions.h: 37: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	38
;lcd_functions.h: 38: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u4507:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u4507
	nop2	;nop
	nop
opt asmopt_on

	line	39
	
l2019:	
;lcd_functions.h: 39: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	40
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_checkTime

;; *************** function _checkTime *****************
;; Defined at:
;;		line 209 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
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
psect	text37,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	209
global __ptext37
__ptext37:	;psect for function _checkTime
psect	text37
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\time_scheduler.h"
	line	209
	global	__size_of_checkTime
	__size_of_checkTime	equ	__end_of_checkTime-_checkTime
	
_checkTime:	
;incstack = 0
	opt	stack 5
; Regs used in _checkTime: [wreg]
	line	211
	
l2853:	
;time_scheduler.h: 211: if (hours == savedHoursEnd && minutes == savedMinutesEnd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd),w	;volatile
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l2859
u3960:
	
l2855:	
	movf	(_minutes),w	;volatile
	xorwf	(_savedMinutesEnd),w	;volatile
	skipz
	goto	u3971
	goto	u3970
u3971:
	goto	l2859
u3970:
	line	213
	
l2857:	
;time_scheduler.h: 212: {
;time_scheduler.h: 213: PORTCbits.RC4 = 1;
	bsf	(7),4	;volatile
	line	214
;time_scheduler.h: 214: }
	goto	l260
	line	215
	
l238:	
	
l2859:	
;time_scheduler.h: 215: else if (savedHoursEnd > savedHoursStart)
	movf	(_savedHoursEnd),w	;volatile
	subwf	(_savedHoursStart),w	;volatile
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l2873
u3980:
	line	219
	
l2861:	
;time_scheduler.h: 216: {
;time_scheduler.h: 218: if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) &&
;time_scheduler.h: 219: (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
	movf	(_hours),w	;volatile
	subwf	(_savedHoursStart),w	;volatile
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l2867
u3990:
	
l2863:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursStart),w	;volatile
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l241
u4000:
	
l2865:	
	movf	(_savedMinutesStart),w	;volatile
	subwf	(_minutes),w	;volatile
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l241
u4010:
	goto	l2867
	
l243:	
	
l2867:	
	movf	(_savedHoursEnd),w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l245
u4020:
	
l2869:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd),w	;volatile
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l241
u4030:
	
l2871:	
	movf	(_savedMinutesEnd),w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l241
u4040:
	
l245:	
	line	221
;time_scheduler.h: 220: {
;time_scheduler.h: 221: PORTCbits.RC4 = 0;
	bcf	(7),4	;volatile
	line	222
;time_scheduler.h: 222: }
	goto	l260
	line	223
	
l241:	
	line	225
;time_scheduler.h: 223: else
;time_scheduler.h: 224: {
;time_scheduler.h: 225: PORTCbits.RC4 = 1;
	bsf	(7),4	;volatile
	goto	l260
	line	226
	
l246:	
	line	227
;time_scheduler.h: 226: }
;time_scheduler.h: 227: }
	goto	l260
	line	228
	
l240:	
	
l2873:	
;time_scheduler.h: 228: else if (savedHoursEnd < savedHoursStart)
	movf	(_savedHoursStart),w	;volatile
	subwf	(_savedHoursEnd),w	;volatile
	skipnc
	goto	u4051
	goto	u4050
u4051:
	goto	l2887
u4050:
	line	232
	
l2875:	
;time_scheduler.h: 229: {
;time_scheduler.h: 231: if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) ||
;time_scheduler.h: 232: (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
	movf	(_hours),w	;volatile
	subwf	(_savedHoursStart),w	;volatile
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l251
u4060:
	
l2877:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursStart),w	;volatile
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l2881
u4070:
	
l2879:	
	movf	(_savedMinutesStart),w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l251
u4080:
	goto	l2881
	
l253:	
	
l2881:	
	movf	(_savedHoursEnd),w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l251
u4090:
	
l2883:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd),w	;volatile
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l249
u4100:
	
l2885:	
	movf	(_savedMinutesEnd),w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l249
u4110:
	goto	l251
	
l255:	
	
l251:	
	line	234
;time_scheduler.h: 233: {
;time_scheduler.h: 234: PORTCbits.RC4 = 0;
	bcf	(7),4	;volatile
	line	235
;time_scheduler.h: 235: }
	goto	l260
	line	236
	
l249:	
	line	238
;time_scheduler.h: 236: else
;time_scheduler.h: 237: {
;time_scheduler.h: 238: PORTCbits.RC4 = 1;
	bsf	(7),4	;volatile
	goto	l260
	line	239
	
l256:	
	line	240
;time_scheduler.h: 239: }
;time_scheduler.h: 240: }
	goto	l260
	line	241
	
l248:	
	line	243
	
l2887:	
;time_scheduler.h: 241: else
;time_scheduler.h: 242: {
;time_scheduler.h: 243: if (minutes >= savedMinutesStart && minutes < savedMinutesEnd)
	movf	(_savedMinutesStart),w	;volatile
	subwf	(_minutes),w	;volatile
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l258
u4120:
	
l2889:	
	movf	(_savedMinutesEnd),w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4131
	goto	u4130
u4131:
	goto	l258
u4130:
	line	245
	
l2891:	
;time_scheduler.h: 244: {
;time_scheduler.h: 245: PORTCbits.RC4 = 0;
	bcf	(7),4	;volatile
	line	246
;time_scheduler.h: 246: }
	goto	l260
	line	247
	
l258:	
	line	249
;time_scheduler.h: 247: else
;time_scheduler.h: 248: {
;time_scheduler.h: 249: PORTCbits.RC4 = 1;
	bsf	(7),4	;volatile
	goto	l260
	line	250
	
l259:	
	goto	l260
	line	251
	
l257:	
	goto	l260
	
l247:	
	goto	l260
	
l239:	
	line	252
	
l260:	
	return
	opt stack 0
GLOBAL	__end_of_checkTime
	__end_of_checkTime:
	signat	_checkTime,88
	global	_checkSEL

;; *************** function _checkSEL *****************
;; Defined at:
;;		line 187 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
psect	text38,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	187
global __ptext38
__ptext38:	;psect for function _checkSEL
psect	text38
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	187
	global	__size_of_checkSEL
	__size_of_checkSEL	equ	__end_of_checkSEL-_checkSEL
	
_checkSEL:	
;incstack = 0
	opt	stack 4
; Regs used in _checkSEL: [wreg+status,2+status,0+pclath+cstack]
	line	190
	
l2927:	
;main.c: 189: static int lastRB1State = 0;
;main.c: 190: int currentRB1State = RB1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_checkSEL+0)+0
	clrf	(??_checkSEL+0)+0+1
	movf	0+(??_checkSEL+0)+0,w
	movwf	(checkSEL@currentRB1State)
	movf	1+(??_checkSEL+0)+0,w
	movwf	(checkSEL@currentRB1State+1)
	line	191
	
l2929:	
;main.c: 191: if (currentRB1State == 1 && lastRB1State == 0)
	movlw	01h
	xorwf	(checkSEL@currentRB1State),w
	iorwf	(checkSEL@currentRB1State+1),w
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l2937
u4150:
	
l2931:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((checkSEL@lastRB1State+1)^080h),w
	iorwf	((checkSEL@lastRB1State)^080h),w
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l2937
u4160:
	line	193
	
l2933:	
;main.c: 192: {
;main.c: 193: SEL ^= 1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkSEL+0)+0
	movf	(??_checkSEL+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_SEL)^080h,f	;volatile
	line	194
	
l2935:	
;main.c: 194: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	goto	l2937
	line	195
	
l318:	
	line	196
	
l2937:	
;main.c: 195: }
;main.c: 196: lastRB1State = currentRB1State;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(checkSEL@currentRB1State+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkSEL@lastRB1State+1)^080h
	addwf	(checkSEL@lastRB1State+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(checkSEL@currentRB1State),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(checkSEL@lastRB1State)^080h
	addwf	(checkSEL@lastRB1State)^080h

	line	197
	
l319:	
	return
	opt stack 0
GLOBAL	__end_of_checkSEL
	__end_of_checkSEL:
	signat	_checkSEL,88
	global	_checkMode

;; *************** function _checkMode *****************
;; Defined at:
;;		line 177 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
psect	text39,local,class=CODE,delta=2,merge=1
	line	177
global __ptext39
__ptext39:	;psect for function _checkMode
psect	text39
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	177
	global	__size_of_checkMode
	__size_of_checkMode	equ	__end_of_checkMode-_checkMode
	
_checkMode:	
;incstack = 0
	opt	stack 4
; Regs used in _checkMode: [wreg+status,2+status,0+pclath+cstack]
	line	179
	
l2919:	
;main.c: 179: if (lastMode != mode)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_lastMode)^080h,w
	xorwf	(_mode)^080h,w
	skipnz
	goto	u4141
	goto	u4140
u4141:
	goto	l313
u4140:
	line	181
	
l2921:	
;main.c: 180: {
;main.c: 181: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	182
	
l2923:	
;main.c: 182: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_checkMode+0)+0+1),f
	movlw	238
movwf	((??_checkMode+0)+0),f
u4517:
	decfsz	((??_checkMode+0)+0),f
	goto	u4517
	decfsz	((??_checkMode+0)+0+1),f
	goto	u4517
	nop
opt asmopt_on

	line	183
	
l2925:	
;main.c: 183: lastMode = mode;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkMode+0)+0
	movf	(??_checkMode+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_lastMode)^080h
	goto	l313
	line	184
	
l312:	
	line	185
	
l313:	
	return
	opt stack 0
GLOBAL	__end_of_checkMode
	__end_of_checkMode:
	signat	_checkMode,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 22 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
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
;;		_displayDataDHT11
;;		_runDHT11
;;		_main
;;		_startUpSequence
;;		_checkMode
;;		_checkSEL
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	22
global __ptext40
__ptext40:	;psect for function _instCTRL
psect	text40
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\lcd_functions.h"
	line	22
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
	line	24
	
l2001:	
;lcd_functions.h: 24: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	25
	
l2003:	
;lcd_functions.h: 25: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	26
	
l2005:	
;lcd_functions.h: 26: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	27
	
l2007:	
;lcd_functions.h: 27: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	28
;lcd_functions.h: 28: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u4527:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u4527
	nop2	;nop
	nop
opt asmopt_on

	line	29
	
l2009:	
;lcd_functions.h: 29: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	30
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_activateHumidifier

;; *************** function _activateHumidifier *****************
;; Defined at:
;;		line 109 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
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
psect	text41,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	109
global __ptext41
__ptext41:	;psect for function _activateHumidifier
psect	text41
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\dht11_module.h"
	line	109
	global	__size_of_activateHumidifier
	__size_of_activateHumidifier	equ	__end_of_activateHumidifier-_activateHumidifier
	
_activateHumidifier:	
;incstack = 0
	opt	stack 5
; Regs used in _activateHumidifier: [wreg]
	line	111
	
l2661:	
;dht11_module.h: 111: if (humidity > 50 && temperature > 25)
	movlw	(033h)
	subwf	(_humidity),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l124
u3540:
	
l2663:	
	movlw	(01Ah)
	subwf	(_temperature),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l124
u3550:
	line	113
	
l2665:	
;dht11_module.h: 112: {
;dht11_module.h: 113: PORTCbits.RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7),3	;volatile
	line	114
;dht11_module.h: 114: }
	goto	l126
	line	115
	
l124:	
	line	117
;dht11_module.h: 115: else
;dht11_module.h: 116: {
;dht11_module.h: 117: PORTCbits.RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7),3	;volatile
	goto	l126
	line	118
	
l125:	
	line	119
	
l126:	
	return
	opt stack 0
GLOBAL	__end_of_activateHumidifier
	__end_of_activateHumidifier:
	signat	_activateHumidifier,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 129 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
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
;;		i1___awmod
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	129
global __ptext42
__ptext42:	;psect for function _ISR
psect	text42
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\second-version\main.c"
	line	129
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
psect	text42
	line	131
	
i1l3079:	
;main.c: 131: if (INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l297
u428_20:
	line	133
	
i1l3081:	
;main.c: 132: {
;main.c: 133: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	134
	
i1l3083:	
;main.c: 134: mode = (mode + 1) % 3;
	movlw	low(03h)
	movwf	(i1___awmod@divisor)
	movlw	high(03h)
	movwf	((i1___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	addlw	low(01h)
	movwf	(i1___awmod@dividend)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((i1___awmod@dividend))+1
	fcall	i1___awmod
	movf	(0+(?i1___awmod)),w
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_mode)^080h
	goto	i1l297
	line	135
	
i1l296:	
	line	136
	
i1l297:	
	movf	(??_ISR+4),w
	bcf	status, 5	;RP0=0, select bank0
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
	global	i1___awmod

;; *************** function i1___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  __awmod         1    6[COMMON] unsigned char 
;;  __awmod         1    5[COMMON] unsigned char 
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext43
__ptext43:	;psect for function i1___awmod
psect	text43
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_ofi1___awmod
	__size_ofi1___awmod	equ	__end_ofi1___awmod-i1___awmod
	
i1___awmod:	
;incstack = 0
	opt	stack 2
; Regs used in i1___awmod: [wreg+status,2+status,0]
	line	13
	
i1l2939:	
	clrf	(i1___awmod@sign)
	line	14
	
i1l2941:	
	btfss	(i1___awmod@dividend+1),7
	goto	u417_21
	goto	u417_20
u417_21:
	goto	i1l2947
u417_20:
	line	15
	
i1l2943:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	line	16
	
i1l2945:	
	clrf	(i1___awmod@sign)
	incf	(i1___awmod@sign),f
	goto	i1l2947
	line	17
	
i1l598:	
	line	18
	
i1l2947:	
	btfss	(i1___awmod@divisor+1),7
	goto	u418_21
	goto	u418_20
u418_21:
	goto	i1l2951
u418_20:
	line	19
	
i1l2949:	
	comf	(i1___awmod@divisor),f
	comf	(i1___awmod@divisor+1),f
	incf	(i1___awmod@divisor),f
	skipnz
	incf	(i1___awmod@divisor+1),f
	goto	i1l2951
	
i1l599:	
	line	20
	
i1l2951:	
	movf	(i1___awmod@divisor+1),w
	iorwf	(i1___awmod@divisor),w
	skipnz
	goto	u419_21
	goto	u419_20
u419_21:
	goto	i1l2969
u419_20:
	line	21
	
i1l2953:	
	clrf	(i1___awmod@counter)
	incf	(i1___awmod@counter),f
	line	22
	goto	i1l2959
	
i1l602:	
	line	23
	
i1l2955:	
	movlw	01h
	
u420_25:
	clrc
	rlf	(i1___awmod@divisor),f
	rlf	(i1___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u420_25
	line	24
	
i1l2957:	
	movlw	(01h)
	movwf	(??i1___awmod+0)+0
	movf	(??i1___awmod+0)+0,w
	addwf	(i1___awmod@counter),f
	goto	i1l2959
	line	25
	
i1l601:	
	line	22
	
i1l2959:	
	btfss	(i1___awmod@divisor+1),(15)&7
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l2955
u421_20:
	goto	i1l2961
	
i1l603:	
	goto	i1l2961
	line	26
	
i1l604:	
	line	27
	
i1l2961:	
	movf	(i1___awmod@divisor+1),w
	subwf	(i1___awmod@dividend+1),w
	skipz
	goto	u422_25
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),w
u422_25:
	skipc
	goto	u422_21
	goto	u422_20
u422_21:
	goto	i1l2965
u422_20:
	line	28
	
i1l2963:	
	movf	(i1___awmod@divisor),w
	subwf	(i1___awmod@dividend),f
	movf	(i1___awmod@divisor+1),w
	skipc
	decf	(i1___awmod@dividend+1),f
	subwf	(i1___awmod@dividend+1),f
	goto	i1l2965
	
i1l605:	
	line	29
	
i1l2965:	
	movlw	01h
	
u423_25:
	clrc
	rrf	(i1___awmod@divisor+1),f
	rrf	(i1___awmod@divisor),f
	addlw	-1
	skipz
	goto	u423_25
	line	30
	
i1l2967:	
	movlw	low(01h)
	subwf	(i1___awmod@counter),f
	btfss	status,2
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l2961
u424_20:
	goto	i1l2969
	
i1l606:	
	goto	i1l2969
	line	31
	
i1l600:	
	line	32
	
i1l2969:	
	movf	(i1___awmod@sign),w
	skipz
	goto	u425_20
	goto	i1l2973
u425_20:
	line	33
	
i1l2971:	
	comf	(i1___awmod@dividend),f
	comf	(i1___awmod@dividend+1),f
	incf	(i1___awmod@dividend),f
	skipnz
	incf	(i1___awmod@dividend+1),f
	goto	i1l2973
	
i1l607:	
	line	34
	
i1l2973:	
	movf	(i1___awmod@dividend+1),w
	clrf	(?i1___awmod+1)
	addwf	(?i1___awmod+1)
	movf	(i1___awmod@dividend),w
	clrf	(?i1___awmod)
	addwf	(?i1___awmod)

	goto	i1l608
	
i1l2975:	
	line	35
	
i1l608:	
	return
	opt stack 0
GLOBAL	__end_ofi1___awmod
	__end_ofi1___awmod:
	signat	i1___awmod,90
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
