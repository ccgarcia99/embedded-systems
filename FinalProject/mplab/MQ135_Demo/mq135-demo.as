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
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftge
	FNCALL	_main,___ftmul
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCTRL
	FNCALL	_main,_pow
	FNCALL	_main,_printToLCD
	FNCALL	_main,_readADC
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
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftge
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_initLCD,_instCTRL
	FNROOT	_main
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
	global	exp@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xf0
	retlw	0xff
	retlw	0xbe

	retlw	0xe2
	retlw	0xa9
	retlw	0x3e

	retlw	0x83
	retlw	0x76
	retlw	0xbe

	retlw	0xae
	retlw	0x2b
	retlw	0x3e

	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0xd2
	retlw	0x13
	retlw	0x3d

	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global __end_oflog@coeff
__end_oflog@coeff:
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	exp@coeff
	global	log@coeff
	global	_errno
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_GO_DONE
_GO_DONE	set	0xFA
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_PEIE
_PEIE	set	0x5E
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
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
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	33	;'!'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	50	;'2'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	32	;' '
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
	file	"mq135-demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_errno:
       ds      2

	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@ppm
main@ppm:	; 3 bytes @ 0x0
	ds	3
	global	main@buffer
main@buffer:	; 16 bytes @ 0x3
	ds	16
	global	_main$652
_main$652:	; 3 bytes @ 0x13
	ds	3
	global	_main$654
_main$654:	; 3 bytes @ 0x16
	ds	3
	global	_main$655
_main$655:	; 3 bytes @ 0x19
	ds	3
	global	_main$656
_main$656:	; 3 bytes @ 0x1C
	ds	3
	global	_main$657
_main$657:	; 3 bytes @ 0x1F
	ds	3
	global	_main$658
_main$658:	; 3 bytes @ 0x22
	ds	3
	global	_main$659
_main$659:	; 3 bytes @ 0x25
	ds	3
	global	_main$660
_main$660:	; 3 bytes @ 0x28
	ds	3
	global	_main$661
_main$661:	; 3 bytes @ 0x2B
	ds	3
	global	_main$662
_main$662:	; 3 bytes @ 0x2E
	ds	3
	global	main@adcValue
main@adcValue:	; 2 bytes @ 0x31
	ds	2
	global	main@voltage
main@voltage:	; 3 bytes @ 0x33
	ds	3
	global	_main$653
_main$653:	; 3 bytes @ 0x36
	ds	3
	global	main@co2
main@co2:	; 3 bytes @ 0x39
	ds	3
	global	main@ratio
main@ratio:	; 3 bytes @ 0x3C
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$666
_sprintf$666:	; 3 bytes @ 0x0
	global	_exp$669
_exp$669:	; 3 bytes @ 0x0
	ds	3
	global	_exp$438
_exp$438:	; 3 bytes @ 0x3
	global	_sprintf$144
_sprintf$144:	; 4 bytes @ 0x3
	ds	3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x6
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x7
	ds	1
	global	exp@sign
exp@sign:	; 1 bytes @ 0x8
	global	sprintf@vd
sprintf@vd:	; 4 bytes @ 0x8
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0x9
	global	pow@x
pow@x:	; 3 bytes @ 0x9
	ds	3
	global	pow@y
pow@y:	; 3 bytes @ 0xC
	global	sprintf@vd_146
sprintf@vd_146:	; 4 bytes @ 0xC
	ds	3
	global	_pow$667
_pow$667:	; 3 bytes @ 0xF
	ds	1
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x12
	global	_pow$668
_pow$668:	; 3 bytes @ 0x12
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x15
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x15
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x16
	ds	3
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x19
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x1C
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x1E
	ds	3
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x21
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_isdigit:	; 1 bit 
??_isdigit:	; 0 bytes @ 0x0
?_instCTRL:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
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
	global	_isdigit$344
_isdigit$344:	; 1 bytes @ 0x0
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
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	ds	1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x1
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_readADC:	; 0 bytes @ 0x2
??_initLCD:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
	global	printToLCD@STR
printToLCD@STR:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_frexp:	; 0 bytes @ 0x4
??_printToLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	readADC@temp
readADC@temp:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??__tdiv_to_l_:	; 0 bytes @ 0x6
??__div_to_l_:	; 0 bytes @ 0x6
??___ftge:	; 0 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
??___lldiv:	; 0 bytes @ 0x8
??___llmod:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
??___awdiv:	; 0 bytes @ 0xB
??___awtoft:	; 0 bytes @ 0xB
	ds	1
??___bmul:	; 0 bytes @ 0xC
??___lltoft:	; 0 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
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
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x17
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x17
	ds	3
??_fround:	; 0 bytes @ 0x1A
??_scale:	; 0 bytes @ 0x1A
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1A
	ds	2
	global	_scale$665
_scale$665:	; 3 bytes @ 0x1C
	ds	1
??___ftdiv:	; 0 bytes @ 0x1D
	ds	2
	global	scale@scl
scale@scl:	; 1 bytes @ 0x1F
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x20
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x20
	global	_fround$664
_fround$664:	; 3 bytes @ 0x20
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x21
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x22
	ds	1
	global	_fround$663
_fround$663:	; 3 bytes @ 0x23
	ds	1
??___fttol:	; 0 bytes @ 0x24
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x25
	ds	1
	global	fround@prec
fround@prec:	; 1 bytes @ 0x26
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x26
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
	ds	1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x2E
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x2E
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x31
	ds	1
??___altoft:	; 0 bytes @ 0x32
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x32
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x33
	ds	1
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x34
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x34
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x34
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x34
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x34
	ds	1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x35
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x36
	global	floor@x
floor@x:	; 3 bytes @ 0x36
	ds	1
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x37
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x37
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x38
	ds	1
??_floor:	; 0 bytes @ 0x39
	ds	1
??_eval_poly:	; 0 bytes @ 0x3A
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x3A
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x3A
	global	floor@i
floor@i:	; 3 bytes @ 0x3A
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x3B
	ds	2
	global	floor@expon
floor@expon:	; 2 bytes @ 0x3D
	ds	1
??_sprintf:	; 0 bytes @ 0x3E
	global	?_log
?_log:	; 3 bytes @ 0x3E
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x3E
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x3E
	global	log@x
log@x:	; 3 bytes @ 0x3E
	ds	3
??_log:	; 0 bytes @ 0x41
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x41
	ds	1
	global	log@exponent
log@exponent:	; 2 bytes @ 0x42
	ds	1
??_ldexp:	; 0 bytes @ 0x43
	ds	2
	global	_ldexp$475
_ldexp$475:	; 3 bytes @ 0x45
	ds	3
	global	?_exp
?_exp:	; 3 bytes @ 0x48
	global	exp@x
exp@x:	; 3 bytes @ 0x48
	ds	3
??_exp:	; 0 bytes @ 0x4B
	ds	1
??_pow:	; 0 bytes @ 0x4C
	ds	1
??_main:	; 0 bytes @ 0x4D
	ds	2
