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
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCTRL
	FNCALL	_main,_printTime
	FNCALL	_main,_printToLCD
	FNCALL	_main,_serialInit
	FNCALL	_printTime,_instCTRL
	FNCALL	_printTime,_printToLCD
	FNCALL	_printTime,_serialSend
	FNCALL	_printTime,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_initLCD,_instCTRL
	FNROOT	_main
	FNCALL	_ISR,_keypadData
	FNCALL	_ISR,i1_serialSend
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_lastKeyData
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	23

;initializer for _lastKeyData
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
	global	_hours
	global	_mins
	global	_keyData
	global	_buffer
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTA
_RCSTA	set	0x18
	global	_TXREG
_TXREG	set	0x19
	global	_GIE
_GIE	set	0x5F
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
	global	_RCIF
_RCIF	set	0x65
	global	_TXIF
_TXIF	set	0x64
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TXSTA
_TXSTA	set	0x98
	global	_TRISA0
_TRISA0	set	0x428
	global __stringdata
__stringdata:
	
STR_3:	
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
	
STR_1:	
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	89	;'Y'
	retlw	58	;':'
	retlw	32	;' '
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
	file	"transmit.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	23
_lastKeyData:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_hours:
       ds      2

_mins:
       ds      2

_keyData:
       ds      1

_buffer:
       ds      10

	file	"transmit.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
	clrf	((__pbssBANK0)+14)&07Fh
	line	#
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
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_printTime:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_instCTRL:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_serialInit:	; 0 bytes @ 0x0
?_serialSend:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
??_keypadData:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?i1_serialSend:	; 0 bytes @ 0x0
??i1_serialSend:	; 0 bytes @ 0x0
?_keypadData:	; 1 bytes @ 0x0
	ds	2
	global	keypadData@dataIN
keypadData@dataIN:	; 1 bytes @ 0x2
	ds	1
	global	keypadData@buffer
keypadData@buffer:	; 1 bytes @ 0x3
	global	i1serialSend@dataOUT
i1serialSend@dataOUT:	; 1 bytes @ 0x3
	ds	1
??_ISR:	; 0 bytes @ 0x4
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_isdigit:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
??_serialInit:	; 0 bytes @ 0x0
??_serialSend:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	_isdigit$309
_isdigit$309:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x2
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_initLCD:	; 0 bytes @ 0x3
?_printToLCD:	; 0 bytes @ 0x3
	global	serialSend@dataOUT
serialSend@dataOUT:	; 1 bytes @ 0x3
	global	printToLCD@STR
printToLCD@STR:	; 2 bytes @ 0x3
	ds	1
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??_printToLCD:	; 0 bytes @ 0x5
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
??_printTime:	; 0 bytes @ 0x21
	ds	2
??_main:	; 0 bytes @ 0x23
	ds	3
