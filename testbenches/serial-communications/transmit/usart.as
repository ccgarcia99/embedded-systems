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
	FNCALL	_main,_serial_handshake
	FNCALL	_main,_serial_init
	FNCALL	_main,_serial_send
	FNCALL	_serial_handshake,_delay
	FNCALL	_serial_handshake,_serial_read
	FNCALL	_serial_handshake,_serial_send
	FNCALL	_serial_send,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTA
_RCSTA	set	0x18
	global	_TMR0
_TMR0	set	0x1
	global	_TXREG
_TXREG	set	0x19
	global	_RCIF
_RCIF	set	0x65
	global	_T0IF
_T0IF	set	0x5A
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TXIF
_TXIF	set	0x64
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_TXSTA
_TXSTA	set	0x98
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TRISC7
_TRISC7	set	0x43F
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _serial_read
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
	file	"usart.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_serial_init:	; 0 bytes @ 0x0
??_serial_init:	; 0 bytes @ 0x0
?_serial_send:	; 0 bytes @ 0x0
??_serial_read:	; 0 bytes @ 0x0
?_serial_handshake:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_serial_read:	; 1 bytes @ 0x0
	global	delay@overflows
delay@overflows:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	ds	2
??_serial_send:	; 0 bytes @ 0x5
	global	serial_send@data
serial_send@data:	; 1 bytes @ 0x5
	ds	1
??_serial_handshake:	; 0 bytes @ 0x6
	ds	1
	global	serial_handshake@serialCheck
serial_handshake@serialCheck:	; 1 bytes @ 0x7
	ds	1
	global	serial_handshake@response
serial_handshake@response:	; 1 bytes @ 0x8
	ds	1
??_main:	; 0 bytes @ 0x9
	ds	1
	global	main@serialCheck
main@serialCheck:	; 1 bytes @ 0xA
	ds	1
	global	main@dataIN
main@dataIN:	; 1 bytes @ 0xB
	ds	1
	global	main@DAVBL
main@DAVBL:	; 1 bytes @ 0xC
	ds	1
	global	main@dataOUT
main@dataOUT:	; 1 bytes @ 0xD
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      0       0
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
;!    _main->_serial_handshake
;!    _serial_handshake->_serial_send
;!    _serial_send->_delay
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0     726
;!                                              9 COMMON     5     5      0
;!                   _serial_handshake
;!                        _serial_init
;!                        _serial_send
;! ---------------------------------------------------------------------------------
;! (1) _serial_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _serial_handshake                                     3     3      0     464
;!                                              6 COMMON     3     3      0
;!                              _delay
;!                        _serial_read
;!                        _serial_send
;! ---------------------------------------------------------------------------------
;! (1) _serial_send                                          1     1      0     217
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                5     3      2     202
;!                                              0 COMMON     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _serial_read                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _serial_handshake
;!     _delay
;!     _serial_read
;!     _serial_send
;!       _delay
;!   _serial_init
;!   _serial_send
;!     _delay
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
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 26 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-tx.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dataOUT         1   13[COMMON] unsigned char 
;;  DAVBL           1   12[COMMON] unsigned char 
;;  dataIN          1   11[COMMON] unsigned char 
;;  serialCheck     1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_serial_handshake
;;		_serial_init
;;		_serial_send
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-tx.c"
	line	26
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-tx.c"
	line	26
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	28
	
l588:	
;usart-tx.c: 28: unsigned char serialCheck = 0x00;
	clrf	(main@serialCheck)
	line	29
;usart-tx.c: 29: unsigned char dataIN = 0x00;
	clrf	(main@dataIN)
	line	30
;usart-tx.c: 30: unsigned char dataOUT = 0x00;
	clrf	(main@dataOUT)
	line	31
;usart-tx.c: 31: unsigned char DAVBL = 0x00;
	clrf	(main@DAVBL)
	line	32
	
l590:	
;usart-tx.c: 32: TRISD = 0x1F;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	33
	
l592:	
;usart-tx.c: 33: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	36
;usart-tx.c: 36: OPTION_REG = 0x44;
	movlw	(044h)
	movwf	(129)^080h	;volatile
	line	37
	
