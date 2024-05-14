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
	FNCALL	_main,_calculateTemp
	FNCALL	_main,_checkMode
	FNCALL	_main,_checkSelect
	FNCALL	_main,_checkTime
	FNCALL	_main,_handlePPM
	FNCALL	_main,_handleTemp
	FNCALL	_main,_initADC
	FNCALL	_main,_initInterrupt
	FNCALL	_main,_instCTRL
	FNCALL	_main,_readADC
	FNCALL	_main,_runClock
	FNCALL	_main,_runMQ135
	FNCALL	_main,_setPortDirections
	FNCALL	_main,_startUpLCD
	FNCALL	_main,_updateState
	FNCALL	_updateState,_displayDHT11Stat
	FNCALL	_updateState,_displayPPM
	FNCALL	_updateState,_displayTime
	FNCALL	_updateState,_instCTRL
	FNCALL	_updateState,_printStatusPPM
	FNCALL	_updateState,_printStatusTMP
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
	FNCALL	_printStatusTMP,_printToLCD
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
	FNCALL	_displayDHT11Stat,_instCTRL
	FNCALL	_displayDHT11Stat,_printToLCD
	FNCALL	_displayDHT11Stat,_sprintf
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
	FNCALL	_runMQ135,_readADC
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
	FNCALL	_calculateTemp,___lwdiv
	FNCALL	_calculateTemp,___wmul
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
	global	_message1
	global	_message2
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	12

;initializer for _hours
	retlw	04h
	line	20

;initializer for _lastKeyState
	retlw	0FFh
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	16

;initializer for _lastMode
	retlw	0FFh
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\dht11_module.h"
	line	21

;initializer for _message1
	retlw	054h
	retlw	045h
	retlw	04Dh
	retlw	050h
	retlw	03Ah
	retlw	020h
	retlw	0
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	line	22

;initializer for _message2
	retlw	048h
	retlw	04Dh
	retlw	044h
	retlw	054h
	retlw	03Ah
	retlw	020h
	retlw	0
	global	_dpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
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
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
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
	global	_T_byte1
	global	_T_byte2
	global	_key
	global	_keyValid
	global	_minutes
	global	_PPM
	global	_tempBuffer
	global	checkSelect@lastRB1State
	global	_CheckSum
	global	_RH_byte1
	global	_RH_byte2
	global	_checkbit
	global	_mode
	global	_ppmFlag
	global	_select
	global	_tempFlag
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
	global	_RB2
_RB2	set	0x32
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
	global	_RC5
_RC5	set	0x3D
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
	global	_TRISB2
_TRISB2	set	0x432
	global __stringdata
__stringdata:
	
STR_24:	
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	78	;'N'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	62	;'>'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_33:	
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
psect	stringtext
	
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
psect	stringtext
	
STR_29:	
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
psect	stringtext
	
STR_32:	
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
psect	stringtext
	
STR_36:	
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
psect	stringtext
	
STR_30:	
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
psect	stringtext
	
STR_31:	
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
psect	stringtext
	
STR_35:	
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
psect	stringtext
	
STR_39:	
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	78	;'N'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	0
psect	stringtext
	
STR_34:	
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
psect	stringtext
	
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
psect	stringtext
	
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
psect	stringtext
	
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
psect	stringtext
	
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
psect	stringtext
	
STR_20:	
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	70	;'F'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	73	;'I'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	80	;'P'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	46	;'.'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	69	;'E'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	stringtext
STR_12	equ	STR_9+0
STR_15	equ	STR_9+0
STR_18	equ	STR_9+0
STR_10	equ	STR_7+0
STR_13	equ	STR_7+0
STR_16	equ	STR_7+0
STR_11	equ	STR_8+0
STR_14	equ	STR_8+0
STR_17	equ	STR_8+0
STR_26	equ	STR_25+0
STR_2	equ	STR_25+3
STR_37	equ	STR_34+0
STR_38	equ	STR_35+0
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
_T_byte1:
       ds      1

_T_byte2:
       ds      1

_key:
       ds      1

_keyValid:
       ds      1

_minutes:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	12
_hours:
       ds      1

psect	dataCOMMON
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	20
_lastKeyState:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_PPM:
       ds      3

_tempBuffer:
       ds      2

checkSelect@lastRB1State:
       ds      2

_CheckSum:
       ds      1

_RH_byte1:
       ds      1

_RH_byte2:
       ds      1

_checkbit:
       ds      1

_mode:
       ds      1

_ppmFlag:
       ds      1

_select:
       ds      1

_tempFlag:
       ds      1

_debugInfo:
       ds      10

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	16
_lastMode:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	16
_savedHoursEnd:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	14
_savedHoursStart:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	17
_savedMinutesEnd:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	15
_savedMinutesStart:
       ds      1

psect	dataBANK1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\dht11_module.h"
	line	21
_message1:
       ds      7

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\dht11_module.h"
	line	22
_message2:
       ds      7

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
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+019h)
	fcall	clear_ram0
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+7)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+12)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram0
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
displayPPM@strBuffer:	; 20 bytes @ 0x0
	ds	3
	global	CalcMQ135@ratio6
CalcMQ135@ratio6:	; 3 bytes @ 0x3
	ds	3
	global	_CalcMQ135$723
_CalcMQ135$723:	; 3 bytes @ 0x6
	ds	3
	global	_CalcMQ135$724
_CalcMQ135$724:	; 3 bytes @ 0x9
	ds	3
	global	_CalcMQ135$725
_CalcMQ135$725:	; 3 bytes @ 0xC
	ds	3
	global	_CalcMQ135$726
_CalcMQ135$726:	; 3 bytes @ 0xF
	ds	3
	global	_CalcMQ135$727
_CalcMQ135$727:	; 3 bytes @ 0x12
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
??_main:	; 0 bytes @ 0x27
	ds	3
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
?_printStatusTMP:	; 0 bytes @ 0x0
?_displayDHT11Stat:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?i1_instCTRL:	; 0 bytes @ 0x0
??i1_instCTRL:	; 0 bytes @ 0x0
?_handlePPM:	; 1 bytes @ 0x0
?_handleTemp:	; 1 bytes @ 0x0
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
??_handleTemp:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	_isdigit$476
_isdigit$476:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
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
??_readADC:	; 0 bytes @ 0x2
??_initLCD:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
	global	printToLCD@str
printToLCD@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_startUpLCD:	; 0 bytes @ 0x4
??_printToLCD:	; 0 bytes @ 0x4
??_printStatusPPM:	; 0 bytes @ 0x4
??_printStatusTMP:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	readADC@channel
readADC@channel:	; 1 bytes @ 0x4
	global	printStatusPPM@handler
printStatusPPM@handler:	; 1 bytes @ 0x4
	global	printStatusTMP@handler
printStatusTMP@handler:	; 1 bytes @ 0x4
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
	ds	1
??___ftge:	; 0 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
??___lwdiv:	; 0 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	1
??_handlePPM:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
?_calculateTemp:	; 0 bytes @ 0xE
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xE
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0xE
	global	calculateTemp@adcValue
calculateTemp@adcValue:	; 2 bytes @ 0xE
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xE
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0xE
	ds	2
??_calculateTemp:	; 0 bytes @ 0x10
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x10
	ds	1
??___ftneg:	; 0 bytes @ 0x11
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x11
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x11
	ds	1
??___lwmod:	; 0 bytes @ 0x12
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x13
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x14
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0x14
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x14
	ds	3
??___ftadd:	; 0 bytes @ 0x17
	ds	3
??_sprintf:	; 0 bytes @ 0x1A
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1B
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1C
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1D
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1D
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1E
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1E
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1E
	ds	1
	global	sprintf@ccnt
sprintf@ccnt:	; 2 bytes @ 0x1F
	ds	2
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x21
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x21
	ds	3
??___ftmul:	; 0 bytes @ 0x24
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x25
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x26
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x28
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x28
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x29
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x29
	ds	1
??_displayTime:	; 0 bytes @ 0x2A
??_setHoursStart:	; 0 bytes @ 0x2A
??_setHoursEnd:	; 0 bytes @ 0x2A
??_setMinutesStart:	; 0 bytes @ 0x2A
??_setMinutesEnd:	; 0 bytes @ 0x2A
??_displayDHT11Stat:	; 0 bytes @ 0x2A
	ds	2
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
	global	displayTime@timeFormat
displayTime@timeFormat:	; 16 bytes @ 0x2E
	global	displayDHT11Stat@buffer
displayDHT11Stat@buffer:	; 20 bytes @ 0x2E
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
	global	?_CalcMQ135
?_CalcMQ135:	; 3 bytes @ 0x3E
	global	CalcMQ135@RAW_ADC
CalcMQ135@RAW_ADC:	; 2 bytes @ 0x3E
	ds	3
??_CalcMQ135:	; 0 bytes @ 0x41
??_runMQ135:	; 0 bytes @ 0x41
	ds	1
??_updateState:	; 0 bytes @ 0x42
	ds	4
	global	updateState@buffer
updateState@buffer:	; 10 bytes @ 0x46
	ds	10