;!
;!Data Sizes:
;!    Strings     23
;!    Constant    10
;!    Data        1
;!    BSS         15
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      10
;!    BANK0            80     38      53
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_3(CODE[10]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> buffer(BANK0[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S113$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    printToLCD@STR	PTR unsigned char  size(2) Largest target is 512
;!		 -> buffer(BANK0[10]), RAM(DATA[512]), STR_2(CODE[6]), STR_1(CODE[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_keypadData
;!    _ISR->i1_serialSend
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printTime
;!    _printTime->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _printToLCD->_dataCTRL
;!    _initLCD->_instCTRL
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
;! (0) _main                                                 3     3      0    2433
;!                                             35 BANK0      3     3      0
;!                            _initLCD
;!                           _instCTRL
;!                          _printTime
;!                         _printToLCD
;!                         _serialInit
;! ---------------------------------------------------------------------------------
;! (1) _serialInit                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _printTime                                            2     2      0    2110
;!                                             33 BANK0      2     2      0
;!                           _instCTRL
;!                         _printToLCD
;!                         _serialSend
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (2) _sprintf                                             19    14      5    1787
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
;! (2) _serialSend                                           4     4      0      22
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _printToLCD                                           2     0      2     279
;!                                              3 BANK0      2     0      2
;!                           _dataCTRL
;! ---------------------------------------------------------------------------------
;! (2) _dataCTRL                                             3     3      0      22
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0      22
;!                                              3 BANK0      1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (2) _instCTRL                                             3     3      0      22
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  5     5      0      85
;!                                              4 COMMON     5     5      0
;!                         _keypadData
;!                       i1_serialSend
;! ---------------------------------------------------------------------------------
;! (5) i1_serialSend                                         4     4      0      22
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (5) _keypadData                                           4     4      0      63
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initLCD
;!     _instCTRL
;!   _instCTRL
;!   _printTime
;!     _instCTRL
;!     _printToLCD
;!       _dataCTRL
;!     _serialSend
;!     _sprintf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!   _printToLCD
;!     _dataCTRL
;!   _serialInit
;!
;! _ISR (ROOT)
;!   _keypadData
;!   i1_serialSend
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
;!BANK0               50     26      35       5       66.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      9       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3F      12        0.0%
;!ABS                  0      0      3F       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_initLCD
;;		_instCTRL
;;		_printTime
;;		_printToLCD
;;		_serialInit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l1318:	
;main.c: 31: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	32
	
l1320:	
;main.c: 32: TRISC = 0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	line	33
	
l1322:	
;main.c: 33: TRISB = 0xF7;
	movlw	(0F7h)
	movwf	(134)^080h	;volatile
	line	34
	
l1324:	
;main.c: 34: TRISA0 = 1;
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	36
	
l1326:	
;main.c: 36: OPTION_REG = 0x44;
	movlw	(044h)
	movwf	(129)^080h	;volatile
	line	37
	
l1328:	
;main.c: 37: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	38
	
l1330:	
;main.c: 38: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	40
	
l1332:	
;main.c: 40: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	42
	
l1334:	
;main.c: 42: serialInit();
	fcall	_serialInit
	line	43
	
l1336:	
;main.c: 43: initLCD();
	fcall	_initLCD
	line	44
	
l1338:	
;main.c: 44: _delay((unsigned long)((200)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	4
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u967:
	decfsz	((??_main+0)+0),f
	goto	u967
	decfsz	((??_main+0)+0+1),f
	goto	u967
	decfsz	((??_main+0)+0+2),f
	goto	u967
	nop
opt asmopt_on

	line	45
	
l1340:	
;main.c: 45: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	46
	
l1342:	
;main.c: 46: printToLCD("TIME: ");
	movlw	low((STR_1)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@STR)
	movlw	80h
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	goto	l1344
	line	47
;main.c: 47: while(1)
	
l91:	
	line	49
	
l1344:	
;main.c: 48: {
;main.c: 49: printTime();
	fcall	_printTime
	line	50
	
l1346:	
;main.c: 50: instCTRL(0x86);
	movlw	(086h)
	fcall	_instCTRL
	line	51
	
l1348:	
;main.c: 51: printToLCD("KEY: ");
	movlw	low((STR_2)-__stringbase)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@STR)
	movlw	80h
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	line	52
	
l1350:	
;main.c: 52: printToLCD(keyData);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keyData),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(printToLCD@STR)
	movf	1+(??_main+0)+0,w
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	goto	l1344
	line	53
	
l92:	
	line	47
	goto	l1344
	
l93:	
	line	54
	
l94:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_serialInit

;; *************** function _serialInit *****************
;; Defined at:
;;		line 18 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
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
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
	line	18
global __ptext1
__ptext1:	;psect for function _serialInit
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
	line	18
	global	__size_of_serialInit
	__size_of_serialInit	equ	__end_of_serialInit-_serialInit
	
_serialInit:	
;incstack = 0
	opt	stack 5
; Regs used in _serialInit: [wreg]
	line	20
	
l1234:	
;usart_functions.h: 20: TXSTA = 0b00100100;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	21
	
l1236:	
;usart_functions.h: 21: TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	23
;usart_functions.h: 23: RCSTA = 0b10010000;
	movlw	(090h)
	movwf	(24)	;volatile
	line	24
	
l1238:	
;usart_functions.h: 24: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	26
;usart_functions.h: 26: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	27
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_serialInit
	__end_of_serialInit:
	signat	_serialInit,88
	global	_printTime

;; *************** function _printTime *****************
;; Defined at:
;;		line 138 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
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
;;		_instCTRL
;;		_printToLCD
;;		_serialSend
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	138
global __ptext2
__ptext2:	;psect for function _printTime
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	138
	global	__size_of_printTime
	__size_of_printTime	equ	__end_of_printTime-_printTime
	
_printTime:	
;incstack = 0
	opt	stack 3
; Regs used in _printTime: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	140
	
l1240:	
	goto	l1262
	line	141
	
l126:	
	line	143
	goto	l1252
	line	144
	
l128:	
	line	146
	
l1242:	
;main.c: 144: {
;main.c: 146: instCTRL(0x86);
	movlw	(086h)
	fcall	_instCTRL
	line	147
	
l1244:	
;main.c: 147: sprintf(buffer, "%02d:%02d", hours, mins);
	movlw	((STR_3)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_printTime+0)+0
	movf	(??_printTime+0)+0,w
	movwf	(sprintf@f)
	movf	(_hours+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_hours),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(_mins+1),w
	clrf	1+(?_sprintf)+03h
	addwf	1+(?_sprintf)+03h
	movf	(_mins),w
	clrf	0+(?_sprintf)+03h
	addwf	0+(?_sprintf)+03h

	movlw	(_buffer)&0ffh
	fcall	_sprintf
	line	148
	
l1246:	
;main.c: 148: printToLCD(buffer);
	movlw	(_buffer&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printToLCD@STR)
	movlw	(0x0)
	movwf	(printToLCD@STR+1)
	fcall	_printToLCD
	line	149
	
l1248:	
;main.c: 149: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_printTime+0)+0+1),f
	movlw	238
movwf	((??_printTime+0)+0),f
u977:
	decfsz	((??_printTime+0)+0),f
	goto	u977
	decfsz	((??_printTime+0)+0+1),f
	goto	u977
	nop
opt asmopt_on

	line	143
	
l1250:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_mins),f
	skipnc
	incf	(_mins+1),f
	movlw	high(01h)
	addwf	(_mins+1),f
	goto	l1252
	
l127:	
	
l1252:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mins+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u895
	movlw	low(03Ch)
	subwf	(_mins),w
u895:

	skipc
	goto	u891
	goto	u890
u891:
	goto	l1242
u890:
	goto	l1254
	
l129:	
	line	152
	
l1254:	
;main.c: 150: }
;main.c: 152: serialSend(hours);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hours),w
	fcall	_serialSend
	line	153
	
l1256:	
;main.c: 153: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_printTime+0)+0+1),f
	movlw	238