l594:	
;usart-tx.c: 37: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	38
	
l596:	
;usart-tx.c: 38: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	39
	
l598:	
;usart-tx.c: 39: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	42
	
l600:	
;usart-tx.c: 42: TRISC6 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	43
	
l602:	
;usart-tx.c: 43: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	44
	
l604:	
;usart-tx.c: 44: serial_init();
	fcall	_serial_init
	line	47
	
l606:	
;usart-tx.c: 47: serial_handshake();
	fcall	_serial_handshake
	line	49
;usart-tx.c: 49: while (1)
	
l71:	
	line	51
;usart-tx.c: 50: {
;usart-tx.c: 51: DAVBL = PORTD & 0x10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w	;volatile
	andlw	010h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@DAVBL)
	line	52
	
l608:	
;usart-tx.c: 52: if (DAVBL == 0x10)
	movf	(main@DAVBL),w
	xorlw	010h
	skipz
	goto	u71
	goto	u70
u71:
	goto	l71
u70:
	line	54
	
l610:	
;usart-tx.c: 53: {
;usart-tx.c: 54: dataIN = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataIN)
	line	55
;usart-tx.c: 55: switch (dataIN)
	goto	l632
	line	57
;usart-tx.c: 56: {
;usart-tx.c: 57: case 0x00:
	
l74:	
	line	58
;usart-tx.c: 58: dataOUT = 0x01;
	clrf	(main@dataOUT)
	incf	(main@dataOUT),f
	line	59
;usart-tx.c: 59: break;
	goto	l634
	line	60
;usart-tx.c: 60: case 0x01:
	
l76:	
	line	61
	
l612:	
;usart-tx.c: 61: dataOUT = 0x02;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	62
;usart-tx.c: 62: break;
	goto	l634
	line	63
;usart-tx.c: 63: case 0x02:
	
l77:	
	line	64
	
l614:	
;usart-tx.c: 64: dataOUT = 0x03;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	65
;usart-tx.c: 65: break;
	goto	l634
	line	66
;usart-tx.c: 66: case 0x04:
	
l78:	
	line	67
	
l616:	
;usart-tx.c: 67: dataOUT = 0x04;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	68
;usart-tx.c: 68: break;
	goto	l634
	line	69
;usart-tx.c: 69: case 0x05:
	
l79:	
	line	70
	
l618:	
;usart-tx.c: 70: dataOUT = 0x05;
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	71
;usart-tx.c: 71: break;
	goto	l634
	line	72
;usart-tx.c: 72: case 0x06:
	
l80:	
	line	73
	
l620:	
;usart-tx.c: 73: dataOUT = 0x06;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	74
;usart-tx.c: 74: break;
	goto	l634
	line	75
;usart-tx.c: 75: case 0x08:
	
l81:	
	line	76
	
l622:	
;usart-tx.c: 76: dataOUT = 0x07;
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	77
;usart-tx.c: 77: break;
	goto	l634
	line	78
;usart-tx.c: 78: case 0x09:
	
l82:	
	line	79
	
l624:	
;usart-tx.c: 79: dataOUT = 0x08;
	movlw	(08h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	80
;usart-tx.c: 80: break;
	goto	l634
	line	81
;usart-tx.c: 81: case 0x0A:
	
l83:	
	line	82
	
l626:	
;usart-tx.c: 82: dataOUT = 0x09;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@dataOUT)
	line	83
;usart-tx.c: 83: break;
	goto	l634
	line	84
;usart-tx.c: 84: default:
	
l84:	
	line	85
	
l628:	
;usart-tx.c: 85: dataOUT = 0x00;
	clrf	(main@dataOUT)
	line	86
;usart-tx.c: 86: break;
	goto	l634
	line	87
	
l630:	
;usart-tx.c: 87: }
	goto	l634
	line	55
	
l73:	
	
l632:	
	movf	(main@dataIN),w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
