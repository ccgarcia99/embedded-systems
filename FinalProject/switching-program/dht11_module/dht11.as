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
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_initADC
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCTRL
	FNCALL	_main,_printToLCD
	FNCALL	_main,_readADC
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_printToLCD,_dataCTRL
	FNCALL	_printToLCD,_instCTRL
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
	global	_adcValue
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GO_DONE
_GO_DONE	set	0xFA
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
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	48	;'0'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
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
	file	"dht11.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_adcValue:
       ds      2

	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initADC:	; 0 bytes @ 0x0
??_initADC:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_instCTRL:	; 0 bytes @ 0x0
??_instCTRL:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_dataCTRL:	; 0 bytes @ 0x0
??_dataCTRL:	; 0 bytes @ 0x0
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	1
	global	instCTRL@CMD
instCTRL@CMD:	; 1 bytes @ 0x1
	global	dataCTRL@DAT
dataCTRL@DAT:	; 1 bytes @ 0x1
	ds	1
??_initLCD:	; 0 bytes @ 0x2
?_printToLCD:	; 0 bytes @ 0x2
??_readADC:	; 0 bytes @ 0x2
	global	printToLCD@str
printToLCD@str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
??_printToLCD:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
	global	readADC@channel
readADC@channel:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
??___lwdiv:	; 0 bytes @ 0xA
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
??___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x6
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x6
	ds	3
??_sprintf:	; 0 bytes @ 0x9
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0xD
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xE
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xF
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x13
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x14
	ds	1
??_main:	; 0 bytes @ 0x15
	ds	2
	global	main@buffer
main@buffer:	; 20 bytes @ 0x17
	ds	20
	global	main@adcValue
main@adcValue:	; 2 bytes @ 0x2B
	ds	2