movwf	((??_printTime+0)+0),f
u987:
	decfsz	((??_printTime+0)+0),f
	goto	u987
	decfsz	((??_printTime+0)+0+1),f
	goto	u987
	nop
opt asmopt_on

	line	155
	
l1258:	
;main.c: 155: mins = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_mins)
	clrf	(_mins+1)
	line	140
	
l1260:	
	movlw	low(01h)
	addwf	(_hours),f
	skipnc
	incf	(_hours+1),f
	movlw	high(01h)
	addwf	(_hours+1),f
	goto	l1262
	
l125:	
	
l1262:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_hours+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u905
	movlw	low(018h)
	subwf	(_hours),w
u905:

	skipc
	goto	u901
	goto	u900
u901:
	goto	l1252
u900:
	goto	l1264
	
l130:	
	line	158
	
l1264:	
;main.c: 156: }
;main.c: 158: hours = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_hours)
	clrf	(_hours+1)
	line	159
	
l131:	
	return
	opt stack 0
GLOBAL	__end_of_printTime
	__end_of_printTime:
	signat	_printTime,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> buffer(10), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(10), 
;; Auto vars:     Size  Location     Type
;;  sp              1   31[BANK0 ] PTR unsigned char 
;;		 -> buffer(10), 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_printTime
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext3
__ptext3:	;psect for function _sprintf
psect	text3
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
	line	542
	
l1112:	
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
	goto	l1216
	
l143:	
	line	547
	
l1114:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u701
	goto	u700
u701:
	goto	l1120
u700:
	line	550
	
l1116:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1118:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l1216
	line	552
	
l144:	
	line	555
	
l1120:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	goto	l1126
	line	559
;doprnt.c: 559: for(;;) {
	
l145:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l1126
	line	588
;doprnt.c: 588: case '0':
	
l147:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)+(2/8),(2)&7
	line	590
	
l1122:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	591
;doprnt.c: 591: continue;
	goto	l1126
	line	593
	
l1124:	
;doprnt.c: 593: }
	goto	l1128
	line	560
	
l146:	
	
l1126:	
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
	goto	l147
	goto	l1128
	opt asmopt_on

	line	593
	
l149:	
	line	594
;doprnt.c: 594: break;
	goto	l1128
	line	595
	
l148:	
;doprnt.c: 595: }
	goto	l1126
	
l150:	
	line	606
	
l1128:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u711
	goto	u710
u711:
	goto	l1142
u710:
	line	607
	
l1130:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1132
	line	608
;doprnt.c: 608: do {
	
l152:	
	line	609
	
l1132:	
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
	
l1134:	
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
	
l1136:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	611
	
l1138:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u721
	goto	u720
u721:
	goto	l1132
u720:
	goto	l1142
	
l153:	
	goto	l1142
	line	617
	
l151:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l1142
	line	646
;doprnt.c: 646: case 0:
	
l155:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l1218
	line	706
;doprnt.c: 706: case 'd':
	
l157:	
	goto	l1144
	line	707
	
l158:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l1144
	line	811
;doprnt.c: 811: default:
	
l160:	
	line	822
;doprnt.c: 822: continue;
	goto	l1216
	line	831
	
l1140:	
;doprnt.c: 831: }
	goto	l1144
	line	644
	
l154:	
	