;!
;!Data Sizes:
;!    Strings     280
;!    Constant    10
;!    Data        21
;!    BSS         30
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80     80      80
;!    BANK1            80     42      79
;!    BANK3            96      0       7
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 16
;!		 -> STR_31(CODE[13]), STR_30(CODE[14]), STR_26(CODE[6]), STR_25(CODE[6]), 
;!		 -> STR_19(CODE[11]), STR_18(CODE[10]), STR_17(CODE[10]), STR_16(CODE[10]), 
;!		 -> STR_15(CODE[10]), STR_14(CODE[10]), STR_13(CODE[10]), STR_12(CODE[10]), 
;!		 -> STR_11(CODE[10]), STR_10(CODE[10]), STR_9(CODE[10]), STR_8(CODE[10]), 
;!		 -> STR_7(CODE[10]), STR_6(CODE[16]), STR_3(CODE[9]), STR_2(CODE[3]), 
;!		 -> STR_1(CODE[6]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> updateState@buffer(BANK0[10]), displayDHT11Stat@buffer(BANK0[20]), displayTemp@buffer(BANK0[20]), debugInfo(BANK1[10]), 
;!		 -> displayTime@timeFormat(BANK0[16]), displayPPM@strBuffer(BANK1[20]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S280$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    displayPPM@bufPtr	PTR unsigned char  size(1) Largest target is 20
;!		 -> displayPPM@strBuffer(BANK1[20]), 
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 20
;!		 -> STR_39(CODE[11]), STR_38(CODE[12]), STR_37(CODE[10]), STR_36(CODE[14]), 
;!		 -> STR_35(CODE[12]), STR_34(CODE[10]), STR_33(CODE[16]), STR_32(CODE[15]), 
;!		 -> updateState@buffer(BANK0[10]), STR_29(CODE[15]), STR_28(CODE[7]), STR_27(CODE[7]), 
;!		 -> message2(BANK3[7]), displayDHT11Stat@buffer(BANK0[20]), message1(BANK1[7]), STR_24(CODE[19]), 
;!		 -> STR_23(CODE[6]), STR_22(CODE[10]), STR_21(CODE[8]), STR_20(CODE[9]), 
;!		 -> displayTemp@buffer(BANK0[20]), debugInfo(BANK1[10]), displayTime@timeFormat(BANK0[16]), STR_5(CODE[8]), 
;!		 -> STR_4(CODE[8]), displayPPM@strBuffer(BANK1[20]), 
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
;!    _updateState->_displayDHT11Stat
;!    _setMinutesStart->_sprintf
;!    _setMinutesEnd->_sprintf
;!    _setHoursStart->_sprintf
;!    _setHoursEnd->_sprintf
;!    _printStatusTMP->_printToLCD
;!    _printStatusPPM->_printToLCD
;!    _displayTime->_sprintf
;!    _displayPPM->___fttol
;!    ___fttol->___ftmul
;!    ___ftneg->___awtoft
;!    _displayDHT11Stat->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
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
;!    _calculateTemp->___lwdiv
;!    ___lwdiv->___wmul
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
;! (0) _main                                                 3     3      0   87326
;!                                             39 BANK1      3     3      0
;!                      _calculateTemp
;!                          _checkMode
;!                        _checkSelect
;!                          _checkTime
;!                          _handlePPM
;!                         _handleTemp
;!                            _initADC
;!                      _initInterrupt
;!                           _instCTRL
;!                            _readADC
;!                           _runClock
;!                           _runMQ135
;!                  _setPortDirections
;!                         _startUpLCD
;!                        _updateState
;! ---------------------------------------------------------------------------------
;! (1) _updateState                                         14    14      0   72112
;!                                             66 BANK0     14    14      0
;!                   _displayDHT11Stat
;!                         _displayPPM
;!                        _displayTime
;!                           _instCTRL
;!                     _printStatusPPM
;!                     _printStatusTMP
;!                         _printToLCD
;!                        _setHoursEnd
;!                      _setHoursStart
;!                      _setMinutesEnd
;!                    _setMinutesStart
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setMinutesStart                                      2     2      0    7773
;!                                             42 BANK0      2     2      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setMinutesEnd                                        2     2      0    7773
;!                                             42 BANK0      2     2      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setHoursStart                                        2     2      0    7773
;!                                             42 BANK0      2     2      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _setHoursEnd                                          2     2      0    7773
;!                                             42 BANK0      2     2      0
;!                            ___awmod
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4    1144
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _printStatusTMP                                       1     1      0    2186
;!                                              4 BANK0      1     1      0
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (2) _printStatusPPM                                       1     1      0    2186
;!                                              4 BANK0      1     1      0
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (2) _displayTime                                         20    20      0    6739
;!                                             42 BANK0     20    20      0
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _displayPPM                                          26    26      0   16263
;!                                             60 BANK0      1     1      0
;!                                              0 BANK1     25    25      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                         _printToLCD
;!                            _sprintf
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
;! (2) _displayDHT11Stat                                    24    24      0    6823
;!                                             42 BANK0     24    24      0
;!                           _instCTRL
;!                         _printToLCD
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             22    16      6    4505
;!                                             20 BANK0     22    16      6
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (3) _isdigit                                              2     2      0      99
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     265
;!                                             14 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _startUpLCD                                           0     0      0    2168
;!                            _initLCD
;!                           _instCTRL
;!                         _printToLCD
;! ---------------------------------------------------------------------------------
;! (3) _printToLCD                                           2     0      2    2124
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
;! (1) _runMQ135                                             0     0      0   11805
;!                          _CalcMQ135
;!                            _readADC
;! ---------------------------------------------------------------------------------
;! (2) _readADC                                              5     3      2      22
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _CalcMQ135                                           42    39      3   11783
;!                                             62 BANK0      3     0      3
;!                                              0 BANK1     39    39      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            _readADC (ARG)
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
;! (1) _handleTemp                                           0     0      0       0
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
;! (1) _calculateTemp                                        2     0      2     866
;!                                             14 BANK0      2     0      2
;!                            ___lwdiv
;!                             ___wmul
;!                            _readADC (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     396
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     374
;!                                              6 BANK0      8     4      4
;!                             ___wmul (ARG)
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
;!   _calculateTemp
;!     ___lwdiv
;!       ___wmul (ARG)
;!     ___wmul
;!     _readADC (ARG)
;!   _checkMode
;!     _instCTRL
;!   _checkSelect
;!     _instCTRL
;!   _checkTime
;!   _handlePPM
;!     ___ftge
;!   _handleTemp
;!   _initADC
;!   _initInterrupt
;!   _instCTRL
;!   _readADC
;!   _runClock
;!   _runMQ135
;!     _CalcMQ135
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
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
;!       _readADC (ARG)
;!     _readADC
;!   _setPortDirections
;!   _startUpLCD
;!     _initLCD
;!       _instCTRL
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!       _instCTRL
;!   _updateState
;!     _displayDHT11Stat
;!       _instCTRL
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
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
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
;!     _displayTime
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
;!     _instCTRL
;!     _printStatusPPM
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!     _printStatusTMP
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
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
;!     _setHoursStart
;!       ___awmod
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
;!     _setMinutesEnd
;!       ___awmod
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
;!     _setMinutesStart
;!       ___awmod
;!       _printToLCD
;!         _dataCTRL
;!         _instCTRL
;!       _sprintf
;!         ___lwdiv
;!           ___wmul (ARG)
;!         ___lwmod
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!         ___wmul
;!         _isdigit
;!     _sprintf
;!       ___lwdiv
;!         ___wmul (ARG)
;!       ___lwmod
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!       ___wmul
;!       _isdigit
;!
;! _ISR (ROOT)
;!   i1_instCTRL
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       7       9        7.3%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     2A      4F       7       98.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      B4      12        0.0%
;!ABS                  0      0      B4       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_calculateTemp
;;		_checkMode
;;		_checkSelect
;;		_checkTime
;;		_handlePPM
;;		_handleTemp
;;		_initADC
;;		_initInterrupt
;;		_instCTRL
;;		_readADC
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l3586:	
;main.c: 31: setPortDirections();
	fcall	_setPortDirections
	line	32
;main.c: 32: initADC();
	fcall	_initADC
	line	33
	
l3588:	
;main.c: 33: initInterrupt();
	fcall	_initInterrupt
	line	34
	
l3590:	
;main.c: 34: startUpLCD();
	fcall	_startUpLCD
	line	35
	
l3592:	
;main.c: 35: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	69
movwf	((??_main+0)^080h+0+1),f
	movlw	169
movwf	((??_main+0)^080h+0),f
u4917:
	decfsz	((??_main+0)^080h+0),f
	goto	u4917
	decfsz	((??_main+0)^080h+0+1),f
	goto	u4917
	decfsz	((??_main+0)^080h+0+2),f
	goto	u4917
	nop2
opt asmopt_on

	line	36
	
l3594:	
;main.c: 36: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	goto	l3596
	line	37
;main.c: 37: while (1)
	
l310:	
	line	39
	
l3596:	
;main.c: 38: {
;main.c: 39: runClock();
	fcall	_runClock
	line	40
	
l3598:	
;main.c: 40: checkTime();
	fcall	_checkTime
	line	41
	
l3600:	
;main.c: 41: runMQ135();
	fcall	_runMQ135
	line	42
	
l3602:	
;main.c: 42: handlePPM();
	fcall	_handlePPM
	line	43
	
l3604:	
;main.c: 43: calculateTemp(readADC(1));
	movlw	(01h)
	fcall	_readADC
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_readADC)),w
	clrf	(calculateTemp@adcValue+1)
	addwf	(calculateTemp@adcValue+1)
	movf	(0+(?_readADC)),w
	clrf	(calculateTemp@adcValue)
	addwf	(calculateTemp@adcValue)

	fcall	_calculateTemp
	line	44
	
l3606:	
;main.c: 44: handleTemp();
	fcall	_handleTemp
	line	46
	
l3608:	
;main.c: 46: checkSelect();
	fcall	_checkSelect
	line	47
	
l3610:	
;main.c: 47: checkMode();
	fcall	_checkMode
	line	48
	
l3612:	
;main.c: 48: updateState();
	fcall	_updateState
	goto	l3596
	line	49
	
l311:	
	line	37
	goto	l3596
	
l312:	
	line	50
	
l313:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updateState

;; *************** function _updateState *****************
;; Defined at:
;;		line 99 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         10   70[BANK0 ] unsigned char [10]
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
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_displayDHT11Stat
;;		_displayPPM
;;		_displayTime
;;		_instCTRL
;;		_printStatusPPM
;;		_printStatusTMP
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
	line	99
global __ptext1
__ptext1:	;psect for function _updateState
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	99
	global	__size_of_updateState
	__size_of_updateState	equ	__end_of_updateState-_updateState
	
_updateState:	
;incstack = 0
	opt	stack 2
; Regs used in _updateState: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	102
	
l3474:	
;main.c: 101: char buffer[10];
;main.c: 102: switch (mode)
	goto	l3558
	line	104
;main.c: 103: {
;main.c: 104: case DISP_CMN:
	
l333:	
	line	105
	
l3476:	
;main.c: 105: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	106
	
l3478:	
;main.c: 106: printToLCD("MODE: ");
	movlw	low((STR_28)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_28)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	107
;main.c: 107: switch (select)
	goto	l3504
	line	109
;main.c: 108: {
;main.c: 109: case 0:
	
l335:	
	line	110
	
l3480:	
;main.c: 110: printToLCD("DISP CMMON PG1");
	movlw	low((STR_29)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_29)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	111
	
l3482:	
;main.c: 111: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	112
	
l3484:	
;main.c: 112: displayTime();
	fcall	_displayTime
	line	113
;main.c: 113: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	114
	
l3486:	
;main.c: 114: sprintf(buffer, "STRT: %2d:%2d", savedHoursStart, savedMinutesStart);
	movlw	low((STR_30)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_30)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+0)+0
	clrf	(??_updateState+0)+0+1
	movf	0+(??_updateState+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_updateState+0)+0,w
	movwf	1+(?_sprintf)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+2)+0
	clrf	(??_updateState+2)+0+1
	movf	0+(??_updateState+2)+0,w
	movwf	0+(?_sprintf)+04h
	movf	1+(??_updateState+2)+0,w
	movwf	1+(?_sprintf)+04h
	movlw	(updateState@buffer)&0ffh
	fcall	_sprintf
	line	115
	
l3488:	
;main.c: 115: printToLCD(buffer);
	movlw	(updateState@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	116
;main.c: 116: instCTRL(0xD4);
	movlw	(0D4h)
	fcall	_instCTRL
	line	117
	
l3490:	
;main.c: 117: sprintf(buffer, "END: %2d:%2d", savedHoursEnd, savedMinutesEnd);
	movlw	low((STR_31)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_31)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+0)+0
	clrf	(??_updateState+0)+0+1
	movf	0+(??_updateState+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_updateState+0)+0,w
	movwf	1+(?_sprintf)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_updateState+2)+0
	clrf	(??_updateState+2)+0+1
	movf	0+(??_updateState+2)+0,w
	movwf	0+(?_sprintf)+04h
	movf	1+(??_updateState+2)+0,w
	movwf	1+(?_sprintf)+04h
	movlw	(updateState@buffer)&0ffh
	fcall	_sprintf
	line	118
	
l3492:	
;main.c: 118: printToLCD(buffer);
	movlw	(updateState@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	119
;main.c: 119: break;
	goto	l351
	line	120
;main.c: 120: case 1:
	
l337:	
	line	121
	
l3494:	
;main.c: 121: printToLCD("DISP CMMON PG2");
	movlw	low((STR_32)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_32)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	122
	
l3496:	
;main.c: 122: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	123
	
l3498:	
;main.c: 123: displayPPM();
	fcall	_displayPPM
	line	124
;main.c: 124: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	127
	
l3500:	
;main.c: 127: displayDHT11Stat();
	fcall	_displayDHT11Stat
	line	128
;main.c: 128: break;
	goto	l351
	line	129
	
l3502:	
;main.c: 129: }
	goto	l351
	line	107
	
l334:	
	
l3504:	
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
	goto	l3480
	xorlw	1^0	; case 1
	skipnz
	goto	l3494
	goto	l351
	opt asmopt_on

	line	129
	
l336:	
	line	130
;main.c: 130: break;
	goto	l351
	line	131
;main.c: 131: case SET_ACTV_START:
	
l339:	
	line	132
	
l3506:	
;main.c: 132: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	133
	
l3508:	
;main.c: 133: printToLCD("SET HRS - START");
	movlw	low((STR_33)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_33)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	134
;main.c: 134: switch (select)
	goto	l3524
	line	136
;main.c: 135: {
;main.c: 136: case 0:
	
l341:	
	line	137
	
l3510:	
;main.c: 137: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	138
	
l3512:	
;main.c: 138: printToLCD("SET HOURS");
	movlw	low((STR_34)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_34)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	139
	
l3514:	
;main.c: 139: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	140
;main.c: 140: setHoursStart();
	fcall	_setHoursStart
	line	141
;main.c: 141: break;
	goto	l351
	line	142
;main.c: 142: case 1:
	
l343:	
	line	143
	
l3516:	
;main.c: 143: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	144
	
l3518:	
;main.c: 144: printToLCD("SET MINUTES");
	movlw	low((STR_35)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_35)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	145
	
l3520:	
;main.c: 145: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	146
;main.c: 146: setMinutesStart();
	fcall	_setMinutesStart
	line	147
;main.c: 147: break;
	goto	l351
	line	148
	
l3522:	
;main.c: 148: }
	goto	l351
	line	134
	
l340:	
	
l3524:	
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
	goto	l3510
	xorlw	1^0	; case 1
	skipnz
	goto	l3516
	goto	l351
	opt asmopt_on

	line	148
	
l342:	
	line	149
;main.c: 149: break;
	goto	l351
	line	150
;main.c: 150: case SET_ACTV_END:
	
l344:	
	line	151
	
l3526:	
;main.c: 151: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	152
	
l3528:	
;main.c: 152: printToLCD("SET HRS - END");
	movlw	low((STR_36)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_36)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	153
;main.c: 153: switch (select)
	goto	l3544
	line	155
;main.c: 154: {
;main.c: 155: case 0:
	
l346:	
	line	156
	
l3530:	
;main.c: 156: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	157
	
l3532:	
;main.c: 157: printToLCD("SET HOURS");
	movlw	low((STR_37)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_37)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	158
	
l3534:	
;main.c: 158: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	159
;main.c: 159: setHoursEnd();
	fcall	_setHoursEnd
	line	160
;main.c: 160: break;
	goto	l351
	line	161
;main.c: 161: case 1:
	
l348:	
	line	162
	
l3536:	
;main.c: 162: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	163
	
l3538:	
;main.c: 163: printToLCD("SET MINUTES");
	movlw	low((STR_38)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_38)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	164
	
l3540:	
;main.c: 164: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	165
;main.c: 165: setMinutesEnd();
	fcall	_setMinutesEnd
	line	166
;main.c: 166: break;
	goto	l351
	line	167
	
l3542:	
;main.c: 167: }
	goto	l351
	line	153
	
l345:	
	
l3544:	
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
	goto	l3530
	xorlw	1^0	; case 1
	skipnz
	goto	l3536
	goto	l351
	opt asmopt_on

	line	167
	
l347:	
	line	168
;main.c: 168: break;
	goto	l351
	line	169
;main.c: 169: case CHCK_IO:
	
l349:	
	line	170
	
l3546:	
;main.c: 170: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	171
	
l3548:	
;main.c: 171: printToLCD("IO STATUS:");
	movlw	low((STR_39)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_39)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	172
	
l3550:	
;main.c: 172: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	173
;main.c: 173: printStatusTMP(tempFlag);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tempFlag)^080h,w
	fcall	_printStatusTMP
	line	174
	
l3552:	
;main.c: 174: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	175
	
l3554:	
;main.c: 175: printStatusPPM(ppmFlag);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ppmFlag)^080h,w
	fcall	_printStatusPPM
	line	176
