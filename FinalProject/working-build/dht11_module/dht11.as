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
	FNCALL	_main,_checkResponse
	FNCALL	_main,_initUART
	FNCALL	_main,_readData
	FNCALL	_main,_sendData
	FNCALL	_main,_startSignal
	FNCALL	_sendData,_sendByte
	FNROOT	_main
	global	_RH_byte
	global	_T_byte1
	global	_checkbit
	global	_CheckSum
	global	_RH_byte2
	global	_T_byte2
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_TXREG
_TXREG	set	0x19
	global	_CREN
_CREN	set	0xC4
	global	_RB2
_RB2	set	0x32
	global	_SPEN
_SPEN	set	0xC7
	global	_TXIF
_TXIF	set	0x64
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRISB2
_TRISB2	set	0x432
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TRISC7
_TRISC7	set	0x43F
	global	_TXEN
_TXEN	set	0x4C5
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _checkResponse
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
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_RH_byte:
       ds      1

_T_byte1:
       ds      1

_checkbit:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_CheckSum:
       ds      1

_RH_byte2:
       ds      1

_T_byte2:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initUART:	; 0 bytes @ 0x0
??_initUART:	; 0 bytes @ 0x0
?_startSignal:	; 0 bytes @ 0x0
??_startSignal:	; 0 bytes @ 0x0
??_readData:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_sendByte:	; 0 bytes @ 0x0
??_sendByte:	; 0 bytes @ 0x0
?_readData:	; 1 bytes @ 0x0
	global	?_checkResponse
?_checkResponse:	; 2 bytes @ 0x0
	global	sendByte@data
sendByte@data:	; 1 bytes @ 0x0
	ds	1
?_sendData:	; 0 bytes @ 0x1
	global	sendData@humidity
sendData@humidity:	; 1 bytes @ 0x1
	ds	1
??_checkResponse:	; 0 bytes @ 0x2
??_sendData:	; 0 bytes @ 0x2
	global	readData@index
readData@index:	; 1 bytes @ 0x2
	global	sendData@temp
sendData@temp:	; 1 bytes @ 0x2
	ds	1
	global	readData@_data
readData@_data:	; 1 bytes @ 0x3
	ds	1
	global	readData@bitcount
readData@bitcount:	; 1 bytes @ 0x4
	ds	1
??_main:	; 0 bytes @ 0x5
	ds	6
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     11      14
;!    BANK0            80      0       3
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_readData
;!    _sendData->_sendByte
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0     258
;!                                              5 COMMON     6     6      0
;!                      _checkResponse
;!                           _initUART
;!                           _readData
;!                           _sendData
;!                        _startSignal
;! ---------------------------------------------------------------------------------
;! (1) _startSignal                                          2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _sendData                                             2     1      1     119
;!                                              1 COMMON     2     1      1
;!                           _sendByte
;! ---------------------------------------------------------------------------------
;! (2) _sendByte                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _readData                                             5     5      0     139
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _initUART                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkResponse                                        3     1      2       0
;!                                              0 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkResponse
;!   _initUART
;!   _readData
;!   _sendData
;!     _sendByte
;!   _startSignal
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      B       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      11       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       3       5        3.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      11      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_checkResponse
;;		_initUART
;;		_readData
;;		_sendData
;;		_startSignal
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
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l746:	
;main.c: 38: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	39
	
l748:	
;main.c: 39: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	40
	
l750:	
;main.c: 40: TRISB2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	41
	
l752:	
;main.c: 41: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	42
	
l754:	
;main.c: 42: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	43
	
l756:	
;main.c: 43: initUART();
	fcall	_initUART
	goto	l758
	line	45
;main.c: 45: while (1)
	
l59:	
	line	47
	
l758:	
;main.c: 46: {
;main.c: 47: _delay((unsigned long)((800)*(4000000/4000.0)));
	opt asmopt_off
movlw  5
movwf	((??_main+0)+0+2),f
movlw	15
movwf	((??_main+0)+0+1),f
	movlw	244
movwf	((??_main+0)+0),f
u257:
	decfsz	((??_main+0)+0),f
	goto	u257
	decfsz	((??_main+0)+0+1),f
	goto	u257
	decfsz	((??_main+0)+0+2),f
	goto	u257
opt asmopt_on

	line	48
	
l760:	
;main.c: 48: startSignal();
	fcall	_startSignal
	line	49
	
l762:	
;main.c: 49: if (checkResponse())
	fcall	_checkResponse
	movf	(1+(?_checkResponse)),w
	iorwf	(0+(?_checkResponse)),w
	skipnz
	goto	u231
	goto	u230
u231:
	goto	l770
u230:
	line	51
	
l764:	
;main.c: 50: {
;main.c: 51: RH_byte = readData();
	fcall	_readData
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_RH_byte)
	line	52
;main.c: 52: RH_byte2 = readData();
	fcall	_readData
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RH_byte2)
	line	53