l1142:	
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
	goto	l1218
	xorlw	100^0	; case 100
	skipnz
	goto	l1144
	xorlw	105^100	; case 105
	skipnz
	goto	l1144
	goto	l1216
	opt asmopt_on

	line	831
	
l159:	
	line	1268
	
l1144:	
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
	
l1146:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l1148:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u731
	goto	u730
u731:
	goto	l1154
u730:
	line	1271
	
l1150:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l1152:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l1154
	line	1273
	
l161:	
	line	1314
	
l1154:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1158
u740:
	goto	l1166
	
l1156:	
	goto	l1166
	line	1315
	
l162:	
	
l1158:	
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
	goto	u755
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u755:
	skipnc
	goto	u751
	goto	u750
u751:
	goto	l1162
u750:
	goto	l1166
	line	1316
	
l1160:	
;doprnt.c: 1316: break;
	goto	l1166
	
l164:	
	line	1314
	
l1162:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l1164:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u761
	goto	u760
u761:
	goto	l1158
u760:
	goto	l1166
	
l163:	
	line	1354
	
l1166:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u771
	goto	u770
u771:
	goto	l165
u770:
	
l1168:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u781
	goto	u780
u781:
	goto	l165
u780:
	line	1355
	
l1170:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	
l165:	
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
	goto	u795
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u795:

	skipnc
	goto	u791
	goto	u790
u791:
	goto	l1174
u790:
	line	1391
	
l1172:	
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
	goto	l1176
	line	1392
	
l166:	
	line	1393
	
l1174:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l1176
	
l167:	
	line	1396
	
l1176:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag),(2)&7
	goto	u801
	goto	u800
u801:
	goto	l1192
u800:
	line	1401
	
l1178:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u811
	goto	u810
u811:
	goto	l1184
u810:
	line	1402
	
l1180:	
;doprnt.c: 1402: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1182:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1184
	
l169:	
	line	1424
	
l1184:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u821
	goto	u820
u821:
	goto	l1206
u820:
	goto	l1186
	line	1425
;doprnt.c: 1425: do
	
l171:	
	line	1426
	
l1186:	
;doprnt.c: 1426: ((*sp++ = ('0')));
	movlw	(030h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1188:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1427
	
l1190:	
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
	goto	u831
	goto	u830
u831:
	goto	l1186
u830:
	goto	l1206
	
l172:	
	goto	l1206
	
l170:	
	line	1429
;doprnt.c: 1429: } else
	goto	l1206
	
l168:	
	line	1437
	
l1192:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u841
	goto	u840
u841:
	goto	l1200
u840:
	goto	l1194
	line	1438
;doprnt.c: 1438: do
	
l175:	
	line	1439
	
l1194:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1196:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1440
	
l1198:	
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
	goto	u851
	goto	u850
u851:
	goto	l1194
u850:
	goto	l1200
	
l176:	
	goto	l1200
	
l174:	
	line	1447
	
l1200:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u861
	goto	u860
u861:
	goto	l1206
u860:
	line	1448
	
l1202:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1204:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1206
	
l177:	
	goto	l1206
	line	1478
	
l173:	
	line	1481
	
l1206:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l1214
	
l179:	
	line	1498
	
l1208:	
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
	
l1210:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l1212:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l1214
	line	1534
	
l178:	
	line	1483
	
l1214:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1208
u870:
	goto	l1216
	
l180:	
	goto	l1216
	line	1542
	
l142:	
	line	545
	
l1216:	
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
	goto	u881
	goto	u880
u881:
	goto	l1114
u880:
	goto	l1218
	
l181:	
	goto	l1218
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l156:	
	line	1547
	
l1218:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l182
	line	1549
	
l1220:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l182:	
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
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext4
__ptext4:	;psect for function _isdigit
psect	text4
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
	
l1018:	
	clrf	(_isdigit$309)
	
l1020:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u491
	goto	u490
u491:
	goto	l1026
u490:
	
l1022:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l1026
u500:
	
l1024:	
	clrf	(_isdigit$309)
	incf	(_isdigit$309),f
	goto	l1026
	
l522:	
	
l1026:	
	rrf	(_isdigit$309),w
	
	goto	l523
	
l1028:	
	line	15
	
l523:	
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___wmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1030:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1032
	line	44
	
l265:	
	line	45
	
l1032:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u511
	goto	u510
u511:
	goto	l266
u510:
	line	46
	
l1034:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l266:	
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
	
l1036:	
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
	goto	l1032
u540:
	goto	l1038
	
l267:	
	line	52
	
l1038:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l268
	
l1040:	
	line	53
	
l268:	
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
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lwmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1068:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u621
	goto	u620
u621:
	goto	l1086
u620:
	line	14
	
l1070:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1076
	
l612:	
	line	16
	
l1072:	
	movlw	01h
	
u635:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u635
	line	17
	
