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
	FNCALL	_main,_SHT21_CalcRH
	FNCALL	_main,_SHT21_CalcTemp
	FNCALL	_main,_SHT21_Measure
	FNCALL	_main,_SHT21_SetResolution
	FNCALL	_main,_SHT21_SoftReset
	FNCALL	_main,_dataCTRL
	FNCALL	_main,_delay
	FNCALL	_main,_initLCD
	FNCALL	_main,_init_I2C_Master
	FNCALL	_main,_instCTRL
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___bmul
	FNCALL	_scale,___ftmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___awmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___ftmul
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCTRL
	FNCALL	_instCTRL,_delay
	FNCALL	_dataCTRL,_delay
	FNCALL	_SHT21_SoftReset,_I2C_Send
	FNCALL	_SHT21_SoftReset,_I2C_Start
	FNCALL	_SHT21_SoftReset,_I2C_Stop
	FNCALL	_SHT21_SoftReset,_delay
	FNCALL	_SHT21_SetResolution,_I2C_Send
	FNCALL	_SHT21_SetResolution,_I2C_Start
	FNCALL	_SHT21_SetResolution,_I2C_Stop
	FNCALL	_SHT21_Measure,_I2C_Receive
	FNCALL	_SHT21_Measure,_I2C_RepeatedStart
	FNCALL	_SHT21_Measure,_I2C_Send
	FNCALL	_SHT21_Measure,_I2C_Start
	FNCALL	_SHT21_Measure,_I2C_Stop
	FNCALL	_SHT21_Measure,_delay
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNCALL	_I2C_RepeatedStart,_I2C_Wait
	FNCALL	_I2C_Receive,_I2C_Wait
	FNCALL	_SHT21_CalcTemp,___ftadd
	FNCALL	_SHT21_CalcTemp,___ftmul
	FNCALL	_SHT21_CalcTemp,___lwtoft
	FNCALL	_SHT21_CalcRH,___ftadd
	FNCALL	_SHT21_CalcRH,___ftmul
	FNCALL	_SHT21_CalcRH,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	global	main@F1360
	global	main@F1362
	global	main@F1364
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	137

;initializer for main@F1360
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	retlw	03Ah
	retlw	020h
	retlw	0
	line	138

;initializer for main@F1362
	retlw	048h
	retlw	075h
	retlw	06Dh
	retlw	069h
	retlw	064h
	retlw	069h
	retlw	074h
	retlw	079h
	retlw	03Ah
	retlw	020h
	retlw	0
	line	139

;initializer for main@F1364
	retlw	045h
	retlw	072h
	retlw	072h
	retlw	06Fh
	retlw	072h
	retlw	03Ah
	retlw	020h
	retlw	0
	global	_dpowers
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global __end_of_dpowers
__end_of_dpowers:
	global	__npowers_
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global __end_of__powers_
__end_of__powers_:
	global	_POLYNOMIAL
psect	strings
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	72
_POLYNOMIAL:
	retlw	031h
	retlw	01h

	global __end_of_POLYNOMIAL
__end_of_POLYNOMIAL:
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_POLYNOMIAL
	global	_RH
	global	_temp
	global	_PORTB
_PORTB	set	0x6
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISB
_TRISB	set	0x86
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
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	0
psect	strings
STR_2	equ	STR_1+0
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
	file	"BajanDecierdo_PA7-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_RH:
       ds      1

_temp:
       ds      1

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	137
main@F1360:
       ds      14

psect	dataBANK3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	138
main@F1362:
       ds      11

psect	dataBANK3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	139
main@F1364:
       ds      8

	file	"BajanDecierdo_PA7-3.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	movlw low(__pdataBANK3+33)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@buf1
main@buf1:	; 0 bytes @ 0x0
	global	main@buf2
main@buf2:	; 0 bytes @ 0x0
	global	main@tempToString
main@tempToString:	; 14 bytes @ 0x0
	ds	14
	global	main@humidityToString
main@humidityToString:	; 11 bytes @ 0xE
	ds	11
	global	main@errorToString
main@errorToString:	; 8 bytes @ 0x19
	ds	8
	global	main@status
main@status:	; 2 bytes @ 0x21
	ds	2
	global	main@resultRH
main@resultRH:	; 3 bytes @ 0x23
	ds	3
	global	main@resultTemp
main@resultTemp:	; 3 bytes @ 0x26
	ds	3
	global	main@error
main@error:	; 1 bytes @ 0x29
	ds	1
	global	main@rawRH
main@rawRH:	; 2 bytes @ 0x2A
	ds	2
	global	main@rawTemp
main@rawTemp:	; 2 bytes @ 0x2C
	ds	2
	global	main@index
main@index:	; 2 bytes @ 0x2E
	ds	2
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$671
_sprintf$671:	; 3 bytes @ 0x0
	ds	3
	global	_sprintf$252
_sprintf$252:	; 4 bytes @ 0x3
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@vd
sprintf@vd:	; 4 bytes @ 0x8
	ds	4
	global	sprintf@vd_254
sprintf@vd_254:	; 4 bytes @ 0xC
	ds	4
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x12
	ds	3
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x15
	ds	4
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x19
	ds	2
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x1B
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x1D
	ds	3
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x20
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
?_SHT21_SoftReset:	; 0 bytes @ 0x0
?_SHT21_SetResolution:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
??_isdigit:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_RepeatedStart:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Receive:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_I2C_Receive:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	I2C_Send@dataOUT
I2C_Send@dataOUT:	; 1 bytes @ 0x0
	global	_isdigit$452
_isdigit$452:	; 1 bytes @ 0x0
	global	delay@overflow
delay@overflow:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	ds	1
??_SHT21_SetResolution:	; 0 bytes @ 0x1
	global	I2C_Receive@ACK_NACK
I2C_Receive@ACK_NACK:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_delay:	; 0 bytes @ 0x2
	global	I2C_Receive@dataIN
I2C_Receive@dataIN:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
??_instCTRL:	; 0 bytes @ 0x5
??_dataCTRL:	; 0 bytes @ 0x5
??_SHT21_SoftReset:	; 0 bytes @ 0x5
??___ftpack:	; 0 bytes @ 0x5
?_SHT21_Measure:	; 1 bytes @ 0x5
	global	instCTRL@LCD_CMD
instCTRL@LCD_CMD:	; 1 bytes @ 0x5
	global	dataCTRL@LCD_DAT
dataCTRL@LCD_DAT:	; 1 bytes @ 0x5
	global	SHT21_Measure@pMeasureand
SHT21_Measure@pMeasureand:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??_initLCD:	; 0 bytes @ 0x6
??_SHT21_Measure:	; 0 bytes @ 0x6
??__tdiv_to_l_:	; 0 bytes @ 0x6
??__div_to_l_:	; 0 bytes @ 0x6
??___ftge:	; 0 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	SHT21_Measure@checksum
SHT21_Measure@checksum:	; 1 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
??___lldiv:	; 0 bytes @ 0x8
??___llmod:	; 0 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	SHT21_Measure@error
SHT21_Measure@error:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	SHT21_Measure@data
SHT21_Measure@data:	; 2 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
??___awdiv:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	global	SHT21_Measure@measureType
SHT21_Measure@measureType:	; 1 bytes @ 0xB
	ds	1
??___bmul:	; 0 bytes @ 0xC
??___lltoft:	; 0 bytes @ 0xC
	ds	1
??_SHT21_CalcTemp:	; 0 bytes @ 0xD
??_SHT21_CalcRH:	; 0 bytes @ 0xD
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x6
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x7
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x7
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xA
	ds	3
??___ftmul:	; 0 bytes @ 0xD
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x12
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x15
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x16
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x17
	global	?_scale
?_scale:	; 3 bytes @ 0x17
	ds	3
??_fround:	; 0 bytes @ 0x1A
??_scale:	; 0 bytes @ 0x1A
	ds	2
	global	_scale$670
_scale$670:	; 3 bytes @ 0x1C
	ds	3
	global	scale@scl
scale@scl:	; 1 bytes @ 0x1F
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x20
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x20
	global	_fround$669
_fround$669:	; 3 bytes @ 0x20
	ds	3
	global	_fround$668
_fround$668:	; 3 bytes @ 0x23
	ds	1
??___fttol:	; 0 bytes @ 0x24
	ds	2
	global	fround@prec
fround@prec:	; 1 bytes @ 0x26
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x27
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x27
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x28
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x29
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2A
	ds	3
??___ftadd:	; 0 bytes @ 0x2D
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x2D
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x31
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x32
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x33
	ds	1
	global	?_SHT21_CalcTemp
?_SHT21_CalcTemp:	; 3 bytes @ 0x34
	global	?_SHT21_CalcRH
?_SHT21_CalcRH:	; 3 bytes @ 0x34
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x34
	global	SHT21_CalcRH@u16RH
SHT21_CalcRH@u16RH:	; 2 bytes @ 0x34
	global	SHT21_CalcTemp@u16Temp
SHT21_CalcTemp@u16Temp:	; 2 bytes @ 0x34
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x34
	ds	3
	global	SHT21_CalcRH@resultRH
SHT21_CalcRH@resultRH:	; 3 bytes @ 0x37
	global	SHT21_CalcTemp@resultTemp
SHT21_CalcTemp@resultTemp:	; 3 bytes @ 0x37
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x37
	ds	3
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x3A
	global	sprintf@sp
sprintf@sp:	; 2 bytes @ 0x3A
	ds	2
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x3C
	ds	4
??_sprintf:	; 0 bytes @ 0x40
	ds	6
??_main:	; 0 bytes @ 0x46
	ds	4