; direct_byte           41     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l74
	xorlw	1^0	; case 1
	skipnz
	goto	l612
	xorlw	2^1	; case 2
	skipnz
	goto	l614
	xorlw	4^2	; case 4
	skipnz
	goto	l616
	xorlw	5^4	; case 5
	skipnz
	goto	l618
	xorlw	6^5	; case 6
	skipnz
	goto	l620
	xorlw	8^6	; case 8
	skipnz
	goto	l622
	xorlw	9^8	; case 9
	skipnz
	goto	l624
	xorlw	10^9	; case 10
	skipnz
	goto	l626
	goto	l628
	opt asmopt_on

	line	87
	
l75:	
	line	88
	
l634:	
;usart-tx.c: 88: serial_send(dataOUT);
	movf	(main@dataOUT),w
	fcall	_serial_send
	goto	l71
	line	89
	
l72:	
	goto	l71
	line	90
	
l85:	
	line	49
	goto	l71
	
l86:	
	line	91
	
l87:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_serial_init

;; *************** function _serial_init *****************
;; Defined at:
;;		line 20 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
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
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
	line	20
global __ptext1
__ptext1:	;psect for function _serial_init
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
	line	20
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
;incstack = 0
	opt	stack 7
; Regs used in _serial_init: [wreg]
	line	23
	
l560:	
;usart-processes.h: 23: TXSTA = 0b00100100;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	24
	
l562:	
;usart-processes.h: 24: TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(100/8),(100)&7	;volatile
	line	27
;usart-processes.h: 27: RCSTA = 0b10010000;
	movlw	(090h)
	movwf	(24)	;volatile
	line	28
	
l564:	
;usart-processes.h: 28: RCIF = 0;
	bcf	(101/8),(101)&7	;volatile
	line	30
;usart-processes.h: 30: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	31
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
	signat	_serial_init,88
	global	_serial_handshake