l1074:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1076
	line	18
	
l611:	
	line	15
	
l1076:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u641
	goto	u640
u641:
	goto	l1072
u640:
	goto	l1078
	
l613:	
	goto	l1078
	line	19
	
l614:	
	line	20
	
l1078:	
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
	goto	l1082
u650:
	line	21
	
l1080:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1082
	
l615:	
	line	22
	
l1082:	
	movlw	01h
	
u665:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u665
	line	23
	
l1084:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l1078
u670:
	goto	l1086
	
l616:	
	goto	l1086
	line	24
	
l610:	
	line	25
	
l1086:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l617
	
l1088:	
	line	26
	
l617:	
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwdiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1044:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u551
	goto	u550
u551:
	goto	l1064
u550:
	line	16
	
l1046:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1052
	
l602:	
	line	18
	
l1048:	
	movlw	01h
	
u565:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u565
	line	19
	
l1050:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1052
	line	20
	
l601:	
	line	17
	
l1052:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u571
	goto	u570
u571:
	goto	l1048
u570:
	goto	l1054
	
l603:	
	goto	l1054
	line	21
	
l604:	
	line	22
	
l1054:	
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
	goto	l1060
u590:
	line	24
	
l1056:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1058:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1060
	line	26
	
l605:	
	line	27
	
l1060:	
	movlw	01h
	
u605:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u605
	line	28
	
l1062:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1054
u610:
	goto	l1064
	
l606:	
	goto	l1064
	line	29
	
l600:	
	line	30
	
l1064:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l607
	
l1066:	
	line	31
	
l607:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_serialSend

;; *************** function _serialSend *****************
;; Defined at:
;;		line 29 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
;; Parameters:    Size  Location     Type
;;  dataOUT         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataOUT         1    3[BANK0 ] unsigned char 
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printTime
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
	line	29
global __ptext8
__ptext8:	;psect for function _serialSend
psect	text8
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
	line	29
	global	__size_of_serialSend
	__size_of_serialSend	equ	__end_of_serialSend-_serialSend
	
_serialSend:	
;incstack = 0
	opt	stack 4
; Regs used in _serialSend: [wreg]
;serialSend@dataOUT stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(serialSend@dataOUT)
	line	31
	
l1108:	
;usart_functions.h: 31: while (!TXIF)
	goto	l69
	
l70:	
	line	32
;usart_functions.h: 32: ;
	
l69:	
	line	31
	btfss	(100/8),(100)&7	;volatile
	goto	u691
	goto	u690
u691:
	goto	l69
u690:
	goto	l1110
	
l71:	
	line	33
	
l1110:	
;usart_functions.h: 33: TXREG = dataOUT;
	movf	(serialSend@dataOUT),w
	movwf	(25)	;volatile
	line	34
;usart_functions.h: 34: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_serialSend+0)+0+2),f
movlw	69
movwf	((??_serialSend+0)+0+1),f
	movlw	169
movwf	((??_serialSend+0)+0),f
u997:
	decfsz	((??_serialSend+0)+0),f
	goto	u997
	decfsz	((??_serialSend+0)+0+1),f
	goto	u997
	decfsz	((??_serialSend+0)+0+2),f
	goto	u997
	nop2
opt asmopt_on

	line	35
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_serialSend
	__end_of_serialSend:
	signat	_serialSend,4216
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 49 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  STR             2    3[BANK0 ] PTR unsigned char 
;;		 -> buffer(10), RAM(512), STR_2(6), STR_1(7), 
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
;; This function is called by:
;;		_main
;;		_printTime
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
	line	49
global __ptext9
__ptext9:	;psect for function _printToLCD
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
	line	49
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	51
	
l1100:	
;lcd_functions.h: 51: while(*STR != '\0')
	goto	l1106
	
l61:	
	line	53
	
l1102:	
;lcd_functions.h: 52: {
;lcd_functions.h: 53: dataCTRL(*STR);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@STR+1),w
	movwf	btemp+1
	movf	(printToLCD@STR),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	54
	
l1104:	
;lcd_functions.h: 54: STR++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printToLCD@STR),f
	skipnc
	incf	(printToLCD@STR+1),f
	movlw	high(01h)
	addwf	(printToLCD@STR+1),f
	goto	l1106
	line	55
	
l60:	
	line	51
	
l1106:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printToLCD@STR+1),w
	movwf	btemp+1
	movf	(printToLCD@STR),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1102
u680:
	goto	l63
	
l62:	
	line	56
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 29 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  DAT             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DAT             1    2[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printToLCD
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	29
global __ptext10
__ptext10:	;psect for function _dataCTRL
psect	text10
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
	line	29
	global	__size_of_dataCTRL
	__size_of_dataCTRL	equ	__end_of_dataCTRL-_dataCTRL
	
_dataCTRL:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCTRL: [wreg]
;dataCTRL@DAT stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCTRL@DAT)
	line	31
	