;main.c: 176: break;
	goto	l351
	line	177
;main.c: 177: default:
	
l350:	
	line	178
;main.c: 178: break;
	goto	l351
	line	179
	
l3556:	
;main.c: 179: }
	goto	l351
	line	102
	
l332:	
	
l3558:	
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
	goto	l3476
	xorlw	1^0	; case 1
	skipnz
	goto	l3506
	xorlw	2^1	; case 2
	skipnz
	goto	l3526
	xorlw	3^2	; case 3
	skipnz
	goto	l3546
	goto	l351
	opt asmopt_on

	line	179
	
l338:	
	line	180
	
l351:	
	return
	opt stack 0
GLOBAL	__end_of_updateState
	__end_of_updateState:
	signat	_updateState,88
	global	_setMinutesStart

;; *************** function _setMinutesStart *****************
;; Defined at:
;;		line 132 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	132
global __ptext2
__ptext2:	;psect for function _setMinutesStart
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	132
	global	__size_of_setMinutesStart
	__size_of_setMinutesStart	equ	__end_of_setMinutesStart-_setMinutesStart
	
_setMinutesStart:	
;incstack = 0
	opt	stack 2
; Regs used in _setMinutesStart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	134
	
l3302:	
;time_scheduler.h: 134: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutesStart+0)+0
	movlw	03h
u4495:
	clrc
	rrf	(??_setMinutesStart+0)+0,f
	addlw	-1
	skipz
	goto	u4495
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
u4505:
	clrc
	rrf	(??_setMinutesStart+0)+0,f
	addlw	-1
	skipz
	goto	u4505
	movf	0+(??_setMinutesStart+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutesStart+1)+0
	movf	(??_setMinutesStart+1)+0,w
	movwf	(_key)
	line	137
	
l3304:	
;time_scheduler.h: 137: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutesStart+0)+0+1),f
	movlw	238
movwf	((??_setMinutesStart+0)+0),f
u4927:
	decfsz	((??_setMinutesStart+0)+0),f
	goto	u4927
	decfsz	((??_setMinutesStart+0)+0+1),f
	goto	u4927
	nop
opt asmopt_on

	line	139
	
l3306:	
;time_scheduler.h: 139: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4510
	goto	l3332
u4510:
	
l3308:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4521
	goto	u4520
u4521:
	goto	l3332
u4520:
	line	141
	
l3310:	
;time_scheduler.h: 140: {
;time_scheduler.h: 141: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l3316
u4530:
	line	143
	
l3312:	
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
	
l3314:	
;time_scheduler.h: 144: sprintf(debugInfo, "INC: %02d", savedMinutesStart);
	movlw	low((STR_13)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_13)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	clrf	(??_setMinutesStart+0)+0+1
	movf	0+(??_setMinutesStart+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setMinutesStart+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	145
;time_scheduler.h: 145: }
	goto	l185
	line	146
	
l184:	
	
l3316:	
;time_scheduler.h: 146: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4541
	goto	u4540
u4541:
	goto	l3322
u4540:
	line	148
	
l3318:	
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
	
l3320:	
;time_scheduler.h: 149: sprintf(debugInfo, "DEC: %02d", savedMinutesStart);
	movlw	low((STR_14)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_14)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	clrf	(??_setMinutesStart+0)+0+1
	movf	0+(??_setMinutesStart+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setMinutesStart+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	150
;time_scheduler.h: 150: }
	goto	l185
	line	151
	
l186:	
	
l3322:	
;time_scheduler.h: 151: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l185
u4550:
	line	153
	
l3324:	
;time_scheduler.h: 152: {
;time_scheduler.h: 153: sprintf(debugInfo, "SET: %02d", savedMinutesStart);
	movlw	low((STR_15)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_15)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	clrf	(??_setMinutesStart+0)+0+1
	movf	0+(??_setMinutesStart+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setMinutesStart+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l185
	line	154
	
l188:	
	goto	l185
	line	156
	
l187:	
	
l185:	
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
	
l3326:	
;time_scheduler.h: 157: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_lastKeyState)
	line	159
;time_scheduler.h: 159: while ((PORTB & 0x08) != 0)
	goto	l3330
	
l190:	
	line	161
	
l3328:	
;time_scheduler.h: 160: {
;time_scheduler.h: 161: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutesStart+0)+0+1),f
	movlw	251
movwf	((??_setMinutesStart+0)+0),f
u4937:
	decfsz	((??_setMinutesStart+0)+0),f
	goto	u4937
	decfsz	((??_setMinutesStart+0)+0+1),f
	goto	u4937
	nop2
opt asmopt_on

	goto	l3330
	line	162
	
l189:	
	line	159
	
l3330:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4561
	goto	u4560
u4561:
	goto	l3328
u4560:
	goto	l194
	
l191:	
	line	163
;time_scheduler.h: 162: }
;time_scheduler.h: 163: }
	goto	l194
	line	164
	
l183:	
	
l3332:	
;time_scheduler.h: 164: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4571
	goto	u4570
u4571:
	goto	l194
u4570:
	line	166
	
l3334:	
;time_scheduler.h: 165: {
;time_scheduler.h: 166: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesStart+0)+0
	movf	(??_setMinutesStart+0)+0,w
	movwf	(_lastKeyState)
	goto	l194
	line	167
	
l193:	
	goto	l194
	line	168
	
l192:	
	
l194:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutesStart
	__end_of_setMinutesStart:
	signat	_setMinutesStart,88
	global	_setMinutesEnd

;; *************** function _setMinutesEnd *****************
;; Defined at:
;;		line 170 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	170
	global	__size_of_setMinutesEnd
	__size_of_setMinutesEnd	equ	__end_of_setMinutesEnd-_setMinutesEnd
	
_setMinutesEnd:	
;incstack = 0
	opt	stack 2
; Regs used in _setMinutesEnd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	172
	
l3336:	
;time_scheduler.h: 172: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setMinutesEnd+0)+0
	movlw	03h
u4585:
	clrc
	rrf	(??_setMinutesEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4585
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
u4595:
	clrc
	rrf	(??_setMinutesEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4595
	movf	0+(??_setMinutesEnd+0)+0,w
	andlw	0Fh
	movwf	(??_setMinutesEnd+1)+0
	movf	(??_setMinutesEnd+1)+0,w
	movwf	(_key)
	line	175
	
l3338:	
;time_scheduler.h: 175: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setMinutesEnd+0)+0+1),f
	movlw	238
movwf	((??_setMinutesEnd+0)+0),f
u4947:
	decfsz	((??_setMinutesEnd+0)+0),f
	goto	u4947
	decfsz	((??_setMinutesEnd+0)+0+1),f
	goto	u4947
	nop
opt asmopt_on

	line	177
	
l3340:	
;time_scheduler.h: 177: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4600
	goto	l3366
u4600:
	
l3342:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4611
	goto	u4610
u4611:
	goto	l3366
u4610:
	line	179
	
l3344:	
;time_scheduler.h: 178: {
;time_scheduler.h: 179: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4621
	goto	u4620
u4621:
	goto	l3350
u4620:
	line	181
	
l3346:	
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
	
l3348:	
;time_scheduler.h: 182: sprintf(debugInfo, "INC: %02d", savedMinutesEnd);
	movlw	low((STR_16)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_16)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	clrf	(??_setMinutesEnd+0)+0+1
	movf	0+(??_setMinutesEnd+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setMinutesEnd+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	183
;time_scheduler.h: 183: }
	goto	l199
	line	184
	
l198:	
	
l3350:	
;time_scheduler.h: 184: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4631
	goto	u4630
u4631:
	goto	l3356
u4630:
	line	186
	
l3352:	
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
	
l3354:	
;time_scheduler.h: 187: sprintf(debugInfo, "DEC: %02d", savedMinutesEnd);
	movlw	low((STR_17)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_17)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	clrf	(??_setMinutesEnd+0)+0+1
	movf	0+(??_setMinutesEnd+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setMinutesEnd+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	188
;time_scheduler.h: 188: }
	goto	l199
	line	189
	
l200:	
	
l3356:	
;time_scheduler.h: 189: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l199
u4640:
	line	191
	
l3358:	
;time_scheduler.h: 190: {
;time_scheduler.h: 191: sprintf(debugInfo, "SET: %02d", savedMinutesEnd);
	movlw	low((STR_18)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_18)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	clrf	(??_setMinutesEnd+0)+0+1
	movf	0+(??_setMinutesEnd+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setMinutesEnd+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l199
	line	192
	
l202:	
	goto	l199
	line	194
	
l201:	
	
l199:	
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
	
l3360:	
;time_scheduler.h: 195: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_lastKeyState)
	line	197
;time_scheduler.h: 197: while ((PORTB & 0x08) != 0)
	goto	l3364
	
l204:	
	line	199
	
l3362:	
;time_scheduler.h: 198: {
;time_scheduler.h: 199: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setMinutesEnd+0)+0+1),f
	movlw	251
movwf	((??_setMinutesEnd+0)+0),f
u4957:
	decfsz	((??_setMinutesEnd+0)+0),f
	goto	u4957
	decfsz	((??_setMinutesEnd+0)+0+1),f
	goto	u4957
	nop2
opt asmopt_on

	goto	l3364
	line	200
	
l203:	
	line	197
	
l3364:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4651
	goto	u4650
u4651:
	goto	l3362
u4650:
	goto	l208
	
l205:	
	line	201
;time_scheduler.h: 200: }
;time_scheduler.h: 201: }
	goto	l208
	line	202
	
l197:	
	
l3366:	
;time_scheduler.h: 202: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4661
	goto	u4660
u4661:
	goto	l208
u4660:
	line	204
	
l3368:	
;time_scheduler.h: 203: {
;time_scheduler.h: 204: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setMinutesEnd+0)+0
	movf	(??_setMinutesEnd+0)+0,w
	movwf	(_lastKeyState)
	goto	l208
	line	205
	
l207:	
	goto	l208
	line	206
	
l206:	
	
l208:	
	return
	opt stack 0
GLOBAL	__end_of_setMinutesEnd
	__end_of_setMinutesEnd:
	signat	_setMinutesEnd,88
	global	_setHoursStart

;; *************** function _setHoursStart *****************
;; Defined at:
;;		line 55 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	55
	global	__size_of_setHoursStart
	__size_of_setHoursStart	equ	__end_of_setHoursStart-_setHoursStart
	
_setHoursStart:	
;incstack = 0
	opt	stack 2
; Regs used in _setHoursStart: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	57
	
l3234:	
;time_scheduler.h: 57: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHoursStart+0)+0
	movlw	03h
u4315:
	clrc
	rrf	(??_setHoursStart+0)+0,f
	addlw	-1
	skipz
	goto	u4315
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
u4325:
	clrc
	rrf	(??_setHoursStart+0)+0,f
	addlw	-1
	skipz
	goto	u4325
	movf	0+(??_setHoursStart+0)+0,w
	andlw	0Fh
	movwf	(??_setHoursStart+1)+0
	movf	(??_setHoursStart+1)+0,w
	movwf	(_key)
	line	60
	
l3236:	
;time_scheduler.h: 60: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHoursStart+0)+0+1),f
	movlw	238
movwf	((??_setHoursStart+0)+0),f
u4967:
	decfsz	((??_setHoursStart+0)+0),f
	goto	u4967
	decfsz	((??_setHoursStart+0)+0+1),f
	goto	u4967
	nop
opt asmopt_on

	line	62
	
l3238:	
;time_scheduler.h: 62: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4330
	goto	l3264
u4330:
	
l3240:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4341
	goto	u4340
u4341:
	goto	l3264
u4340:
	line	64
	
l3242:	
;time_scheduler.h: 63: {
;time_scheduler.h: 64: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4351
	goto	u4350
u4351:
	goto	l3248
u4350:
	line	66
	
l3244:	
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
	
l3246:	
;time_scheduler.h: 67: sprintf(debugInfo, "INC: %02d", savedHoursStart);
	movlw	low((STR_7)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_7)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	clrf	(??_setHoursStart+0)+0+1
	movf	0+(??_setHoursStart+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setHoursStart+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	68
;time_scheduler.h: 68: }
	goto	l157
	line	69
	
l156:	
	
l3248:	
;time_scheduler.h: 69: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4361
	goto	u4360
u4361:
	goto	l3254
u4360:
	line	71
	
l3250:	
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
	
l3252:	
;time_scheduler.h: 72: sprintf(debugInfo, "DEC: %02d", savedHoursStart);
	movlw	low((STR_8)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_8)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	clrf	(??_setHoursStart+0)+0+1
	movf	0+(??_setHoursStart+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setHoursStart+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	73
;time_scheduler.h: 73: }
	goto	l157
	line	74
	
l158:	
	
l3254:	
;time_scheduler.h: 74: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4371
	goto	u4370
u4371:
	goto	l157
u4370:
	line	76
	
l3256:	
;time_scheduler.h: 75: {
;time_scheduler.h: 76: sprintf(debugInfo, "SET: %02d", savedHoursStart);
	movlw	low((STR_9)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_9)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	clrf	(??_setHoursStart+0)+0+1
	movf	0+(??_setHoursStart+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setHoursStart+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l157
	line	78
	
l160:	
	goto	l157
	line	80
	
l159:	
	
l157:	
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
	
l3258:	
;time_scheduler.h: 81: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_lastKeyState)
	line	83
;time_scheduler.h: 83: while ((PORTB & 0x08) != 0)
	goto	l3262
	
l162:	
	line	85
	
l3260:	
;time_scheduler.h: 84: {
;time_scheduler.h: 85: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHoursStart+0)+0+1),f
	movlw	251
movwf	((??_setHoursStart+0)+0),f
u4977:
	decfsz	((??_setHoursStart+0)+0),f
	goto	u4977
	decfsz	((??_setHoursStart+0)+0+1),f
	goto	u4977
	nop2
opt asmopt_on

	goto	l3262
	line	86
	
l161:	
	line	83
	
l3262:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4381
	goto	u4380
u4381:
	goto	l3260
u4380:
	goto	l166
	
l163:	
	line	87
;time_scheduler.h: 86: }
;time_scheduler.h: 87: }
	goto	l166
	line	88
	