;; *************** function _serial_handshake *****************
;; Defined at:
;;		line 48 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  response        1    8[COMMON] unsigned char 
;;  serialCheck     1    7[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_serial_read
;;		_serial_send
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	48
global __ptext2
__ptext2:	;psect for function _serial_handshake
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
	line	48
	global	__size_of_serial_handshake
	__size_of_serial_handshake	equ	__end_of_serial_handshake-_serial_handshake
	
_serial_handshake:	
;incstack = 0
	opt	stack 5
; Regs used in _serial_handshake: [wreg+status,2+status,0+pclath+cstack]
	line	51
	
l566:	
;usart-processes.h: 51: delay(100);
	movlw	low(064h)
	movwf	(delay@overflows)
	movlw	high(064h)
	movwf	((delay@overflows))+1
	fcall	_delay
	line	52
;usart-processes.h: 52: serial_send(0x01);
	movlw	(01h)
	fcall	_serial_send
	line	55
	
l568:	
;usart-processes.h: 55: unsigned char response = 0;
	clrf	(serial_handshake@response)
	goto	l570
	line	56
;usart-processes.h: 56: do
	
l56:	
	line	58
	
l570:	
;usart-processes.h: 57: {
;usart-processes.h: 58: response = serial_read();
	fcall	_serial_read
	movwf	(??_serial_handshake+0)+0
	movf	(??_serial_handshake+0)+0,w
	movwf	(serial_handshake@response)
	line	59
	
l572:	
;usart-processes.h: 59: if (response == 0x01)
	movf	(serial_handshake@response),w
	xorlw	01h
	skipz
	goto	u51
	goto	u50
u51:
	goto	l576
u50:
	goto	l580
	line	60
	
l574:	
;usart-processes.h: 60: break;
	goto	l580
	
l57:	
	line	61
	
l576:	
;usart-processes.h: 61: delay(10);
	movlw	low(0Ah)
	movwf	(delay@overflows)
	movlw	high(0Ah)
	movwf	((delay@overflows))+1
	fcall	_delay
	line	62
	
l578:	
;usart-processes.h: 62: } while (response != 0x01);
	movf	(serial_handshake@response),w
	xorlw	01h
	skipz
	goto	u61
	goto	u60
u61:
	goto	l570
u60:
	goto	l580
	
l58:	
	line	65
	
l580:	
;usart-processes.h: 65: unsigned char serialCheck = serial_read();
	fcall	_serial_read
	movwf	(??_serial_handshake+0)+0
	movf	(??_serial_handshake+0)+0,w
	movwf	(serial_handshake@serialCheck)
	line	66
	
l582:	
;usart-processes.h: 66: PORTB = serialCheck;
	movf	(serial_handshake@serialCheck),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	67
	
l584:	
;usart-processes.h: 67: delay(500);
	movlw	low(01F4h)
	movwf	(delay@overflows)
	movlw	high(01F4h)
	movwf	((delay@overflows))+1
	fcall	_delay
	line	68
	
l586:	
;usart-processes.h: 68: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	69
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_serial_handshake
	__end_of_serial_handshake:
	signat	_serial_handshake,88
	global	_serial_send

;; *************** function _serial_send *****************
;; Defined at:
;;		line 33 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    5[COMMON] unsigned char 
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
;;		_serial_handshake
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	33
global __ptext3
__ptext3:	;psect for function _serial_send
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
	line	33
	global	__size_of_serial_send
	__size_of_serial_send	equ	__end_of_serial_send-_serial_send
	
_serial_send:	
;incstack = 0
	opt	stack 6
; Regs used in _serial_send: [wreg+status,2+status,0+pclath+cstack]
;serial_send@data stored from wreg
	movwf	(serial_send@data)
	line	35
	
l548:	
;usart-processes.h: 35: while (!TXIF)
	goto	l44
	
l45:	
	line	36
;usart-processes.h: 36: ;
	
l44:	
	line	35
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l44
u30:
	goto	l550
	
l46:	
	line	37
	
l550:	
;usart-processes.h: 37: TXREG = data;
	movf	(serial_send@data),w
	movwf	(25)	;volatile
	line	38
	
l552:	
;usart-processes.h: 38: delay(10);
	movlw	low(0Ah)
	movwf	(delay@overflows)
	movlw	high(0Ah)
	movwf	((delay@overflows))+1
	fcall	_delay
	line	39
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_serial_send
	__end_of_serial_send:
	signat	_serial_send,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 71 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
;; Parameters:    Size  Location     Type
;;  overflows       2    0[COMMON] int 
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
;;		_serial_send
;;		_serial_handshake
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	71
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
	line	71
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	74
	
l544:	
;usart-processes.h: 73: int i;
;usart-processes.h: 74: for (i = 0; i < overflows; i++)
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l62
	line	75
	
l63:	
	line	76
;usart-processes.h: 75: {
;usart-processes.h: 76: while (!T0IF)
	goto	l64
	
l65:	
	line	77
;usart-processes.h: 77: ;
	
l64:	
	line	76
	btfss	(90/8),(90)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l64
u10:
	
l66:	
	line	78
;usart-processes.h: 78: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	74
	
l546:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l62:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@overflows+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u25
	movf	(delay@overflows),w
	subwf	(delay@i),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l64
u20:
	goto	l68
	
l67:	
	line	80
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_serial_read

;; *************** function _serial_read *****************
;; Defined at:
;;		line 41 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_serial_handshake
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	41
global __ptext5
__ptext5:	;psect for function _serial_read
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\serial-communications\transmit\usart-processes.h"
	line	41
	global	__size_of_serial_read
	__size_of_serial_read	equ	__end_of_serial_read-_serial_read
	
_serial_read:	
;incstack = 0
	opt	stack 6
; Regs used in _serial_read: [wreg]
	line	43
	
l554:	
;usart-processes.h: 43: while (!RCIF)
	goto	l50
	
l51:	
	line	44
;usart-processes.h: 44: ;
	
l50:	
	line	43
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l50
u40:
	goto	l556
	
l52:	
	line	45
	
l556:	
;usart-processes.h: 45: return RCREG;
	movf	(26),w	;volatile
	goto	l53
	
l558:	
	line	46
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_serial_read
	__end_of_serial_read:
	signat	_serial_read,89
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