l1008:	
;lcd_functions.h: 31: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	movwf	(8)	;volatile
	line	32
	
l1010:	
;lcd_functions.h: 32: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	33
	
l1012:	
;lcd_functions.h: 33: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	34
	
l1014:	
;lcd_functions.h: 34: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	35
;lcd_functions.h: 35: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_dataCTRL+0)+0+1),f
	movlw	238
movwf	((??_dataCTRL+0)+0),f
u1007:
	decfsz	((??_dataCTRL+0)+0),f
	goto	u1007
	decfsz	((??_dataCTRL+0)+0+1),f
	goto	u1007
	nop
opt asmopt_on

	line	36
	
l1016:	
;lcd_functions.h: 36: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	37
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 39 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
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
psect	text11,local,class=CODE,delta=2,merge=1
	line	39
global __ptext11
__ptext11:	;psect for function _initLCD
psect	text11
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
	line	39
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l1222:	
;lcd_functions.h: 41: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	42
	
l1224:	
;lcd_functions.h: 42: _delay((unsigned long)((50)*(4000000/4000000.0)));
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

	line	43
	
l1226:	
;lcd_functions.h: 43: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	44
	
l1228:	
;lcd_functions.h: 44: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	45
	
l1230:	
;lcd_functions.h: 45: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	46
	
l1232:	
;lcd_functions.h: 46: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	47
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 19 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
;; Parameters:    Size  Location     Type
;;  CMD             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  CMD             1    2[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_main
;;		_printTime
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	19
global __ptext12
__ptext12:	;psect for function _instCTRL
psect	text12
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\lcd_functions.h"
	line	19
	global	__size_of_instCTRL
	__size_of_instCTRL	equ	__end_of_instCTRL-_instCTRL
	
_instCTRL:	
;incstack = 0
	opt	stack 4
; Regs used in _instCTRL: [wreg]
;instCTRL@CMD stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCTRL@CMD)
	line	21
	
l1090:	
;lcd_functions.h: 21: PORTD = CMD;
	movf	(instCTRL@CMD),w
	movwf	(8)	;volatile
	line	22
	
l1092:	
;lcd_functions.h: 22: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	23
	
l1094:	
;lcd_functions.h: 23: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	24
	
l1096:	
;lcd_functions.h: 24: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	25
;lcd_functions.h: 25: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_instCTRL+0)+0+1),f
	movlw	238
movwf	((??_instCTRL+0)+0),f
u1027:
	decfsz	((??_instCTRL+0)+0),f
	goto	u1027
	decfsz	((??_instCTRL+0)+0+1),f
	goto	u1027
	nop
opt asmopt_on

	line	26
	
l1098:	
;lcd_functions.h: 26: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	27
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 122 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_keypadData
;;		i1_serialSend
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	122
global __ptext13
__ptext13:	;psect for function _ISR
psect	text13
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	122
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
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
psect	text13
	line	124
	
i1l1352:	
;main.c: 124: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	125
;main.c: 125: if (INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u94_21
	goto	u94_20
u94_21:
	goto	i1l1364
u94_20:
	line	127
	
i1l1354:	
;main.c: 126: {
;main.c: 127: keyData = keypadData();
	fcall	_keypadData
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_keyData)
	line	128
	
i1l1356:	
;main.c: 128: if (keyData != lastKeyData)
	movf	(_keyData),w
	xorwf	(_lastKeyData),w
	skipnz
	goto	u95_21
	goto	u95_20
u95_21:
	goto	i1l1362
u95_20:
	line	130
	
i1l1358:	
;main.c: 129: {
;main.c: 130: serialSend(keyData);
	movf	(_keyData),w
	fcall	i1_serialSend
	line	131
	
i1l1360:	
;main.c: 131: lastKeyData = keyData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keyData),w
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_lastKeyData)
	goto	i1l1362
	line	132
	
i1l121:	
	line	133
	
i1l1362:	
;main.c: 132: }
;main.c: 133: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	goto	i1l1364
	line	134
	
i1l120:	
	line	135
	
i1l1364:	
;main.c: 134: }
;main.c: 135: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	136
	
i1l122:	
	movf	(??_ISR+4),w
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
	global	i1_serialSend

;; *************** function i1_serialSend *****************
;; Defined at:
;;		line 29 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
;; Parameters:    Size  Location     Type
;;  dataOUT         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dataOUT         1    3[COMMON] unsigned char 
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
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
	line	29
global __ptext14
__ptext14:	;psect for function i1_serialSend
psect	text14
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\usart_functions.h"
	line	29
	global	__size_ofi1_serialSend
	__size_ofi1_serialSend	equ	__end_ofi1_serialSend-i1_serialSend
	