;!
;!Data Sizes:
;!    Strings     5
;!    Constant    120
;!    Data        33
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     74      76
;!    BANK1            80     33      33
;!    BANK3            96     48      81
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_2(CODE[5]), STR_1(CODE[5]), 
;!
;!    sprintf@sp	PTR unsigned char  size(2) Largest target is 0
;!		 -> main@buf1(BANK3[0]), main@buf2(BANK3[0]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S239$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    SHT21_Measure@pMeasureand	PTR struct . size(1) Largest target is 2
;!		 -> main@rawTemp(BANK3[2]), main@rawRH(BANK3[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _sprintf->___lldiv
;!    _sprintf->___lltoft
;!    _sprintf->__div_to_l_
;!    _scale->___bmul
;!    _fround->___bmul
;!    ___bmul->___awdiv
;!    ___awdiv->___awmod
;!    ___lltoft->___ftpack
;!    ___ftsub->___lltoft
;!    _initLCD->_instCTRL
;!    _instCTRL->_delay
;!    _dataCTRL->_delay
;!    _SHT21_SoftReset->_delay
;!    _SHT21_SetResolution->_I2C_Send
;!    _SHT21_Measure->_delay
;!    ___lwtoft->___ftpack
;!    ___ftmul->___bmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___ftsub
;!    _scale->___ftmul
;!    _fround->___ftmul
;!    ___bmul->___awdiv
;!    ___fttol->_scale
;!    ___ftsub->___ftadd
;!    _SHT21_CalcTemp->___ftadd
;!    _SHT21_CalcRH->___ftadd
;!    ___ftmul->___bmul
;!    ___ftadd->_fround
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                59    59      0   54581
;!                                             70 BANK0      4     4      0
;!                                              0 BANK3     48    48      0
;!                       _SHT21_CalcRH
;!                     _SHT21_CalcTemp
;!                      _SHT21_Measure
;!                _SHT21_SetResolution
;!                    _SHT21_SoftReset
;!                           _dataCTRL
;!                              _delay
;!                            _initLCD
;!                    _init_I2C_Master
;!                           _instCTRL
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             51    45      6   33806
;!                                             58 BANK0     12     6      6
;!                                              0 BANK1     33    33      0
;!                            ___awdiv
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                            ___lldiv
;!                            ___llmod
;!                           ___lltoft
;!                             ___wmul
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                            _isdigit
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (2) _scale                                               12     9      3    7366
;!                                             23 BANK0      9     6      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              19    16      3    7168
;!                                             23 BANK0     16    13      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               4     3      1     560
;!                                             12 COMMON     1     1      0
;!                                              4 BANK0      3     2      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4    1250
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4    1360
;!                                              7 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) __tdiv_to_l_                                         16    10      6     409
;!                                              0 COMMON    10     4      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) __div_to_l_                                          20    14      6     552
;!                                              0 COMMON    14     8      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4    1276
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1807
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                             10     2      8     477
;!                                              0 COMMON    10     2      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     374
;!                                              0 COMMON    14     6      8
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     411
;!                                             32 BANK0     14    10      4
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    3100
;!                                             52 BANK0      6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3      98
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     560
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     750
;!                              _delay
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _instCTRL                                             1     1      0     386
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCTRL                                             1     1      0     386
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _SHT21_SoftReset                                      0     0      0     386
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _SHT21_SetResolution                                  0     0      0      22
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;! ---------------------------------------------------------------------------------
;! (1) _SHT21_Measure                                        7     6      1     636
;!                                              5 COMMON     7     6      1
;!                        _I2C_Receive
;!                  _I2C_RepeatedStart
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                5     3      2     364
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Start                                            0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Send                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_RepeatedStart                                    0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Receive                                          3     3      0      45
;!                                              0 COMMON     3     3      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SHT21_CalcTemp                                       6     3      3    8568
;!                                             52 BANK0      6     3      3
;!                            ___ftadd
;!                            ___ftmul
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (1) _SHT21_CalcRH                                         6     3      3    8568
;!                                             52 BANK0      6     3      3
;!                            ___ftadd
;!                            ___ftmul
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             4     1      3    1813
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    3707
;!                                              7 BANK0     16    10      6
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                             ___bmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    2949
;!                                             39 BANK0     13     7      6
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1685
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SHT21_CalcRH
;!     ___ftadd
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!   _SHT21_CalcTemp
;!     ___ftadd
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!   _SHT21_Measure
;!     _I2C_Receive
;!       _I2C_Wait
;!     _I2C_RepeatedStart
;!       _I2C_Wait
;!     _I2C_Send
;!       _I2C_Wait
;!     _I2C_Start
;!       _I2C_Wait
;!     _I2C_Stop
;!       _I2C_Wait
;!     _delay
;!   _SHT21_SetResolution
;!     _I2C_Send
;!       _I2C_Wait
;!     _I2C_Start
;!       _I2C_Wait
;!     _I2C_Stop
;!       _I2C_Wait
;!   _SHT21_SoftReset
;!     _I2C_Send
;!       _I2C_Wait
;!     _I2C_Start
;!       _I2C_Wait
;!     _I2C_Stop
;!       _I2C_Wait
;!     _delay
;!   _dataCTRL
;!     _delay
;!   _delay
;!   _initLCD
;!     _delay
;!     _instCTRL
;!       _delay
;!   _init_I2C_Master
;!   _instCTRL
;!     _delay
;!   _sprintf
;!     ___awdiv
;!       ___awmod (ARG)
;!     ___ftadd
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg
;!     ___ftsub
;!       ___ftadd
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       _scale (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!     ___lldiv
;!     ___llmod
;!     ___lltoft
;!       ___ftpack
;!     ___wmul
;!     __div_to_l_
;!     __tdiv_to_l_
;!     _fround
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     _isdigit
;!     _scale
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     30      51       9       84.4%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     21      21       7       41.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4A      4C       5       95.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      CC      12        0.0%
;!ABS                  0      0      CC       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 134 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempToString   14    0[BANK3 ] unsigned char [14]
;;  humidityToSt   11   14[BANK3 ] unsigned char [11]
;;  errorToStrin    8   25[BANK3 ] unsigned char [8]
;;  resultTemp      3   38[BANK3 ] float 
;;  resultRH        3   35[BANK3 ] float 
;;  temperature     3    0        float 
;;  humidity        3    0        float 
;;  index           2   46[BANK3 ] int 
;;  rawTemp         2   44[BANK3 ] struct .
;;  rawRH           2   42[BANK3 ] struct .
;;  status          2   33[BANK3 ] int 
;;  error           1   41[BANK3 ] unsigned char 
;;  temp            1    0        unsigned char 
;;  buf2            0    0[BANK3 ] unsigned char [0]
;;  buf1            0    0[BANK3 ] unsigned char [0]
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
;;      Locals:         0       0       0      48       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0      48       0
;;Total ram usage:       52 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SHT21_CalcRH
;;		_SHT21_CalcTemp
;;		_SHT21_Measure
;;		_SHT21_SetResolution
;;		_SHT21_SoftReset
;;		_dataCTRL
;;		_delay
;;		_initLCD
;;		_init_I2C_Master
;;		_instCTRL
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	134
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	134
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	138
	
l2656:	
;BajanDecierdo_7-3.c: 136: u8t temp;
;BajanDecierdo_7-3.c: 137: float humidity, temperature;
;BajanDecierdo_7-3.c: 138: char tempToString[] = "Temperature: ";
	movlw	(main@tempToString)&0ffh
	movwf	fsr0
	movlw	low(main@F1360)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	14
	movwf	((??_main+0)+0+2)
u3740:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3740
	line	139
;BajanDecierdo_7-3.c: 139: char humidityToString[] = "Humidity: ";
	movlw	(main@humidityToString)&0ffh
	movwf	fsr0
	movlw	low(main@F1362)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	11
	movwf	((??_main+0)+0+2)
u3750:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3750
	line	140
;BajanDecierdo_7-3.c: 140: char errorToString[] = "Error: ";
	movlw	(main@errorToString)&0ffh
	movwf	fsr0
	movlw	low(main@F1364)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u3760:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3760
	line	142
	
l2658:	
;BajanDecierdo_7-3.c: 141: char buf1[], buf2[];
;BajanDecierdo_7-3.c: 142: int index, status = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@status)^0180h
	clrf	(main@status+1)^0180h
	line	144
	
l2660:	
;BajanDecierdo_7-3.c: 144: u8t error = 0;
	clrf	(main@error)^0180h
	line	148
	
l2662:	
;BajanDecierdo_7-3.c: 145: nt16 rawRH, rawTemp;
;BajanDecierdo_7-3.c: 146: ft resultRH, resultTemp;
;BajanDecierdo_7-3.c: 148: OPTION_REG = 0x44;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	149
	
l2664:	
;BajanDecierdo_7-3.c: 149: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	150
	
l2666:	
;BajanDecierdo_7-3.c: 150: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	151
	
l2668:	
;BajanDecierdo_7-3.c: 151: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	153
	
l2670:	
;BajanDecierdo_7-3.c: 153: init_I2C_Master();
	fcall	_init_I2C_Master
	line	154
	
l2672:	
;BajanDecierdo_7-3.c: 154: initLCD();
	fcall	_initLCD
	line	156
	
l2674:	
;BajanDecierdo_7-3.c: 156: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	157
;BajanDecierdo_7-3.c: 157: while (humidityToString[index] != '\0')
	goto	l2680
	
l84:	
	line	159
	
l2676:	
;BajanDecierdo_7-3.c: 158: {
;BajanDecierdo_7-3.c: 159: dataCTRL(humidityToString[index]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	addlw	main@humidityToString&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_dataCTRL
	line	160
	
l2678:	
;BajanDecierdo_7-3.c: 160: index++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@index)^0180h,f
	skipnc
	incf	(main@index+1)^0180h,f
	movlw	high(01h)
	addwf	(main@index+1)^0180h,f
	goto	l2680
	line	161
	
l83:	
	line	157
	
l2680:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	addlw	main@humidityToString&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,f
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l2676
u3770:
	goto	l2682
	
l85:	
	line	162
	
l2682:	
;BajanDecierdo_7-3.c: 161: }
;BajanDecierdo_7-3.c: 162: index = 0;
	clrf	(main@index)^0180h
	clrf	(main@index+1)^0180h
	line	164
	
l2684:	
;BajanDecierdo_7-3.c: 164: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	165
;BajanDecierdo_7-3.c: 165: while (tempToString[index] != '\0')
	goto	l2690
	
l87:	
	line	167
	
l2686:	
;BajanDecierdo_7-3.c: 166: {
;BajanDecierdo_7-3.c: 167: dataCTRL(tempToString[index]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	addlw	main@tempToString&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_dataCTRL
	line	168
	
l2688:	
;BajanDecierdo_7-3.c: 168: index++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@index)^0180h,f
	skipnc
	incf	(main@index+1)^0180h,f
	movlw	high(01h)
	addwf	(main@index+1)^0180h,f
	goto	l2690
	line	169
	
l86:	
	line	165
	
l2690:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	addlw	main@tempToString&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,f
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l2686
u3780:
	goto	l2692
	
l88:	
	line	170
	
l2692:	
;BajanDecierdo_7-3.c: 169: }
;BajanDecierdo_7-3.c: 170: index = 0;
	clrf	(main@index)^0180h
	clrf	(main@index+1)^0180h
	goto	l2694
	line	171
;BajanDecierdo_7-3.c: 171: while (1)
	
l89:	
	line	174
	
l2694:	
;BajanDecierdo_7-3.c: 172: {
;BajanDecierdo_7-3.c: 174: SHT21_SoftReset();
	fcall	_SHT21_SoftReset
	line	176
	
l2696:	
;BajanDecierdo_7-3.c: 176: SHT21_SetResolution();
	fcall	_SHT21_SetResolution
	line	178
	
l2698:	
;BajanDecierdo_7-3.c: 178: error != SHT21_Measure(HUMIDITY, &rawRH);
	movlw	(main@rawRH)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(SHT21_Measure@pMeasureand)
	movlw	(0)
	fcall	_SHT21_Measure
	line	180
	
l2700:	
;BajanDecierdo_7-3.c: 180: error != SHT21_Measure(TEMPERATURE, &rawTemp);
	movlw	(main@rawTemp)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(SHT21_Measure@pMeasureand)
	movlw	(01h)
	fcall	_SHT21_Measure
	line	183
	
l2702:	
;BajanDecierdo_7-3.c: 183: resultTemp = SHT21_CalcTemp(rawTemp.u16);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@rawTemp+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SHT21_CalcTemp@u16Temp+1)
	addwf	(SHT21_CalcTemp@u16Temp+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@rawTemp)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SHT21_CalcTemp@u16Temp)
	addwf	(SHT21_CalcTemp@u16Temp)

	fcall	_SHT21_CalcTemp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_SHT21_CalcTemp)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@resultTemp)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_SHT21_CalcTemp)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@resultTemp+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_SHT21_CalcTemp)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@resultTemp+2)^0180h
	line	184
	
l2704:	
;BajanDecierdo_7-3.c: 184: resultRH = SHT21_CalcRH(rawRH.u16);
	movf	(main@rawRH+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SHT21_CalcRH@u16RH+1)
	addwf	(SHT21_CalcRH@u16RH+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@rawRH)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SHT21_CalcRH@u16RH)
	addwf	(SHT21_CalcRH@u16RH)

	fcall	_SHT21_CalcRH
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_SHT21_CalcRH)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@resultRH)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_SHT21_CalcRH)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@resultRH+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_SHT21_CalcRH)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@resultRH+2)^0180h
	line	187
	
l2706:	
;BajanDecierdo_7-3.c: 187: sprintf(buf2, "%.2f", resultRH);
	movlw	low(main@buf2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	movlw	high(main@buf2)
	movwf	((sprintf@sp))+1
	movlw	((STR_1)-__stringbase)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@resultRH)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@resultRH+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@resultRH+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+03h
	fcall	_sprintf
	line	188
	