;main.c: 53: T_byte1 = readData();
	fcall	_readData
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_T_byte1)
	line	54
;main.c: 54: T_byte2 = readData();
	fcall	_readData
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_T_byte2)
	line	55
;main.c: 55: CheckSum = readData();
	fcall	_readData
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_CheckSum)
	line	56
	
l766:	
;main.c: 56: if (CheckSum == (RH_byte + RH_byte2 + T_byte1 + T_byte2))
	movf	(_RH_byte),w
	addwf	(_RH_byte2),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	rlf	1+(??_main+0)+0,f
	
	movf	(_T_byte1),w
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	(_T_byte2),w
	addwf	0+(??_main+2)+0,w
	movwf	(??_main+4)+0
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+2)+0,w
	movwf	1+(??_main+4)+0
	movf	(_CheckSum),w
	xorwf	0+(??_main+4)+0,w
	iorwf	1+(??_main+4)+0,w
	skipz
	goto	u241
	goto	u240
u241:
	goto	l770
u240:
	line	59
	
l768:	
;main.c: 57: {
;main.c: 59: sendData(T_byte1, RH_byte);
	movf	(_RH_byte),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sendData@humidity)
	movf	(_T_byte1),w
	fcall	_sendData
	goto	l770
	line	60
	
l61:	
	goto	l770
	line	61
	
l60:	
	line	62
	