i1_serialSend:	
;incstack = 0
	opt	stack 3
; Regs used in i1_serialSend: [wreg]
;i1serialSend@dataOUT stored from wreg
	movwf	(i1serialSend@dataOUT)
	line	31
	
i1l1314:	
;usart_functions.h: 31: while (!TXIF)
	goto	i1l69
	
i1l70:	
	line	32
;usart_functions.h: 32: ;
	
i1l69:	
	line	31
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u93_21
	goto	u93_20
u93_21:
	goto	i1l69
u93_20:
	goto	i1l1316
	
i1l71:	
	line	33
	
i1l1316:	
;usart_functions.h: 33: TXREG = dataOUT;
	movf	(i1serialSend@dataOUT),w
	movwf	(25)	;volatile
	line	34
;usart_functions.h: 34: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??i1_serialSend+0)+0+2),f
movlw	69
movwf	((??i1_serialSend+0)+0+1),f
	movlw	169
movwf	((??i1_serialSend+0)+0),f
u103_27:
	decfsz	((??i1_serialSend+0)+0),f
	goto	u103_27
	decfsz	((??i1_serialSend+0)+0+1),f
	goto	u103_27
	decfsz	((??i1_serialSend+0)+0+2),f
	goto	u103_27
	nop2
opt asmopt_on

	line	35
	
i1l72:	
	return
	opt stack 0
GLOBAL	__end_ofi1_serialSend
	__end_ofi1_serialSend:
	signat	i1_serialSend,88
	global	_keypadData

;; *************** function _keypadData *****************
;; Defined at:
;;		line 56 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  buffer          1    3[COMMON] unsigned char 
;;  dataIN          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	56
global __ptext15
__ptext15:	;psect for function _keypadData
psect	text15
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\trainer-module\mplab\practice3\transmit\main.c"
	line	56
	global	__size_of_keypadData
	__size_of_keypadData	equ	__end_of_keypadData-_keypadData
	
_keypadData:	
;incstack = 0
	opt	stack 3
; Regs used in _keypadData: [wreg-fsr0h+status,2+status,0]
	line	58
	
i1l1266:	
;main.c: 58: unsigned char buffer = 0x00;
	clrf	(keypadData@buffer)
	line	59
;main.c: 59: unsigned char dataIN = 0x00;
	clrf	(keypadData@dataIN)
	line	61
	
i1l1268:	
;main.c: 61: if(RB1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u91_21
	goto	u91_20
u91_21:
	goto	i1l1310
u91_20:
	line	63
	
i1l1270:	
;main.c: 62: {
;main.c: 63: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_keypadData+0)+0+1),f
	movlw	251
movwf	((??_keypadData+0)+0),f
u104_27:
	decfsz	((??_keypadData+0)+0),f
	goto	u104_27
	decfsz	((??_keypadData+0)+0+1),f
	goto	u104_27
	nop2
opt asmopt_on

	line	64
	
i1l1272:	
;main.c: 64: dataIN = (PORTB & 0xF0) >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_keypadData+0)+0
	movlw	04h
u92_25:
	clrc
	rrf	(??_keypadData+0)+0,f
	addlw	-1
	skipz
	goto	u92_25
	movf	0+(??_keypadData+0)+0,w
	andlw	0Fh
	movwf	(??_keypadData+1)+0
	movf	(??_keypadData+1)+0,w
	movwf	(keypadData@dataIN)
	line	65
;main.c: 65: switch (dataIN)
	goto	i1l1308
	line	67