l2708:	
;BajanDecierdo_7-3.c: 188: instCTRL(0x8D);
	movlw	(08Dh)
	fcall	_instCTRL
	line	189
;BajanDecierdo_7-3.c: 189: while (buf2[index] != '\0')
	goto	l2714
	
l91:	
	line	191
	
l2710:	
;BajanDecierdo_7-3.c: 190: {
;BajanDecierdo_7-3.c: 191: dataCTRL(buf2[index]);
	movlw	low(main@buf2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	high(main@buf2)
	movwf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index+1)^0180h,w
	skipnc
	incf	(main@index+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_main+2)+0,0
	bcf	status,7
	movf	indf,w
	fcall	_dataCTRL
	line	192
	
l2712:	
;BajanDecierdo_7-3.c: 192: index++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@index)^0180h,f
	skipnc
	incf	(main@index+1)^0180h,f
	movlw	high(01h)
	addwf	(main@index+1)^0180h,f
	goto	l2714
	line	193
	
l90:	
	line	189
	
l2714:	
	movlw	low(main@buf2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	high(main@buf2)
	movwf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index+1)^0180h,w
	skipnc
	incf	(main@index+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_main+2)+0,0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l2710
u3790:
	goto	l2716
	
l92:	
	line	194
	
l2716:	
;BajanDecierdo_7-3.c: 193: }
;BajanDecierdo_7-3.c: 194: index = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@index)^0180h
	clrf	(main@index+1)^0180h
	line	195
	
l2718:	
;BajanDecierdo_7-3.c: 195: dataCTRL('%');
	movlw	(025h)
	fcall	_dataCTRL
	line	197
	
l2720:	
;BajanDecierdo_7-3.c: 197: sprintf(buf1, "%.2f", resultTemp);
	movlw	low(main@buf1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	movlw	high(main@buf1)
	movwf	((sprintf@sp))+1
	movlw	((STR_2)-__stringbase)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@resultTemp)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@resultTemp+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@resultTemp+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+03h
	fcall	_sprintf
	line	198
	
l2722:	
;BajanDecierdo_7-3.c: 198: instCTRL(0xCD);
	movlw	(0CDh)
	fcall	_instCTRL
	line	199
;BajanDecierdo_7-3.c: 199: while (buf1[index] != '\0')
	goto	l2728
	
l94:	
	line	201
	
l2724:	
;BajanDecierdo_7-3.c: 200: {
;BajanDecierdo_7-3.c: 201: dataCTRL(buf1[index]);
	movlw	low(main@buf1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	high(main@buf1)
	movwf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index+1)^0180h,w
	skipnc
	incf	(main@index+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_main+2)+0,0
	bcf	status,7
	movf	indf,w
	fcall	_dataCTRL
	line	202
	
l2726:	
;BajanDecierdo_7-3.c: 202: index++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@index)^0180h,f
	skipnc
	incf	(main@index+1)^0180h,f
	movlw	high(01h)
	addwf	(main@index+1)^0180h,f
	goto	l2728
	line	203
	
l93:	
	line	199
	
l2728:	
	movlw	low(main@buf1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	high(main@buf1)
	movwf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index+1)^0180h,w
	skipnc
	incf	(main@index+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	0+(??_main+2)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_main+2)+0,0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l2724
u3800:
	goto	l2730
	
l95:	
	line	204
	
l2730:	
;BajanDecierdo_7-3.c: 203: }
;BajanDecierdo_7-3.c: 204: index = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@index)^0180h
	clrf	(main@index+1)^0180h
	line	207
	
l2732:	
;BajanDecierdo_7-3.c: 207: if (error != 0)
	movf	(main@error)^0180h,w
	skipz
	goto	u3810
	goto	l2744
u3810:
	line	209
	
l2734:	
;BajanDecierdo_7-3.c: 208: {
;BajanDecierdo_7-3.c: 209: initLCD();
	fcall	_initLCD
	line	210
;BajanDecierdo_7-3.c: 210: while (errorToString[index] != '\0')
	goto	l2740
	
l98:	
	line	212
	
l2736:	
;BajanDecierdo_7-3.c: 211: {
;BajanDecierdo_7-3.c: 212: dataCTRL(errorToString[index]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	addlw	main@errorToString&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_dataCTRL
	line	213
	
l2738:	
;BajanDecierdo_7-3.c: 213: index++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@index)^0180h,f
	skipnc
	incf	(main@index+1)^0180h,f
	movlw	high(01h)
	addwf	(main@index+1)^0180h,f
	goto	l2740
	line	214
	
l97:	
	line	210
	
l2740:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@index)^0180h,w
	addlw	main@errorToString&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,f
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l2736
u3820:
	goto	l2742
	
l99:	
	line	215
	
l2742:	
;BajanDecierdo_7-3.c: 214: }
;BajanDecierdo_7-3.c: 215: index = 0;
	clrf	(main@index)^0180h
	clrf	(main@index+1)^0180h
	goto	l2744
	line	216
	
l96:	
	line	217
	
l2744:	
;BajanDecierdo_7-3.c: 216: }
;BajanDecierdo_7-3.c: 217: delay(384);
	movlw	low(0180h)
	movwf	(delay@overflow)
	movlw	high(0180h)
	movwf	((delay@overflow))+1
	fcall	_delay
	goto	l2694
	line	218
	
l100:	
	line	171
	goto	l2694
	
l101:	
	line	219
	
