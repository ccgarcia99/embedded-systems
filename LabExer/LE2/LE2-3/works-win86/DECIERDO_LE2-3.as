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
	FNCALL	_main,_keypad
	FNCALL	_keypad,_dataCtrl
	FNCALL	_dataCtrl,_delay
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RD4
_RD4	set	0x44
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay
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
	file	"DECIERDO_LE2-3.as"
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
?_initLCD:	; 0 bytes @ 0x0
?_keypad:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x5
	ds	2
??_dataCtrl:	; 0 bytes @ 0x7
??_instCtrl:	; 0 bytes @ 0x7
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x7
	global	dataCtrl@INST
dataCtrl@INST:	; 1 bytes @ 0x7
	ds	1
??_initLCD:	; 0 bytes @ 0x8
??_keypad:	; 0 bytes @ 0x8
	global	keypad@kpad
keypad@kpad:	; 1 bytes @ 0x8
	ds	1
??_main:	; 0 bytes @ 0x9
	ds	1
	global	main@bound
main@bound:	; 2 bytes @ 0xA
	ds	2
	global	main@kpad
main@kpad:	; 1 bytes @ 0xC
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
;!    COMMON           14     13      13
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
;!    _main->_keypad
;!    _keypad->_dataCtrl
;!    _dataCtrl->_delay
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
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
;! (0) _main                                                 4     4      0     627
;!                                              9 COMMON     4     4      0
;!                            _initLCD
;!                             _keypad
;! ---------------------------------------------------------------------------------
;! (1) _keypad                                               1     1      0     219
;!                                              8 COMMON     1     1      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     204
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     393
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     204
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                7     5      2     189
;!                                              0 COMMON     7     5      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _keypad
;!     _dataCtrl
;!       _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      D       D       1       92.9%
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
;;		line 18 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  bound           2   10[COMMON] int 
;;  kpad            1   12[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initLCD
;;		_keypad
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	18
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l560:	
;DECIERDO_LE2-3.c: 20: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	21
;DECIERDO_LE2-3.c: 21: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
	
l562:	
;DECIERDO_LE2-3.c: 22: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	25
	
l564:	
;DECIERDO_LE2-3.c: 24: unsigned char kpad;
;DECIERDO_LE2-3.c: 25: int bound = 0;
	clrf	(main@bound)
	clrf	(main@bound+1)
	line	26
	
l566:	
;DECIERDO_LE2-3.c: 26: initLCD();
	fcall	_initLCD
	goto	l568
	line	29
;DECIERDO_LE2-3.c: 28: for(;;)
	
l29:	
	line	30
	
l568:	
;DECIERDO_LE2-3.c: 29: {
;DECIERDO_LE2-3.c: 30: if(RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l568
u40:
	line	32
	
l570:	
;DECIERDO_LE2-3.c: 31: {
;DECIERDO_LE2-3.c: 32: kpad = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@kpad)
	line	33
	
l572:	
;DECIERDO_LE2-3.c: 33: keypad(kpad);
	movf	(main@kpad),w
	fcall	_keypad
	goto	l568
	line	34
	
l30:	
	line	36
;DECIERDO_LE2-3.c: 34: }
;DECIERDO_LE2-3.c: 36: }
	goto	l568
	
l31:	
	line	37
	
l32:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_keypad

;; *************** function _keypad *****************
;; Defined at:
;;		line 39 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  kpad            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  kpad            1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	39
global __ptext1
__ptext1:	;psect for function _keypad
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	39
	global	__size_of_keypad
	__size_of_keypad	equ	__end_of_keypad-_keypad
	
_keypad:	
;incstack = 0
	opt	stack 5
; Regs used in _keypad: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;keypad@kpad stored from wreg
	movwf	(keypad@kpad)
	line	41
	
l552:	
;DECIERDO_LE2-3.c: 41: switch(kpad)
	goto	l558
	line	43
;DECIERDO_LE2-3.c: 42: {
;DECIERDO_LE2-3.c: 43: case 0x00: dataCtrl('1');
	
l36:	
	
l554:	
	movlw	(031h)
	fcall	_dataCtrl
	line	44
;DECIERDO_LE2-3.c: 44: break;
	goto	l38
	line	45
	
l556:	
;DECIERDO_LE2-3.c: 45: }
	goto	l38
	line	41
	
l35:	
	
l558:	
	movf	(keypad@kpad),w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l554
	goto	l38
	opt asmopt_on

	line	45
	
l37:	
	line	46
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_keypad
	__end_of_keypad:
	signat	_keypad,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 58 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_keypad
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	58
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	58
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@INST stored from wreg
	movwf	(dataCtrl@INST)
	line	60
	
l526:	
;DECIERDO_LE2-3.c: 60: PORTB = INST;
	movf	(dataCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	61
	
l528:	
;DECIERDO_LE2-3.c: 61: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	62
	
l530:	
;DECIERDO_LE2-3.c: 62: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	63
	
l532:	
;DECIERDO_LE2-3.c: 63: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	64
	
l534:	
;DECIERDO_LE2-3.c: 64: delay(5);
	movlw	low(05h)
	movwf	(delay@cnt)
	movlw	high(05h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	65
	
l536:	
;DECIERDO_LE2-3.c: 65: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	66
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 68 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	68
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	68
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l550:	
;DECIERDO_LE2-3.c: 70: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	71
;DECIERDO_LE2-3.c: 71: delay(10);
	movlw	low(0Ah)
	movwf	(delay@cnt)
	movlw	high(0Ah)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	72
;DECIERDO_LE2-3.c: 72: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	73
;DECIERDO_LE2-3.c: 73: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	74
;DECIERDO_LE2-3.c: 74: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	75
;DECIERDO_LE2-3.c: 75: instCtrl(0x0f);
	movlw	(0Fh)
	fcall	_instCtrl
	line	76
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 48 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	48
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	48
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	50
	
l538:	
;DECIERDO_LE2-3.c: 50: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	51
	
l540:	
;DECIERDO_LE2-3.c: 51: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	52
	
l542:	
;DECIERDO_LE2-3.c: 52: RC1 = 0;
	bcf	(57/8),(57)&7	;volatile
	line	53
	
l544:	
;DECIERDO_LE2-3.c: 53: RC2 = 1;
	bsf	(58/8),(58)&7	;volatile
	line	54
	
l546:	
;DECIERDO_LE2-3.c: 54: delay(5);
	movlw	low(05h)
	movwf	(delay@cnt)
	movlw	high(05h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	55
	
l548:	
;DECIERDO_LE2-3.c: 55: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	56
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 78 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    5[COMMON] int 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_dataCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	78
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE2\LE2-3\works-win86\DECIERDO_LE2-3.c"
	line	78
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	81
	
l512:	
;DECIERDO_LE2-3.c: 80: int i, j;
;DECIERDO_LE2-3.c: 81: for(i=0;i<cnt;i++)
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l50
	line	82
	
l51:	
	line	83
	
l514:	
;DECIERDO_LE2-3.c: 82: {
;DECIERDO_LE2-3.c: 83: for(j=0;j<9999;j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l516:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0270Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0270Fh)
	subwf	(delay@j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l520
u10:
	goto	l524
	
l518:	
	goto	l524
	
l52:	
	
l520:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l522:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0270Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0270Fh)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l520
u20:
	goto	l524
	
l53:	
	line	81
	
l524:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l50:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@cnt+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u35
	movf	(delay@cnt),w
	subwf	(delay@i),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l514
u30:
	goto	l55
	
l54:	
	line	85
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
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