;!
;!Data Sizes:
;!    Strings     43
;!    Constant    10
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     45      47
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 17
;!		 -> STR_3(CODE[17]), STR_2(CODE[17]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 20
;!		 -> main@buffer(BANK0[20]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S102$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    printToLCD@str	PTR const unsigned char  size(2) Largest target is 20
;!		 -> main@buffer(BANK0[20]), STR_1(CODE[9]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___lwdiv
;!    _sprintf->___lwdiv
;!    ___lwmod->___lwdiv
;!    ___lwdiv->___wmul
;!    _printToLCD->_dataCTRL
;!    _printToLCD->_instCTRL
;!    _initLCD->_instCTRL
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                24    24      0    2329
;!                                             21 BANK0     24    24      0
;!                            ___lwdiv
;!                             ___wmul
;!                            _initADC
;!                            _initLCD
;!                           _instCTRL
;!                         _printToLCD
;!                            _readADC
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             15    12      3    1276
;!                                              6 BANK0     15    12      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                              0 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     374
;!                                              6 COMMON     8     4      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _readADC                                              5     3      2      22
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _printToLCD                                           2     0      2     248
;!                                              2 COMMON     2     0      2
;!                           _dataCTRL
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (2) _dataCTRL                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;!                           _instCTRL
;! ---------------------------------------------------------------------------------
;! (2) _instCTRL                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _initADC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     198
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!     ___wmul (ARG)
;!   ___wmul
;!   _initADC
;!   _initLCD
;!     _instCTRL
;!   _instCTRL
;!   _printToLCD
;!     _dataCTRL
;!     _instCTRL
;!   _readADC
;!   _sprintf
;!     ___lwdiv
;!       ___wmul (ARG)
;!     ___lwmod
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
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
;!ABS                  0      0      3D       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     2D      2F       5       58.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      3D      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adcValue        2   43[BANK0 ] unsigned int 
;;  buffer         20   23[BANK0 ] unsigned char [20]
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
;;      Locals:         0      22       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      24       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___wmul
;;		_initADC
;;		_initLCD
;;		_instCTRL
;;		_printToLCD
;;		_readADC
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l933:	
;main.c: 38: char buffer[20];
;main.c: 39: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	40
;main.c: 40: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	41
;main.c: 41: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	42
	
l935:	
;main.c: 42: initADC();
	fcall	_initADC
	line	43
	
l937:	
;main.c: 43: initLCD();
	fcall	_initLCD
	line	44
	
l939:	
;main.c: 44: instCTRL(0x80);
	movlw	(080h)
	fcall	_instCTRL
	line	45
	
l941:	
;main.c: 45: printToLCD("ADC Test");
	movlw	low((STR_1)-__stringbase)
	movwf	(printToLCD@str)
	movlw	80h
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	goto	l943
	line	47
;main.c: 47: while (1)
	
l45:	
	line	49
	
l943:	
;main.c: 48: {
;main.c: 49: uint16_t adcValue = readADC(0);
	movlw	(0)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@adcValue+1)
	addwf	(main@adcValue+1)
	movf	(0+(?_readADC)),w
	clrf	(main@adcValue)
	addwf	(main@adcValue)

	line	50
	
l945:	
;main.c: 50: sprintf(buffer, "ADC0: %d        ", adcValue);
	movlw	((STR_2)-__stringbase)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(main@adcValue+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(main@adcValue),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	51
	
l947:	
;main.c: 51: instCTRL(0xC0);
	movlw	(0C0h)
	fcall	_instCTRL
	line	52
	
l949:	
;main.c: 52: printToLCD(buffer);
	movlw	(main@buffer&0ffh)
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	53
	
l951:	
;main.c: 53: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u577:
	decfsz	((??_main+0)+0),f
	goto	u577
	decfsz	((??_main+0)+0+1),f
	goto	u577
	nop
opt asmopt_on

	line	55
	
l953:	
;main.c: 55: adcValue = readADC(1);
	movlw	(01h)
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@adcValue+1)
	addwf	(main@adcValue+1)
	movf	(0+(?_readADC)),w
	clrf	(main@adcValue)
	addwf	(main@adcValue)

	line	56
	
l955:	
;main.c: 56: adcValue = (adcValue * 500) / 1023;
	movlw	low(03FFh)
	movwf	(___lwdiv@divisor)
	movlw	high(03FFh)
	movwf	((___lwdiv@divisor))+1
	movf	(main@adcValue+1),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(main@adcValue),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(01F4h)
	movwf	(___wmul@multiplicand)
	movlw	high(01F4h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@adcValue+1)
	addwf	(main@adcValue+1)
	movf	(0+(?___lwdiv)),w
	clrf	(main@adcValue)
	addwf	(main@adcValue)

	line	57
	
l957:	
;main.c: 57: sprintf(buffer, "ADC1: %d        ", adcValue);
	movlw	((STR_3)-__stringbase)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(main@adcValue+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(main@adcValue),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	58
	
l959:	
;main.c: 58: instCTRL(0x94);
	movlw	(094h)
	fcall	_instCTRL
	line	59
	
l961:	
;main.c: 59: printToLCD(buffer);
	movlw	(main@buffer&0ffh)
	movwf	(printToLCD@str)
	movlw	(0x0)
	movwf	(printToLCD@str+1)
	fcall	_printToLCD
	line	60
	
l963:	
;main.c: 60: _delay((unsigned long)((50)*(4000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u587:
	decfsz	((??_main+0)+0),f
	goto	u587
	decfsz	((??_main+0)+0+1),f
	goto	u587
	nop
opt asmopt_on

	goto	l943
	line	61
	
l46:	
	line	47
	goto	l943
	
l47:	
	line	62
	
l48:	
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
;;		 -> main@buffer(20), 
;;  f               1    6[BANK0 ] PTR const unsigned char 
;;		 -> STR_3(17), STR_2(17), 
;; Auto vars:     Size  Location     Type
;;  sp              1   19[BANK0 ] PTR unsigned char 
;;		 -> main@buffer(20), 
;;  _val            4   15[BANK0 ] struct .
;;  c               1   20[BANK0 ] char 
;;  prec            1   14[BANK0 ] char 
;;  flag            1   13[BANK0 ] unsigned char 
;;  ap              1   12[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
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
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l863:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
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
	goto	l915
	
l82:	
	line	547
	
l865:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l871
u450:
	line	550
	
l867:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l869:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l915
	line	552
	
l83:	
	line	557
	
l871:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l875
	line	646
;doprnt.c: 646: case 0:
	
l85:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l917
	line	706
;doprnt.c: 706: case 'd':
	
l87:	
	goto	l877
	line	707
	
l88:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l877
	line	811
;doprnt.c: 811: default:
	
l90:	
	line	822
;doprnt.c: 822: continue;
	goto	l915
	line	831
	
l873:	
;doprnt.c: 831: }
	goto	l877
	line	644
	
l84:	
	
l875:	
	movlw	01h
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
	goto	l917
	xorlw	100^0	; case 100
	skipnz
	goto	l877
	xorlw	105^100	; case 105
	skipnz
	goto	l877
	goto	l915
	opt asmopt_on

	line	831
	
l89:	
	line	1268
	
l877:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l879:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l881:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u461
	goto	u460
u461:
	goto	l887
u460:
	line	1271
	
l883:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l885:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l887
	line	1273
	
l91:	
	line	1314
	
l887:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u471
	goto	u470
u471:
	goto	l891
u470:
	goto	l899
	
l889:	
	goto	l899
	line	1315
	
l92:	
	
l891:	
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
	goto	u485
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u485:
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l895
u480:
	goto	l899
	line	1316
	
l893:	
;doprnt.c: 1316: break;
	goto	l899
	
l94:	
	line	1314
	
l895:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l897:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u491
	goto	u490
u491:
	goto	l891
u490:
	goto	l899
	
l93:	
	line	1447
	
l899:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u501
	goto	u500
u501:
	goto	l905
u500:
	line	1448
	
l901:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l903:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l905
	
l95:	
	line	1481
	
l905:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l913
	
l97:	
	line	1498
	
l907:	
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
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l909:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l911:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l913
	line	1534
	
l96:	
	line	1483
	
l913:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u511
	goto	u510
u511:
	goto	l907
u510:
	goto	l915
	
l98:	
	goto	l915
	line	1542
	
l81:	
	line	545
	
l915:	
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
	goto	u521
	goto	u520
u521:
	goto	l865
u520:
	goto	l917
	
l99:	
	goto	l917
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l86:	
	line	1547
	
l917:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l100
	line	1549
	
l919:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext2
__ptext2:	;psect for function ___lwmod
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l807:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u361
	goto	u360
u361:
	goto	l825
u360:
	line	14
	
l809:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l815
	
l525:	
	line	16
	
l811:	
	movlw	01h
	
u375:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u375
	line	17
	
l813:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l815
	line	18
	
l524:	
	line	15
	
l815:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u381
	goto	u380
u381:
	goto	l811
u380:
	goto	l817
	
l526:	
	goto	l817
	line	19
	
l527:	
	line	20
	
l817:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u395
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u395:
	skipc
	goto	u391
	goto	u390
u391:
	goto	l821
u390:
	line	21
	
l819:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l821
	
l528:	
	line	22
	
l821:	
	movlw	01h
	
u405:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u405
	line	23
	
l823:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l817
u410:
	goto	l825
	
l529:	
	goto	l825
	line	24
	
l523:	
	line	25
	
l825:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l530
	
l827:	
	line	26
	
l530:	
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
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[COMMON] unsigned int 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l781:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l783:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u291
	goto	u290
u291:
	goto	l803
u290:
	line	16
	
l785:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l791
	
l515:	
	line	18
	
l787:	
	movlw	01h
	
u305:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u305
	line	19
	
l789:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l791
	line	20
	
l514:	
	line	17
	
l791:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u311
	goto	u310
u311:
	goto	l787
u310:
	goto	l793
	
l516:	
	goto	l793
	line	21
	
l517:	
	line	22
	
l793:	
	movlw	01h
	
u325:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u325
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u335
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u335:
	skipc
	goto	u331
	goto	u330
u331:
	goto	l799
u330:
	line	24
	
l795:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l797:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l799
	line	26
	
l518:	
	line	27
	
l799:	
	movlw	01h
	
u345:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u345
	line	28
	
l801:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u351
	goto	u350
u351:
	goto	l793
u350:
	goto	l803
	
l519:	
	goto	l803
	line	29
	
l513:	
	line	30
	
l803:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l520
	
l805:	
	line	31
	
l520:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 71 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	71
global __ptext4
__ptext4:	;psect for function _readADC
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	71
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	stack 7
; Regs used in _readADC: [wreg+status,2+status,0]
;readADC@channel stored from wreg
	movwf	(readADC@channel)
	line	73
	
l851:	
;main.c: 73: ADCON0 &= 0xC3;
	movlw	(0C3h)
	movwf	(??_readADC+0)+0
	movf	(??_readADC+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	74
;main.c: 74: ADCON0 |= (channel << 3);
	movf	(readADC@channel),w
	movwf	(??_readADC+0)+0
	movlw	(03h)-1
u435:
	clrc
	rlf	(??_readADC+0)+0,f
	addlw	-1
	skipz
	goto	u435
	clrc
	rlf	(??_readADC+0)+0,w
	movwf	(??_readADC+1)+0
	movf	(??_readADC+1)+0,w
	iorwf	(31),f	;volatile
	line	75
	
l853:	
;main.c: 75: ADCON0 |= 0x01;
	bsf	(31)+(0/8),(0)&7	;volatile
	line	76
	
l855:	
;main.c: 76: _delay((unsigned long)((20)*(4000000/4000000.0)));
	opt asmopt_off
movlw	6
movwf	(??_readADC+0)+0,f
u597:
decfsz	(??_readADC+0)+0,f
	goto	u597
	nop
opt asmopt_on

	line	77
	
l857:	
;main.c: 77: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	78
;main.c: 78: while (GO_DONE)
	goto	l54
	
l55:	
	line	79
;main.c: 79: ;
	
l54:	
	line	78
	btfsc	(250/8),(250)&7	;volatile
	goto	u441
	goto	u440
u441:
	goto	l54
u440:
	goto	l859
	
l56:	
	line	80
	
l859:	
;main.c: 80: return ((uint16_t)ADRESH << 8) | ADRESL;
	movf	(30),w	;volatile
	clrf	(?_readADC+1)
	addwf	(?_readADC+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	clrf	(?_readADC)
	addwf	(?_readADC)

	goto	l57
	
l861:	
	line	81
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,4218
	global	_printToLCD

;; *************** function _printToLCD *****************
;; Defined at:
;;		line 113 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;  str             2    2[COMMON] PTR const unsigned char 
;;		 -> main@buffer(20), STR_1(9), 
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
;;		_instCTRL
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	113
global __ptext5
__ptext5:	;psect for function _printToLCD
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	113
	global	__size_of_printToLCD
	__size_of_printToLCD	equ	__end_of_printToLCD-_printToLCD
	
_printToLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _printToLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	115
	
l843:	
;main.c: 115: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	116
;main.c: 116: while (*str)
	goto	l849
	
l70:	
	line	118
	
l845:	
;main.c: 117: {
;main.c: 118: dataCTRL(*str);
	movf	(printToLCD@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_dataCTRL
	line	119
	
l847:	
;main.c: 119: str++;
	movlw	01h
	addwf	(printToLCD@str),f
	skipnc
	incf	(printToLCD@str+1),f
	goto	l849
	line	120
	
l69:	
	line	116
	
l849:	
	movf	(printToLCD@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(printToLCD@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u421
	goto	u420
u421:
	goto	l845
u420:
	goto	l72
	
l71:	
	line	121
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_printToLCD
	__end_of_printToLCD:
	signat	_printToLCD,4216
	global	_dataCTRL

;; *************** function _dataCTRL *****************
;; Defined at:
;;		line 93 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	93
global __ptext6
__ptext6:	;psect for function _dataCTRL
psect	text6
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	93
	global	__size_of_dataCTRL
	__size_of_dataCTRL	equ	__end_of_dataCTRL-_dataCTRL
	
_dataCTRL:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCTRL: [wreg]
;dataCTRL@DAT stored from wreg
	movwf	(dataCTRL@DAT)
	line	95
	
l771:	
;main.c: 95: PORTD = DAT;
	movf	(dataCTRL@DAT),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	96
	
l773:	
;main.c: 96: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	97
	
l775:	
;main.c: 97: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	98
	
l777:	
;main.c: 98: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	99
;main.c: 99: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_dataCTRL+0)+0,f
u607:
	nop
decfsz	(??_dataCTRL+0)+0,f
	goto	u607
	nop2	;nop
	nop
opt asmopt_on

	line	100
	
l779:	
;main.c: 100: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	101
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_dataCTRL
	__end_of_dataCTRL:
	signat	_dataCTRL,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 103 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
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
psect	text7,local,class=CODE,delta=2,merge=1
	line	103
global __ptext7
__ptext7:	;psect for function _initLCD
psect	text7
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	103
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	105
	
l831:	
;main.c: 105: instCTRL(0x38);
	movlw	(038h)
	fcall	_instCTRL
	line	106
	
l833:	
;main.c: 106: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_initLCD+0)+0,f
u617:
decfsz	(??_initLCD+0)+0,f
	goto	u617
	nop
opt asmopt_on

	line	107
	
l835:	
;main.c: 107: instCTRL(0x0C);
	movlw	(0Ch)
	fcall	_instCTRL
	line	108
	
l837:	
;main.c: 108: instCTRL(0x01);
	movlw	(01h)
	fcall	_instCTRL
	line	109
	
l839:	
;main.c: 109: instCTRL(0x06);
	movlw	(06h)
	fcall	_instCTRL
	line	110
	
l841:	
;main.c: 110: instCTRL(0x0F);
	movlw	(0Fh)
	fcall	_instCTRL
	line	111
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCTRL

;; *************** function _instCTRL *****************
;; Defined at:
;;		line 83 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
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
;;		_main
;;		_initLCD
;;		_printToLCD
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	83
global __ptext8
__ptext8:	;psect for function _instCTRL
psect	text8
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	83
	global	__size_of_instCTRL
	__size_of_instCTRL	equ	__end_of_instCTRL-_instCTRL
	
_instCTRL:	
;incstack = 0
	opt	stack 6
; Regs used in _instCTRL: [wreg]
;instCTRL@CMD stored from wreg
	movwf	(instCTRL@CMD)
	line	85
	
l761:	
;main.c: 85: PORTD = CMD;
	movf	(instCTRL@CMD),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	86
	
l763:	
;main.c: 86: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	87
	
l765:	
;main.c: 87: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	88
	
l767:	
;main.c: 88: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	89
;main.c: 89: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_instCTRL+0)+0,f
u627:
	nop
decfsz	(??_instCTRL+0)+0,f
	goto	u627
	nop2	;nop
	nop
opt asmopt_on

	line	90
	
l769:	
;main.c: 90: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	91
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_instCTRL
	__end_of_instCTRL:
	signat	_instCTRL,4216
	global	_initADC

;; *************** function _initADC *****************
;; Defined at:
;;		line 64 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	64
global __ptext9
__ptext9:	;psect for function _initADC
psect	text9
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	64
	global	__size_of_initADC
	__size_of_initADC	equ	__end_of_initADC-_initADC
	
_initADC:	
;incstack = 0
	opt	stack 7
; Regs used in _initADC: [wreg]
	line	66
	
l829:	
;main.c: 66: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	67
;main.c: 67: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	68
;main.c: 68: ADCON0 = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	69
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_initADC
	__end_of_initADC:
	signat	_initADC,88
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
;;		_main
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
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l921:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l923
	line	44
	
l183:	
	line	45
	
l923:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u531
	goto	u530
u531:
	goto	l184
u530:
	line	46
	
l925:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l184:	
	line	47
	movlw	01h
	
u545:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u545
	line	48
	
l927:	
	movlw	01h
	
u555:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u555
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u561
	goto	u560
u561:
	goto	l923
u560:
	goto	l929
	
l185:	
	line	52
	
l929:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l186
	
l931:	
	line	53
	
l186:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