l102:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              2   58[BANK0 ] PTR unsigned char 
;;		 -> main@buf1(0), main@buf2(0), 
;;  f               1   60[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(5), STR_1(5), 
;; Auto vars:     Size  Location     Type
;;  vd              4    8[BANK1 ] unsigned long 
;;  vd              4   12[BANK1 ] unsigned long 
;;  _val            4   21[BANK1 ] struct .
;;  fval            3   29[BANK1 ] struct .
;;  integ           3   18[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   27[BANK1 ] int 
;;  exp             2   25[BANK1 ] int 
;;  flag            2   16[BANK1 ] unsigned short 
;;  width           2    0        int 
;;  c               1   32[BANK1 ] char 
;;  ap              1    7[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   58[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0      33       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12      33       0       0
;;Total ram usage:       45 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lldiv
;;		___llmod
;;		___lltoft
;;		___wmul
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_isdigit
;;		_scale
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	542
	
l2454:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 504: int prec;
;doprnt.c: 508: unsigned short flag;
;doprnt.c: 515: char d;
;doprnt.c: 516: double fval, integ;
;doprnt.c: 517: int exp;
;doprnt.c: 518: double ival;
;doprnt.c: 519: union {
;doprnt.c: 520: unsigned long _val;
;doprnt.c: 521: struct {
;doprnt.c: 522: const char * _cp;
;doprnt.c: 523: unsigned _len;
;doprnt.c: 524: } _str;
;doprnt.c: 525: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+03h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@ap)^080h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l2650
	
l193:	
	line	547
	
l2456:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3371
	goto	u3370
u3371:
	goto	l2462
u3370:
	line	550
	
l2458:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	indf
	
l2460:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	line	551
;doprnt.c: 551: continue;
	goto	l2650
	line	552
	
l194:	
	line	557
	
l2462:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	620
	
l2464:	
;doprnt.c: 620: if(*f == '.') {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l2478
u3380:
	line	621
	
l2466:	
;doprnt.c: 621: flag |= 0x4000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	622
	
l2468:	
;doprnt.c: 622: f++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	630
	
l2470:	
;doprnt.c: 629: {
;doprnt.c: 630: prec = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
;doprnt.c: 631: while(isdigit((unsigned)*f))
	goto	l2476
	
l197:	
	line	632
	
l2472:	
;doprnt.c: 632: prec = prec*10 + *f++ - '0';
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(sprintf@prec)^080h,w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(0Ah)
	movwf	(___wmul@multiplicand)
	movlw	high(0Ah)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(sprintf@prec)^080h
	
l2474:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	goto	l2476
	
l196:	
	line	631
	
l2476:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3391
	goto	u3390
u3391:
	goto	l2472
u3390:
	goto	l2484
	
l198:	
	line	634
;doprnt.c: 633: }
;doprnt.c: 634: } else {
	goto	l2484
	
l195:	
	line	635
	
l2478:	
;doprnt.c: 635: prec = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	637
	
l2480:	
;doprnt.c: 637: flag |= 0x1000;
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l2484
	line	639
	
l199:	
	line	644
;doprnt.c: 639: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l2484
	line	646
;doprnt.c: 646: case 0:
	
l201:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2652
	line	671
;doprnt.c: 671: case 'f':
	
l203:	
	line	672
;doprnt.c: 672: flag |= 0x400;
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	673
;doprnt.c: 673: break;
	goto	l2486
	line	811
;doprnt.c: 811: default:
	
l205:	
	line	822
;doprnt.c: 822: continue;
	goto	l2650
	line	831
	
l2482:	
;doprnt.c: 831: }
	goto	l2486
	line	644
	
l200:	
	
l2484:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2652
	xorlw	102^0	; case 102
	skipnz
	goto	l203
	goto	l2650
	opt asmopt_on

	line	831
	
l204:	
	line	834
	
l2486:	
;doprnt.c: 834: if(flag & (0x700)) {
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3401
	goto	u3400
u3401:
	goto	l2632
u3400:
	line	836
	
l2488:	
;doprnt.c: 836: if(flag & 0x1000)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l2492
u3410:
	line	838
	
l2490:	
;doprnt.c: 838: prec = 6;
	movlw	low(06h)
	movwf	(sprintf@prec)^080h
	movlw	high(06h)
	movwf	((sprintf@prec)^080h)+1
	goto	l2492
	
l207:	
	line	839
	
l2492:	
;doprnt.c: 839: fval = (*(double *)__va_arg((*(double **)ap), (double)0));
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l2494:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	840
	
l2496:	
;doprnt.c: 840: if(fval < 0.0) {
	movf	(sprintf@fval)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3421
	goto	u3420
u3421:
	goto	l2502
u3420:
	line	841
	
l2498:	
;doprnt.c: 841: fval = -fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	movwf	(___ftneg@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	842
	
l2500:	
;doprnt.c: 842: flag |= 0x03;
	movlw	low(03h)
	iorwf	(sprintf@flag)^080h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^080h,f
	goto	l2502
	line	843
	
l208:	
	line	844
	
l2502:	
;doprnt.c: 843: }
;doprnt.c: 844: exp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	845
	
l2504:	
;doprnt.c: 845: if( fval!=0) {
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3431
	goto	u3430
u3431:
	goto	l2530
u3430:
	line	846
	
l2506:	
;doprnt.c: 846: (void)(*(&exp) = ((*(unsigned long *)&fval >> 15) & 255) - 126);
	movlw	low(sprintf@fval)
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u3445:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u3440:
	addlw	-1
	skipz
	goto	u3445
	movlw	low(0FFh)
	andwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+4)+0
	movlw	high(0FFh)
	andwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+4)+0
	movf	0+(??_sprintf+4)+0,w
	addlw	low(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+4)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(sprintf@exp)^080h
	line	847
	
l2508:	
;doprnt.c: 847: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	line	848
	
l2510:	
;doprnt.c: 848: exp *= 3;
	movlw	low(03h)
	movwf	(___wmul@multiplier)
	movlw	high(03h)
	movwf	((___wmul@multiplier))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(sprintf@exp)^080h,w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	849
	
l2512:	
;doprnt.c: 849: exp /= 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(sprintf@exp)^080h,w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	850
	
l2514:	
;doprnt.c: 850: if(exp < 0)
	btfss	(sprintf@exp+1)^080h,7
	goto	u3451
	goto	u3450
u3451:
	goto	l2518
u3450:
	line	851
	
l2516:	
;doprnt.c: 851: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2518
	
l210:	
	line	855
	
l2518:	
;doprnt.c: 855: integ = scale(-exp);
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	856
	
l2520:	
;doprnt.c: 856: integ *= fval;
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	857
	
l2522:	
;doprnt.c: 857: if(integ < 1.0)
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3461
	goto	u3460
u3461:
	goto	l2526
u3460:
	line	858
	
l2524:	
;doprnt.c: 858: exp--;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2530
	line	859
	
l211:	
	
l2526:	
;doprnt.c: 859: else if(integ >= 10.0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u3471
	goto	u3470
u3471:
	goto	l2530
u3470:
	line	860
	
l2528:	
;doprnt.c: 860: exp++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2530
	
l213:	
	goto	l2530
	line	861
	
l212:	
	goto	l2530
	
l209:	
	line	1121
	
l2530:	
;doprnt.c: 861: }
;doprnt.c: 1121: if(prec <= 12)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3485
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u3485:

	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l2534
u3480:
	line	1122
	
l2532:	
;doprnt.c: 1122: fval += fround(prec);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_fround)),w
	movwf	(___ftadd@f1)
	movf	(1+(?_fround)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?_fround)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	goto	l2534
	
l214:	
	line	1125
	
l2534:	
;doprnt.c: 1125: if((exp > 9)||(fval != 0 && (unsigned long)fval == 0 && exp > 1)) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3495
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u3495:

	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l2542
u3490:
	
l2536:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l2558
u3500:
	
l2538:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l2558
u3510:
	
l2540:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3525
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u3525:

	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l2558
u3520:
	goto	l2542
	
l217:	
	line	1129
	
l2542:	
;doprnt.c: 1129: if(integ < 4.294967296){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x70
	movwf	(___ftge@ff2)
	movlw	0x89
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3531
	goto	u3530
u3531:
	goto	l2546
u3530:
	line	1130
	
l2544:	
;doprnt.c: 1130: exp -= (sizeof dpowers/sizeof dpowers[0])-1;
	movlw	low(-9)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-9)
	addwf	(sprintf@exp+1)^080h,f
	line	1131
;doprnt.c: 1131: }else{
	goto	l2548
	
l218:	
	line	1132
	
l2546:	
;doprnt.c: 1132: exp -= (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-8)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2548
	line	1133
	
l219:	
	line	1134
	
l2548:	
;doprnt.c: 1133: }
;doprnt.c: 1134: integ = scale(exp);
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1135
;doprnt.c: 1135: _val._val = ((sizeof(double)== 3) ? _tdiv_to_l_(fval,integ) : _div_to_l_(fval,integ));
	goto	l2552
	
l2550:	
	movf	(sprintf@fval)^080h,w
	movwf	(__div_to_l_@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__div_to_l_@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__div_to_l_@f1+2)
	movf	(sprintf@integ)^080h,w
	movwf	(__div_to_l_@f2)
	movf	(sprintf@integ+1)^080h,w
	movwf	(__div_to_l_@f2+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(__div_to_l_@f2+2)
	fcall	__div_to_l_
	movf	(3+(?__div_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$252+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(_sprintf$252+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(_sprintf$252+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(_sprintf$252)^080h

	goto	l2554
	
l221:	
	
l2552:	
	movf	(sprintf@fval)^080h,w
	movwf	(__tdiv_to_l_@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__tdiv_to_l_@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__tdiv_to_l_@f1+2)
	movf	(sprintf@integ)^080h,w
	movwf	(__tdiv_to_l_@f2)
	movf	(sprintf@integ+1)^080h,w
	movwf	(__tdiv_to_l_@f2+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(__tdiv_to_l_@f2+2)
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$252+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$252+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$252+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$252)^080h

	goto	l2554
	
l223:	
	
l2554:	
	movf	(_sprintf$252+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$252+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$252+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$252)^080h,w
	movwf	(sprintf@_val)^080h

	line	1138
	
l2556:	
;doprnt.c: 1138: fval = 0.0;
	movlw	0x0
	movwf	(sprintf@fval)^080h
	movlw	0x0
	movwf	(sprintf@fval+1)^080h
	movlw	0x0
	movwf	(sprintf@fval+2)^080h
	line	1139
;doprnt.c: 1139: } else {
	goto	l2562
	
l215:	
	line	1140
	
l2558:	
;doprnt.c: 1140: _val._val = (unsigned long)fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1141
;doprnt.c: 1141: fval -= (double)_val._val;
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___lltoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___lltoft)),w
	movwf	(___ftsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1142
	
l2560:	
;doprnt.c: 1142: exp = 0;
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	goto	l2562
	line	1143
	
l224:	
	line	1145
	
l2562:	
;doprnt.c: 1143: }
;doprnt.c: 1145: for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	
l2564:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l2568
u3540:
	goto	l2576
	
l2566:	
	goto	l2576
	line	1146
	
l225:	
	
l2568:	
;doprnt.c: 1146: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3555:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3555
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u3565
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3565
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3565
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u3565:
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l2572
u3560:
	goto	l2576
	line	1147
	
l2570:	
;doprnt.c: 1147: break;
	goto	l2576
	
l227:	
	line	1145
	
l2572:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l2574:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l2568
u3570:
	goto	l2576
	
l226:	
	line	1197
	
l2576:	
;doprnt.c: 1184: {
;doprnt.c: 1197: if(flag & 0x03)
	movlw	low(03h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3581
	goto	u3580
u3581:
	goto	l2590
u3580:
	line	1199
	
l2578:	
;doprnt.c: 1199: ((*sp++ = ('-')));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	02Dh
	movwf	indf
	
l2580:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	goto	l2590
	
l228:	
	line	1205
;doprnt.c: 1204: }
;doprnt.c: 1205: while(c--) {
	goto	l2590
	
l230:	
	line	1210
	
l2582:	
;doprnt.c: 1209: {
;doprnt.c: 1210: unsigned long vd = _val._val/dpowers[c];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3595:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3595
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd)^080h

	line	1211
	
l2584:	
;doprnt.c: 1211: vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@vd+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@vd+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@vd+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@vd)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@vd+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@vd+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@vd)^080h

	line	1212
	
l2586:	
;doprnt.c: 1212: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movf	(??_sprintf+0)+0,w
	movwf	indf
	
l2588:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	goto	l2590
	line	1215
	
l229:	
	line	1205
	
l2590:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l2582
u3600:
	goto	l2598
	
l231:	
	line	1216
;doprnt.c: 1213: }
;doprnt.c: 1215: }
;doprnt.c: 1216: while(exp > 0) {
	goto	l2598
	
l233:	
	line	1217
	
l2592:	
;doprnt.c: 1217: ((*sp++ = ('0')));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	030h
	movwf	indf
	
l2594:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	line	1218
	
l2596:	
;doprnt.c: 1218: exp--;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2598
	line	1219
	
l232:	
	line	1216
	
l2598:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3615
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u3615:

	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l2592
u3610:
	goto	l2600
	
l234:	
	line	1220
	
l2600:	
;doprnt.c: 1219: }
;doprnt.c: 1220: if(prec > (int)((sizeof dpowers/sizeof dpowers[0])-2))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3625
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u3625:

	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l2604
u3620:
	line	1221
	
l2602:	
;doprnt.c: 1221: c = (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l236
	line	1222
	
l235:	
	line	1223
	
l2604:	
;doprnt.c: 1222: else
;doprnt.c: 1223: c = prec;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	
l236:	
	line	1224
;doprnt.c: 1224: prec -= c;
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1228
;doprnt.c: 1228: if(c)
	movf	(sprintf@c)^080h,w
	skipz
	goto	u3630
	goto	l2610
u3630:
	line	1230
	
l2606:	
;doprnt.c: 1230: ((*sp++ = ('.')));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	02Eh
	movwf	indf
	
l2608:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	goto	l2610
	
l237:	
	line	1236
	
l2610:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$671)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$671+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$671+2)^080h
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(_sprintf$671)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$671+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$671+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1237
;doprnt.c: 1237: while(c--) {
	goto	l2622
	
l239:	
	line	1238
	
l2612:	
;doprnt.c: 1238: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3645:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3645
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_254+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd_254+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd_254+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd_254)^080h

	line	1239
	
l2614:	
;doprnt.c: 1239: vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@vd_254+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@vd_254+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@vd_254+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@vd_254)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_254+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@vd_254+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@vd_254+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@vd_254)^080h

	line	1240
	
l2616:	
;doprnt.c: 1240: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd_254)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movf	(??_sprintf+0)+0,w
	movwf	indf
	
l2618:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	line	1241
	
l2620:	
;doprnt.c: 1241: _val._val %= dpowers[c];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3655:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3655
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___llmod@divisor)
	fcall	stringdir
	movwf	(___llmod@divisor+1)
	fcall	stringdir
	movwf	(___llmod@divisor+2)
	fcall	stringdir
	movwf	(___llmod@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@_val+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@_val+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@_val)^080h

	goto	l2622
	line	1242
	
l238:	
	line	1237
	
l2622:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l2612
u3660:
	goto	l2630
	
l240:	
	line	1244
;doprnt.c: 1242: }
;doprnt.c: 1244: while(prec) {
	goto	l2630
	
l242:	
	line	1245
	
l2624:	
;doprnt.c: 1245: ((*sp++ = ('0')));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	030h
	movwf	indf
	
l2626:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	line	1246
	
l2628:	
;doprnt.c: 1246: prec--;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^080h,f
	goto	l2630
	line	1247
	
l241:	
	line	1244
	
l2630:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l2624
u3670:
	goto	l2650
	
l243:	
	line	1254
;doprnt.c: 1247: }
;doprnt.c: 1254: continue;
	goto	l2650
	line	1255
	
l206:	
	line	1299
	
l2632:	
;doprnt.c: 1255: }
;doprnt.c: 1299: if(prec == 0 && _val._val == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l244
u3680:
	
l2634:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l244
u3690:
	line	1300
	
l2636:	
;doprnt.c: 1300: prec++;
	movlw	low(01h)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@prec+1)^080h,f
	
l244:	
	line	1348
;doprnt.c: 1348: if(c < prec)
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3705
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3705:

	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l2640
u3700:
	line	1349
	
l2638:	
;doprnt.c: 1349: c = prec;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l2644
	line	1350
	
l245:	
	