;!
;!Data Sizes:
;!    Strings     52
;!    Constant    175
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     79      79
;!    BANK1            80     34      36
;!    BANK3            96     63      63
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_1(CODE[16]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@buffer(BANK3[16]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S131$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    printToLCD@STR	PTR const unsigned char  size(2) Largest target is 18
;!		 -> STR_3(CODE[18]), STR_2(CODE[18]), main@buffer(BANK3[16]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___awtoft
;!    _sprintf->___lldiv
;!    _sprintf->___lltoft
;!    _sprintf->__div_to_l_
;!    ___awdiv->___awmod
;!    _printToLCD->_dataCTRL
;!    _pow->___lltoft
;!    _log->___awtoft
;!    _exp->___awtoft
;!    ___ftmul->___awtoft
;!    ___bmul->___awdiv
;!    ___ftsub->___awtoft
;!    ___ftsub->___lltoft
;!    ___ftadd->___awtoft
;!    ___ftdiv->___awtoft
;!    ___awtoft->___ftpack
;!    ___lltoft->___ftpack
;!    _initLCD->_instCTRL
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_pow
;!    _sprintf->___ftsub
;!    _scale->___ftmul
;!    _fround->___ftmul
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->_ldexp
;!    _ldexp->_eval_poly
;!    _floor->___altoft
;!    ___fttol->_scale
;!    ___altoft->___fttol
;!    _eval_poly->___ftadd
;!    ___ftmul->___bmul
;!    ___bmul->___awdiv
;!    ___ftsub->___ftadd
;!    ___ftadd->_fround
;!    ___ftdiv->___ftmul
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _pow->_exp
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                68    68      0  129759
;!                                             77 BANK0      2     2      0
;!                                              0 BANK3     63    63      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            _initLCD
;!                           _instCTRL
;!                                _pow
;!                         _printToLCD
;!                            _readADC
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             50    46      4   41696
;!                                             58 BANK0     10     6      4
;!                                              0 BANK1     34    34      0
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
;! (2) _scale                                               12     9      3    8864
;!                                             23 BANK0      9     6      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              19    16      3    8666
;!                                             23 BANK0     16    13      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
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
;! (2) ___wmul                                               6     2      4    1352
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                             10     2      8     477
;!                                              0 COMMON    10     2      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     374
;!                                              0 COMMON    14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                              6     4      2      70
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _printToLCD                                           2     0      2     226
;!                                              2 COMMON     2     0      2
;!                           _dataCTRL
;! ---------------------------------------------------------------------------------
;! (2) _dataCTRL                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _pow                                                 18    12      6   71955
;!                                             76 BANK0      1     1      0
;!                                              9 BANK1     17    11      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (2) _log                                                  6     3      3   23475
;!                                             62 BANK0      6     3      3
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) _exp                                                 13    10      3   37910
;!                                             72 BANK0      4     1      3
;!                                              0 BANK1      9     9      0
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _ldexp                                               10     5      5    2308
;!                                             62 BANK0     10     5      5
;!                             ___ftge
;!                            ___ftneg
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     310
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _floor                                                9     6      3    8759
;!                                             54 BANK0      9     6      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _frexp                                                6     2      4     436
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     570
;!                                             32 BANK0     14    10      4
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6    1620
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (4) ___altoft                                             8     4      4    1954
;!                                             46 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _eval_poly                                           10     4      6   10136
;!                                             52 BANK0     10     4      6
;!                             ___bmul
;!                            ___ftadd
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    5137
;!                                              7 BANK0     16    10      6
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               4     3      1     628
;!                                             12 COMMON     1     1      0
;!                                              4 BANK0      3     2      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    4132
;!                                             52 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    3875
;!                                             39 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2467
;!                                             23 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             6     3      3    2013
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1938
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1763
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (1) _instCTRL                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___bmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftpack (ARG)
;!     _frexp (ARG)
;!     _fround (ARG)
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
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!   ___ftdiv
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftpack (ARG)
;!   ___ftge
;!   ___ftmul
;!     ___awdiv (ARG)
;!       ___awmod (ARG)
;!     ___awmod (ARG)
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___bmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!     ___ftpack (ARG)
;!     _frexp (ARG)
;!   _initLCD
;!     _instCTRL
;!   _instCTRL
;!   _pow
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
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
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!     ___lltoft
;!       ___ftpack
;!     _exp
;!       ___awtoft
;!         ___ftpack
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _scale (ARG)
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
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       _floor
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _scale (ARG)
;!               ___awdiv
;!                 ___awmod (ARG)
;!               ___awmod
;!               ___bmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___bmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___awmod (ARG)
;!                   ___awmod (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftge
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _scale (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         _frexp
;!       _ldexp
;!         ___ftge
;!         ___ftneg
;!         _eval_poly (ARG)
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!             _fround (ARG)
;!               ___awdiv
;!                 ___awmod (ARG)
;!               ___awmod
;!               ___bmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___bmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___awmod (ARG)
;!                   ___awmod (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       _log (ARG)
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftge
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!             _fround (ARG)
;!               ___awdiv
;!                 ___awmod (ARG)
;!               ___awmod
;!               ___bmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___bmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___awmod (ARG)
;!                   ___awmod (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         _frexp
;!     _log
;!       ___awtoft
;!         ___ftpack
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
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
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       _eval_poly
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!           _fround (ARG)
;!             ___awdiv
;!               ___awmod (ARG)
;!             ___awmod
;!             ___bmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___bmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___awmod (ARG)
;!                 ___awmod (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!       _frexp
;!   _printToLCD
;!     _dataCTRL
;!   _readADC
;!   _sprintf
;!     ___awdiv
;!       ___awmod (ARG)
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
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
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
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
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
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
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
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
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
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
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      C0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     4F      4F       5       98.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50     22      24       7       45.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60     3F      3F       9       65.6%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      C0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer         16    3[BANK3 ] unsigned char [16]
;;  ratio           3   60[BANK3 ] float 
;;  co2             3   57[BANK3 ] float 
;;  voltage         3   51[BANK3 ] float 
;;  ppm             3    0[BANK3 ] float 
;;  adcValue        2   49[BANK3 ] int 
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
;;      Locals:         0       0       0      63       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0      63       0
;;Total ram usage:       65 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		_initLCD
;;		_instCTRL
;;		_pow
;;		_printToLCD
;;		_readADC
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\main.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\main.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l3102:	
;main.c: 38: TRISB = 0b00011111;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	39
	
l3104:	
;main.c: 39: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	40
	
l3106:	
;main.c: 40: TRISC = 0b00111000;
	movlw	(038h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	41
	
l3108:	
;main.c: 41: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	42
	
l3110:	
;main.c: 42: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	43
;main.c: 43: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	44
;main.c: 44: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	46
;main.c: 46: OPTION_REG = 0x44;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	47
	
l3112:	
;main.c: 47: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	48
	
l3114:	
;main.c: 48: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	49
	
l3116:	
;main.c: 49: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	50
	
l3118:	
;main.c: 50: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	51
	
l3120:	
;main.c: 51: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	53
	
l3122:	
;main.c: 53: initLCD();
	fcall	_initLCD
	goto	l3124
	line	56
;main.c: 55: for (;;)
	
l68:	
	line	57
	
l3124:	
;main.c: 56: {
;main.c: 57: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	58
	
l3126:	
;main.c: 58: int adcValue = readADC();
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@adcValue+1)^0180h
	addwf	(main@adcValue+1)^0180h
	movf	(0+(?_readADC)),w
	clrf	(main@adcValue)^0180h
	addwf	(main@adcValue)^0180h

	line	59
	
l3128:	
;main.c: 59: float voltage = (adcValue * 5.0) / 1023.0;
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@adcValue+1)^0180h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(main@adcValue)^0180h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@voltage)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@voltage+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@voltage+2)^0180h
	line	60
	
l3130:	
;main.c: 60: float ppm = 116.6020682 * pow((voltage / 2.0), -2.769034857);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movlw	0x0
	movwf	(___ftdiv@f2+1)
	movlw	0x40
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@voltage)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@voltage+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@voltage+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$652)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$652+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$652+2)^0180h
	
l3132:	
;main.c: 60: float ppm = 116.6020682 * pow((voltage / 2.0), -2.769034857);
	movlw	0x38
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x31
	movwf	(pow@y+1)^080h
	movlw	0xc0
	movwf	(pow@y+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$652)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$652+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$652+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$653)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$653+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$653+2)^0180h
	
l3134:	
;main.c: 60: float ppm = 116.6020682 * pow((voltage / 2.0), -2.769034857);
	movlw	0x34
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xe9
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$653)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$653+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$653+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@ppm)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@ppm+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@ppm+2)^0180h
	line	61
	
l3136:	
;main.c: 61: float ratio = voltage / 5.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movlw	0xa0
	movwf	(___ftdiv@f2+1)
	movlw	0x40
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@voltage)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@voltage+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@voltage+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@ratio)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@ratio+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@ratio+2)^0180h
	line	62
	
l3138:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0xc0
	movwf	(pow@y+1)^080h
	movlw	0x40
	movwf	(pow@y+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$654)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$654+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$654+2)^0180h
	
l3140:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0xa0
	movwf	(pow@y+1)^080h
	movlw	0x40
	movwf	(pow@y+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$653)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$653+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$653+2)^0180h
	
l3142:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x80
	movwf	(pow@y+1)^080h
	movlw	0x40
	movwf	(pow@y+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$655)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$655+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$655+2)^0180h
	
l3144:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x40
	movwf	(pow@y+1)^080h
	movlw	0x40
	movwf	(pow@y+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$656)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$656+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$656+2)^0180h
	
l3146:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h
	movlw	0x0
	movwf	(pow@y+1)^080h
	movlw	0x40
	movwf	(pow@y+2)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$657)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$657+1)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$657+2)^0180h
	
l3148:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x9c
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xb2
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$657)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$657+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$657+2)^0180h,w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@ratio+2)^0180h,w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$658)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$658+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$658+2)^0180h
	
l3150:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0xee
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xeb
	movwf	(___ftmul@f1+1)
	movlw	0x3a
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$656)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$656+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$656+2)^0180h,w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$658)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$658+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$658+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$659)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$659+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$659+2)^0180h
	
l3152:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x74
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x5a
	movwf	(___ftmul@f1+1)
	movlw	0xbb
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$655)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$655+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$655+2)^0180h,w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$659)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$659+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$659+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$660)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$660+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$660+2)^0180h
	
l3154:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xfc
	movwf	(___ftmul@f1+1)
	movlw	0xba
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$653)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$653+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$653+2)^0180h,w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$660)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$660+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$660+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$661)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$661+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$661+2)^0180h
	
l3156:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0xa8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x90
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$654)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$654+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$654+2)^0180h,w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$661)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$661+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$661+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$662)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$662+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_main$662+2)^0180h
	
l3158:	
;main.c: 62: float co2 = 0.00035 + (0.02718 * ratio) + (1.39538 * pow(ratio, 2)) + (0.0018 * pow(ratio, 3)) + (-0.003333333 * pow(ratio, 4)) + (-0.001923077 * pow(ratio, 5)) + (1.130128205 * pow(ratio, 6));
	movlw	0x80
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xb7
	movwf	(___ftadd@f1+1)
	movlw	0x39
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$662)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$662+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$662+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@co2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@co2+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@co2+2)^0180h
	line	63
	
l3160:	
;main.c: 63: co2 = co2 * 415.58;
	movlw	0xca
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xcf
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@co2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@co2+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@co2+2)^0180h
	line	65
	