l155:	
	
l3264:	
;time_scheduler.h: 88: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4391
	goto	u4390
u4391:
	goto	l166
u4390:
	line	90
	
l3266:	
;time_scheduler.h: 89: {
;time_scheduler.h: 90: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursStart+0)+0
	movf	(??_setHoursStart+0)+0,w
	movwf	(_lastKeyState)
	goto	l166
	line	91
	
l165:	
	goto	l166
	line	92
	
l164:	
	
l166:	
	return
	opt stack 0
GLOBAL	__end_of_setHoursStart
	__end_of_setHoursStart:
	signat	_setHoursStart,88
	global	_setHoursEnd

;; *************** function _setHoursEnd *****************
;; Defined at:
;;		line 94 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	94
	global	__size_of_setHoursEnd
	__size_of_setHoursEnd	equ	__end_of_setHoursEnd-_setHoursEnd
	
_setHoursEnd:	
;incstack = 0
	opt	stack 2
; Regs used in _setHoursEnd: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	96
	
l3268:	
;time_scheduler.h: 96: keyValid = (PORTB & 0x08) >> 3;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_setHoursEnd+0)+0
	movlw	03h
u4405:
	clrc
	rrf	(??_setHoursEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4405
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
u4415:
	clrc
	rrf	(??_setHoursEnd+0)+0,f
	addlw	-1
	skipz
	goto	u4415
	movf	0+(??_setHoursEnd+0)+0,w
	andlw	0Fh
	movwf	(??_setHoursEnd+1)+0
	movf	(??_setHoursEnd+1)+0,w
	movwf	(_key)
	line	99
	
l3270:	
;time_scheduler.h: 99: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_setHoursEnd+0)+0+1),f
	movlw	238
movwf	((??_setHoursEnd+0)+0),f
u4987:
	decfsz	((??_setHoursEnd+0)+0),f
	goto	u4987
	decfsz	((??_setHoursEnd+0)+0+1),f
	goto	u4987
	nop
opt asmopt_on

	line	101
	
l3272:	
;time_scheduler.h: 101: if (keyValid && key != lastKeyState)
	movf	(_keyValid),w
	skipz
	goto	u4420
	goto	l3298
u4420:
	
l3274:	
	movf	(_key),w
	xorwf	(_lastKeyState),w
	skipnz
	goto	u4431
	goto	u4430
u4431:
	goto	l3298
u4430:
	line	103
	
l3276:	
;time_scheduler.h: 102: {
;time_scheduler.h: 103: if (key == 0b00001100)
	movf	(_key),w
	xorlw	0Ch
	skipz
	goto	u4441
	goto	u4440
u4441:
	goto	l3282
u4440:
	line	105
	
l3278:	
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
	
l3280:	
;time_scheduler.h: 106: sprintf(debugInfo, "INC: %02d", savedHoursEnd);
	movlw	low((STR_10)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_10)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	clrf	(??_setHoursEnd+0)+0+1
	movf	0+(??_setHoursEnd+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setHoursEnd+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	107
;time_scheduler.h: 107: }
	goto	l171
	line	108
	
l170:	
	
l3282:	
;time_scheduler.h: 108: else if (key == 0b00001110)
	movf	(_key),w
	xorlw	0Eh
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l3288
u4450:
	line	110
	
l3284:	
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
	
l3286:	
;time_scheduler.h: 111: sprintf(debugInfo, "DEC: %02d", savedHoursEnd);
	movlw	low((STR_11)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_11)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	clrf	(??_setHoursEnd+0)+0+1
	movf	0+(??_setHoursEnd+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setHoursEnd+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	line	112
;time_scheduler.h: 112: }
	goto	l171
	line	113
	
l172:	
	
l3288:	
;time_scheduler.h: 113: else if (key == 0b00001101)
	movf	(_key),w
	xorlw	0Dh
	skipz
	goto	u4461
	goto	u4460
u4461:
	goto	l171
u4460:
	line	115
	
l3290:	
;time_scheduler.h: 114: {
;time_scheduler.h: 115: sprintf(debugInfo, "SET: %02d", savedHoursEnd);
	movlw	low((STR_12)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_12)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	clrf	(??_setHoursEnd+0)+0+1
	movf	0+(??_setHoursEnd+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_setHoursEnd+0)+0,w
	movwf	1+(?_sprintf)+02h
	movlw	(_debugInfo)&0ffh
	fcall	_sprintf
	goto	l171
	line	116
	
l174:	
	goto	l171
	line	118
	
l173:	
	
l171:	
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
	
l3292:	
;time_scheduler.h: 119: lastKeyState = key;
	movf	(_key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_lastKeyState)
	line	121
;time_scheduler.h: 121: while ((PORTB & 0x08) != 0)
	goto	l3296
	
l176:	
	line	123
	
l3294:	
;time_scheduler.h: 122: {
;time_scheduler.h: 123: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_setHoursEnd+0)+0+1),f
	movlw	251
movwf	((??_setHoursEnd+0)+0),f
u4997:
	decfsz	((??_setHoursEnd+0)+0),f
	goto	u4997
	decfsz	((??_setHoursEnd+0)+0+1),f
	goto	u4997
	nop2
opt asmopt_on

	goto	l3296
	line	124
	
l175:	
	line	121
	
l3296:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),(3)&7	;volatile
	goto	u4471
	goto	u4470
u4471:
	goto	l3294
u4470:
	goto	l180
	
l177:	
	line	125
;time_scheduler.h: 124: }
;time_scheduler.h: 125: }
	goto	l180
	line	126
	
l169:	
	
l3298:	
;time_scheduler.h: 126: else if (!keyValid)
	movf	(_keyValid),f
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l180
u4480:
	line	128
	
l3300:	
;time_scheduler.h: 127: {
;time_scheduler.h: 128: lastKeyState = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setHoursEnd+0)+0
	movf	(??_setHoursEnd+0)+0,w
	movwf	(_lastKeyState)
	goto	l180
	line	129
	
l179:	
	goto	l180
	line	130
	
l178:	
	
l180:	
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
	
l2224:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l2226:	
	btfss	(___awmod@dividend+1),7
	goto	u2511
	goto	u2510
u2511:
	goto	l2232
u2510:
	line	15
	
l2228:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2230:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2232
	line	17
	
l631:	
	line	18
	
l2232:	
	btfss	(___awmod@divisor+1),7
	goto	u2521
	goto	u2520
u2521:
	goto	l2236
u2520:
	line	19
	
l2234:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2236
	
l632:	
	line	20
	
l2236:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l2254
u2530:
	line	21
	
l2238:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2244
	
l635:	
	line	23
	
l2240:	
	movlw	01h
	
u2545:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2545
	line	24
	
l2242:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2244
	line	25
	
l634:	
	line	22
	
l2244:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l2240
u2550:
	goto	l2246
	
l636:	
	goto	l2246
	line	26
	
l637:	
	line	27
	
l2246:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2565
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2565:
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l2250
u2560:
	line	28
	
l2248:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2250
	
l638:	
	line	29
	
l2250:	
	movlw	01h
	
u2575:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2575
	line	30
	
l2252:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2246
u2580:
	goto	l2254
	
l639:	
	goto	l2254
	line	31
	
l633:	
	line	32
	
l2254:	
	movf	(___awmod@sign),w
	skipz
	goto	u2590
	goto	l2258
u2590:
	line	33
	
l2256:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2258
	
l640:	
	line	34
	
l2258:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l641
	
l2260:	
	line	35
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_printStatusTMP

;; *************** function _printStatusTMP *****************
;; Defined at:
;;		line 47 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
	line	47
global __ptext7
__ptext7:	;psect for function _printStatusTMP
psect	text7
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
	line	47
	global	__size_of_printStatusTMP
	__size_of_printStatusTMP	equ	__end_of_printStatusTMP-_printStatusTMP
	
_printStatusTMP:	
;incstack = 0
	opt	stack 2
; Regs used in _printStatusTMP: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printStatusTMP@handler stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printStatusTMP@handler)
	line	49
	
l3370:	
;temp_module.h: 49: if (handler == 1)
	movf	(printStatusTMP@handler),w
	xorlw	01h
	skipz
	goto	u4671
	goto	u4670
u4671:
	goto	l3374
u4670:
	line	51
	