l2640:	
;doprnt.c: 1350: else if(prec < c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3715
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,w
u3715:

	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l2644
u3710:
	line	1351
	
l2642:	
;doprnt.c: 1351: prec = c;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	goto	l2644
	
l247:	
	goto	l2644
	line	1431
	
l246:	
	line	1447
	
l2644:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3721
	goto	u3720
u3721:
	goto	l2650
u3720:
	line	1448
	
l2646:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status,7
	btfsc	(sprintf@sp+1),0
	bsf	status,7
	
	movlw	02Dh
	movwf	indf
	
l2648:	
	movlw	low(01h)
	addwf	(sprintf@sp),f
	skipnc
	incf	(sprintf@sp+1),f
	movlw	high(01h)
	addwf	(sprintf@sp+1),f
	goto	l2650
	
l248:	
	goto	l2650
	line	1542
	
l192:	
	line	545
	
l2650:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l2456
u3730:
	goto	l2652
	
l249:	
	goto	l2652
	line	1544
;doprnt.c: 1478: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l202:	
	line	1547
	
l2652:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bsf	status,7
	btfss	(sprintf@sp+1),0
	bcf	status,7
	clrf	indf
	goto	l250
	line	1549
	
l2654:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l250:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 425 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   31[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	425
global __ptext2
__ptext2:	;psect for function _scale
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	425
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
;incstack = 0
	opt	stack 4
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scale@scl)
	line	428
	
l2084:	
;doprnt.c: 428: if(scl < 0) {
	btfss	(scale@scl),7
	goto	u2701
	goto	u2700
u2701:
	goto	l2106
u2700:
	line	429
	
l2086:	
;doprnt.c: 429: scl = -scl;
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	430
	
l2088:	
;doprnt.c: 430: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l2096
u2710:
	line	431
	
l2090:	
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$670)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$670+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$670+2)
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_scale$670),w
	movwf	(___ftmul@f2)
	movf	(_scale$670+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$670+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l184
	
l2092:	
	goto	l184
	
l2094:	
	goto	l2102
	line	432
	
l183:	
	
l2096:	
;doprnt.c: 432: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l2102
u2720:
	line	433
	
l2098:	
;doprnt.c: 433: return _npowers_[scl/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l184
	
l2100:	
	goto	l184
	
l186:	
	goto	l2102
	line	434
	
l185:	
	
l2102:	
;doprnt.c: 434: return _npowers_[scl];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l184
	
l2104:	
	goto	l184
	line	435
	
l182:	
	line	436
	
l2106:	
;doprnt.c: 435: }
;doprnt.c: 436: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2114
u2730:
	line	437
	
l2108:	
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$670)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$670+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$670+2)
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_scale$670),w
	movwf	(___ftmul@f2)
	movf	(_scale$670+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$670+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l184
	
l2110:	
	goto	l184
	
l2112:	
	goto	l2120
	line	438
	
l187:	
	
l2114:	
;doprnt.c: 438: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2120
u2740:
	line	439
	
l2116:	
;doprnt.c: 439: return _powers_[scl/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l184
	
l2118:	
	goto	l184
	
l189:	
	goto	l2120
	line	440
	
l188:	
	
l2120:	
;doprnt.c: 440: return _powers_[scl];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l184
	
l2122:	
	line	441
	
l184:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext3
__ptext3:	;psect for function _isdigit
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l2124:	
	clrf	(_isdigit$452)
	
l2126:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l2132
u2750:
	
l2128:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l2132
u2760:
	
l2130:	
	clrf	(_isdigit$452)
	incf	(_isdigit$452),f
	goto	l2132
	
l624:	
	
l2132:	
	rrf	(_isdigit$452),w
	
	goto	l625
	
l2134:	
	line	15
	
l625:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 409 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	409
global __ptext4
__ptext4:	;psect for function _fround
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	409
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
;incstack = 0
	opt	stack 4
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fround@prec)
	line	413
	
l2062:	
;doprnt.c: 413: if(prec>=110)
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2072
u2680:
	line	414
	
l2064:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_fround+4)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$668)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$668+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$668+2)
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_fround$668),w
	movwf	(___ftmul@f2)
	movf	(_fround$668+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$668+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$669)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$669+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$669+2)
	
l2066:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$669),w
	movwf	(___ftmul@f2)
	movf	(_fround$669+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$669+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l177
	
l2068:	
	goto	l177
	
l2070:	
	goto	l2080
	line	415
	
l176:	
	
l2072:	
;doprnt.c: 415: else if(prec > 10)
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l2080
u2690:
	line	416
	
l2074:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_fround+4)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$668)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$668+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$668+2)
	