l770:	
;main.c: 60: }
;main.c: 61: }
;main.c: 62: _delay((unsigned long)((2000)*(4000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_main+0)+0+2),f
movlw	38
movwf	((??_main+0)+0+1),f
	movlw	102
movwf	((??_main+0)+0),f
u267:
	decfsz	((??_main+0)+0),f
	goto	u267
	decfsz	((??_main+0)+0+1),f
	goto	u267
	decfsz	((??_main+0)+0+2),f
	goto	u267
	nop2
opt asmopt_on

	goto	l758
	line	63
	
l62:	
	line	45
	goto	l758
	
l63:	
	line	64
	
l64:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_startSignal

;; *************** function _startSignal *****************
;; Defined at:
;;		line 66 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	66
global __ptext1
__ptext1:	;psect for function _startSignal
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	66
	global	__size_of_startSignal
	__size_of_startSignal	equ	__end_of_startSignal-_startSignal
	
_startSignal:	
;incstack = 0
	opt	stack 7
; Regs used in _startSignal: [wreg]
	line	68
	
l682:	
;main.c: 68: TRISB2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	69
;main.c: 69: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	70
	
l684:	
;main.c: 70: _delay((unsigned long)((25)*(4000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_startSignal+0)+0+1),f
	movlw	118
movwf	((??_startSignal+0)+0),f
u277:
	decfsz	((??_startSignal+0)+0),f
	goto	u277
	decfsz	((??_startSignal+0)+0+1),f
	goto	u277
	nop
opt asmopt_on

	line	71
	
l686:	
;main.c: 71: RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	line	72
;main.c: 72: _delay((unsigned long)((30)*(4000000/4000000.0)));
	opt asmopt_off
movlw	9
movwf	(??_startSignal+0)+0,f
u287:
decfsz	(??_startSignal+0)+0,f
	goto	u287
	nop2	;nop
opt asmopt_on

	line	73
	
l688:	
;main.c: 73: TRISB2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	74
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_startSignal
	__end_of_startSignal:
	signat	_startSignal,88
	global	_sendData

;; *************** function _sendData *****************
;; Defined at:
;;		line 145 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;  temp            1    wreg     unsigned char 
;;  humidity        1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  temp            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sendByte
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	145
global __ptext2
__ptext2:	;psect for function _sendData
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	145
	global	__size_of_sendData
	__size_of_sendData	equ	__end_of_sendData-_sendData
	
_sendData:	
;incstack = 0
	opt	stack 6
; Regs used in _sendData: [wreg+status,2+status,0+pclath+cstack]
;sendData@temp stored from wreg
	movwf	(sendData@temp)
	line	147
	
l744:	
;main.c: 147: sendByte(humidity);
	movf	(sendData@humidity),w
	fcall	_sendByte
	line	148
;main.c: 148: sendByte(temp);
	movf	(sendData@temp),w
	fcall	_sendByte
	line	149
	
l99:	
	return
	opt stack 0
GLOBAL	__end_of_sendData
	__end_of_sendData:
	signat	_sendData,8312
	global	_sendByte

;; *************** function _sendByte *****************
;; Defined at:
;;		line 138 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sendData
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	138
global __ptext3
__ptext3:	;psect for function _sendByte
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	138
	global	__size_of_sendByte
	__size_of_sendByte	equ	__end_of_sendByte-_sendByte
	
_sendByte:	
;incstack = 0
	opt	stack 6
; Regs used in _sendByte: [wreg]
;sendByte@data stored from wreg
	movwf	(sendByte@data)
	line	140
	
l664:	
;main.c: 140: while (!TXIF)
	goto	l93
	
l94:	
	line	141
;main.c: 141: ;
	
l93:	
	line	140
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l93
u130:
	goto	l666
	
l95:	
	line	142
	
l666:	
;main.c: 142: TXREG = data;
	movf	(sendByte@data),w
	movwf	(25)	;volatile
	line	143
	
l96:	
	return
	opt stack 0
GLOBAL	__end_of_sendByte
	__end_of_sendByte:
	signat	_sendByte,4216
	global	_readData

;; *************** function _readData *****************
;; Defined at:
;;		line 91 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  bitcount        1    4[COMMON] unsigned char 
;;  _data           1    3[COMMON] unsigned char 
;;  index           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
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
	line	91
global __ptext4
__ptext4:	;psect for function _readData
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	91
	global	__size_of_readData
	__size_of_readData	equ	__end_of_readData-_readData
	
_readData:	
;incstack = 0
	opt	stack 7
; Regs used in _readData: [wreg+status,2+status,0]
	line	93
	
l706:	
;main.c: 93: uint8_t index, bitcount, _data = 0;
	clrf	(readData@_data)
	line	94
;main.c: 94: for (index = 0; index < 8; index++)
	clrf	(readData@index)
	
l708:	
	movlw	(08h)
	subwf	(readData@index),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l712
u160:
	goto	l740
	
l710:	
	goto	l740
	line	95
	
l75:	
	line	96
	
l712:	
;main.c: 95: {
;main.c: 96: bitcount = 0;
	clrf	(readData@bitcount)
	line	97
;main.c: 97: while (!RB2)
	goto	l77
	
l78:	
	line	99
	
l714:	
;main.c: 98: {
;main.c: 99: bitcount++;
	movlw	(01h)
	movwf	(??_readData+0)+0
	movf	(??_readData+0)+0,w
	addwf	(readData@bitcount),f
	line	100
	
l716:	
;main.c: 100: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	101
	
l718:	
;main.c: 101: if (bitcount > 100)
	movlw	(065h)
	subwf	(readData@bitcount),w
	skipc
	goto	u171
	goto	u170
u171:
	goto	l77
u170:
	goto	l722
	line	102
	
l720:	
;main.c: 102: break;
	goto	l722
	
l79:	
	line	103
	
l77:	
	line	97
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7	;volatile
	goto	u181
	goto	u180
u181:
	goto	l714
u180:
	goto	l722
	
l80:	
	line	104
	
l722:	
;main.c: 103: }
;main.c: 104: _delay((unsigned long)((30)*(4000000/4000000.0)));
	opt asmopt_off
movlw	9
movwf	(??_readData+0)+0,f
u297:
decfsz	(??_readData+0)+0,f
	goto	u297
	nop2	;nop
opt asmopt_on

	line	105
	
l724:	
;main.c: 105: if (!RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l81
u190:
	line	106
	
l726:	
;main.c: 106: checkbit = 0;
	clrf	(_checkbit)
	goto	l736
	line	107
	
l81:	
	line	109
;main.c: 107: else
;main.c: 108: {
;main.c: 109: checkbit = 1;
	clrf	(_checkbit)
	incf	(_checkbit),f
	line	110
;main.c: 110: while (RB2)
	goto	l83
	
l84:	
	line	112
	
l728:	
;main.c: 111: {
;main.c: 112: bitcount++;
	movlw	(01h)
	movwf	(??_readData+0)+0
	movf	(??_readData+0)+0,w
	addwf	(readData@bitcount),f
	line	113
	
l730:	
;main.c: 113: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	114
	
l732:	
;main.c: 114: if (bitcount > 100)
	movlw	(065h)
	subwf	(readData@bitcount),w
	skipc
	goto	u201
	goto	u200
u201:
	goto	l83
u200:
	goto	l736
	line	115
	
l734:	
;main.c: 115: break;
	goto	l736
	
l85:	
	line	116
	
l83:	
	line	110
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l728
u210:
	goto	l736
	
l86:	
	goto	l736
	line	117
	
l82:	
	line	118
	
l736:	
;main.c: 116: }
;main.c: 117: }
;main.c: 118: _data = (_data << 1) | checkbit;
	movf	(readData@_data),w
	movwf	(??_readData+0)+0
	addwf	(??_readData+0)+0,w
	iorwf	(_checkbit),w
	movwf	(??_readData+1)+0
	movf	(??_readData+1)+0,w
	movwf	(readData@_data)
	line	94
	movlw	(01h)
	movwf	(??_readData+0)+0
	movf	(??_readData+0)+0,w
	addwf	(readData@index),f
	
l738:	
	movlw	(08h)
	subwf	(readData@index),w
	skipc
	goto	u221
	goto	u220
u221:
	goto	l712
u220:
	goto	l740
	
l76:	
	line	120
	
l740:	
;main.c: 119: }
;main.c: 120: return _data;
	movf	(readData@_data),w
	goto	l87
	
l742:	
	line	121
	
l87:	
	return
	opt stack 0
GLOBAL	__end_of_readData
	__end_of_readData:
	signat	_readData,89
	global	_initUART

;; *************** function _initUART *****************
;; Defined at:
;;		line 123 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1
	line	123
global __ptext5
__ptext5:	;psect for function _initUART
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	123
	global	__size_of_initUART
	__size_of_initUART	equ	__end_of_initUART-_initUART
	
_initUART:	
;incstack = 0
	opt	stack 7
; Regs used in _initUART: [wreg]
	line	126
	
l668:	
;main.c: 126: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	127
;main.c: 127: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	129
	
l670:	
;main.c: 129: SPBRG = 25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	130
	
l672:	
;main.c: 130: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	132
	
l674:	
;main.c: 132: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	133
	
l676:	
;main.c: 133: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	134
	
l678:	
;main.c: 134: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	135
	
l680:	
;main.c: 135: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	136
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_initUART
	__end_of_initUART:
	signat	_initUART,88
	global	_checkResponse

;; *************** function _checkResponse *****************
;; Defined at:
;;		line 76 in file "D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] short 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	76
global __ptext6
__ptext6:	;psect for function _checkResponse
psect	text6
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\FinalProject\switching-program\dht11_module\main.c"
	line	76
	global	__size_of_checkResponse
	__size_of_checkResponse	equ	__end_of_checkResponse-_checkResponse
	
_checkResponse:	
;incstack = 0
	opt	stack 7
; Regs used in _checkResponse: [wreg+status,2]
	line	78
	
l690:	
;main.c: 78: _delay((unsigned long)((40)*(4000000/4000000.0)));
	opt asmopt_off
movlw	13
movwf	(??_checkResponse+0)+0,f
u307:
decfsz	(??_checkResponse+0)+0,f
	goto	u307
opt asmopt_on

	line	79
	
l692:	
;main.c: 79: if (!RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l702
u140:
	line	81
	
l694:	
;main.c: 80: {
;main.c: 81: _delay((unsigned long)((80)*(4000000/4000000.0)));
	opt asmopt_off
movlw	26
movwf	(??_checkResponse+0)+0,f
u317:
decfsz	(??_checkResponse+0)+0,f
	goto	u317
	nop
opt asmopt_on

	line	82
	
l696:	
;main.c: 82: if (RB2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l702
u150:
	line	84
	
l698:	
;main.c: 83: {
;main.c: 84: _delay((unsigned long)((50)*(4000000/4000000.0)));
	opt asmopt_off
movlw	16
movwf	(??_checkResponse+0)+0,f
u327:
decfsz	(??_checkResponse+0)+0,f
	goto	u327
	nop
opt asmopt_on

	line	85
;main.c: 85: return 1;
	movlw	low(01h)
	movwf	(?_checkResponse)
	movlw	high(01h)
	movwf	((?_checkResponse))+1
	goto	l72
	
l700:	
	goto	l72
	line	86
	
l71:	
	goto	l702
	line	87
	
l70:	
	line	88
	
l702:	
;main.c: 86: }
;main.c: 87: }
;main.c: 88: return 0;
	clrf	(?_checkResponse)
	clrf	(?_checkResponse+1)
	goto	l72
	
l704:	
	line	89
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_checkResponse
	__end_of_checkResponse:
	signat	_checkResponse,90
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