l3372:	
;temp_module.h: 50: {
;temp_module.h: 51: printToLCD("VENT ON ");
	movlw	low((STR_20)|8000h)
	movwf	(printToLCD@str)
	movlw	high((STR_20)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	52
;temp_module.h: 52: }
	goto	l254
	line	53
	
l251:	
	
l3374:	
;temp_module.h: 53: else if (handler == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printStatusTMP@handler),f
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l254
u4680:
	line	55
	
l3376:	
;temp_module.h: 54: {
;temp_module.h: 55: printToLCD("FAN OFF");
	movlw	low((STR_21)|8000h)
	movwf	(printToLCD@str)
	movlw	high((STR_21)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	goto	l254
	line	56
	
l253:	
	goto	l254
	line	57
	
l252:	
	
l254:	
	return
	opt stack 0
GLOBAL	__end_of_printStatusTMP
	__end_of_printStatusTMP:
	signat	_printStatusTMP,4216
	global	_printStatusPPM

;; *************** function _printStatusPPM *****************
;; Defined at:
;;		line 70 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	70
global __ptext8
__ptext8:	;psect for function _printStatusPPM
psect	text8
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	70
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
	line	72
	
l3224:	
;mq135_module.h: 72: if (handler == 1)
	movf	(printStatusPPM@handler),w
	xorlw	01h
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l3228
u4290:
	line	74
	
l3226:	
;mq135_module.h: 73: {
;mq135_module.h: 74: printToLCD("PURF HI");
	movlw	low((STR_4)|8000h)
	movwf	(printToLCD@str)
	movlw	high((STR_4)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	75
;mq135_module.h: 75: }
	goto	l121
	line	76
	
l118:	
	
l3228:	
;mq135_module.h: 76: else if (handler == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printStatusPPM@handler),f
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l121
u4300:
	line	78
	
l3230:	
;mq135_module.h: 77: {
;mq135_module.h: 78: printToLCD("PURF LO");
	movlw	low((STR_5)|8000h)
	movwf	(printToLCD@str)
	movlw	high((STR_5)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	goto	l121
	line	79
	
l120:	
	goto	l121
	line	80
	
l119:	
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_printStatusPPM
	__end_of_printStatusPPM:
	signat	_printStatusPPM,4216
	global	_displayTime

;; *************** function _displayTime *****************
;; Defined at:
;;		line 49 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  timeFormat     16   46[BANK0 ] unsigned char [16]
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
;;      Temps:          0       4       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	49
global __ptext9
__ptext9:	;psect for function _displayTime
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	49
	global	__size_of_displayTime
	__size_of_displayTime	equ	__end_of_displayTime-_displayTime
	
_displayTime:	
;incstack = 0
	opt	stack 2
; Regs used in _displayTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l3232:	
;time_scheduler.h: 51: char timeFormat[16];
;time_scheduler.h: 52: sprintf(timeFormat, "Time: %02d:%02d", hours, minutes);
	movlw	low((STR_6)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_6)|8000h)
	movwf	((sprintf@f))+1
	movf	(_hours),w	;volatile
	movwf	(??_displayTime+0)+0
	clrf	(??_displayTime+0)+0+1
	movf	0+(??_displayTime+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_displayTime+0)+0,w
	movwf	1+(?_sprintf)+02h
	movf	(_minutes),w	;volatile
	movwf	(??_displayTime+2)+0
	clrf	(??_displayTime+2)+0+1
	movf	0+(??_displayTime+2)+0,w
	movwf	0+(?_sprintf)+04h
	movf	1+(??_displayTime+2)+0,w
	movwf	1+(?_sprintf)+04h
	movlw	(displayTime@timeFormat)&0ffh
	fcall	_sprintf
	line	53
;time_scheduler.h: 53: printToLCD(timeFormat);
	movlw	(displayTime@timeFormat&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	54
	
l152:	
	return
	opt stack 0
GLOBAL	__end_of_displayTime
	__end_of_displayTime:
	signat	_displayTime,88
	global	_displayPPM

;; *************** function _displayPPM *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      25       0       0
;;Total ram usage:       26 bytes
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
psect	text10,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	37
global __ptext10
__ptext10:	;psect for function _displayPPM
psect	text10
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	37
	global	__size_of_displayPPM
	__size_of_displayPPM	equ	__end_of_displayPPM-_displayPPM
	
_displayPPM:	
;incstack = 0
	opt	stack 2
; Regs used in _displayPPM: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l3202:	
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
	
l3204:	
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
	
l3206:	
;mq135_module.h: 45: bufPtr += sprintf(bufPtr, "CO2: ");
	movlw	low((STR_1)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_1)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	fcall	_sprintf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_sprintf)),w
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	46
	
l3208:	
;mq135_module.h: 46: bufPtr += sprintf(bufPtr, "%d", ppmWhole);
	movlw	low((STR_2)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_2)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmWhole+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+02h
	addwf	1+(?_sprintf)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmWhole)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+02h
	addwf	0+(?_sprintf)+02h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	fcall	_sprintf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_sprintf)),w
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	47
	
l3210:	
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
	
l3212:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	line	48
	
l3214:	
;mq135_module.h: 48: if (ppmFraction < 10)
	movf	(displayPPM@ppmFraction+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4285
	movlw	low(0Ah)
	subwf	(displayPPM@ppmFraction)^080h,w
u4285:

	skipnc
	goto	u4281
	goto	u4280
u4281:
	goto	l3220
u4280:
	line	49
	
l3216:	
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
	
l3218:	
	movlw	(01h)
	movwf	(??_displayPPM+0)+0
	movf	(??_displayPPM+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(displayPPM@bufPtr)^080h,f
	goto	l3220
	
l109:	
	line	50
	
l3220:	
;mq135_module.h: 50: sprintf(bufPtr, "%d ppm  ", ppmFraction);
	movlw	low((STR_3)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_3)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmFraction+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+02h
	addwf	1+(?_sprintf)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@ppmFraction)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+02h
	addwf	0+(?_sprintf)+02h

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(displayPPM@bufPtr)^080h,w
	fcall	_sprintf
	line	51
	
l3222:	
;mq135_module.h: 51: printToLCD(strBuffer);
	movlw	(displayPPM@strBuffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	52
	
l110:	
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
	
l2446:	
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
	goto	u3081
	goto	u3080
u3081:
	goto	l2452
u3080:
	line	50
	
l2448:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l738
	
l2450:	
	goto	l738
	
l737:	
	line	51
	
l2452:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3095:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3090:
	addlw	-1
	skipz
	goto	u3095
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2454:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2456:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2458:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2460:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2462:	
	btfss	(___fttol@exp1),7
	goto	u3101
	goto	u3100
u3101:
	goto	l2472
u3100:
	line	57
	
l2464:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l2470
u3110:
	line	58
	
l2466:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l738
	
l2468:	
	goto	l738
	
l740:	
	goto	l2470
	line	59
	
l741:	
	line	60
	
l2470:	
	movlw	01h
u3125:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3125

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l2470
u3130:
	goto	l2482
	
l742:	
	line	62
	goto	l2482
	
l739:	
	line	63
	
l2472:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2480
u3140:
	line	64
	
l2474:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l738
	
l2476:	
	goto	l738
	
l744:	
	line	65
	goto	l2480
	
l746:	
	line	66
	
l2478:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3155:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3155
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2480
	line	68
	
l745:	
	line	65
	
l2480:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l2478
u3160:
	goto	l2482
	
l747:	
	goto	l2482
	line	69
	
l743:	
	line	70
	
l2482:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3170
	goto	l2486
u3170:
	line	71
	
l2484:	
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
	goto	l2486
	
l748:	
	line	72
	
l2486:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l738
	
l2488:	
	line	73
	
l738:	
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
	
l3188:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u4271
	goto	u4270
u4271:
	goto	l3192
u4270:
	line	18
	
l3190:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l3192
	
l728:	
	line	19
	
l3192:	
	goto	l729
	
l3194:	
	line	20
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_displayDHT11Stat

;; *************** function _displayDHT11Stat *****************
;; Defined at:
;;		line 57 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\dht11_module.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         20   46[BANK0 ] unsigned char [20]
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
;;      Temps:          0       4       0       0       0
;;      Totals:         0      24       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_instCTRL
;;		_printToLCD
;;		_sprintf
;; This function is called by:
;;		_updateState
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\dht11_module.h"
	line	57
global __ptext13
__ptext13:	;psect for function _displayDHT11Stat
psect	text13
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\dht11_module.h"
	line	57
	global	__size_of_displayDHT11Stat
	__size_of_displayDHT11Stat	equ	__end_of_displayDHT11Stat-_displayDHT11Stat
	
_displayDHT11Stat:	
;incstack = 0
	opt	stack 2
; Regs used in _displayDHT11Stat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l3378:	
;dht11_module.h: 59: char buffer[20];
;dht11_module.h: 60: printToLCD(message1);
	movlw	(_message1&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	61
;dht11_module.h: 61: sprintf(buffer, "%d.%d", T_byte1, T_byte2);
	movlw	low((STR_25)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_25)|8000h)
	movwf	((sprintf@f))+1
	movf	(_T_byte1),w
	movwf	(??_displayDHT11Stat+0)+0
	clrf	(??_displayDHT11Stat+0)+0+1
	movf	0+(??_displayDHT11Stat+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_displayDHT11Stat+0)+0,w
	movwf	1+(?_sprintf)+02h
	movf	(_T_byte2),w
	movwf	(??_displayDHT11Stat+2)+0
	clrf	(??_displayDHT11Stat+2)+0+1
	movf	0+(??_displayDHT11Stat+2)+0,w
	movwf	0+(?_sprintf)+04h
	movf	1+(??_displayDHT11Stat+2)+0,w
	movwf	1+(?_sprintf)+04h
	movlw	(displayDHT11Stat@buffer)&0ffh
	fcall	_sprintf
	line	62
;dht11_module.h: 62: printToLCD(buffer);
	movlw	(displayDHT11Stat@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	63
	
l3380:	
;dht11_module.h: 63: instCTRL(0xD4);
	movlw	(0D4h)
	fcall	_instCTRL
	line	64
	
l3382:	
;dht11_module.h: 64: printToLCD(message2);
	movlw	(_message2&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x1)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	65
	
l3384:	
;dht11_module.h: 65: sprintf(buffer, "%d.%d", RH_byte1, RH_byte2);
	movlw	low((STR_26)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	movlw	high((STR_26)|8000h)
	movwf	((sprintf@f))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_RH_byte1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayDHT11Stat+0)+0
	clrf	(??_displayDHT11Stat+0)+0+1
	movf	0+(??_displayDHT11Stat+0)+0,w
	movwf	0+(?_sprintf)+02h
	movf	1+(??_displayDHT11Stat+0)+0,w
	movwf	1+(?_sprintf)+02h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_RH_byte2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayDHT11Stat+2)+0
	clrf	(??_displayDHT11Stat+2)+0+1
	movf	0+(??_displayDHT11Stat+2)+0,w
	movwf	0+(?_sprintf)+04h
	movf	1+(??_displayDHT11Stat+2)+0,w
	movwf	1+(?_sprintf)+04h
	movlw	(displayDHT11Stat@buffer)&0ffh
	fcall	_sprintf
	line	66
	
l3386:	
;dht11_module.h: 66: printToLCD(buffer);
	movlw	(displayDHT11Stat@buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	67
	
l280:	
	return
	opt stack 0
GLOBAL	__end_of_displayDHT11Stat
	__end_of_displayDHT11Stat:
	signat	_displayDHT11Stat,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> updateState@buffer(10), displayDHT11Stat@buffer(20), displayTemp@buffer(20), debugInfo(10), 
;;		 -> displayTime@timeFormat(16), displayPPM@strBuffer(20), 
;;  f               2   20[BANK0 ] PTR const unsigned char 
;;		 -> STR_31(13), STR_30(14), STR_26(6), STR_25(6), 
;;		 -> STR_19(11), STR_18(10), STR_17(10), STR_16(10), 
;;		 -> STR_15(10), STR_14(10), STR_13(10), STR_12(10), 
;;		 -> STR_11(10), STR_10(10), STR_9(10), STR_8(10), 
;;		 -> STR_7(10), STR_6(16), STR_3(9), STR_2(3), 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   41[BANK0 ] PTR unsigned char 
;;		 -> updateState@buffer(10), displayDHT11Stat@buffer(20), displayTemp@buffer(20), debugInfo(10), 
;;		 -> displayTime@timeFormat(16), displayPPM@strBuffer(20), 
;;  _val            4   33[BANK0 ] struct .
;;  width           2   38[BANK0 ] int 
;;  ccnt            2   31[BANK0 ] int 
;;  c               1   40[BANK0 ] char 
;;  flag            1   37[BANK0 ] unsigned char 
;;  prec            1   30[BANK0 ] char 
;;  ap              1   29[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0      13       0       0       0
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
;;		_setHoursStart
;;		_setHoursEnd
;;		_setMinutesStart
;;		_setMinutesEnd
;;		_displayDHT11Stat
;;		_updateState
;;		_displayTemp
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext14
__ptext14:	;psect for function _sprintf
psect	text14
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
	
l3064:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 510: int ccnt = 0;
	clrf	(sprintf@ccnt)
	clrf	(sprintf@ccnt+1)
	line	542
	
l3066:	
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+02h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l3180
	
l373:	
	line	547
	
l3068:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u4081
	goto	u4080
u4081:
	goto	l3076
u4080:
	line	550
	
l3070:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3072:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l3074:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	551
;doprnt.c: 551: continue;
	goto	l3180
	line	552
	
l374:	
	line	555
	
l3076:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l3080
	line	559
;doprnt.c: 559: for(;;) {
	
l375:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l3080
	line	588
;doprnt.c: 588: case '0':
	
l377:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
;doprnt.c: 590: f++;
	movlw	01h
	addwf	(sprintf@f),f
	skipnc
	incf	(sprintf@f+1),f
	line	591
;doprnt.c: 591: continue;
	goto	l3080
	line	593
	
l3078:	
;doprnt.c: 593: }
	goto	l3082
	line	560
	
l376:	
	
l3080:	
	movf	(sprintf@f+1),w
	movwf	btemp+1
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringtab
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
	goto	l377
	goto	l3082
	opt asmopt_on

	line	593
	
l379:	
	line	594
;doprnt.c: 594: break;
	goto	l3082
	line	595
	
l378:	
;doprnt.c: 595: }
	goto	l3080
	
l380:	
	line	606
	
l3082:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f+1),w
	movwf	btemp+1
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringtab
	fcall	_isdigit
	btfss	status,0
	goto	u4091
	goto	u4090
u4091:
	goto	l3096
u4090:
	line	607
	
l3084:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l3086
	line	608
;doprnt.c: 608: do {
	
l382:	
	line	609
	
l3086:	
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
	
l3088:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(sprintf@f+1),w
	movwf	btemp+1
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringtab
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
	
l3090:	
	movlw	01h
	addwf	(sprintf@f),f
	skipnc
	incf	(sprintf@f+1),f
	line	611
	
l3092:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f+1),w
	movwf	btemp+1
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringtab
	fcall	_isdigit
	btfsc	status,0
	goto	u4101
	goto	u4100
u4101:
	goto	l3086
u4100:
	goto	l3096
	
l383:	
	goto	l3096
	line	617
	
l381:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l3096
	line	646
;doprnt.c: 646: case 0:
	
l385:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l3182
	line	706
;doprnt.c: 706: case 'd':
	
l387:	
	goto	l3098
	line	707
	
l388:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l3098
	line	811
;doprnt.c: 811: default:
	
l390:	
	line	822
;doprnt.c: 822: continue;
	goto	l3180
	line	831
	
l3094:	
;doprnt.c: 831: }
	goto	l3098
	line	644
	
l384:	
	
l3096:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f+1),w
	movwf	(??_sprintf+0)+0+1
	movf	(sprintf@f),w
	movwf	(??_sprintf+0)+0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	movf	1+(??_sprintf+0)+0,w
	movwf	btemp+1
	movf	0+(??_sprintf+0)+0,w
	movwf	fsr0
	fcall	stringtab
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
	goto	l3182
	xorlw	100^0	; case 100
	skipnz
	goto	l3098
	xorlw	105^100	; case 105
	skipnz
	goto	l3098
	goto	l3180
	opt asmopt_on

	line	831
	
l389:	
	line	1268
	
l3098:	
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
	
l3100:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l3102:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u4111
	goto	u4110
u4111:
	goto	l3108
u4110:
	line	1271
	
l3104:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l3106:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l3108
	line	1273
	
l391:	
	line	1314
	
l3108:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3112
u4120:
	goto	l3120
	
l3110:	
	goto	l3120
	line	1315
	
l392:	
	
l3112:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)|8000h)
	movwf	fsr0
	movlw	high((_dpowers)|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_sprintf+1)+0
	fcall	stringtab
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u4135
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u4135:
	skipnc
	goto	u4131
	goto	u4130
u4131:
	goto	l3116
u4130:
	goto	l3120
	line	1316
	
l3114:	
;doprnt.c: 1316: break;
	goto	l3120
	
l394:	
	line	1314
	
l3116:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l3118:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l3112
u4140:
	goto	l3120
	
l393:	
	line	1354
	
l3120:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u4151
	goto	u4150
u4151:
	goto	l395
u4150:
	
l3122:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l395
u4160:
	line	1355
	
l3124:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l395:	
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
	goto	u4175
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u4175:

	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l3128
u4170:
	line	1391
	
l3126:	
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
	goto	l3130
	line	1392
	
l396:	
	line	1393
	
l3128:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l3130
	
l397:	
	line	1396
	
l3130:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l3150
u4180:
	line	1401
	
l3132:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l3140
u4190:
	line	1402
	
l3134:	
;doprnt.c: 1402: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3136:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l3138:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l3140
	
l399:	
	line	1424
	
l3140:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u4201
	goto	u4200
u4201:
	goto	l3168
u4200:
	goto	l3142
	line	1425
;doprnt.c: 1425: do
	
l401:	
	line	1426
	
l3142:	
;doprnt.c: 1426: ((*sp++ = ('0')),(++ccnt));
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3144:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l3146:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1427
	