l2076:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$668),w
	movwf	(___ftmul@f2)
	movf	(_fround$668+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$668+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l177
	
l2078:	
	goto	l177
	
l179:	
	goto	l2080
	line	417
	
l178:	
	
l2080:	
;doprnt.c: 417: return 0.5 * _npowers_[prec];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l177
	
l2082:	
	line	418
	
l177:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    6[BANK0 ] unsigned char 
;;  product         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___bmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l1800:	
	clrf	(___bmul@product)
	goto	l1802
	line	42
	
l351:	
	line	43
	
l1802:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l1806
u2070:
	line	44
	
l1804:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1806
	
l352:	
	line	45
	
l1806:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1808:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1810:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l1802
u2080:
	goto	l1812
	
l353:	
	line	50
	
l1812:	
	movf	(___bmul@product),w
	goto	l354
	
l1814:	
	line	51
	
l354:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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
;;		_fround
;;		_scale
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
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1860:	
	clrf	(___awmod@sign)
	line	14
	
l1862:	
	btfss	(___awmod@dividend+1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l1868
u2190:
	line	15
	
l1864:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1866:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1868
	line	17
	
l469:	
	line	18
	
l1868:	
	btfss	(___awmod@divisor+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l1872
u2200:
	line	19
	
l1870:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1872
	
l470:	
	line	20
	
l1872:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l1890
u2210:
	line	21
	
l1874:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1880
	
l473:	
	line	23
	
l1876:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2225
	line	24
	
l1878:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1880
	line	25
	
l472:	
	line	22
	
l1880:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1876
u2230:
	goto	l1882
	
l474:	
	goto	l1882
	line	26
	
l475:	
	line	27
	
l1882:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2245
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2245:
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1886
u2240:
	line	28
	
l1884:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1886
	
l476:	
	line	29
	
l1886:	
	movlw	01h
	
u2255:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2255
	line	30
	
l1888:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1882
u2260:
	goto	l1890
	
l477:	
	goto	l1890
	line	31
	
l471:	
	line	32
	
l1890:	
	movf	(___awmod@sign),w
	skipz
	goto	u2270
	goto	l1894
u2270:
	line	33
	
l1892:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1894
	
l478:	
	line	34
	
l1894:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l479
	
l1896:	
	line	35
	
l479:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___awdiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1816:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1818:	
	btfss	(___awdiv@divisor+1),7
	goto	u2091
	goto	u2090
u2091:
	goto	l1824
u2090:
	line	16
	
l1820:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1822:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1824
	line	18
	
l456:	
	line	19
	
l1824:	
	btfss	(___awdiv@dividend+1),7
	goto	u2101
	goto	u2100
u2101:
	goto	l1830
u2100:
	line	20
	
l1826:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1828:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1830
	line	22
	
l457:	
	line	23
	
l1830:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1832:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2111
	goto	u2110
u2111:
	goto	l1852
u2110:
	line	25
	
l1834:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1840
	
l460:	
	line	27
	
l1836:	
	movlw	01h
	
u2125:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2125
	line	28
	
l1838:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1840
	line	29
	
l459:	
	line	26
	
l1840:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l1836
u2130:
	goto	l1842
	
l461:	
	goto	l1842
	line	30
	
l462:	
	line	31
	
l1842:	
	movlw	01h
	
u2145:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2145
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2155
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2155:
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l1848
u2150:
	line	33
	
l1844:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1846:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1848
	line	35
	
l463:	
	line	36
	
l1848:	
	movlw	01h
	
u2165:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2165
	line	37
	
l1850:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l1842
u2170:
	goto	l1852
	
l464:	
	goto	l1852
	line	38
	
l458:	
	line	39
	
l1852:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2180
	goto	l1856
u2180:
	line	40
	
l1854:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1856
	
l465:	
	line	41
	
l1856:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l466
	
l1858:	
	line	42
	
l466:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       6       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
global __ptext8
__ptext8:	;psect for function __tdiv_to_l_
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
;incstack = 0
	opt	stack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l2136:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l2142
u2770:
	line	67
	
l2138:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l566
	
l2140:	
	goto	l566
	
l565:	
	line	68
	
l2142:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l567
u2780:
	line	69
	
l2144:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l566
	
l2146:	
	goto	l566
	
l567:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l2148:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l2150:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	movlw	0
	movwf	(__tdiv_to_l_@quot+3)
	movlw	0
	movwf	(__tdiv_to_l_@quot+2)
	movlw	0
	movwf	(__tdiv_to_l_@quot+1)
	movlw	0
	movwf	(__tdiv_to_l_@quot)

	line	75
	
l2152:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l2154:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	movwf	(__tdiv_to_l_@cntr)
	goto	l2156
	line	78
	
l568:	
	line	79
	
l2156:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u2795:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u2795
	line	80
	
l2158:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2805
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2805
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2805:
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2164
u2800:
	line	81
	
l2160:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l2162:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	goto	l2164
	line	83
	
l569:	
	line	84
	
l2164:	
	movlw	01h
u2815:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u2815
	line	85
	
l2166:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2156
u2820:
	
l570:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2831
	goto	u2830
u2831:
	goto	l2176
u2830:
	line	87
	
l2168:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l2174
u2840:
	line	88
	
l2170:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l566
	
l2172:	
	goto	l566
	
l572:	
	goto	l2174
	line	89
	
l573:	
	line	90
	
l2174:	
	movlw	01h
u2855:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u2855

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2174
u2860:
	goto	l2186
	
l574:	
	line	92
	goto	l2186
	
l571:	
	line	93
	
l2176:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l2184
u2870:
	line	94
	
l2178:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l566
	
l2180:	
	goto	l566
	
l576:	
	line	95
	goto	l2184
	
l578:	
	line	96
	
l2182:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u2885:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u2885
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1),f
	goto	l2184
	line	98
	
l577:	
	line	95
	
l2184:	
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l2182
u2890:
	goto	l2186
	
l579:	
	goto	l2186
	line	99
	
l575:	
	line	100
	
l2186:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	goto	l566
	
l2188:	
	line	101
	
l566:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned long 
;;  f2              3    3[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
global __ptext9
__ptext9:	;psect for function __div_to_l_
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
;incstack = 0
	opt	stack 6
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l2190:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l2196
u2900:
	line	67
	
l2192:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l489
	
l2194:	
	goto	l489
	
l488:	
	line	68
	
l2196:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l2202
u2910:
	line	69
	
l2198:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l489
	
l2200:	
	goto	l489
	
l490:	
	line	70
	
l2202:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l2204:	
	movlw	0
	movwf	(__div_to_l_@quot+3)
	movlw	0
	movwf	(__div_to_l_@quot+2)
	movlw	0
	movwf	(__div_to_l_@quot+1)
	movlw	0
	movwf	(__div_to_l_@quot)

	line	75
	
l2206:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l2208:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l2210:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	goto	l2212
	line	78
	
l491:	
	line	79
	
l2212:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u2925:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u2925
	line	80
	
l2214:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u2935
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2935
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2935
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l492
u2930:
	line	81
	
l2216:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l2218:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l492:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	decf	fsr0,f
	decf	fsr0,f
	decf	fsr0,f
	line	85
	
l2220:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l2212
u2940:
	
l493:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2951
	goto	u2950
u2951:
	goto	l2230
u2950:
	line	87
	
l2222:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l2228
u2960:
	line	88
	
l2224:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l489
	
l2226:	
	goto	l489
	
l495:	
	goto	l2228
	line	89
	
l496:	
	line	90
	
l2228:	
	movlw	01h
u2975:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u2975

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l2228
u2980:
	goto	l2240
	
l497:	
	line	92
	goto	l2240
	
l494:	
	line	93
	
l2230:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l2238
u2990:
	line	94
	
l2232:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l489
	
l2234:	
	goto	l489
	
l499:	
	line	95
	goto	l2238
	
l501:	
	line	96
	
l2236:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3005:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3005
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1),f
	goto	l2238
	line	98
	
l500:	
	line	95
	
l2238:	
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l2236
u3010:
	goto	l2240
	
l502:	
	goto	l2240
	line	99
	
l498:	
	line	100
	
l2240:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	goto	l489
	
l2242:	
	line	101
	
l489:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext10
__ptext10:	;psect for function ___wmul
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2244:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2246
	line	44
	
l333:	
	line	45
	
l2246:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l334
u3020:
	line	46
	
l2248:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l334:	
	line	47
	movlw	01h
	
u3035:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3035
	line	48
	
l2250:	
	movlw	01h
	
u3045:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3045
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l2246
u3050:
	goto	l2252
	
l335:	
	line	52
	
l2252:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l336
	
l2254:	
	line	53
	
l336:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext11
__ptext11:	;psect for function ___lltoft
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2378:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l2382
	
l672:	
	line	42
	
l2380:	
	movlw	01h
u3355:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3355

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l2382
	line	44
	
l671:	
	line	41
	
l2382:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l2380
u3360:
	goto	l2384
	
l673:	
	line	45
	
l2384:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l674
	
l2386:	
	line	46
	
l674:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___llmod
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l2358:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l2374
u3290:
	line	14
	
l2360:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l2364
	
l661:	
	line	16
	
l2362:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3305:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3305
	line	17
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l2364
	line	18
	
l660:	
	line	15
	
l2364:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l2362
u3310:
	goto	l2366
	
l662:	
	goto	l2366
	line	19
	
l663:	
	line	20
	
l2366:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3325
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3325
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3325
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3325:
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l2370
u3320:
	line	21
	
l2368:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l2370
	
l664:	
	line	22
	
l2370:	
	movlw	01h
u3335:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3335

	line	23
	
l2372:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l2366
u3340:
	goto	l2374
	
l665:	
	goto	l2374
	line	24
	
l659:	
	line	25
	
l2374:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l666
	
l2376:	
	line	26
	
l666:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___lldiv
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l2334:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	15
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3221
	goto	u3220
u3221:
	goto	l2354
u3220:
	line	16
	
l2336:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l2340
	
l651:	
	line	18
	
l2338:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3235:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3235
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l2340
	line	20
	
l650:	
	line	17
	
l2340:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l2338
u3240:
	goto	l2342
	
l652:	
	goto	l2342
	line	21
	
l653:	
	line	22
	
l2342:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3255:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3255
	line	23
	
l2344:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3265
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3265
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3265
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3265:
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l2350
u3260:
	line	24
	
l2346:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l2348:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l2350
	line	26
	
l654:	
	line	27
	
l2350:	
	movlw	01h
u3275:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3275

	line	28
	
l2352:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l2342
u3280:
	goto	l2354
	
l655:	
	goto	l2354
	line	29
	
l649:	
	line	30
	
l2354:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l656
	
l2356:	
	line	31
	
l656:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   41[BANK0 ] unsigned long 
;;  exp1            1   45[BANK0 ] unsigned char 
;;  sign1           1   40[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   32[BANK0 ] long 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext14
__ptext14:	;psect for function ___fttol
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2290:	
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
	goto	u3121
	goto	u3120
u3121:
	goto	l2296
u3120:
	line	50
	
l2292:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l610
	
l2294:	
	goto	l610
	
l609:	
	line	51
	
l2296:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3135:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3130:
	addlw	-1
	skipz
	goto	u3135
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2298:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2300:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2302:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2304:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2306:	
	btfss	(___fttol@exp1),7
	goto	u3141
	goto	u3140
u3141:
	goto	l2316
u3140:
	line	57
	
l2308:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l2314
u3150:
	line	58
	
l2310:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l610
	
l2312:	
	goto	l610
	
l612:	
	goto	l2314
	line	59
	
l613:	
	line	60
	
l2314:	
	movlw	01h
u3165:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3165

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l2314
u3170:
	goto	l2326
	
l614:	
	line	62
	goto	l2326
	
l611:	
	line	63
	
l2316:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l2324
u3180:
	line	64
	
l2318:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l610
	
l2320:	
	goto	l610
	
l616:	
	line	65
	goto	l2324
	
l618:	
	line	66
	
l2322:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3195:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3195
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2324
	line	68
	
l617:	
	line	65
	
l2324:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l2322
u3200:
	goto	l2326
	
l619:	
	goto	l2326
	line	69
	
l615:	
	line	70
	
l2326:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3210
	goto	l2330
u3210:
	line	71
	
l2328:	
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
	goto	l2330
	
l620:	
	line	72
	
l2330:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l610
	
l2332:	
	line	73
	
l610:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   52[BANK0 ] float 
;;  f1              3   55[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext15
__ptext15:	;psect for function ___ftsub
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l2284:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l2286:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l606
	
l2288:	
	line	25
	
l606:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
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
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l2276:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3111
	goto	u3110
u3111:
	goto	l2280
u3110:
	line	18
	
l2278:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2280
	
l600:	
	line	19
	
l2280:	
	goto	l601
	
l2282:	
	line	20
	
l601:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext17
__ptext17:	;psect for function ___ftge
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2256:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l2260
u3060:
	line	7
	
l2258:	
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
	goto	u3071
	goto	u3072
u3071:
	addwf	(??___ftge+0)+1,f
	
u3072:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3073
	goto	u3074
u3073:
	addwf	(??___ftge+0)+2,f
	
u3074:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2260
	
l582:	
	line	8
	
l2260:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l2264
u3080:
	line	9
	
l2262:	
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
	goto	u3091
	goto	u3092
u3091:
	addwf	(??___ftge+0)+1,f
	
u3092:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3093
	goto	u3094
u3093:
	addwf	(??___ftge+0)+2,f
	
u3094:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2264
	
l583:	
	line	10
	
l2264:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2266:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2268:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3105
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3105
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3105:
	skipnc
	goto	u3101
	goto	u3100
u3101:
	goto	l2272
u3100:
	
l2270:	
	clrc
	
	goto	l584
	
l1752:	
	
l2272:	
	setc
	
	goto	l584
	
l1754:	
	goto	l584
	
l2274:	
	line	13
	
l584:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 223 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	223
global __ptext18
__ptext18:	;psect for function _init_I2C_Master
psect	text18
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	223
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	225
	
l2392:	
;BajanDecierdo_7-3.c: 225: TRISC = 0b00011000;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	226
;BajanDecierdo_7-3.c: 226: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	227
	
l2394:	
;BajanDecierdo_7-3.c: 227: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	228
	
l2396:	
;BajanDecierdo_7-3.c: 228: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	229
;BajanDecierdo_7-3.c: 229: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	230
	
l105:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 302 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	302
global __ptext19
__ptext19:	;psect for function _initLCD
psect	text19
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	302
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	304
	
l2398:	
;BajanDecierdo_7-3.c: 304: instCTRL(0x3C);
	movlw	(03Ch)
	fcall	_instCTRL
	line	305
;BajanDecierdo_7-3.c: 305: delay(20);
	movlw	low(014h)
	movwf	(delay@overflow)
	movlw	high(014h)
	movwf	((delay@overflow))+1
	fcall	_delay
	line	306
;BajanDecierdo_7-3.c: 306: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	307
;BajanDecierdo_7-3.c: 307: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	308
;BajanDecierdo_7-3.c: 308: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	309
;BajanDecierdo_7-3.c: 309: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	310
	
l138:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 282 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  LCD_CMD         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCD_CMD         1    5[COMMON] unsigned char 
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
;;		_delay
;; This function is called by:
;;		_main
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	282
global __ptext20
__ptext20:	;psect for function _instCTRL
psect	text20
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	282
	global	__size_of_instCTRL
	__size_of_instCTRL	equ	__end_of_instCTRL-_instCTRL
	
_instCTRL:	
;incstack = 0
	opt	stack 6
; Regs used in _instCTRL: [wreg+status,2+status,0+pclath+cstack]
;instCTRL@LCD_CMD stored from wreg
	movwf	(instCTRL@LCD_CMD)
	line	284
	
l2020:	
;BajanDecierdo_7-3.c: 284: PORTB = LCD_CMD;
	movf	(instCTRL@LCD_CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	285
	
l2022:	
;BajanDecierdo_7-3.c: 285: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	286
	
l2024:	
;BajanDecierdo_7-3.c: 286: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	287
	
l2026:	
;BajanDecierdo_7-3.c: 287: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	288
	
l2028:	
;BajanDecierdo_7-3.c: 288: delay(20);
	movlw	low(014h)
	movwf	(delay@overflow)
	movlw	high(014h)
	movwf	((delay@overflow))+1
	fcall	_delay
	line	289
	
l2030:	
;BajanDecierdo_7-3.c: 289: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	290
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 292 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  LCD_DAT         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCD_DAT         1    5[COMMON] unsigned char 
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
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	292
global __ptext21
__ptext21:	;psect for function _dataCTRL
psect	text21
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	292
	global	__size_of_dataCTRL
	__size_of_dataCTRL	equ	__end_of_dataCTRL-_dataCTRL
	
_dataCTRL:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCTRL: [wreg+status,2+status,0+pclath+cstack]
;dataCTRL@LCD_DAT stored from wreg
	movwf	(dataCTRL@LCD_DAT)
	line	294
	
l2400:	
;BajanDecierdo_7-3.c: 294: PORTB = LCD_DAT;
	movf	(dataCTRL@LCD_DAT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	295
	
l2402:	
;BajanDecierdo_7-3.c: 295: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	296
	
l2404:	
;BajanDecierdo_7-3.c: 296: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	297
	
l2406:	
;BajanDecierdo_7-3.c: 297: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	298
	
l2408:	
;BajanDecierdo_7-3.c: 298: delay(20);
	movlw	low(014h)
	movwf	(delay@overflow)
	movlw	high(014h)
	movwf	((delay@overflow))+1
	fcall	_delay
	line	299
	
l2410:	
;BajanDecierdo_7-3.c: 299: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	300
	
l135:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_SHT21_SoftReset

;; *************** function _SHT21_SoftReset *****************
;; Defined at:
;;		line 366 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	366
global __ptext22
__ptext22:	;psect for function _SHT21_SoftReset
psect	text22
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	366
	global	__size_of_SHT21_SoftReset
	__size_of_SHT21_SoftReset	equ	__end_of_SHT21_SoftReset-_SHT21_SoftReset
	
_SHT21_SoftReset:	
;incstack = 0
	opt	stack 5
; Regs used in _SHT21_SoftReset: [wreg+status,2+status,0+pclath+cstack]
	line	368
	
l2412:	
;BajanDecierdo_7-3.c: 368: I2C_Start();
	fcall	_I2C_Start
	line	369
;BajanDecierdo_7-3.c: 369: I2C_Send(I2C_ADDR_W);
	movlw	(080h)
	fcall	_I2C_Send
	line	370
;BajanDecierdo_7-3.c: 370: I2C_Send(SOFT_RESET);
	movlw	(0FEh)
	fcall	_I2C_Send
	line	371
;BajanDecierdo_7-3.c: 371: I2C_Stop();
	fcall	_I2C_Stop
	line	372
;BajanDecierdo_7-3.c: 372: delay(10);
	movlw	low(0Ah)
	movwf	(delay@overflow)
	movlw	high(0Ah)
	movwf	((delay@overflow))+1
	fcall	_delay
	line	373
	
l154:	
	return
	opt stack 0
GLOBAL	__end_of_SHT21_SoftReset
	__end_of_SHT21_SoftReset:
	signat	_SHT21_SoftReset,88
	global	_SHT21_SetResolution

;; *************** function _SHT21_SetResolution *****************
;; Defined at:
;;		line 375 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	375
global __ptext23
__ptext23:	;psect for function _SHT21_SetResolution
psect	text23
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	375
	global	__size_of_SHT21_SetResolution
	__size_of_SHT21_SetResolution	equ	__end_of_SHT21_SetResolution-_SHT21_SetResolution
	
_SHT21_SetResolution:	
;incstack = 0
	opt	stack 5
; Regs used in _SHT21_SetResolution: [wreg+status,2+status,0+pclath+cstack]
	line	377
	
l2414:	
;BajanDecierdo_7-3.c: 377: I2C_Start();
	fcall	_I2C_Start
	line	378
;BajanDecierdo_7-3.c: 378: I2C_Send(I2C_ADDR_W);
	movlw	(080h)
	fcall	_I2C_Send
	line	379
;BajanDecierdo_7-3.c: 379: I2C_Send(USR_REG_WR);
	movlw	(0E6h)
	fcall	_I2C_Send
	line	380
;BajanDecierdo_7-3.c: 380: I2C_Send(SHT21_RES_RH12_TEMP14);
	movlw	(0)
	fcall	_I2C_Send
	line	381
;BajanDecierdo_7-3.c: 381: I2C_Stop();
	fcall	_I2C_Stop
	line	382
	
l157:	
	return
	opt stack 0
GLOBAL	__end_of_SHT21_SetResolution
	__end_of_SHT21_SetResolution:
	signat	_SHT21_SetResolution,88
	global	_SHT21_Measure

;; *************** function _SHT21_Measure *****************
;; Defined at:
;;		line 332 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  measureType     1    wreg     enum E1319
;;  pMeasureand     1    5[COMMON] PTR struct .
;;		 -> main@rawTemp(2), main@rawRH(2), 
;; Auto vars:     Size  Location     Type
;;  measureType     1   11[COMMON] enum E1319
;;  data            2    9[COMMON] unsigned char [2]
;;  error           1    8[COMMON] unsigned char 
;;  checksum        1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_Receive
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	332
global __ptext24
__ptext24:	;psect for function _SHT21_Measure
psect	text24
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	332
	global	__size_of_SHT21_Measure
	__size_of_SHT21_Measure	equ	__end_of_SHT21_Measure-_SHT21_Measure
	
_SHT21_Measure:	
;incstack = 0
	opt	stack 5
; Regs used in _SHT21_Measure: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SHT21_Measure@measureType stored from wreg
	movwf	(SHT21_Measure@measureType)
	line	335
	
l2416:	
;BajanDecierdo_7-3.c: 334: u8t checksum;
;BajanDecierdo_7-3.c: 335: u8t error = 0;
	clrf	(SHT21_Measure@error)
	line	339
	
l2418:	
;BajanDecierdo_7-3.c: 336: u8t data[2];
;BajanDecierdo_7-3.c: 339: I2C_Start();
	fcall	_I2C_Start
	line	341
	
l2420:	
;BajanDecierdo_7-3.c: 341: I2C_Send(I2C_ADDR_W);
	movlw	(080h)
	fcall	_I2C_Send
	line	343
;BajanDecierdo_7-3.c: 343: switch (measureType)
	goto	l2428
	line	345
;BajanDecierdo_7-3.c: 344: {
;BajanDecierdo_7-3.c: 345: case HUMIDITY:
	
l148:	
	line	346
	
l2422:	
;BajanDecierdo_7-3.c: 346: I2C_Send(SHT21_CMD_RH_HM);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	347
;BajanDecierdo_7-3.c: 347: break;
	goto	l2430
	line	348
;BajanDecierdo_7-3.c: 348: case TEMPERATURE:
	
l150:	
	line	349
	
l2424:	
;BajanDecierdo_7-3.c: 349: I2C_Send(SHT21_CMD_TM_HM);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	350
;BajanDecierdo_7-3.c: 350: break;
	goto	l2430
	line	351
	
l2426:	
;BajanDecierdo_7-3.c: 351: }
	goto	l2430
	line	343
	
l147:	
	
l2428:	
	movf	(SHT21_Measure@measureType),w
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
	goto	l2422
	xorlw	1^0	; case 1
	skipnz
	goto	l2424
	goto	l2430
	opt asmopt_on

	line	351
	
l149:	
	line	353
	
l2430:	
;BajanDecierdo_7-3.c: 353: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	355
;BajanDecierdo_7-3.c: 355: I2C_Send(I2C_ADDR_R);
	movlw	(081h)
	fcall	_I2C_Send
	line	356
;BajanDecierdo_7-3.c: 356: delay(15);
	movlw	low(0Fh)
	movwf	(delay@overflow)
	movlw	high(0Fh)
	movwf	((delay@overflow))+1
	fcall	_delay
	line	358
	
l2432:	
;BajanDecierdo_7-3.c: 358: pMeasureand->s16.u8H = data[0] = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	movwf	(SHT21_Measure@data)
	movwf	(??_SHT21_Measure+0)+0
	incf	(SHT21_Measure@pMeasureand),w
	movwf	fsr0
	movf	(??_SHT21_Measure+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	359
	
l2434:	
;BajanDecierdo_7-3.c: 359: pMeasureand->s16.u8L = data[1] = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	movwf	0+(SHT21_Measure@data)+01h
	movwf	(??_SHT21_Measure+0)+0
	movf	(SHT21_Measure@pMeasureand),w
	movwf	fsr0
	movf	(??_SHT21_Measure+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	360
;BajanDecierdo_7-3.c: 360: checksum = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	movwf	(??_SHT21_Measure+0)+0
	movf	(??_SHT21_Measure+0)+0,w
	movwf	(SHT21_Measure@checksum)
	line	362
;BajanDecierdo_7-3.c: 362: I2C_Stop();
	fcall	_I2C_Stop
	goto	l151
	line	363
	
l2436:	
	line	364
;BajanDecierdo_7-3.c: 363: return error;
;	Return value of _SHT21_Measure is never used
	
l151:	
	return
	opt stack 0
GLOBAL	__end_of_SHT21_Measure
	__end_of_SHT21_Measure:
	signat	_SHT21_Measure,8313
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 271 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  overflow        2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_instCTRL
;;		_dataCTRL
;;		_initLCD
;;		_SHT21_Measure
;;		_SHT21_SoftReset
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	271
global __ptext25
__ptext25:	;psect for function _delay
psect	text25
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	271
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	274
	
l1792:	
;BajanDecierdo_7-3.c: 273: int i;
;BajanDecierdo_7-3.c: 274: for (i = 0; i < overflow; i++)
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l123
	line	275
	
l124:	
	line	276
	
l1794:	
;BajanDecierdo_7-3.c: 275: {
;BajanDecierdo_7-3.c: 276: TMR0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	277
;BajanDecierdo_7-3.c: 277: while (TMR0 < 0x64)
	goto	l1796
	
l126:	
	goto	l1796
	line	278
;BajanDecierdo_7-3.c: 278: ;
	
l125:	
	line	277
	
l1796:	
	movlw	(064h)
	subwf	(1),w	;volatile
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l1796
u2050:
	goto	l1798
	
l127:	
	line	274
	
l1798:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l123:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@overflow+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u2065
	movf	(delay@overflow),w
	subwf	(delay@i),w
u2065:

	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l1794
u2060:
	goto	l129
	
l128:	
	line	280
	
l129:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 244 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;;		_SHT21_Measure
;;		_SHT21_SoftReset
;;		_SHT21_SetResolution
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	244
global __ptext26
__ptext26:	;psect for function _I2C_Stop
psect	text26
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	244
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	246
	
l2040:	
;BajanDecierdo_7-3.c: 246: I2C_Wait();
	fcall	_I2C_Wait
	line	247
	
l2042:	
;BajanDecierdo_7-3.c: 247: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	248
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 232 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;;		_SHT21_Measure
;;		_SHT21_SoftReset
;;		_SHT21_SetResolution
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	232
global __ptext27
__ptext27:	;psect for function _I2C_Start
psect	text27
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	232
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
l2032:	
;BajanDecierdo_7-3.c: 234: I2C_Wait();
	fcall	_I2C_Wait
	line	235
	
l2034:	
;BajanDecierdo_7-3.c: 235: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	236
	
l108:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 250 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;;		_SHT21_Measure
;;		_SHT21_SoftReset
;;		_SHT21_SetResolution
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	250
global __ptext28
__ptext28:	;psect for function _I2C_Send
psect	text28
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	250
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@dataOUT stored from wreg
	movwf	(I2C_Send@dataOUT)
	line	252
	
l2044:	
;BajanDecierdo_7-3.c: 252: I2C_Wait();
	fcall	_I2C_Wait
	line	253
	
l2046:	
;BajanDecierdo_7-3.c: 253: SSPBUF = dataOUT;
	movf	(I2C_Send@dataOUT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	254
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_RepeatedStart

;; *************** function _I2C_RepeatedStart *****************
;; Defined at:
;;		line 238 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;;		_SHT21_Measure
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	238
global __ptext29
__ptext29:	;psect for function _I2C_RepeatedStart
psect	text29
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	238
	global	__size_of_I2C_RepeatedStart
	__size_of_I2C_RepeatedStart	equ	__end_of_I2C_RepeatedStart-_I2C_RepeatedStart
	
_I2C_RepeatedStart:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_RepeatedStart: [wreg+status,2+status,0+pclath+cstack]
	line	240
	
l2036:	
;BajanDecierdo_7-3.c: 240: I2C_Wait();
	fcall	_I2C_Wait
	line	241
	
l2038:	
;BajanDecierdo_7-3.c: 241: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	242
	
l111:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_RepeatedStart
	__end_of_I2C_RepeatedStart:
	signat	_I2C_RepeatedStart,88
	global	_I2C_Receive

;; *************** function _I2C_Receive *****************
;; Defined at:
;;		line 256 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  ACK_NACK        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ACK_NACK        1    1[COMMON] unsigned char 
;;  dataIN          1    2[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_SHT21_Measure
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	line	256
global __ptext30
__ptext30:	;psect for function _I2C_Receive
psect	text30
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	256
	global	__size_of_I2C_Receive
	__size_of_I2C_Receive	equ	__end_of_I2C_Receive-_I2C_Receive
	
_I2C_Receive:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Receive: [wreg+status,2+status,0+pclath+cstack]
;I2C_Receive@ACK_NACK stored from wreg
	movwf	(I2C_Receive@ACK_NACK)
	line	259
	
l2048:	
;BajanDecierdo_7-3.c: 258: u8t dataIN;
;BajanDecierdo_7-3.c: 259: I2C_Wait();
	fcall	_I2C_Wait
	line	260
	
l2050:	
;BajanDecierdo_7-3.c: 260: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	261
;BajanDecierdo_7-3.c: 261: I2C_Wait();
	fcall	_I2C_Wait
	line	262
	
l2052:	
;BajanDecierdo_7-3.c: 262: dataIN = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Receive+0)+0
	movf	(??_I2C_Receive+0)+0,w
	movwf	(I2C_Receive@dataIN)
	line	263
	
l2054:	
;BajanDecierdo_7-3.c: 263: I2C_Wait();
	fcall	_I2C_Wait
	line	264
	
l2056:	
;BajanDecierdo_7-3.c: 264: ACKDT = (ACK_NACK) ? 0 : 1;
	movf	(I2C_Receive@ACK_NACK)
	skipnz
	goto	u2661
	goto	u2660
	
u2661:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	goto	u2674
u2660:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
u2674:
	line	265
	
l2058:	
;BajanDecierdo_7-3.c: 265: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	266
;BajanDecierdo_7-3.c: 266: return dataIN;
	movf	(I2C_Receive@dataIN),w
	goto	l120
	
l2060:	
	line	267
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Receive
	__end_of_I2C_Receive:
	signat	_I2C_Receive,4217
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 113 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
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
;;		_I2C_RepeatedStart
;;		_I2C_Stop
;;		_I2C_Send
;;		_I2C_Receive
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	113
global __ptext31
__ptext31:	;psect for function _I2C_Wait
psect	text31
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	113
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Wait: [wreg+status,2]
	
l1786:	
	goto	l1788
	
l68:	
	goto	l1788
	
l67:	
	
l1788:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l1788
u2030:
	
l1790:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u2041
	goto	u2040
u2041:
	goto	l1788
u2040:
	goto	l70
	
l69:	
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Wait
	__end_of_I2C_Wait:
	signat	_I2C_Wait,88
	global	_SHT21_CalcTemp

;; *************** function _SHT21_CalcTemp *****************
;; Defined at:
;;		line 323 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  u16Temp         2   52[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  resultTemp      3   55[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___lwtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	line	323
global __ptext32
__ptext32:	;psect for function _SHT21_CalcTemp
psect	text32
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	323
	global	__size_of_SHT21_CalcTemp
	__size_of_SHT21_CalcTemp	equ	__end_of_SHT21_CalcTemp-_SHT21_CalcTemp
	
_SHT21_CalcTemp:	
;incstack = 0
	opt	stack 5
; Regs used in _SHT21_CalcTemp: [wreg+status,2+status,0+pclath+cstack]
	line	326
	
l2438:	
;BajanDecierdo_7-3.c: 325: ft resultTemp;
;BajanDecierdo_7-3.c: 326: u16Temp &= ~0x0003;
	movlw	low(0FFFCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(SHT21_CalcTemp@u16Temp),f
	movlw	high(0FFFCh)
	andwf	(SHT21_CalcTemp@u16Temp+1),f
	line	328
	
l2440:	
;BajanDecierdo_7-3.c: 328: resultTemp = -46.85 + 175.72 / 65536.0 * (ft)u16Temp;
	movlw	0x66
	movwf	(___ftadd@f1)
	movlw	0x3b
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	movlw	0xb8
	movwf	(___ftmul@f1)
	movlw	0x2f
	movwf	(___ftmul@f1+1)
	movlw	0x3b
	movwf	(___ftmul@f1+2)
	movf	(SHT21_CalcTemp@u16Temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(SHT21_CalcTemp@u16Temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lwtoft)),w
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
	movwf	(SHT21_CalcTemp@resultTemp)
	movf	(1+(?___ftadd)),w
	movwf	(SHT21_CalcTemp@resultTemp+1)
	movf	(2+(?___ftadd)),w
	movwf	(SHT21_CalcTemp@resultTemp+2)
	line	329
	
l2442:	
;BajanDecierdo_7-3.c: 329: return resultTemp;
	movf	(SHT21_CalcTemp@resultTemp),w
	movwf	(?_SHT21_CalcTemp)
	movf	(SHT21_CalcTemp@resultTemp+1),w
	movwf	(?_SHT21_CalcTemp+1)
	movf	(SHT21_CalcTemp@resultTemp+2),w
	movwf	(?_SHT21_CalcTemp+2)
	goto	l144
	
l2444:	
	line	330
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of_SHT21_CalcTemp
	__end_of_SHT21_CalcTemp:
	signat	_SHT21_CalcTemp,4219
	global	_SHT21_CalcRH

;; *************** function _SHT21_CalcRH *****************
;; Defined at:
;;		line 314 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
;; Parameters:    Size  Location     Type
;;  u16RH           2   52[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  resultRH        3   55[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___lwtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	line	314
global __ptext33
__ptext33:	;psect for function _SHT21_CalcRH
psect	text33
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE7\mplab\7-3\BajanDecierdo_7-3.c"
	line	314
	global	__size_of_SHT21_CalcRH
	__size_of_SHT21_CalcRH	equ	__end_of_SHT21_CalcRH-_SHT21_CalcRH
	
_SHT21_CalcRH:	
;incstack = 0
	opt	stack 5
; Regs used in _SHT21_CalcRH: [wreg+status,2+status,0+pclath+cstack]
	line	317
	
l2446:	
;BajanDecierdo_7-3.c: 316: ft resultRH;
;BajanDecierdo_7-3.c: 317: u16RH &= ~0x003;
	movlw	low(0FFFCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(SHT21_CalcRH@u16RH),f
	movlw	high(0FFFCh)
	andwf	(SHT21_CalcRH@u16RH+1),f
	line	319
	
l2448:	
;BajanDecierdo_7-3.c: 319: resultRH = -6.0 + 125.0 / 65536.0 * (ft)u16RH;
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xc0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x3a
	movwf	(___ftmul@f1+2)
	movf	(SHT21_CalcRH@u16RH+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(SHT21_CalcRH@u16RH),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___lwtoft)),w
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
	movwf	(SHT21_CalcRH@resultRH)
	movf	(1+(?___ftadd)),w
	movwf	(SHT21_CalcRH@resultRH+1)
	movf	(2+(?___ftadd)),w
	movwf	(SHT21_CalcRH@resultRH+2)
	line	320
	
l2450:	
;BajanDecierdo_7-3.c: 320: return resultRH;
	movf	(SHT21_CalcRH@resultRH),w
	movwf	(?_SHT21_CalcRH)
	movf	(SHT21_CalcRH@resultRH+1),w
	movwf	(?_SHT21_CalcRH+1)
	movf	(SHT21_CalcRH@resultRH+2),w
	movwf	(?_SHT21_CalcRH+2)
	goto	l141
	
l2452:	
	line	321
	
l141:	
	return
	opt stack 0
GLOBAL	__end_of_SHT21_CalcRH
	__end_of_SHT21_CalcRH:
	signat	_SHT21_CalcRH,4219
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_SHT21_CalcRH
;;		_SHT21_CalcTemp
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext34
__ptext34:	;psect for function ___lwtoft
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2388:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l724
	
l2390:	
	line	31
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    7[BANK0 ] float 
;;  f2              3   10[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   18[BANK0 ] unsigned um
;;  sign            1   22[BANK0 ] unsigned char 
;;  cntr            1   21[BANK0 ] unsigned char 
;;  exp             1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    7[BANK0 ] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_SHT21_CalcRH
;;		_SHT21_CalcTemp
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext35
__ptext35:	;psect for function ___ftmul
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1970:	
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
	goto	u2521
	goto	u2520
u2521:
	goto	l1976
u2520:
	line	68
	
l1972:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l590
	
l1974:	
	goto	l590
	
l589:	
	line	69
	
l1976:	
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
	goto	u2531
	goto	u2530
u2531:
	goto	l1982
u2530:
	line	70
	
l1978:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l590
	
l1980:	
	goto	l590
	
l591:	
	line	71
	
l1982:	
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
u2545:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2540:
	addlw	-1
	skipz
	goto	u2545
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
u2555:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2550:
	addlw	-1
	skipz
	goto	u2555
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
	
l1984:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1986:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1988:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1990:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1992:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1994
	line	135
	
l592:	
	line	136
	
l1994:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1998
u2560:
	line	137
	
l1996:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2571
	addwf	(___ftmul@f3_as_product+1),f
u2571:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2572
	addwf	(___ftmul@f3_as_product+2),f
u2572:

	goto	l1998
	
l593:	
	line	138
	
l1998:	
	movlw	01h
u2585:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2585

	line	139
	
l2000:	
	movlw	01h
u2595:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2595
	line	140
	
l2002:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l1994
u2600:
	goto	l2004
	
l594:	
	line	143
	
l2004:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2006
	line	144
	
l595:	
	line	145
	
l2006:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l2010
u2610:
	line	146
	
l2008:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2621
	addwf	(___ftmul@f3_as_product+1),f
u2621:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2622
	addwf	(___ftmul@f3_as_product+2),f
u2622:

	goto	l2010
	
l596:	
	line	147
	
l2010:	
	movlw	01h
u2635:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2635

	line	148
	
l2012:	
	movlw	01h
u2645:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2645

	line	149
	
l2014:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2006
u2650:
	goto	l2016
	
l597:	
	line	156
	
l2016:	
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
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l590
	
l2018:	
	line	157
	
l590:	
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
;;  f1              3   39[BANK0 ] float 
;;  f2              3   42[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   51[BANK0 ] unsigned char 
;;  exp2            1   50[BANK0 ] unsigned char 
;;  sign            1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   39[BANK0 ] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_SHT21_CalcRH
;;		_SHT21_CalcTemp
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext36
__ptext36:	;psect for function ___ftadd
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1898:	
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
	
l1900:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2280
	goto	l1906
u2280:
	
l1902:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l1910
u2290:
	
l1904:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1910
u2300:
	goto	l1906
	
l526:	
	line	93
	
l1906:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l527
	
l1908:	
	goto	l527
	
l524:	
	line	94
	
l1910:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2310
	goto	l530
u2310:
	
l1912:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l1916
u2320:
	
l1914:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1916
u2330:
	
l530:	
	line	95
	goto	l527
	
l528:	
	line	96
	
l1916:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1918:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l531
u2340:
	line	98
	
l1920:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l531:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l532
u2350:
	line	100
	
l1922:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l532:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1924:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1926:	
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
	goto	u2361
	goto	u2360
u2361:
	goto	l1938
u2360:
	goto	l1928
	line	109
	
l534:	
	line	110
	
l1928:	
	movlw	01h
u2375:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2375
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1930:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2381
	goto	u2380
u2381:
	goto	l1936
u2380:
	
l1932:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l1928
u2390:
	goto	l1936
	
l536:	
	goto	l1936
	
l537:	
	line	113
	goto	l1936
	
l539:	
	line	114
	
l1934:	
	movlw	01h
u2405:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2405

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1936
	line	116
	
l538:	
	line	113
	
l1936:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l1934
u2410:
	goto	l541
	
l540:	
	line	117
	goto	l541
	
l533:	
	
l1938:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l541
u2420:
	goto	l1940
	line	120
	
l543:	
	line	121
	
l1940:	
	movlw	01h
u2435:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2435
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1942:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l1948
u2440:
	
l1944:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l1940
u2450:
	goto	l1948
	
l545:	
	goto	l1948
	
l546:	
	line	124
	goto	l1948
	
l548:	
	line	125
	
l1946:	
	movlw	01h
u2465:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2465

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1948
	line	127
	
l547:	
	line	124
	
l1948:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l1946
u2470:
	goto	l541
	
l549:	
	goto	l541
	line	128
	
l542:	
	line	129
	
l541:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l1952
u2480:
	line	131
	
l1950:	
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
	goto	l1952
	line	133
	
l550:	
	line	134
	
l1952:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1956
u2490:
	line	136
	
l1954:	
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
	goto	l1956
	line	138
	
l551:	
	line	139
	
l1956:	
	clrf	(___ftadd@sign)
	line	140
	
l1958:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2501
	addwf	(___ftadd@f2+1),f
u2501:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2502
	addwf	(___ftadd@f2+2),f
u2502:

	line	141
	
l1960:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1966
u2510:
	line	142
	
l1962:	
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
	
l1964:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1966
	line	145
	
l552:	
	line	146
	
l1966:	
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
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l527
	
l1968:	
	line	148
	
l527:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext37
__ptext37:	;psect for function ___ftpack
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1756:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1920
	goto	l1760
u1920:
	
l1758:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1931
	goto	u1930
u1931:
	goto	l1766
u1930:
	goto	l1760
	
l507:	
	line	65
	
l1760:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l508
	
l1762:	
	goto	l508
	
l505:	
	line	66
	goto	l1766
	
l510:	
	line	67
	
l1764:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1945:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1945

	goto	l1766
	line	69
	
l509:	
	line	66
	
l1766:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l1764
u1950:
	goto	l512
	
l511:	
	line	70
	goto	l512
	
l513:	
	line	71
	
l1768:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1770:	
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
	
l1772:	
	movlw	01h
u1965:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1965

	line	74
	
l512:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l1768
u1970:
	goto	l1776
	
l514:	
	line	75
	goto	l1776
	
l516:	
	line	76
	
l1774:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1985:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1985
	goto	l1776
	line	78
	
l515:	
	line	75
	
l1776:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l1774
u1990:
	
l517:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2001
	goto	u2000
u2001:
	goto	l518
u2000:
	line	80
	
l1778:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l518:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1780:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2015:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2010:
	addlw	-1
	skipz
	goto	u2015
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1782:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2020
	goto	l519
u2020:
	line	84
	
l1784:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l519:	
	line	85
	line	86
	
l508:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