;main.c: 66: {
;main.c: 67: case 0x00:
	
i1l99:	
	line	68
	
i1l1274:	
;main.c: 68: buffer = '7';
	movlw	(037h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	69
;main.c: 69: break;
	goto	i1l1310
	line	70
;main.c: 70: case 0x01:
	
i1l101:	
	line	71
	
i1l1276:	
;main.c: 71: buffer = '8';
	movlw	(038h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	72
;main.c: 72: break;
	goto	i1l1310
	line	73
;main.c: 73: case 0x02:
	
i1l102:	
	line	74
	
i1l1278:	
;main.c: 74: buffer = '9';
	movlw	(039h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	75
;main.c: 75: break;
	goto	i1l1310
	line	76
;main.c: 76: case 0x03:
	
i1l103:	
	line	77
	
i1l1280:	
;main.c: 77: buffer = '/';
	movlw	(02Fh)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	78
;main.c: 78: break;
	goto	i1l1310
	line	79
;main.c: 79: case 0x04:
	
i1l104:	
	line	80
	
i1l1282:	
;main.c: 80: buffer = '4';
	movlw	(034h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	81
;main.c: 81: break;
	goto	i1l1310
	line	82
;main.c: 82: case 0x05:
	
i1l105:	
	line	83
	
i1l1284:	
;main.c: 83: buffer = '5';
	movlw	(035h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	84
;main.c: 84: break;
	goto	i1l1310
	line	85
;main.c: 85: case 0x06:
	
i1l106:	
	line	86
	
i1l1286:	
;main.c: 86: buffer = '6';
	movlw	(036h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	87
;main.c: 87: break;
	goto	i1l1310
	line	88
;main.c: 88: case 0x07:
	
i1l107:	
	line	89
	
i1l1288:	
;main.c: 89: buffer = '*';
	movlw	(02Ah)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	90
;main.c: 90: break;
	goto	i1l1310
	line	91
;main.c: 91: case 0x08:
	
i1l108:	
	line	92
	
i1l1290:	
;main.c: 92: buffer = '1';
	movlw	(031h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	93
;main.c: 93: break;
	goto	i1l1310
	line	94
;main.c: 94: case 0x09:
	
i1l109:	
	line	95
	
i1l1292:	
;main.c: 95: buffer = '2';
	movlw	(032h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	96
;main.c: 96: break;
	goto	i1l1310
	line	97
;main.c: 97: case 0x0A:
	
i1l110:	
	line	98
	
i1l1294:	
;main.c: 98: buffer = '3';
	movlw	(033h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	99
;main.c: 99: break;
	goto	i1l1310
	line	100
;main.c: 100: case 0x0B:
	
i1l111:	
	line	101
	
i1l1296:	
;main.c: 101: buffer = '-';
	movlw	(02Dh)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	102
;main.c: 102: break;
	goto	i1l1310
	line	103
;main.c: 103: case 0x0C:
	
i1l112:	
	line	104
	
i1l1298:	
;main.c: 104: buffer = 'O';
	movlw	(04Fh)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	105
;main.c: 105: break;
	goto	i1l1310
	line	106
;main.c: 106: case 0x0D:
	
i1l113:	
	line	107
	
i1l1300:	
;main.c: 107: buffer = '0';
	movlw	(030h)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	108
;main.c: 108: break;
	goto	i1l1310
	line	109
;main.c: 109: case 0x0E:
	
i1l114:	
	line	110
	
i1l1302:	
;main.c: 110: buffer = '=';
	movlw	(03Dh)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	111
;main.c: 111: break;
	goto	i1l1310
	line	112
;main.c: 112: case 0x0F:
	
i1l115:	
	line	113
	
i1l1304:	
;main.c: 113: buffer = '+';
	movlw	(02Bh)
	movwf	(??_keypadData+0)+0
	movf	(??_keypadData+0)+0,w
	movwf	(keypadData@buffer)
	line	114
;main.c: 114: break;
	goto	i1l1310
	line	115
;main.c: 115: default:
	
i1l116:	
	line	116
;main.c: 116: break;
	goto	i1l1310
	line	117
	
i1l1306:	
;main.c: 117: }
	goto	i1l1310
	line	65
	
i1l98:	
	
i1l1308:	
	movf	(keypadData@dataIN),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           56     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l1274
	xorlw	1^0	; case 1
	skipnz
	goto	i1l1276
	xorlw	2^1	; case 2
	skipnz
	goto	i1l1278
	xorlw	3^2	; case 3
	skipnz
	goto	i1l1280
	xorlw	4^3	; case 4
	skipnz
	goto	i1l1282
	xorlw	5^4	; case 5
	skipnz
	goto	i1l1284
	xorlw	6^5	; case 6
	skipnz
	goto	i1l1286
	xorlw	7^6	; case 7
	skipnz
	goto	i1l1288
	xorlw	8^7	; case 8
	skipnz
	goto	i1l1290
	xorlw	9^8	; case 9
	skipnz
	goto	i1l1292
	xorlw	10^9	; case 10
	skipnz
	goto	i1l1294
	xorlw	11^10	; case 11
	skipnz
	goto	i1l1296
	xorlw	12^11	; case 12
	skipnz
	goto	i1l1298
	xorlw	13^12	; case 13
	skipnz
	goto	i1l1300
	xorlw	14^13	; case 14
	skipnz
	goto	i1l1302
	xorlw	15^14	; case 15
	skipnz
	goto	i1l1304
	goto	i1l1310
	opt asmopt_on

	line	117
	
i1l100:	
	goto	i1l1310
	line	118
	
i1l97:	
	line	119
	
i1l1310:	
;main.c: 118: }
;main.c: 119: return buffer;
	movf	(keypadData@buffer),w
	goto	i1l117
	
i1l1312:	
	line	120
	
i1l117:	
	return
	opt stack 0
GLOBAL	__end_of_keypadData
	__end_of_keypadData:
	signat	_keypadData,89
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