l3162:	
;main.c: 64: char buffer[16];
;main.c: 65: sprintf(buffer, "CO2: %.2f ppm  ", co2);
	movlw	((STR_1)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	66
	
l3164:	
;main.c: 66: printToLCD(buffer);
	movlw	(main@buffer&0ffh)
	movwf	(printToLCD@STR)
	movlw	(0x1)
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	line	67
	
l3166:	
;main.c: 67: if(co2 > 9)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x10
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@co2)^0180h,w
	movwf	(___ftge@ff2)
	movf	(main@co2+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(main@co2+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u4301
	goto	u4300
u4301:
	goto	l3172
u4300:
	line	69
	
l3168:	
;main.c: 68: {
;main.c: 69: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	70
	
l3170:	
;main.c: 70: printToLCD("CO2 levels high! ");
	movlw	low((STR_2)-__stringbase)
	movwf	(printToLCD@STR)
	movlw	80h
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	line	71
;main.c: 71: }
	goto	l3176
	line	72
	
l69:	
	line	74
	
l3172:	
;main.c: 72: else
;main.c: 73: {
;main.c: 74: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	75
	
l3174:	
;main.c: 75: printToLCD("CO2 levels are OK");
	movlw	low((STR_3)-__stringbase)
	movwf	(printToLCD@STR)
	movlw	80h
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	goto	l3176
	line	76
	
l70:	
	line	77
	
l3176:	
;main.c: 76: }
;main.c: 77: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u4317:
	decfsz	((??_main+0)+0),f
	goto	u4317
	decfsz	((??_main+0)+0+1),f
	goto	u4317
	nop
opt asmopt_on

	line	78
;main.c: 78: }
	goto	l3124
	
l71:	
	line	79
	
l72:	
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
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@buffer(16), 
;;  f               1   58[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(16), 
;; Auto vars:     Size  Location     Type
;;  sp              1   27[BANK1 ] PTR unsigned char 
;;		 -> main@buffer(16), 
;;  vd              4    8[BANK1 ] unsigned long 
;;  vd              4   12[BANK1 ] unsigned long 
;;  _val            4   21[BANK1 ] struct .
;;  fval            3   30[BANK1 ] struct .
;;  integ           3   18[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   28[BANK1 ] int 
;;  exp             2   25[BANK1 ] int 
;;  flag            2   16[BANK1 ] unsigned short 
;;  width           2    0        int 
;;  c               1   33[BANK1 ] char 
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
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      34       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      10      34       0       0
;;Total ram usage:       44 bytes
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
;sprintf@sp stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	542
	
l2904:	
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
	movlw	(?_sprintf+01h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@ap)^080h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l3096
	
l114:	
	line	547
	
l2906:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3931
	goto	u3930
u3931:
	goto	l2912
u3930:
	line	550
	
l2908:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2910:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	551
;doprnt.c: 551: continue;
	goto	l3096
	line	552
	
l115:	
	line	557
	
l2912:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	620
	
l2914:	
;doprnt.c: 620: if(*f == '.') {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l2928
u3940:
	line	621
	
l2916:	
;doprnt.c: 621: flag |= 0x4000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	622
	
l2918:	
;doprnt.c: 622: f++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	630
	
l2920:	
;doprnt.c: 629: {
;doprnt.c: 630: prec = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
;doprnt.c: 631: while(isdigit((unsigned)*f))
	goto	l2926
	
l118:	
	line	632
	
l2922:	
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
	
l2924:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	goto	l2926
	
l117:	
	line	631
	
l2926:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3951
	goto	u3950
u3951:
	goto	l2922
u3950:
	goto	l2934
	
l119:	
	line	634
;doprnt.c: 633: }
;doprnt.c: 634: } else {
	goto	l2934
	
l116:	
	line	635
	
l2928:	
;doprnt.c: 635: prec = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	637
	
l2930:	
;doprnt.c: 637: flag |= 0x1000;
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l2934
	line	639
	
l120:	
	line	644
;doprnt.c: 639: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l2934
	line	646
;doprnt.c: 646: case 0:
	
l122:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l3098
	line	671
;doprnt.c: 671: case 'f':
	
l124:	
	line	672
;doprnt.c: 672: flag |= 0x400;
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	673
;doprnt.c: 673: break;
	goto	l2936
	line	811
;doprnt.c: 811: default:
	
l126:	
	line	822
;doprnt.c: 822: continue;
	goto	l3096
	line	831
	
l2932:	
;doprnt.c: 831: }
	goto	l2936
	line	644
	
l121:	
	
l2934:	
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
	goto	l3098
	xorlw	102^0	; case 102
	skipnz
	goto	l124
	goto	l3096
	opt asmopt_on

	line	831
	
l125:	
	line	834
	
l2936:	
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
	goto	u3961
	goto	u3960
u3961:
	goto	l3078
u3960:
	line	836
	
l2938:	
;doprnt.c: 836: if(flag & 0x1000)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l2942
u3970:
	line	838
	
l2940:	
;doprnt.c: 838: prec = 6;
	movlw	low(06h)
	movwf	(sprintf@prec)^080h
	movlw	high(06h)
	movwf	((sprintf@prec)^080h)+1
	goto	l2942
	
l128:	
	line	839
	
l2942:	
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
	
l2944:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	840
	
l2946:	
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
	goto	u3981
	goto	u3980
u3981:
	goto	l2952
u3980:
	line	841
	
l2948:	
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
	
l2950:	
;doprnt.c: 842: flag |= 0x03;
	movlw	low(03h)
	iorwf	(sprintf@flag)^080h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^080h,f
	goto	l2952
	line	843
	
l129:	
	line	844
	
l2952:	
;doprnt.c: 843: }
;doprnt.c: 844: exp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	845
	
l2954:	
;doprnt.c: 845: if( fval!=0) {
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3991
	goto	u3990
u3991:
	goto	l2980
u3990:
	line	846
	
l2956:	
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
u4005:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u4000:
	addlw	-1
	skipz
	goto	u4005
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
	
l2958:	
;doprnt.c: 847: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	line	848
	
l2960:	
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
	
l2962:	
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
	
l2964:	
;doprnt.c: 850: if(exp < 0)
	btfss	(sprintf@exp+1)^080h,7
	goto	u4011
	goto	u4010
u4011:
	goto	l2968
u4010:
	line	851
	
l2966:	
;doprnt.c: 851: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2968
	
l131:	
	line	855
	
l2968:	
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
	
l2970:	
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
	
l2972:	
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
	goto	u4021
	goto	u4020
u4021:
	goto	l2976
u4020:
	line	858
	
l2974:	
;doprnt.c: 858: exp--;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2980
	line	859
	
l132:	
	
l2976:	
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
	goto	u4031
	goto	u4030
u4031:
	goto	l2980
u4030:
	line	860
	
l2978:	
;doprnt.c: 860: exp++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2980
	
l134:	
	goto	l2980
	line	861
	
l133:	
	goto	l2980
	
l130:	
	line	1121
	
l2980:	
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
	goto	u4045
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u4045:

	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l2984
u4040:
	line	1122
	
l2982:	
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
	goto	l2984
	
l135:	
	line	1125
	
l2984:	
;doprnt.c: 1125: if((exp > 9)||(fval != 0 && (unsigned long)fval == 0 && exp > 1)) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4055
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u4055:

	skipnc
	goto	u4051
	goto	u4050
u4051:
	goto	l2992
u4050:
	
l2986:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u4061
	goto	u4060
u4061:
	goto	l3008
u4060:
	
l2988:	
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
	goto	u4071
	goto	u4070
u4071:
	goto	l3008
u4070:
	
l2990:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4085
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u4085:

	skipc
	goto	u4081
	goto	u4080
u4081:
	goto	l3008
u4080:
	goto	l2992
	
l138:	
	line	1129
	
l2992:	
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
	goto	u4091
	goto	u4090
u4091:
	goto	l2996
u4090:
	line	1130
	
l2994:	
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
	goto	l2998
	
l139:	
	line	1132
	
l2996:	
;doprnt.c: 1132: exp -= (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-8)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2998
	line	1133
	
l140:	
	line	1134
	
l2998:	
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
	goto	l3002
	
l3000:	
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
	movwf	(_sprintf$144+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(_sprintf$144+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(_sprintf$144+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(_sprintf$144)^080h

	goto	l3004
	
l142:	
	
l3002:	
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
	movwf	(_sprintf$144+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$144+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$144+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$144)^080h

	goto	l3004
	
l144:	
	
l3004:	
	movf	(_sprintf$144+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$144+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$144+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$144)^080h,w
	movwf	(sprintf@_val)^080h

	line	1138
	
l3006:	
;doprnt.c: 1138: fval = 0.0;
	movlw	0x0
	movwf	(sprintf@fval)^080h
	movlw	0x0
	movwf	(sprintf@fval+1)^080h
	movlw	0x0
	movwf	(sprintf@fval+2)^080h
	line	1139
;doprnt.c: 1139: } else {
	goto	l3012
	
l136:	
	line	1140
	
l3008:	
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
	
l3010:	
;doprnt.c: 1142: exp = 0;
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	goto	l3012
	line	1143
	
l145:	
	line	1145
	
l3012:	
;doprnt.c: 1143: }
;doprnt.c: 1145: for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	
l3014:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3018
u4100:
	goto	l3026
	
l3016:	
	goto	l3026
	line	1146
	
l146:	
	
l3018:	
;doprnt.c: 1146: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4115:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4115
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
	goto	u4125
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u4125
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u4125
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u4125:
	skipnc
	goto	u4121
	goto	u4120
u4121:
	goto	l3022
u4120:
	goto	l3026
	line	1147
	
l3020:	
;doprnt.c: 1147: break;
	goto	l3026
	
l148:	
	line	1145
	
l3022:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l3024:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l3018
u4130:
	goto	l3026
	
l147:	
	line	1197
	
l3026:	
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
	goto	u4141
	goto	u4140
u4141:
	goto	l150
u4140:
	line	1199
	
l3028:	
;doprnt.c: 1199: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3030:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l150
	
l149:	
	line	1205
;doprnt.c: 1204: }
;doprnt.c: 1205: while(c--) {
	goto	l150
	
l151:	
	line	1210
	
l3032:	
;doprnt.c: 1209: {
;doprnt.c: 1210: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4155:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4155
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
	
l3034:	
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
	
l3036:	
;doprnt.c: 1212: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1215
	
l150:	
	line	1205
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l3032
u4160:
	goto	l3044
	
l152:	
	line	1216
;doprnt.c: 1213: }
;doprnt.c: 1215: }
;doprnt.c: 1216: while(exp > 0) {
	goto	l3044
	
l154:	
	line	1217
	
l3038:	
;doprnt.c: 1217: ((*sp++ = ('0')));
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3040:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1218
	
l3042:	
;doprnt.c: 1218: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l3044
	line	1219
	
l153:	
	line	1216
	
l3044:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4175
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u4175:

	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l3038
u4170:
	goto	l3046
	
l155:	
	line	1220
	
l3046:	
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
	goto	u4185
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u4185:

	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l3050
u4180:
	line	1221
	
l3048:	
;doprnt.c: 1221: c = (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l157
	line	1222
	
l156:	
	line	1223
	
l3050:	
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
	
l157:	
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
	goto	u4190
	goto	l3056
u4190:
	line	1230
	
l3052:	
;doprnt.c: 1230: ((*sp++ = ('.')));
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3054:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3056
	
l158:	
	line	1236
	
l3056:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(sprintf@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$666)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$666+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$666+2)^080h
	
l3058:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(_sprintf$666)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$666+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$666+2)^080h,w
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
	goto	l3068
	
l160:	
	line	1238
	
l3060:	
;doprnt.c: 1238: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4205:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4205
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
	movwf	(sprintf@vd_146+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd_146+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd_146+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd_146)^080h

	line	1239
	
l3062:	
;doprnt.c: 1239: vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@vd_146+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@vd_146+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@vd_146+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@vd_146)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_146+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@vd_146+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@vd_146+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@vd_146)^080h

	line	1240
	
l3064:	
;doprnt.c: 1240: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd_146)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1241
	
l3066:	
;doprnt.c: 1241: _val._val %= dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u4215:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u4215
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

	goto	l3068
	line	1242
	
l159:	
	line	1237
	
l3068:	
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
	goto	u4221
	goto	u4220
u4221:
	goto	l3060
u4220:
	goto	l3076
	
l161:	
	line	1244
;doprnt.c: 1242: }
;doprnt.c: 1244: while(prec) {
	goto	l3076
	
l163:	
	line	1245
	
l3070:	
;doprnt.c: 1245: ((*sp++ = ('0')));
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3072:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1246
	
l3074:	
;doprnt.c: 1246: prec--;
	movlw	low(-1)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^080h,f
	goto	l3076
	line	1247
	
l162:	
	line	1244
	
l3076:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l3070
u4230:
	goto	l3096
	
l164:	
	line	1254
;doprnt.c: 1247: }
;doprnt.c: 1254: continue;
	goto	l3096
	line	1255
	