l3148:	
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
	goto	u4211
	goto	u4210
u4211:
	goto	l3142
u4210:
	goto	l3168
	
l402:	
	goto	l3168
	
l400:	
	line	1429
;doprnt.c: 1429: } else
	goto	l3168
	
l398:	
	line	1437
	
l3150:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u4221
	goto	u4220
u4221:
	goto	l3160
u4220:
	goto	l3152
	line	1438
;doprnt.c: 1438: do
	
l405:	
	line	1439
	
l3152:	
;doprnt.c: 1439: ((*sp++ = (' ')),(++ccnt));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3154:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l3156:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	line	1440
	
l3158:	
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
	goto	u4231
	goto	u4230
u4231:
	goto	l3152
u4230:
	goto	l3160
	
l406:	
	goto	l3160
	
l404:	
	line	1447
	
l3160:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l3168
u4240:
	line	1448
	
l3162:	
;doprnt.c: 1448: ((*sp++ = ('-')),(++ccnt));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3164:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l3166:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l3168
	
l407:	
	goto	l3168
	line	1478
	
l403:	
	line	1481
	
l3168:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l3178
	
l409:	
	line	1498
	
l3170:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)|8000h)
	movwf	fsr0
	movlw	high((_dpowers)|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(___lwdiv@divisor)
	fcall	stringtab
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
	
l3172:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)),(++ccnt));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3174:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	
l3176:	
	movlw	low(01h)
	addwf	(sprintf@ccnt),f
	skipnc
	incf	(sprintf@ccnt+1),f
	movlw	high(01h)
	addwf	(sprintf@ccnt+1),f
	goto	l3178
	line	1534
	
l408:	
	line	1483
	
l3178:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l3170
u4250:
	goto	l3180
	
l410:	
	goto	l3180
	line	1542
	
l372:	
	line	545
	
l3180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f+1),w
	movwf	(??_sprintf+0)+0+1
	movf	(sprintf@f),w
	movwf	(??_sprintf+0)+0
	incf	(sprintf@f),f
	skipnz
	incf	(sprintf@f+1),f
	movf	1+(??_sprintf+0)+0,w
	movwf	btemp+1
	movf	0+(??_sprintf+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_sprintf+2)+0
	movf	(??_sprintf+2)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l3068
u4260:
	goto	l3182
	
l411:	
	goto	l3182
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l386:	
	line	1547
	
l3182:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1549
	
l3184:	
;doprnt.c: 1549: return ccnt;
	movf	(sprintf@ccnt+1),w
	clrf	(?_sprintf+1)
	addwf	(?_sprintf+1)
	movf	(sprintf@ccnt),w
	clrf	(?_sprintf)
	addwf	(?_sprintf)

	goto	l412
	
l3186:	
	line	1550
	
l412:	
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
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext15
__ptext15:	;psect for function _isdigit
psect	text15
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
	
l3032:	
	clrf	(_isdigit$476)
	
l3034:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l3040
u4010:
	
l3036:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l3040
u4020:
	
l3038:	
	clrf	(_isdigit$476)
	incf	(_isdigit$476),f
	goto	l3040
	
l752:	
	
l3040:	
	rrf	(_isdigit$476),w
	
	goto	l753
	
l3042:	
	line	15
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   14[BANK0 ] unsigned int 
;;  dividend        2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext16
__ptext16:	;psect for function ___lwmod
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2070:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l2088
u2250:
	line	14
	
l2072:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2078
	
l842:	
	line	16
	
l2074:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2265
	line	17
	
l2076:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2078
	line	18
	
l841:	
	line	15
	
l2078:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2074
u2270:
	goto	l2080
	
l843:	
	goto	l2080
	line	19
	
l844:	
	line	20
	
l2080:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2285
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2285:
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2084
u2280:
	line	21
	
l2082:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2084
	
l845:	
	line	22
	
l2084:	
	movlw	01h
	
u2295:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2295
	line	23
	
l2086:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2080
u2300:
	goto	l2088
	
l846:	
	goto	l2088
	line	24
	
l840:	
	line	25
	
l2088:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l847
	
l2090:	
	line	26
	
l847:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_startUpLCD

;; *************** function _startUpLCD *****************
;; Defined at:
;;		line 71 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	71
global __ptext17
__ptext17:	;psect for function _startUpLCD
psect	text17
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	71
	global	__size_of_startUpLCD
	__size_of_startUpLCD	equ	__end_of_startUpLCD-_startUpLCD
	
_startUpLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _startUpLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	73
	
l3470:	
;main.c: 73: initLCD();
	fcall	_initLCD
	line	74
;main.c: 74: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	75
	
l3472:	
;main.c: 75: printToLCD("PWR ON");
	movlw	low((STR_27)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@str)
	movlw	high((STR_27)|8000h)
	movwf	((printToLCD@str))+1
	fcall	_printToLCD
	line	76
	
l322:	
	return
	opt stack 0
GLOBAL	__end_of_startUpLCD
	__end_of_startUpLCD:
	signat	_startUpLCD,88
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 47 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  str             2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_39(11), STR_38(12), STR_37(10), STR_36(14), 
;;		 -> STR_35(12), STR_34(10), STR_33(16), STR_32(15), 
;;		 -> updateState@buffer(10), STR_29(15), STR_28(7), STR_27(7), 
;;		 -> message2(7), displayDHT11Stat@buffer(20), message1(7), STR_24(19), 
;;		 -> STR_23(6), STR_22(10), STR_21(8), STR_20(9), 
;;		 -> displayTemp@buffer(20), debugInfo(10), displayTime@timeFormat(16), STR_5(8), 
;;		 -> STR_4(8), displayPPM@strBuffer(20), 
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
;;		_printStatusTMP
;;		_displayDHT11Stat
;;		_startUpLCD
;;		_updateState
;;		_displayTemp
;;		_runDHT11Stat
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
	line	47
global __ptext18
__ptext18:	;psect for function _printToLCD
psect	text18
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
	line	47
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l3056:	
;lcd_functions.h: 49: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	50
;lcd_functions.h: 50: while (*str)
	goto	l3062
	
l97:	
	line	52
	
l3058:	
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
	
l3060:	
;lcd_functions.h: 53: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l3062
	line	54
	
l96:	
	line	50
	
l3062:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@str+1),w
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l3058
u4070:
	goto	l99
	
l98:	
	line	55
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 27 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
	
l1980:	
;lcd_functions.h: 29: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	30
	
l1982:	
;lcd_functions.h: 30: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	31
	
l1984:	
;lcd_functions.h: 31: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	32
	
l1986:	
;lcd_functions.h: 32: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	33
;lcd_functions.h: 33: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u5007:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u5007
	nop2	;nop
	nop
opt asmopt_on

	line	34
	
l1988:	
;lcd_functions.h: 34: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	35
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
	line	37
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2500:	
;lcd_functions.h: 39: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	40
	
l2502:	
;lcd_functions.h: 40: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_initLCD+0)+0,f
u5017:
decfsz	(??_initLCD+0)+0,f
	goto	u5017
	nop
opt asmopt_on

	line	41
	
l2504:	
;lcd_functions.h: 41: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	42
	
l2506:	
;lcd_functions.h: 42: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	43
	
l2508:	
;lcd_functions.h: 43: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	44
	
l2510:	
;lcd_functions.h: 44: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	45
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_setPortDirections

;; *************** function _setPortDirections *****************
;; Defined at:
;;		line 53 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	53
global __ptext21
__ptext21:	;psect for function _setPortDirections
psect	text21
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	53
	global	__size_of_setPortDirections
	__size_of_setPortDirections	equ	__end_of_setPortDirections-_setPortDirections
	
_setPortDirections:	
;incstack = 0
	opt	stack 5
; Regs used in _setPortDirections: [wreg+status,2]
	line	55
	
l3452:	
;main.c: 55: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	56
;main.c: 56: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	57
	
l3454:	
;main.c: 57: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	58
	
l3456:	
;main.c: 58: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	59
	
l3458:	
;main.c: 59: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	60
	
l3460:	
;main.c: 60: PORTB = 0x00;
	clrf	(6)	;volatile
	line	61
	
l3462:	
;main.c: 61: PORTC = 0x00;
	clrf	(7)	;volatile
	line	62
	
l3464:	
;main.c: 62: PORTD = 0x00;
	clrf	(8)	;volatile
	line	63
	
l316:	
	return
	opt stack 0
GLOBAL	__end_of_setPortDirections
	__end_of_setPortDirections:
	signat	_setPortDirections,88
	global	_runMQ135

;; *************** function _runMQ135 *****************
;; Defined at:
;;		line 32 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
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
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	32
global __ptext22
__ptext22:	;psect for function _runMQ135
psect	text22
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	32
	global	__size_of_runMQ135
	__size_of_runMQ135	equ	__end_of_runMQ135-_runMQ135
	
_runMQ135:	
;incstack = 0
	opt	stack 2
; Regs used in _runMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l3388:	
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
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_runMQ135
	__end_of_runMQ135:
	signat	_runMQ135,88
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 23 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\common_dependencies.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,inline
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\common_dependencies.h"
	line	23
global __ptext23
__ptext23:	;psect for function _readADC
psect	text23
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\common_dependencies.h"
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
	
l2490:	
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
u3185:
	clrc
	rlf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	clrc
	rlf	(??_readADC+0)+0,w
	movwf	(??_readADC+1)+0
	movf	(??_readADC+1)+0,w
	iorwf	(31),f	;volatile
	line	27
	
l2492:	
;common_dependencies.h: 27: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_readADC+0)+0,f
u5027:
decfsz	(??_readADC+0)+0,f
	goto	u5027
	nop
opt asmopt_on

	line	28
	
l2494:	
;common_dependencies.h: 28: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	29
;common_dependencies.h: 29: while (GO_DONE)
	goto	l81
	
l82:	
	line	30
;common_dependencies.h: 30: ;
	
l81:	
	line	29
	btfsc	(250/8),(250)&7	;volatile
	goto	u3191
	goto	u3190
u3191:
	goto	l81
u3190:
	goto	l2496
	
l83:	
	line	31
	
l2496:	
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

	goto	l84
	
l2498:	
	line	32
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_CalcMQ135

;; *************** function _CalcMQ135 *****************
;; Defined at:
;;		line 93 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	93
global __ptext24
__ptext24:	;psect for function _CalcMQ135
psect	text24
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	93
	global	__size_of_CalcMQ135
	__size_of_CalcMQ135	equ	__end_of_CalcMQ135-_CalcMQ135
	
_CalcMQ135:	
;incstack = 0
	opt	stack 2
; Regs used in _CalcMQ135: [wreg+status,2+status,0+pclath+cstack]
	line	95
	
l3196:	
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
	movwf	(_CalcMQ135$723)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$723+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$723+2)^080h
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
	movf	(_CalcMQ135$723)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$723+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$723+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$724)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$724+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$724+2)^080h
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
	movf	(_CalcMQ135$724)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$724+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$724+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$725)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$725+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$725+2)^080h
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
	movf	(_CalcMQ135$725)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$725+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$725+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$726)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$726+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$726+2)^080h
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
	movf	(_CalcMQ135$726)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$726+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$726+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$727)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$727+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_CalcMQ135$727+2)^080h
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
	movf	(_CalcMQ135$727)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$727+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_CalcMQ135$727+2)^080h,w
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
	
l3198:	
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
	goto	l124
	
l3200:	
	line	111
	
l124:	
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
	
l2388:	
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
	goto	u2931
	goto	u2930
u2931:
	goto	l2394
u2930:
	line	68
	
l2390:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l718
	
l2392:	
	goto	l718
	
l717:	
	line	69
	
l2394:	
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
	goto	u2941
	goto	u2940
u2941:
	goto	l2400
u2940:
	line	70
	
l2396:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l718
	
l2398:	
	goto	l718
	
l719:	
	line	71
	
l2400:	
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
u2955:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2950:
	addlw	-1
	skipz
	goto	u2955
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
u2965:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2960:
	addlw	-1
	skipz
	goto	u2965
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
	
l2402:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2404:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2406:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2408:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2410:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2412
	line	135
	
l720:	
	line	136
	
l2412:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2416
u2970:
	line	137
	
l2414:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2981
	addwf	(___ftmul@f3_as_product+1),f
u2981:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2982
	addwf	(___ftmul@f3_as_product+2),f
u2982:

	goto	l2416
	
l721:	
	line	138
	
l2416:	
	movlw	01h
u2995:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2995

	line	139
	
l2418:	
	movlw	01h
u3005:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3005
	line	140
	
l2420:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2412
u3010:
	goto	l2422
	
l722:	
	line	143
	
l2422:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2424
	line	144
	
l723:	
	line	145
	
l2424:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l2428
u3020:
	line	146
	
l2426:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3031
	addwf	(___ftmul@f3_as_product+1),f
u3031:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3032
	addwf	(___ftmul@f3_as_product+2),f
u3032:

	goto	l2428
	
l724:	
	line	147
	
l2428:	
	movlw	01h
u3045:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3045

	line	148
	
l2430:	
	movlw	01h
u3055:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3055

	line	149
	
l2432:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2424
u3060:
	goto	l2434
	
l725:	
	line	156
	
l2434:	
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
	goto	l718
	
l2436:	
	line	157
	
l718:	
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
	
l2346:	
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
	goto	u2851
	goto	u2850
u2851:
	goto	l2352
u2850:
	line	56
	
l2348:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l703
	
l2350:	
	goto	l703
	
l702:	
	line	57
	