l127:	
	line	1299
	
l3078:	
;doprnt.c: 1255: }
;doprnt.c: 1299: if(prec == 0 && _val._val == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l165
u4240:
	
l3080:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l165
u4250:
	line	1300
	
l3082:	
;doprnt.c: 1300: prec++;
	movlw	low(01h)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@prec+1)^080h,f
	
l165:	
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
	goto	u4265
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u4265:

	skipnc
	goto	u4261
	goto	u4260
u4261:
	goto	l3086
u4260:
	line	1349
	
l3084:	
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
	goto	l3090
	line	1350
	
l166:	
	
l3086:	
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
	goto	u4275
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,w
u4275:

	skipnc
	goto	u4271
	goto	u4270
u4271:
	goto	l3090
u4270:
	line	1351
	
l3088:	
;doprnt.c: 1351: prec = c;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	goto	l3090
	
l168:	
	goto	l3090
	line	1431
	
l167:	
	line	1447
	
l3090:	
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
	goto	u4281
	goto	u4280
u4281:
	goto	l3096
u4280:
	line	1448
	
l3092:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3094:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l3096
	
l169:	
	goto	l3096
	line	1542
	
l113:	
	line	545
	
l3096:	
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
	goto	u4291
	goto	u4290
u4291:
	goto	l2906
u4290:
	goto	l3098
	
l170:	
	goto	l3098
	line	1544
;doprnt.c: 1478: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l123:	
	line	1547
	
l3098:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	goto	l171
	line	1549
	
l3100:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l171:	
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
	
l2526:	
;doprnt.c: 428: if(scl < 0) {
	btfss	(scale@scl),7
	goto	u3261
	goto	u3260
u3261:
	goto	l2548
u3260:
	line	429
	
l2528:	
;doprnt.c: 429: scl = -scl;
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	430
	
l2530:	
;doprnt.c: 430: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l2538
u3270:
	line	431
	
l2532:	
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
	movwf	(_scale$665)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$665+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$665+2)
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
	movf	(_scale$665),w
	movwf	(___ftmul@f2)
	movf	(_scale$665+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$665+2),w
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
	goto	l105
	
l2534:	
	goto	l105
	
l2536:	
	goto	l2544
	line	432
	
l104:	
	
l2538:	
;doprnt.c: 432: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l2544
u3280:
	line	433
	
l2540:	
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
	goto	l105
	
l2542:	
	goto	l105
	
l107:	
	goto	l2544
	line	434
	
l106:	
	
l2544:	
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
	goto	l105
	
l2546:	
	goto	l105
	line	435
	
l103:	
	line	436
	
l2548:	
;doprnt.c: 435: }
;doprnt.c: 436: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l2556
u3290:
	line	437
	
l2550:	
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
	movwf	(_scale$665)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$665+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$665+2)
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
	movf	(_scale$665),w
	movwf	(___ftmul@f2)
	movf	(_scale$665+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$665+2),w
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
	goto	l105
	
l2552:	
	goto	l105
	
l2554:	
	goto	l2562
	line	438
	
l108:	
	
l2556:	
;doprnt.c: 438: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l2562
u3300:
	line	439
	
l2558:	
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
	goto	l105
	
l2560:	
	goto	l105
	
l110:	
	goto	l2562
	line	440
	
l109:	
	
l2562:	
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
	goto	l105
	
l2564:	
	line	441
	
l105:	
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
	
l2566:	
	clrf	(_isdigit$344)
	
l2568:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l2574
u3310:
	
l2570:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l2574
u3320:
	
l2572:	
	clrf	(_isdigit$344)
	incf	(_isdigit$344),f
	goto	l2574
	
l545:	
	
l2574:	
	rrf	(_isdigit$344),w
	
	goto	l546
	
l2576:	
	line	15
	
l546:	
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
	
l2504:	
;doprnt.c: 413: if(prec>=110)
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l2514
u3240:
	line	414
	
l2506:	
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
	movwf	(_fround$663)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$663+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$663+2)
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
	movf	(_fround$663),w
	movwf	(___ftmul@f2)
	movf	(_fround$663+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$663+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$664)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$664+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$664+2)
	
l2508:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$664),w
	movwf	(___ftmul@f2)
	movf	(_fround$664+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$664+2),w
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
	goto	l98
	
l2510:	
	goto	l98
	
l2512:	
	goto	l2522
	line	415
	
l97:	
	
l2514:	
;doprnt.c: 415: else if(prec > 10)
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l2522
u3250:
	line	416
	
l2516:	
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
	movwf	(_fround$663)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$663+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$663+2)
	
l2518:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$663),w
	movwf	(___ftmul@f2)
	movf	(_fround$663+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$663+2),w
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
	goto	l98
	
l2520:	
	goto	l98
	
l100:	
	goto	l2522
	line	417
	
l99:	
	
l2522:	
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
	goto	l98
	
l2524:	
	line	418
	
l98:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___awmod
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l2302:	
	clrf	(___awmod@sign)
	line	14
	
l2304:	
	btfss	(___awmod@dividend+1),7
	goto	u2971
	goto	u2970
u2971:
	goto	l2310
u2970:
	line	15
	
l2306:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l2308:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l2310
	line	17
	
l390:	
	line	18
	
l2310:	
	btfss	(___awmod@divisor+1),7
	goto	u2981
	goto	u2980
u2981:
	goto	l2314
u2980:
	line	19
	
l2312:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2314
	
l391:	
	line	20
	
l2314:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l2332
u2990:
	line	21
	
l2316:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l2322
	
l394:	
	line	23
	
l2318:	
	movlw	01h
	
u3005:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3005
	line	24
	
l2320:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2322
	line	25
	
l393:	
	line	22
	
l2322:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l2318
u3010:
	goto	l2324
	
l395:	
	goto	l2324
	line	26
	
l396:	
	line	27
	
l2324:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3025
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3025:
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l2328
u3020:
	line	28
	
l2326:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2328
	
l397:	
	line	29
	
l2328:	
	movlw	01h
	
u3035:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3035
	line	30
	
l2330:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2324
u3040:
	goto	l2332
	
l398:	
	goto	l2332
	line	31
	
l392:	
	line	32
	
l2332:	
	movf	(___awmod@sign),w
	skipz
	goto	u3050
	goto	l2336
u3050:
	line	33
	
l2334:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2336
	
l399:	
	line	34
	
l2336:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l400
	
l2338:	
	line	35
	
l400:	
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
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awdiv
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2258:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2260:	
	btfss	(___awdiv@divisor+1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l2266
u2870:
	line	16
	
l2262:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2264:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l2266
	line	18
	
l377:	
	line	19
	
l2266:	
	btfss	(___awdiv@dividend+1),7
	goto	u2881
	goto	u2880
u2881:
	goto	l2272
u2880:
	line	20
	
l2268:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2270:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2272
	line	22
	
l378:	
	line	23
	
l2272:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2274:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2891
	goto	u2890
u2891:
	goto	l2294
u2890:
	line	25
	
l2276:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2282
	
l381:	
	line	27
	
l2278:	
	movlw	01h
	
u2905:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2905
	line	28
	
l2280:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2282
	line	29
	
l380:	
	line	26
	
l2282:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l2278
u2910:
	goto	l2284
	
l382:	
	goto	l2284
	line	30
	
l383:	
	line	31
	
l2284:	
	movlw	01h
	
u2925:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2925
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2935
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l2290
u2930:
	line	33
	
l2286:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2288:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2290
	line	35
	
l384:	
	line	36
	
l2290:	
	movlw	01h
	
u2945:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2945
	line	37
	
l2292:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2284
u2950:
	goto	l2294
	
l385:	
	goto	l2294
	line	38
	
l379:	
	line	39
	
l2294:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2960
	goto	l2298
u2960:
	line	40
	
l2296:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2298
	
l386:	
	line	41
	
l2298:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l387
	
l2300:	
	line	42
	
l387:	
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
global __ptext7
__ptext7:	;psect for function __tdiv_to_l_
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
;incstack = 0
	opt	stack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l2578:	
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
	goto	u3331
	goto	u3330
u3331:
	goto	l2584
u3330:
	line	67
	
l2580:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l487
	
l2582:	
	goto	l487
	
l486:	
	line	68
	
l2584:	
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
	goto	u3341
	goto	u3340
u3341:
	goto	l488
u3340:
	line	69
	
l2586:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l487
	
l2588:	
	goto	l487
	
l488:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l2590:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l2592:	
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
	
l2594:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l2596:	
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
	goto	l2598
	line	78
	
l489:	
	line	79
	
l2598:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3355:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3355
	line	80
	
l2600:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u3365
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u3365
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u3365:
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l2606
u3360:
	line	81
	
l2602:	
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
	
l2604:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	goto	l2606
	line	83
	
l490:	
	line	84
	
l2606:	
	movlw	01h
u3375:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u3375
	line	85
	
l2608:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l2598
u3380:
	
l491:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u3391
	goto	u3390
u3391:
	goto	l2618
u3390:
	line	87
	
l2610:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l2616
u3400:
	line	88
	
l2612:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l487
	
l2614:	
	goto	l487
	
l493:	
	goto	l2616
	line	89
	
l494:	
	line	90
	
l2616:	
	movlw	01h
u3415:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3415

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l2616
u3420:
	goto	l2628
	
l495:	
	line	92
	goto	l2628
	
l492:	
	line	93
	
l2618:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l2626
u3430:
	line	94
	
l2620:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l487
	
l2622:	
	goto	l487
	
l497:	
	line	95
	goto	l2626
	
l499:	
	line	96
	
l2624:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u3445:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u3445
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1),f
	goto	l2626
	line	98
	