l2352:	
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
	goto	u2861
	goto	u2860
u2861:
	goto	l2358
u2860:
	line	58
	
l2354:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l703
	
l2356:	
	goto	l703
	
l704:	
	line	59
	
l2358:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2360:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2362:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2875:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2870:
	addlw	-1
	skipz
	goto	u2875
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2364:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u2885:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u2880:
	addlw	-1
	skipz
	goto	u2885
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2366:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2368:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2370:	
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
	goto	l2372
	line	69
	
l705:	
	line	70
	
l2372:	
	movlw	01h
u2895:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u2895
	line	71
	
l2374:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2905
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2905
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2905:
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2380
u2900:
	line	72
	
l2376:	
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
	
l2378:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2380
	line	74
	
l706:	
	line	75
	
l2380:	
	movlw	01h
u2915:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u2915
	line	76
	
l2382:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2372
u2920:
	goto	l2384
	
l707:	
	line	77
	
l2384:	
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
	goto	l703
	
l2386:	
	line	78
	
l703:	
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
	
l2274:	
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
	
l2276:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2610
	goto	l2282
u2610:
	
l2278:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l2286
u2620:
	
l2280:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2286
u2630:
	goto	l2282
	
l671:	
	line	93
	
l2282:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l672
	
l2284:	
	goto	l672
	
l669:	
	line	94
	
l2286:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2640
	goto	l675
u2640:
	
l2288:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l2292
u2650:
	
l2290:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2292
u2660:
	
l675:	
	line	95
	goto	l672
	
l673:	
	line	96
	
l2292:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2294:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l676
u2670:
	line	98
	
l2296:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l676:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l677
u2680:
	line	100
	
l2298:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l677:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2300:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2302:	
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
	goto	u2691
	goto	u2690
u2691:
	goto	l2314
u2690:
	goto	l2304
	line	109
	
l679:	
	line	110
	
l2304:	
	movlw	01h
u2705:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2705
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2306:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l2312
u2710:
	
l2308:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2304
u2720:
	goto	l2312
	
l681:	
	goto	l2312
	
l682:	
	line	113
	goto	l2312
	
l684:	
	line	114
	
l2310:	
	movlw	01h
u2735:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2735

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2312
	line	116
	
l683:	
	line	113
	
l2312:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2310
u2740:
	goto	l686
	
l685:	
	line	117
	goto	l686
	
l678:	
	
l2314:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l686
u2750:
	goto	l2316
	line	120
	
l688:	
	line	121
	
l2316:	
	movlw	01h
u2765:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2765
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2318:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2771
	goto	u2770
u2771:
	goto	l2324
u2770:
	
l2320:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2316
u2780:
	goto	l2324
	
l690:	
	goto	l2324
	
l691:	
	line	124
	goto	l2324
	
l693:	
	line	125
	
l2322:	
	movlw	01h
u2795:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2795

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2324
	line	127
	
l692:	
	line	124
	
l2324:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l2322
u2800:
	goto	l686
	
l694:	
	goto	l686
	line	128
	
l687:	
	line	129
	
l686:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2328
u2810:
	line	131
	
l2326:	
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
	goto	l2328
	line	133
	
l695:	
	line	134
	
l2328:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l2332
u2820:
	line	136
	
l2330:	
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
	goto	l2332
	line	138
	
l696:	
	line	139
	
l2332:	
	clrf	(___ftadd@sign)
	line	140
	
l2334:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2831
	addwf	(___ftadd@f2+1),f
u2831:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2832
	addwf	(___ftadd@f2+2),f
u2832:

	line	141
	
l2336:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l2342
u2840:
	line	142
	
l2338:	
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
	
l2340:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l2342
	line	145
	
l697:	
	line	146
	
l2342:	
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
	goto	l672
	
l2344:	
	line	148
	
l672:	
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
	
l2262:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	
l2264:	
	btfss	(___awtoft@c+1),7
	goto	u2601
	goto	u2600
u2601:
	goto	l2270
u2600:
	line	38
	
l2266:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2268:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l2270
	line	40
	
l646:	
	line	41
	
l2270:	
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
	goto	l647
	
l2272:	
	line	42
	
l647:	
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
	
l2014:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2070
	goto	l2018
u2070:
	
l2016:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l2024
u2080:
	goto	l2018
	
l652:	
	line	65
	
l2018:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l653
	
l2020:	
	goto	l653
	
l650:	
	line	66
	goto	l2024
	
l655:	
	line	67
	
l2022:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2095:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2095

	goto	l2024
	line	69
	
l654:	
	line	66
	
l2024:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l2022
u2100:
	goto	l657
	
l656:	
	line	70
	goto	l657
	
l658:	
	line	71
	
l2026:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2028:	
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
	
l2030:	
	movlw	01h
u2115:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2115

	line	74
	
l657:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2026
u2120:
	goto	l2034
	
l659:	
	line	75
	goto	l2034
	
l661:	
	line	76
	
l2032:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2135:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2135
	goto	l2034
	line	78
	
l660:	
	line	75
	
l2034:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l2032
u2140:
	
l662:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l663
u2150:
	line	80
	
l2036:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l663:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2038:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2165:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2160:
	addlw	-1
	skipz
	goto	u2165
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2040:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2170
	goto	l664
u2170:
	line	84
	
l2042:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l664:	
	line	85
	line	86
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_runClock

;; *************** function _runClock *****************
;; Defined at:
;;		line 33 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	33
global __ptext30
__ptext30:	;psect for function _runClock
psect	text30
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	33
	global	__size_of_runClock
	__size_of_runClock	equ	__end_of_runClock-_runClock
	
_runClock:	
;incstack = 0
	opt	stack 5
; Regs used in _runClock: [wreg+status,2+status,0]
	line	36
	
l2736:	
;time_scheduler.h: 36: minutes++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_minutes),f	;volatile
	line	37
	
l2738:	
;time_scheduler.h: 37: if (minutes >= 60)
	movlw	(03Ch)
	subwf	(_minutes),w	;volatile
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l2748
u3670:
	line	39
	
l2740:	
;time_scheduler.h: 38: {
;time_scheduler.h: 39: minutes = 0;
	clrf	(_minutes)	;volatile
	line	40
	
l2742:	
;time_scheduler.h: 40: hours++;
	movlw	(01h)
	movwf	(??_runClock+0)+0
	movf	(??_runClock+0)+0,w
	addwf	(_hours),f	;volatile
	line	41
	
l2744:	
;time_scheduler.h: 41: if (hours >= 24)
	movlw	(018h)
	subwf	(_hours),w	;volatile
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l2748
u3680:
	line	43
	
l2746:	
;time_scheduler.h: 42: {
;time_scheduler.h: 43: hours = 0;
	clrf	(_hours)	;volatile
	goto	l2748
	line	44
	
l148:	
	goto	l2748
	line	45
	
l147:	
	line	46
	
l2748:	
;time_scheduler.h: 44: }
;time_scheduler.h: 45: }
;time_scheduler.h: 46: _delay((unsigned long)((100)*(4000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_runClock+0)+0+1),f
	movlw	221
movwf	((??_runClock+0)+0),f
u5037:
	decfsz	((??_runClock+0)+0),f
	goto	u5037
	decfsz	((??_runClock+0)+0+1),f
	goto	u5037
	nop2
opt asmopt_on

	line	47
	
l149:	
	return
	opt stack 0
GLOBAL	__end_of_runClock
	__end_of_runClock:
	signat	_runClock,88
	global	_initInterrupt

;; *************** function _initInterrupt *****************
;; Defined at:
;;		line 78 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	78
global __ptext31
__ptext31:	;psect for function _initInterrupt
psect	text31
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	78
	global	__size_of_initInterrupt
	__size_of_initInterrupt	equ	__end_of_initInterrupt-_initInterrupt
	
_initInterrupt:	
;incstack = 0
	opt	stack 5
; Regs used in _initInterrupt: []
	line	80
	
l3468:	
;main.c: 80: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	81
;main.c: 81: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	82
;main.c: 82: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	83
;main.c: 83: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	84
	
l325:	
	return
	opt stack 0
GLOBAL	__end_of_initInterrupt
	__end_of_initInterrupt:
	signat	_initInterrupt,88
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 65 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
	line	65
global __ptext32
__ptext32:	;psect for function _initADC
psect	text32
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	65
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	stack 5
; Regs used in _initADC: [wreg]
	line	67
	
l3466:	
;main.c: 67: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	68
;main.c: 68: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	69
	
l319:	
	return
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,88
	global	_handleTemp

;; *************** function _handleTemp *****************
;; Defined at:
;;		line 31 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, btemp+1
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
	line	31
global __ptext33
__ptext33:	;psect for function _handleTemp
psect	text33
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
	line	31
	global	__size_of_handleTemp
	__size_of_handleTemp	equ	__end_of_handleTemp-_handleTemp
	
_handleTemp:	
;incstack = 0
	opt	stack 5
; Regs used in _handleTemp: [wreg+status,2+btemp+1]
	line	33
	
l3442:	
;temp_module.h: 33: if (tempBuffer > 32)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tempBuffer+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(021h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4885
	movlw	low(021h)
	subwf	(_tempBuffer)^080h,w
u4885:

	skipc
	goto	u4881
	goto	u4880
u4881:
	goto	l246
u4880:
	line	35
	
l3444:	
;temp_module.h: 34: {
;temp_module.h: 35: RC5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7	;volatile
	line	36
;temp_module.h: 36: tempFlag = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tempFlag)^080h
	incf	(_tempFlag)^080h,f
	line	37
;temp_module.h: 37: return 1;
;	Return value of _handleTemp is never used
	goto	l247
	line	38
	
l3446:	
;temp_module.h: 38: }
	goto	l247
	line	39
	
l246:	
	line	41
;temp_module.h: 39: else
;temp_module.h: 40: {
;temp_module.h: 41: RC5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7	;volatile
	line	42
	
l3448:	
;temp_module.h: 42: tempFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tempFlag)^080h
	goto	l247
	line	43
	
l3450:	
;temp_module.h: 43: return 0;
;	Return value of _handleTemp is never used
	goto	l247
	line	44
	
l248:	
	line	45
	
l247:	
	return
	opt stack 0
GLOBAL	__end_of_handleTemp
	__end_of_handleTemp:
	signat	_handleTemp,89
	global	_handlePPM

;; *************** function _handlePPM *****************
;; Defined at:
;;		line 54 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	54
global __ptext34
__ptext34:	;psect for function _handlePPM
psect	text34
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\mq135_module.h"
	line	54
	global	__size_of_handlePPM
	__size_of_handlePPM	equ	__end_of_handlePPM-_handlePPM
	
_handlePPM:	
;incstack = 0
	opt	stack 4
; Regs used in _handlePPM: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3390:	
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
	goto	u4691
	goto	u4690
u4691:
	goto	l113
u4690:
	line	58
	
l3392:	
;mq135_module.h: 57: {
;mq135_module.h: 58: RC3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	59
;mq135_module.h: 59: ppmFlag = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ppmFlag)^080h
	incf	(_ppmFlag)^080h,f
	line	60
;mq135_module.h: 60: return 1;
;	Return value of _handlePPM is never used
	goto	l114
	line	61
	
l3394:	
;mq135_module.h: 61: }
	goto	l114
	line	62
	
l113:	
	line	64
;mq135_module.h: 62: else
;mq135_module.h: 63: {
;mq135_module.h: 64: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	65
	
l3396:	
;mq135_module.h: 65: ppmFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ppmFlag)^080h
	goto	l114
	line	66
	
l3398:	
;mq135_module.h: 66: return 0;
;	Return value of _handlePPM is never used
	goto	l114
	line	67
	
l115:	
	line	68
	
l114:	
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
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext35
__ptext35:	;psect for function ___ftge
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2704:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l2708
u3610:
	line	7
	
l2706:	
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
	goto	u3621
	goto	u3622
u3621:
	addwf	(??___ftge+0)+1,f
	
u3622:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3623
	goto	u3624
u3623:
	addwf	(??___ftge+0)+2,f
	
u3624:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2708
	
l710:	
	line	8
	
l2708:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l2712
u3630:
	line	9
	
l2710:	
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
	goto	u3641
	goto	u3642
u3641:
	addwf	(??___ftge+0)+1,f
	
u3642:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3643
	goto	u3644
u3643:
	addwf	(??___ftge+0)+2,f
	
u3644:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2712
	
l711:	
	line	10
	
l2712:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2714:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2716:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3655
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3655
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3655:
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l2720
u3650:
	
l2718:	
	clrc
	
	goto	l712
	
l1966:	
	
l2720:	
	setc
	
	goto	l712
	
l1968:	
	goto	l712
	
l2722:	
	line	13
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_checkTime

;; *************** function _checkTime *****************
;; Defined at:
;;		line 208 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
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
psect	text36,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	208
global __ptext36
__ptext36:	;psect for function _checkTime
psect	text36
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\time_scheduler.h"
	line	208
	global	__size_of_checkTime
	__size_of_checkTime	equ	__end_of_checkTime-_checkTime
	
_checkTime:	
;incstack = 0
	opt	stack 5
; Regs used in _checkTime: [wreg]
	line	210
	
l3400:	
;time_scheduler.h: 210: if (hours == savedHoursEnd && minutes == savedMinutesEnd)
	movf	(_hours),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_savedHoursEnd)^080h,w	;volatile
	skipz
	goto	u4701
	goto	u4700
u4701:
	goto	l3406
u4700:
	
l3402:	
	movf	(_minutes),w	;volatile
	xorwf	(_savedMinutesEnd)^080h,w	;volatile
	skipz
	goto	u4711
	goto	u4710
u4711:
	goto	l3406
u4710:
	line	212
	
l3404:	
;time_scheduler.h: 211: {
;time_scheduler.h: 212: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	213
;time_scheduler.h: 213: }
	goto	l233
	line	214
	
l211:	
	
l3406:	
;time_scheduler.h: 214: else if (savedHoursEnd > savedHoursStart)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursEnd)^080h,w	;volatile
	subwf	(_savedHoursStart)^080h,w	;volatile
	skipnc
	goto	u4721
	goto	u4720
u4721:
	goto	l3420
u4720:
	line	218
	
l3408:	
;time_scheduler.h: 215: {
;time_scheduler.h: 217: if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) &&
;time_scheduler.h: 218: (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
	movf	(_hours),w	;volatile
	subwf	(_savedHoursStart)^080h,w	;volatile
	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l3414
u4730:
	
l3410:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursStart)^080h,w	;volatile
	skipz
	goto	u4741
	goto	u4740
u4741:
	goto	l214
u4740:
	
l3412:	
	movf	(_savedMinutesStart)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l214
u4750:
	goto	l3414
	
l216:	
	
l3414:	
	movf	(_savedHoursEnd)^080h,w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l218
u4760:
	
l3416:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd)^080h,w	;volatile
	skipz
	goto	u4771
	goto	u4770
u4771:
	goto	l214
u4770:
	
l3418:	
	movf	(_savedMinutesEnd)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4781
	goto	u4780
u4781:
	goto	l214
u4780:
	
l218:	
	line	220
;time_scheduler.h: 219: {
;time_scheduler.h: 220: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	221
;time_scheduler.h: 221: }
	goto	l233
	line	222
	
l214:	
	line	224
;time_scheduler.h: 222: else
;time_scheduler.h: 223: {
;time_scheduler.h: 224: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	goto	l233
	line	225
	
l219:	
	line	226
;time_scheduler.h: 225: }
;time_scheduler.h: 226: }
	goto	l233
	line	227
	
l213:	
	
l3420:	
;time_scheduler.h: 227: else if (savedHoursEnd < savedHoursStart)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedHoursStart)^080h,w	;volatile
	subwf	(_savedHoursEnd)^080h,w	;volatile
	skipnc
	goto	u4791
	goto	u4790
u4791:
	goto	l3434
u4790:
	line	231
	
l3422:	
;time_scheduler.h: 228: {
;time_scheduler.h: 230: if ((hours > savedHoursStart || (hours == savedHoursStart && minutes >= savedMinutesStart)) ||
;time_scheduler.h: 231: (hours < savedHoursEnd || (hours == savedHoursEnd && minutes < savedMinutesEnd)))
	movf	(_hours),w	;volatile
	subwf	(_savedHoursStart)^080h,w	;volatile
	skipc
	goto	u4801
	goto	u4800
u4801:
	goto	l224
u4800:
	
l3424:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursStart)^080h,w	;volatile
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l3428
u4810:
	
l3426:	
	movf	(_savedMinutesStart)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4821
	goto	u4820
u4821:
	goto	l224
u4820:
	goto	l3428
	
l226:	
	
l3428:	
	movf	(_savedHoursEnd)^080h,w	;volatile
	subwf	(_hours),w	;volatile
	skipc
	goto	u4831
	goto	u4830
u4831:
	goto	l224
u4830:
	
l3430:	
	movf	(_hours),w	;volatile
	xorwf	(_savedHoursEnd)^080h,w	;volatile
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l222
u4840:
	
l3432:	
	movf	(_savedMinutesEnd)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4851
	goto	u4850
u4851:
	goto	l222
u4850:
	goto	l224
	
l228:	
	
l224:	
	line	233
;time_scheduler.h: 232: {
;time_scheduler.h: 233: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	234
;time_scheduler.h: 234: }
	goto	l233
	line	235
	
l222:	
	line	237
;time_scheduler.h: 235: else
;time_scheduler.h: 236: {
;time_scheduler.h: 237: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	goto	l233
	line	238
	
l229:	
	line	239
;time_scheduler.h: 238: }
;time_scheduler.h: 239: }
	goto	l233
	line	240
	
l221:	
	line	242
	
l3434:	
;time_scheduler.h: 240: else
;time_scheduler.h: 241: {
;time_scheduler.h: 242: if (minutes >= savedMinutesStart && minutes < savedMinutesEnd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_savedMinutesStart)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l231
u4860:
	
l3436:	
	movf	(_savedMinutesEnd)^080h,w	;volatile
	subwf	(_minutes),w	;volatile
	skipnc
	goto	u4871
	goto	u4870
u4871:
	goto	l231
u4870:
	line	244
	
l3438:	
;time_scheduler.h: 243: {
;time_scheduler.h: 244: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7	;volatile
	line	245
;time_scheduler.h: 245: }
	goto	l233
	line	246
	
l231:	
	line	248
;time_scheduler.h: 246: else
;time_scheduler.h: 247: {
;time_scheduler.h: 248: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7	;volatile
	goto	l233
	line	249
	
l232:	
	goto	l233
	line	250
	
l230:	
	goto	l233
	
l220:	
	goto	l233
	
l212:	
	line	251
	
l233:	
	return
	opt stack 0
GLOBAL	__end_of_checkTime
	__end_of_checkTime:
	signat	_checkTime,88
	global	_checkSelect

;; *************** function _checkSelect *****************
;; Defined at:
;;		line 193 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
psect	text37,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	193
global __ptext37
__ptext37:	;psect for function _checkSelect
psect	text37
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	193
	global	__size_of_checkSelect
	__size_of_checkSelect	equ	__end_of_checkSelect-_checkSelect
	
_checkSelect:	
;incstack = 0
	opt	stack 4
; Regs used in _checkSelect: [wreg+status,2+status,0+pclath+cstack]
	line	196
	
l2806:	
;main.c: 195: static int lastRB1State = 0;
;main.c: 196: int currentRB1State = RB1;
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
	line	197
	
l2808:	
;main.c: 197: if (currentRB1State == 1 && lastRB1State == 0)
	movlw	01h
	xorwf	(checkSelect@currentRB1State),w
	iorwf	(checkSelect@currentRB1State+1),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l2816
u3880:
	
l2810:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((checkSelect@lastRB1State+1)^080h),w
	iorwf	((checkSelect@lastRB1State)^080h),w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l2816
u3890:
	line	199
	
l2812:	
;main.c: 198: {
;main.c: 199: select ^= 1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_checkSelect+0)+0
	movf	(??_checkSelect+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_select)^080h,f	;volatile
	line	201
	
l2814:	
;main.c: 201: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	goto	l2816
	line	202
	
l360:	
	line	203
	
l2816:	
;main.c: 202: }
;main.c: 203: lastRB1State = currentRB1State;
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

	line	204
	
l361:	
	return
	opt stack 0
GLOBAL	__end_of_checkSelect
	__end_of_checkSelect:
	signat	_checkSelect,88
	global	_checkMode

;; *************** function _checkMode *****************
;; Defined at:
;;		line 182 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
psect	text38,local,class=CODE,delta=2,merge=1
	line	182
global __ptext38
__ptext38:	;psect for function _checkMode
psect	text38
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	182
	global	__size_of_checkMode
	__size_of_checkMode	equ	__end_of_checkMode-_checkMode
	
_checkMode:	
;incstack = 0
	opt	stack 4
; Regs used in _checkMode: [wreg+status,2+status,0+pclath+cstack]
	line	184
	
l2818:	
;main.c: 184: if (lastMode != mode)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_lastMode)^080h,w
	xorwf	(_mode)^080h,w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l355
u3900:
	line	187
	
l2820:	
;main.c: 185: {
;main.c: 187: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	188
	
l2822:	
;main.c: 188: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_checkMode+0)+0+1),f
	movlw	238
movwf	((??_checkMode+0)+0),f
u5047:
	decfsz	((??_checkMode+0)+0),f
	goto	u5047
	decfsz	((??_checkMode+0)+0+1),f
	goto	u5047
	nop
opt asmopt_on

	line	189
	
l2824:	
;main.c: 189: lastMode = mode;
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
	goto	l355
	line	190
	
l354:	
	line	191
	
l355:	
	return
	opt stack 0
GLOBAL	__end_of_checkMode
	__end_of_checkMode:
	signat	_checkMode,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 17 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
;;		_displayDHT11Stat
;;		_main
;;		_startUpLCD
;;		_updateState
;;		_checkMode
;;		_checkSelect
;;		_runDHT11Stat
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
	line	17
global __ptext39
__ptext39:	;psect for function _instCTRL
psect	text39
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
	
l1970:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	20
	
l1972:	
;lcd_functions.h: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
l1974:	
;lcd_functions.h: 21: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	22
	
l1976:	
;lcd_functions.h: 22: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u5057:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u5057
	nop2	;nop
	nop
opt asmopt_on

	line	24
	
l1978:	
;lcd_functions.h: 24: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	25
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_calculateTemp

;; *************** function _calculateTemp *****************
;; Defined at:
;;		line 19 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
;; Parameters:    Size  Location     Type
;;  adcValue        2   14[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
	line	19
global __ptext40
__ptext40:	;psect for function _calculateTemp
psect	text40
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\temp_module.h"
	line	19
	global	__size_of_calculateTemp
	__size_of_calculateTemp	equ	__end_of_calculateTemp-_calculateTemp
	
_calculateTemp:	
;incstack = 0
	opt	stack 4
; Regs used in _calculateTemp: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l3440:	
;temp_module.h: 21: tempBuffer = (adcValue * 500) / 1023;
	movlw	low(03FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	high(03FFh)
	movwf	((___lwdiv@divisor))+1
	movf	(calculateTemp@adcValue+1),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(calculateTemp@adcValue),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(01F4h)
	movwf	(___wmul@multiplicand)
	movlw	high(01F4h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tempBuffer+1)^080h
	addwf	(_tempBuffer+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tempBuffer)^080h
	addwf	(_tempBuffer)^080h

	line	22
	
l240:	
	return
	opt stack 0
GLOBAL	__end_of_calculateTemp
	__end_of_calculateTemp:
	signat	_calculateTemp,4216
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
;;		_calculateTemp
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext41
__ptext41:	;psect for function ___wmul
psect	text41
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3044:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3046
	line	44
	
l495:	
	line	45
	
l3046:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l496
u4030:
	line	46
	
l3048:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l496:	
	line	47
	movlw	01h
	
u4045:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u4045
	line	48
	
l3050:	
	movlw	01h
	
u4055:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u4055
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l3046
u4060:
	goto	l3052
	
l497:	
	line	52
	
l3052:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l498
	
l3054:	
	line	53
	
l498:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] unsigned int 
;;  dividend        2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[BANK0 ] unsigned int 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned int 
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
;;		_calculateTemp
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext42
__ptext42:	;psect for function ___lwdiv
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2044:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2046:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2181
	goto	u2180
u2181:
	goto	l2066
u2180:
	line	16
	
l2048:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2054
	
l832:	
	line	18
	
l2050:	
	movlw	01h
	
u2195:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2195
	line	19
	
l2052:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2054
	line	20
	
l831:	
	line	17
	
l2054:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l2050
u2200:
	goto	l2056
	
l833:	
	goto	l2056
	line	21
	
l834:	
	line	22
	
l2056:	
	movlw	01h
	
u2215:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2215
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2225
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2225:
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2062
u2220:
	line	24
	
l2058:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2060:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2062
	line	26
	
l835:	
	line	27
	
l2062:	
	movlw	01h
	
u2235:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2235
	line	28
	
l2064:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l2056
u2240:
	goto	l2066
	
l836:	
	goto	l2066
	line	29
	
l830:	
	line	30
	
l2066:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l837
	
l2068:	
	line	31
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 86 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	86
global __ptext43
__ptext43:	;psect for function _ISR
psect	text43
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\main.c"
	line	86
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
psect	text43
	line	88
	
i1l3022:	
;main.c: 88: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	89
;main.c: 89: if (INTF == 1)
	btfss	(89/8),(89)&7	;volatile
	goto	u400_21
	goto	u400_20
u400_21:
	goto	i1l3028
u400_20:
	line	91
	
i1l3024:	
;main.c: 90: {
;main.c: 91: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	92
	
i1l3026:	
;main.c: 92: mode = (mode + 1) % 4;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_mode)^080h,w
	addlw	01h
	andlw	03h
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_mode)^080h
	goto	i1l3028
	line	93
	
i1l328:	
	line	94
	
i1l3028:	
;main.c: 93: }
;main.c: 94: instCTRL(0x01);
	movlw	(01h)
	fcall	i1_instCTRL
	line	95
	
i1l3030:	
;main.c: 95: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	96
	
i1l329:	
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
;;		line 17 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
psect	text44,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
	line	17
global __ptext44
__ptext44:	;psect for function i1_instCTRL
psect	text44
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\working-build\first-version\lcd_functions.h"
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
	
i1l2912:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(i1instCTRL@CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
i1l2914:	
;lcd_functions.h: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
i1l2916:	
;lcd_functions.h: 21: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	22
	
i1l2918:	
;lcd_functions.h: 22: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??i1_instCTRL+0)+0,f
u506_27:
	nop
decfsz	(??i1_instCTRL+0)+0,f
	goto	u506_27
	nop2	;nop
	nop
opt asmopt_on

	line	24
	
i1l2920:	
;lcd_functions.h: 24: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	25
	
i1l87:	
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