l498:	
	line	95
	
l2626:	
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l2624
u3450:
	goto	l2628
	
l500:	
	goto	l2628
	line	99
	
l496:	
	line	100
	
l2628:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	goto	l487
	
l2630:	
	line	101
	
l487:	
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
global __ptext8
__ptext8:	;psect for function __div_to_l_
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
;incstack = 0
	opt	stack 6
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l2632:	
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
	goto	u3461
	goto	u3460
u3461:
	goto	l2638
u3460:
	line	67
	
l2634:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l410
	
l2636:	
	goto	l410
	
l409:	
	line	68
	
l2638:	
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
	goto	u3471
	goto	u3470
u3471:
	goto	l2644
u3470:
	line	69
	
l2640:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l410
	
l2642:	
	goto	l410
	
l411:	
	line	70
	
l2644:	
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
	
l2646:	
	movlw	0
	movwf	(__div_to_l_@quot+3)
	movlw	0
	movwf	(__div_to_l_@quot+2)
	movlw	0
	movwf	(__div_to_l_@quot+1)
	movlw	0
	movwf	(__div_to_l_@quot)

	line	75
	
l2648:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l2650:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l2652:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	goto	l2654
	line	78
	
l412:	
	line	79
	
l2654:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3485:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3485
	line	80
	
l2656:	
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
	goto	u3495
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u3495
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u3495
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u3495:
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l413
u3490:
	line	81
	
l2658:	
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
	
l2660:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l413:	
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
	
l2662:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l2654
u3500:
	
l414:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u3511
	goto	u3510
u3511:
	goto	l2672
u3510:
	line	87
	
l2664:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u3521
	goto	u3520
u3521:
	goto	l2670
u3520:
	line	88
	
l2666:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l410
	
l2668:	
	goto	l410
	
l416:	
	goto	l2670
	line	89
	
l417:	
	line	90
	
l2670:	
	movlw	01h
u3535:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u3535

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l2670
u3540:
	goto	l2682
	
l418:	
	line	92
	goto	l2682
	
l415:	
	line	93
	
l2672:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l2680
u3550:
	line	94
	
l2674:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l410
	
l2676:	
	goto	l410
	
l420:	
	line	95
	goto	l2680
	
l422:	
	line	96
	
l2678:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u3565:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u3565
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1),f
	goto	l2680
	line	98
	
l421:	
	line	95
	
l2680:	
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l2678
u3570:
	goto	l2682
	
l423:	
	goto	l2682
	line	99
	
l419:	
	line	100
	
l2682:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	goto	l410
	
l2684:	
	line	101
	
l410:	
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
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2686:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2688
	line	44
	
l254:	
	line	45
	
l2688:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l255
u3580:
	line	46
	
l2690:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l255:	
	line	47
	movlw	01h
	
u3595:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3595
	line	48
	
l2692:	
	movlw	01h
	
u3605:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3605
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l2688
u3610:
	goto	l2694
	
l256:	
	line	52
	
l2694:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l257
	
l2696:	
	line	53
	
l257:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___llmod
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l2722:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3691
	goto	u3690
u3691:
	goto	l2738
u3690:
	line	14
	
l2724:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l2728
	
l582:	
	line	16
	
l2726:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3705:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3705
	line	17
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l2728
	line	18
	
l581:	
	line	15
	
l2728:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l2726
u3710:
	goto	l2730
	
l583:	
	goto	l2730
	line	19
	
l584:	
	line	20
	
l2730:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3725
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3725
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3725
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3725:
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l2734
u3720:
	line	21
	
l2732:	
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
	goto	l2734
	
l585:	
	line	22
	
l2734:	
	movlw	01h
u3735:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3735

	line	23
	
l2736:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l2730
u3740:
	goto	l2738
	
l586:	
	goto	l2738
	line	24
	
l580:	
	line	25
	
l2738:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l587
	
l2740:	
	line	26
	
l587:	
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___lldiv
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l2698:	
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
	goto	u3621
	goto	u3620
u3621:
	goto	l2718
u3620:
	line	16
	
l2700:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l2704
	
l572:	
	line	18
	
l2702:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3635:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3635
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l2704
	line	20
	
l571:	
	line	17
	
l2704:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l2702
u3640:
	goto	l2706
	
l573:	
	goto	l2706
	line	21
	
l574:	
	line	22
	
l2706:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3655:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3655
	line	23
	
l2708:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3665
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3665
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3665
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3665:
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l2714
u3660:
	line	24
	
l2710:	
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
	
l2712:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l2714
	line	26
	
l575:	
	line	27
	
l2714:	
	movlw	01h
u3675:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3675

	line	28
	
l2716:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l2706
u3680:
	goto	l2718
	
l576:	
	goto	l2718
	line	29
	
l570:	
	line	30
	
l2718:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l577
	
l2720:	
	line	31
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 81 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\main.c"
	line	81
global __ptext12
__ptext12:	;psect for function _readADC
psect	text12
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\main.c"
	line	81
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	stack 7
; Regs used in _readADC: [wreg+status,2+status,0+btemp+1]
	line	83
	
l2848:	
;main.c: 83: int temp = 0;
	clrf	(readADC@temp)
	clrf	(readADC@temp+1)
	line	84
	
l2850:	
;main.c: 84: _delay((unsigned long)((20)*(4000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_readADC+0)+0+1),f
	movlw	248
movwf	((??_readADC+0)+0),f
u4327:
	decfsz	((??_readADC+0)+0),f
	goto	u4327
	decfsz	((??_readADC+0)+0+1),f
	goto	u4327
	nop
opt asmopt_on

	line	85
	
l2852:	
;main.c: 85: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	86
;main.c: 86: while (GO_DONE == 1)
	goto	l75
	
l76:	
	line	87
;main.c: 87: ;
	
l75:	
	line	86
	btfsc	(250/8),(250)&7	;volatile
	goto	u3861
	goto	u3860
u3861:
	goto	l75
u3860:
	goto	l2854
	
l77:	
	line	88
	
l2854:	
;main.c: 88: temp = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_readADC+0)+0
	clrf	(??_readADC+0)+0+1
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	89
	
l2856:	
;main.c: 89: temp = temp << 8;
	movf	(readADC@temp+1),w
	movwf	(??_readADC+0)+0+1
	movf	(readADC@temp),w
	movwf	(??_readADC+0)+0
	movf	(??_readADC+0)+0,w
	movwf	(??_readADC+0)+1
	clrf	(??_readADC+0)+0
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	90
	
l2858:	
;main.c: 90: temp = temp | ADRESL;
	movf	(readADC@temp),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	movwf	(??_readADC+0)+0
	movf	(readADC@temp+1),w
	movwf	1+(??_readADC+0)+0
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	91
	
l2860:	
;main.c: 91: return temp;
	movf	(readADC@temp+1),w
	clrf	(?_readADC+1)
	addwf	(?_readADC+1)
	movf	(readADC@temp),w
	clrf	(?_readADC)
	addwf	(?_readADC)

	goto	l78
	
l2862:	
	line	92
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,90
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 47 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  STR             2    2[COMMON] PTR const unsigned char 
;;		 -> STR_3(18), STR_2(18), main@buffer(16), 
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
;;		_dataCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
	line	47
global __ptext13
__ptext13:	;psect for function _printToLCD
psect	text13
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
	line	47
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2840:	
;lcd_functions.h: 49: while (*STR != '\0')
	goto	l2846
	
l63:	
	line	51
	
l2842:	
;lcd_functions.h: 50: {
;lcd_functions.h: 51: dataCTRL(*STR);
	movf	(printToLCD@STR+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printToLCD@STR),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	52
	
l2844:	
;lcd_functions.h: 52: STR++;
	movlw	01h
	addwf	(printToLCD@STR),f
	skipnc
	incf	(printToLCD@STR+1),f
	goto	l2846
	line	53
	
l62:	
	line	49
	
l2846:	
	movf	(printToLCD@STR+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printToLCD@STR),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l2842
u3850:
	goto	l65
	
l64:	
	line	54
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 27 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
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
;;		_printToLCD
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	27
global __ptext14
__ptext14:	;psect for function _dataCTRL
psect	text14
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
	line	27
	global	__size_of_dataCTRL
	__size_of_dataCTRL	equ	__end_of_dataCTRL-_dataCTRL
	
_dataCTRL:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCTRL: [wreg]
;dataCTRL@DAT stored from wreg
	movwf	(dataCTRL@DAT)
	line	29
	
l2494:	
;lcd_functions.h: 29: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	30
	
l2496:	
;lcd_functions.h: 30: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	31
	
l2498:	
;lcd_functions.h: 31: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	32
	
l2500:	
;lcd_functions.h: 32: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	33
;lcd_functions.h: 33: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_dataCTRL+0)+0,f
u4337:
decfsz	(??_dataCTRL+0)+0,f
	goto	u4337
	nop
opt asmopt_on

	line	34
	
l2502:	
;lcd_functions.h: 34: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	35
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    9[BANK1 ] unsigned char 
;;  y               3   12[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  yi              4   22[BANK1 ] unsigned long 
;;  sign            1   21[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    9[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      17       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
global __ptext15
__ptext15:	;psect for function _pow
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
;incstack = 0
	opt	stack 3
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l2864:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l2866:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l2874
u3870:
	line	11
	
l2868:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(pow@y)^080h,w
	movwf	(___ftge@ff2)
	movf	(pow@y+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(pow@y+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u3881
	goto	u3880
u3881:
	goto	l655
u3880:
	line	12
	
l2870:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	13
	
l655:	
	line	14
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l656
	
l2872:	
	goto	l656
	line	15
	
l654:	
	line	16
	
l2874:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l2880
u3890:
	line	17
	
l2876:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l656
	
l2878:	
	goto	l656
	
l657:	
	line	18
	
l2880:	
	movf	(pow@x)^080h,w
	movwf	(___ftge@ff1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3901
	goto	u3900
u3901:
	goto	l2892
u3900:
	line	19
	
l2882:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(pow@yi+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(pow@yi+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(pow@yi)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u3915
	movf	(pow@y+1)^080h,w
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u3915
	movf	(pow@y)^080h,w
	xorwf	(0+(?___lltoft)),w
u3915:
	skipnz
	goto	u3911
	goto	u3910
u3911:
	goto	l2888
u3910:
	line	21
	
l2884:	
	movlw	low(021h)
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	22
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l656
	
l2886:	
	goto	l656
	line	23
	
l659:	
	line	24
	
l2888:	
	movf	(pow@yi)^080h,w
	andlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pow+0)+0
	movf	(??_pow+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@sign)^080h
	line	25
	
l2890:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	movf	(1+(?___ftneg)),w
	movwf	(pow@x+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(pow@x+2)^080h
	goto	l2892
	line	26
	
l658:	
	line	27
	
l2892:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(log@x+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$667)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$667+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$667+2)^080h
	
l2894:	
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$667)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$667+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$667+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$668)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$668+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$668+2)^080h
	
l2896:	
	movf	(_pow$668)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$668+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$668+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x+2)
	fcall	_exp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	line	28
	
l2898:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u3920
	goto	l660
u3920:
	line	29
	
l2900:	
	movf	(pow@x)^080h,w
	movwf	(___ftneg@f1)
	movf	(pow@x+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(pow@x+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movf	(1+(?___ftneg)),w
	movwf	(?_pow+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(?_pow+2)^080h
	goto	l656
	
l2902:	
	goto	l656
	
l660:	
	line	30
	line	31
	
l656:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   62[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   66[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
global __ptext16
__ptext16:	;psect for function _log
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
;incstack = 0
	opt	stack 3
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l2752:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x),w
	movwf	(___ftge@ff1)
	movf	(log@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(log@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3771
	goto	u3770
u3771:
	goto	l2758
u3770:
	line	25
	
l2754:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l738
	
l2756:	
	goto	l738
	line	27
	
l737:	
	line	28
	
l2758:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l2764
u3780:
	line	29
	
l2760:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	30
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l738
	
l2762:	
	goto	l738
	line	31
	
l739:	
	line	32
	
l2764:	
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	movlw	(log@exponent)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(frexp@eptr)
	movf	(log@x),w
	movwf	(frexp@value)
	movf	(log@x+1),w
	movwf	(frexp@value+1)
	movf	(log@x+2),w
	movwf	(frexp@value+2)
	fcall	_frexp
	movf	(0+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?_frexp)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_frexp)),w
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
	movwf	(log@x)
	movf	(1+(?___ftadd)),w
	movwf	(log@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(log@x+2)
	line	33
	
l2766:	
	movlw	low(-1)
	addwf	(log@exponent),f
	skipnc
	incf	(log@exponent+1),f
	movlw	high(-1)
	addwf	(log@exponent+1),f
	line	34
	
l2768:	
	movf	(log@x),w
	movwf	(eval_poly@x)
	movf	(log@x+1),w
	movwf	(eval_poly@x+1)
	movf	(log@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((log@coeff)-__stringbase)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(08h)
	movwf	(eval_poly@n)
	movlw	high(08h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	line	35
	
l2770:	
	movf	(log@x),w
	movwf	(___ftadd@f1)
	movf	(log@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(log@x+2),w
	movwf	(___ftadd@f1+2)
	movlw	0x72
	movwf	(___ftmul@f1)
	movlw	0x31
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(log@exponent+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(log@exponent),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
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
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l738
	
l2772:	
	line	36
	
l738:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   72[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2    6[BANK1 ] int 
;;  sign            1    8[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   72[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       9       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       9       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
global __ptext17
__ptext17:	;psect for function _exp
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
;incstack = 0
	opt	stack 3
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l2774:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l2780
u3790:
	line	32
	
l2776:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l680
	
l2778:	
	goto	l680
	
l679:	
	line	34
	
l2780:	
	movlw	0x72
	movwf	(___ftge@ff1)
	movlw	0x31
	movwf	(___ftge@ff1+1)
	movlw	0x44
	movwf	(___ftge@ff1+2)
	movf	(exp@x),w
	movwf	(___ftge@ff2)
	movf	(exp@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3801
	goto	u3800
u3801:
	goto	l2790
u3800:
	line	35
	
l2782:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	36
	goto	l2786
	
l2784:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l680
	
l683:	
	
l2786:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l680
	
l685:	
	goto	l680
	
l2788:	
	goto	l680
	line	37
	
l681:	
	line	38
	
l2790:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x49
	movwf	(___ftge@ff2)
	movlw	0x3a
	movwf	(___ftge@ff2+1)
	movlw	0xc4
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3811
	goto	u3810
u3811:
	goto	l2796
u3810:
	line	39
	
l2792:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	40
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l680
	
l2794:	
	goto	l680
	line	41
	
l686:	
	line	43
	
l2796:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftge@ff1)
	movf	(exp@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(exp@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	movlw	0
	btfss	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l2798:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u3820
	goto	l2802
u3820:
	line	45
	
l2800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(___ftneg@f1)
	movf	(exp@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	goto	l2802
	
l687:	
	line	46
	
l2802:	
	movlw	0xaa
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xb8
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(exp@x),w
	movwf	(___ftmul@f2)
	movf	(exp@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(exp@x)
	movf	(1+(?___ftmul)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(exp@x+2)
	line	47
	
l2804:	
	movf	(exp@x),w
	movwf	(floor@x)
	movf	(exp@x+1),w
	movwf	(floor@x+1)
	movf	(exp@x+2),w
	movwf	(floor@x+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$669)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$669+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_floor)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_exp$669+2)^080h
	
l2806:	
	movf	(_exp$669)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$669+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_exp$669+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent+1)^080h
	addwf	(exp@exponent+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exponent)^080h
	addwf	(exp@exponent)^080h

	line	48
	
l2808:	
	movf	(exp@exponent+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(exp@exponent)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(exp@x),w
	movwf	(___ftsub@f1)
	movf	(exp@x+1),w
	movwf	(___ftsub@f1+1)
	movf	(exp@x+2),w
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	movwf	(exp@x)
	movf	(1+(?___ftsub)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(exp@x+2)
	line	49
	
l2810:	
	movf	(exp@x),w
	movwf	(eval_poly@x)
	movf	(exp@x+1),w
	movwf	(eval_poly@x+1)
	movf	(exp@x+2),w
	movwf	(eval_poly@x+2)
	movlw	((exp@coeff)-__stringbase)&0ffh
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(eval_poly@d)
	movlw	low(09h)
	movwf	(eval_poly@n)
	movlw	high(09h)
	movwf	((eval_poly@n))+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(ldexp@value)
	movf	(1+(?_eval_poly)),w
	movwf	(ldexp@value+1)
	movf	(2+(?_eval_poly)),w
	movwf	(ldexp@value+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp+1)
	addwf	(ldexp@newexp+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ldexp@newexp)
	addwf	(ldexp@newexp)

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	movwf	(exp@x)
	movf	(1+(?_ldexp)),w
	movwf	(exp@x+1)
	movf	(2+(?_ldexp)),w
	movwf	(exp@x+2)
	line	50
	
l2812:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@sign)^080h,w
	skipz
	goto	u3830
	goto	l688
u3830:
	goto	l2818
	line	52
	
l2814:	
	goto	l2818
	
l2816:	
	movlw	0x0
	movwf	(_exp$438)^080h
	movlw	0x80
	movwf	(_exp$438+1)^080h
	movlw	0x7f
	movwf	(_exp$438+2)^080h
	goto	l693
	
l691:	
	
l2818:	
	movlw	0xff
	movwf	(_exp$438)^080h
	movlw	0x7f
	movwf	(_exp$438+1)^080h
	movlw	0x7f
	movwf	(_exp$438+2)^080h
	
l693:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$438+2)^080h,w
	skipz
	goto	u3845
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$438+1)^080h,w
	skipz
	goto	u3845
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_exp$438)^080h,w
u3845:
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l2824
u3840:
	line	53
	
l2820:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l680
	
l2822:	
	goto	l680
	
l689:	
	line	54
	
l2824:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(exp@x),w
	movwf	(___ftdiv@f2)
	movf	(exp@x+1),w
	movwf	(___ftdiv@f2+1)
	movf	(exp@x+2),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x80
	movwf	(___ftdiv@f1+1)
	movlw	0x3f
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?_exp)
	movf	(1+(?___ftdiv)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_exp+2)
	goto	l680
	
l2826:	
	goto	l680
	line	55
	
l688:	
	line	56
	line	57
	
l680:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   62[BANK0 ] unsigned char 
;;  newexp          2   65[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
global __ptext18
__ptext18:	;psect for function _ldexp
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
;incstack = 0
	opt	stack 4
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l2438:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l2444
u3200:
	line	280
	
l2440:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l712
	
l2442:	
	goto	l712
	
l711:	
	line	282
	
l2444:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	287
	
l2446:	
	btfss	(ldexp@newexp+1),7
	goto	u3211
	goto	u3210
u3211:
	goto	l2454
u3210:
	line	288
	
l2448:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	289
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l712
	
l2450:	
	goto	l712
	line	290
	
l2452:	
	goto	l2480
	line	291
	
l713:	
	
l2454:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3225
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u3225:

	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l2478
u3220:
	line	292
	
l2456:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	293
	
l2458:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value),w
	movwf	(___ftge@ff1)
	movf	(ldexp@value+1),w
	movwf	(___ftge@ff1+1)
	movf	(ldexp@value+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3231
	goto	u3230
u3231:
	goto	l2474
u3230:
	goto	l2464
	line	294
	
l2460:	
	goto	l2464
	
l2462:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$475)
	movlw	0x80
	movwf	(_ldexp$475+1)
	movlw	0x7f
	movwf	(_ldexp$475+2)
	goto	l2466
	
l718:	
	
l2464:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$475)
	movlw	0x7f
	movwf	(_ldexp$475+1)
	movlw	0x7f
	movwf	(_ldexp$475+2)
	goto	l2466
	
l720:	
	
l2466:	
	movf	(_ldexp$475),w
	movwf	(___ftneg@f1)
	movf	(_ldexp$475+1),w
	movwf	(___ftneg@f1+1)
	movf	(_ldexp$475+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l712
	
l2468:	
	goto	l712
	
l2470:	
	goto	l2480
	line	295
	
l716:	
	line	296
	goto	l2474
	
l2472:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l712
	
l723:	
	
l2474:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l712
	
l725:	
	goto	l712
	
l2476:	
	goto	l712
	
l721:	
	line	297
	goto	l2480
	line	298
	
l715:	
	line	300
	
l2478:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	goto	l2480
	line	305
	
l726:	
	goto	l2480
	
l714:	
	line	306
	
l2480:	
	goto	l712
	
l2482:	
	line	307
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
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
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext19
__ptext19:	;psect for function ___ftneg
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l2186:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2751
	goto	u2750
u2751:
	goto	l2190
u2750:
	line	18
	
l2188:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2190
	
l521:	
	line	19
	
l2190:	
	goto	l522
	
l2192:	
	line	20
	
l522:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   54[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  i               3   58[BANK0 ] float 
;;  expon           2   61[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
global __ptext20
__ptext20:	;psect for function _floor
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 3
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l2400:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(frexp@value)
	movf	(floor@x+1),w
	movwf	(frexp@value+1)
	movf	(floor@x+2),w
	movwf	(frexp@value+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l2402:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u3151
	goto	u3150
u3151:
	goto	l2414
u3150:
	line	20
	
l2404:	
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3161
	goto	u3160
u3161:
	goto	l2410
u3160:
	line	21
	
l2406:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l700
	
l2408:	
	goto	l700
	
l699:	
	line	22
	
l2410:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l700
	
l2412:	
	goto	l700
	line	23
	
l698:	
	line	24
	
l2414:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l2418
u3170:
	line	25
	
l2416:	
	goto	l700
	
l701:	
	line	26
	
l2418:	
	movf	(floor@x),w
	movwf	(___fttol@f1)
	movf	(floor@x+1),w
	movwf	(___fttol@f1+1)
	movf	(floor@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(floor@i),w
	movwf	(___ftge@ff2)
	movf	(floor@i+1),w
	movwf	(___ftge@ff2+1)
	movf	(floor@i+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3181
	goto	u3180
u3181:
	goto	l2424
u3180:
	line	28
	
l2420:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(floor@i),w
	movwf	(___ftadd@f2)
	movf	(floor@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(floor@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l700
	
l2422:	
	goto	l700
	
l702:	
	line	29
	
l2424:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l700
	
l2426:	
	line	30
	
l700:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext21
__ptext21:	;psect for function _frexp
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 5
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l2238:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l2246
u2860:
	line	257
	
l2240:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	258
	
l2242:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l708
	
l2244:	
	goto	l708
	line	259
	
l707:	
	line	261
	
l2246:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l2248:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l2250:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l2252:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l2254:	
	goto	l708
	
l2256:	
	line	274
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
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
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext22
__ptext22:	;psect for function ___fttol
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2194:	
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
	goto	u2761
	goto	u2760
u2761:
	goto	l2200
u2760:
	line	50
	
l2196:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l531
	
l2198:	
	goto	l531
	
l530:	
	line	51
	
l2200:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2775:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2770:
	addlw	-1
	skipz
	goto	u2775
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2202:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2204:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2206:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2208:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2210:	
	btfss	(___fttol@exp1),7
	goto	u2781
	goto	u2780
u2781:
	goto	l2220
u2780:
	line	57
	
l2212:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l2218
u2790:
	line	58
	
l2214:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l531
	
l2216:	
	goto	l531
	
l533:	
	goto	l2218
	line	59
	
l534:	
	line	60
	
l2218:	
	movlw	01h
u2805:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2805

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2218
u2810:
	goto	l2230
	
l535:	
	line	62
	goto	l2230
	
l532:	
	line	63
	
l2220:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l2228
u2820:
	line	64
	
l2222:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l531
	
l2224:	
	goto	l531
	
l537:	
	line	65
	goto	l2228
	
l539:	
	line	66
	
l2226:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2835:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2835
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2228
	line	68
	
l538:	
	line	65
	
l2228:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2226
u2840:
	goto	l2230
	
l540:	
	goto	l2230
	line	69
	
l536:	
	line	70
	
l2230:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2850
	goto	l2234
u2850:
	line	71
	
l2232:	
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
	goto	l2234
	
l541:	
	line	72
	
l2234:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l531
	
l2236:	
	line	73
	
l531:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
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
;;		_main
;;		_sprintf
;;		_pow
;;		_exp
;;		_floor
;;		_ldexp
;;		_log
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
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2116:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2120
u2560:
	line	7
	
l2118:	
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
	goto	u2571
	goto	u2572
u2571:
	addwf	(??___ftge+0)+1,f
	
u2572:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2573
	goto	u2574
u2573:
	addwf	(??___ftge+0)+2,f
	
u2574:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2120
	
l503:	
	line	8
	
l2120:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2124
u2580:
	line	9
	
l2122:	
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
	goto	u2591
	goto	u2592
u2591:
	addwf	(??___ftge+0)+1,f
	
u2592:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2593
	goto	u2594
u2593:
	addwf	(??___ftge+0)+2,f
	
u2594:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2124
	
l504:	
	line	10
	
l2124:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2126:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2128:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2605
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2605
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2605:
	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l2132
u2600:
	
l2130:	
	clrc
	
	goto	l505
	
l1978:	
	
l2132:	
	setc
	
	goto	l505
	
l1980:	
	goto	l505
	
l2134:	
	line	13
	
l505:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   46[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   53[BANK0 ] unsigned char 
;;  exp             1   52[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   46[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext24
__ptext24:	;psect for function ___altoft
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l2028:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l2030:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l2032:	
	btfss	(___altoft@c+3),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2038
u2290:
	line	48
	
l2034:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	l2038
	line	50
	
l338:	
	line	52
	goto	l2038
	
l340:	
	line	53
	
l2036:	
	movlw	01h
u2305:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u2305

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l2038
	line	55
	
l339:	
	line	52
	
l2038:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2036
u2310:
	goto	l2040
	
l341:	
	line	56
	
l2040:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l342
	
l2042:	
	line	57
	
l342:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   52[BANK0 ] float 
;;  d               1   55[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   56[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   59[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
global __ptext25
__ptext25:	;psect for function _eval_poly
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
	opt	stack 3
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l2428:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(eval_poly@n),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l2432
	
l746:	
	line	10
	
l2430:	
	movlw	(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(-1)
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	high(-1)
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(___ftadd@f1)
	fcall	stringdir
	movwf	(___ftadd@f1+1)
	fcall	stringdir
	movwf	(___ftadd@f1+2)
	movf	(eval_poly@res),w
	movwf	(___ftmul@f1)
	movf	(eval_poly@res+1),w
	movwf	(___ftmul@f1+1)
	movf	(eval_poly@res+2),w
	movwf	(___ftmul@f1+2)
	movf	(eval_poly@x),w
	movwf	(___ftmul@f2)
	movf	(eval_poly@x+1),w
	movwf	(___ftmul@f2+1)
	movf	(eval_poly@x+2),w
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
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	goto	l2432
	
l745:	
	line	9
	
l2432:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l2430
u3190:
	goto	l2434
	
l747:	
	line	11
	
l2434:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l748
	
l2436:	
	line	12
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
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
;;		_main
;;		_fround
;;		_scale
;;		_sprintf
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext26
__ptext26:	;psect for function ___ftmul
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2136:	
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
	goto	u2611
	goto	u2610
u2611:
	goto	l2142
u2610:
	line	68
	
l2138:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l511
	
l2140:	
	goto	l511
	
l510:	
	line	69
	
l2142:	
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
	goto	u2621
	goto	u2620
u2621:
	goto	l2148
u2620:
	line	70
	
l2144:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l511
	
l2146:	
	goto	l511
	
l512:	
	line	71
	
l2148:	
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
u2635:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2630:
	addlw	-1
	skipz
	goto	u2635
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
u2645:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2640:
	addlw	-1
	skipz
	goto	u2645
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
	
l2150:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l2152:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l2154:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l2156:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l2158:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2160
	line	135
	
l513:	
	line	136
	
l2160:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l2164
u2650:
	line	137
	
l2162:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2661
	addwf	(___ftmul@f3_as_product+1),f
u2661:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2662
	addwf	(___ftmul@f3_as_product+2),f
u2662:

	goto	l2164
	
l514:	
	line	138
	
l2164:	
	movlw	01h
u2675:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2675

	line	139
	
l2166:	
	movlw	01h
u2685:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2685
	line	140
	
l2168:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2160
u2690:
	goto	l2170
	
l515:	
	line	143
	
l2170:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l2172
	line	144
	
l516:	
	line	145
	
l2172:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l2176
u2700:
	line	146
	
l2174:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2711
	addwf	(___ftmul@f3_as_product+1),f
u2711:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2712
	addwf	(___ftmul@f3_as_product+2),f
u2712:

	goto	l2176
	
l517:	
	line	147
	
l2176:	
	movlw	01h
u2725:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2725

	line	148
	
l2178:	
	movlw	01h
u2735:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2735

	line	149
	
l2180:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2172
u2740:
	goto	l2182
	
l518:	
	line	156
	
l2182:	
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
	goto	l511
	
l2184:	
	line	157
	
l511:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext27
__ptext27:	;psect for function ___bmul
psect	text27
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
	
l2012:	
	clrf	(___bmul@product)
	goto	l2014
	line	42
	
l272:	
	line	43
	
l2014:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2018
u2270:
	line	44
	
l2016:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2018
	
l273:	
	line	45
	
l2018:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l2020:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l2022:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2014
u2280:
	goto	l2024
	
l274:	
	line	50
	
l2024:	
	movf	(___bmul@product),w
	goto	l275
	
l2026:	
	line	51
	
l275:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext28
__ptext28:	;psect for function ___ftsub
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l2394:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l2396:	
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
	goto	l527
	
l2398:	
	line	25
	
l527:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
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
;;		_main
;;		_sprintf
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext29
__ptext29:	;psect for function ___ftadd
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2044:	
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
	
l2046:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2320
	goto	l2052
u2320:
	
l2048:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l2056
u2330:
	
l2050:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2056
u2340:
	goto	l2052
	
l447:	
	line	93
	
l2052:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l448
	
l2054:	
	goto	l448
	
l445:	
	line	94
	
l2056:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2350
	goto	l451
u2350:
	
l2058:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l2062
u2360:
	
l2060:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2062
u2370:
	
l451:	
	line	95
	goto	l448
	
l449:	
	line	96
	
l2062:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2064:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l452
u2380:
	line	98
	
l2066:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l452:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l453
u2390:
	line	100
	
l2068:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l453:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2070:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2072:	
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
	goto	u2401
	goto	u2400
u2401:
	goto	l2084
u2400:
	goto	l2074
	line	109
	
l455:	
	line	110
	
l2074:	
	movlw	01h
u2415:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2415
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2076:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l2082
u2420:
	
l2078:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2074
u2430:
	goto	l2082
	
l457:	
	goto	l2082
	
l458:	
	line	113
	goto	l2082
	
l460:	
	line	114
	
l2080:	
	movlw	01h
u2445:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2445

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2082
	line	116
	
l459:	
	line	113
	
l2082:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2080
u2450:
	goto	l462
	
l461:	
	line	117
	goto	l462
	
l454:	
	
l2084:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l462
u2460:
	goto	l2086
	line	120
	
l464:	
	line	121
	
l2086:	
	movlw	01h
u2475:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2475
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2088:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l2094
u2480:
	
l2090:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2086
u2490:
	goto	l2094
	
l466:	
	goto	l2094
	
l467:	
	line	124
	goto	l2094
	
l469:	
	line	125
	
l2092:	
	movlw	01h
u2505:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2505

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2094
	line	127
	
l468:	
	line	124
	
l2094:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2092
u2510:
	goto	l462
	
l470:	
	goto	l462
	line	128
	
l463:	
	line	129
	
l462:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2098
u2520:
	line	131
	
l2096:	
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
	goto	l2098
	line	133
	
l471:	
	line	134
	
l2098:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2102
u2530:
	line	136
	
l2100:	
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
	goto	l2102
	line	138
	
l472:	
	line	139
	
l2102:	
	clrf	(___ftadd@sign)
	line	140
	
l2104:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2541
	addwf	(___ftadd@f2+1),f
u2541:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2542
	addwf	(___ftadd@f2+2),f
u2542:

	line	141
	
l2106:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l2112
u2550:
	line	142
	
l2108:	
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
	
l2110:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l2112
	line	145
	
l473:	
	line	146
	
l2112:	
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
	goto	l448
	
l2114:	
	line	148
	
l448:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   23[BANK0 ] float 
;;  f1              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   34[BANK0 ] float 
;;  sign            1   38[BANK0 ] unsigned char 
;;  exp             1   37[BANK0 ] unsigned char 
;;  cntr            1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
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
;;		_main
;;		_exp
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
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2352:	
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
	goto	u3071
	goto	u3070
u3071:
	goto	l2358
u3070:
	line	56
	
l2354:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l479
	
l2356:	
	goto	l479
	
l478:	
	line	57
	
l2358:	
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
	goto	u3081
	goto	u3080
u3081:
	goto	l2364
u3080:
	line	58
	
l2360:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l479
	
l2362:	
	goto	l479
	
l480:	
	line	59
	
l2364:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2366:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2368:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3095:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3090:
	addlw	-1
	skipz
	goto	u3095
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2370:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3105:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3100:
	addlw	-1
	skipz
	goto	u3105
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2372:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2374:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2376:	
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
	goto	l2378
	line	69
	
l481:	
	line	70
	
l2378:	
	movlw	01h
u3115:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3115
	line	71
	
l2380:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3125
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3125
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3125:
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l2386
u3120:
	line	72
	
l2382:	
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
	
l2384:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2386
	line	74
	
l482:	
	line	75
	
l2386:	
	movlw	01h
u3135:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3135
	line	76
	
l2388:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l2378
u3140:
	goto	l2390
	
l483:	
	line	77
	
l2390:	
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
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l479
	
l2392:	
	line	78
	
l479:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext31
__ptext31:	;psect for function ___awtoft
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2340:	
	clrf	(___awtoft@sign)
	line	37
	
l2342:	
	btfss	(___awtoft@c+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l2348
u3060:
	line	38
	
l2344:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l2346:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	l2348
	line	40
	
l405:	
	line	41
	
l2348:	
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
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l406
	
l2350:	
	line	42
	
l406:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
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
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext32
__ptext32:	;psect for function ___lltoft
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2742:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l2746
	
l593:	
	line	42
	
l2744:	
	movlw	01h
u3755:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3755

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l2746
	line	44
	
l592:	
	line	41
	
l2746:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l2744
u3760:
	goto	l2748
	
l594:	
	line	45
	
l2748:	
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
	goto	l595
	
l2750:	
	line	46
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
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
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
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
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1982:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2160
	goto	l1986
u2160:
	
l1984:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l1992
u2170:
	goto	l1986
	
l428:	
	line	65
	
l1986:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l429
	
l1988:	
	goto	l429
	
l426:	
	line	66
	goto	l1992
	
l431:	
	line	67
	
l1990:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2185:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2185

	goto	l1992
	line	69
	
l430:	
	line	66
	
l1992:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l1990
u2190:
	goto	l433
	
l432:	
	line	70
	goto	l433
	
l434:	
	line	71
	
l1994:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1996:	
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
	
l1998:	
	movlw	01h
u2205:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2205

	line	74
	
l433:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l1994
u2210:
	goto	l2002
	
l435:	
	line	75
	goto	l2002
	
l437:	
	line	76
	
l2000:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2225:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2225
	goto	l2002
	line	78
	
l436:	
	line	75
	
l2002:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2000
u2230:
	
l438:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l439
u2240:
	line	80
	
l2004:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l439:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2006:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2255:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2250:
	addlw	-1
	skipz
	goto	u2255
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2008:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2260
	goto	l440
u2260:
	line	84
	
l2010:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l440:	
	line	85
	line	86
	
l429:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 37 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
	line	37
global __ptext34
__ptext34:	;psect for function _initLCD
psect	text34
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
	line	37
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2828:	
;lcd_functions.h: 39: instCTRL(0x3C);
	movlw	(03Ch)
	fcall	_instCTRL
	line	40
	
l2830:	
;lcd_functions.h: 40: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_initLCD+0)+0,f
u4347:
decfsz	(??_initLCD+0)+0,f
	goto	u4347
	nop
opt asmopt_on

	line	41
	
l2832:	
;lcd_functions.h: 41: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	42
	
l2834:	
;lcd_functions.h: 42: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	43
	
l2836:	
;lcd_functions.h: 43: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	44
	
l2838:	
;lcd_functions.h: 44: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	45
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 17 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
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
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	line	17
global __ptext35
__ptext35:	;psect for function _instCTRL
psect	text35
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\mplab\MQ135_Demo\lcd_functions.h"
	line	17
	global	__size_of_instCTRL
	__size_of_instCTRL	equ	__end_of_instCTRL-_instCTRL
	
_instCTRL:	
;incstack = 0
	opt	stack 7
; Regs used in _instCTRL: [wreg]
;instCTRL@CMD stored from wreg
	movwf	(instCTRL@CMD)
	line	19
	
l2484:	
;lcd_functions.h: 19: PORTD = CMD;
	movf	(instCTRL@CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	20
	
l2486:	
;lcd_functions.h: 20: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	21
	
l2488:	
;lcd_functions.h: 21: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	22
	
l2490:	
;lcd_functions.h: 22: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	23
;lcd_functions.h: 23: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_instCTRL+0)+0,f
u4357:
decfsz	(??_instCTRL+0)+0,f
	goto	u4357
	nop
opt asmopt_on

	line	24
	
l2492:	
;lcd_functions.h: 24: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	25
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
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
