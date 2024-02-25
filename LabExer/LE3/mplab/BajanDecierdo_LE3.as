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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	_ISR,_keypress
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_int_flag
	global	_segCnt
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_TMR0
_TMR0	set	0x1
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
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
__ptext0:	;psect for function _keypress
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
	file	"BajanDecierdo_LE3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_int_flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_segCnt:
       ds      1

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_keypress:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_keypress:	; 1 bytes @ 0x0
	ds	1
	global	keypress@kpad
keypress@kpad:	; 1 bytes @ 0x1
	ds	1
??_ISR:	; 0 bytes @ 0x2
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	delay@overflows
delay@overflows:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
??_main:	; 0 bytes @ 0x2
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       8
;!    BANK0            80      3       4
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
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_keypress
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0      99
;!                                              2 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                2     0      2      99
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  5     5      0      22
;!                                              2 COMMON     5     5      0
;!                           _keypress
;! ---------------------------------------------------------------------------------
;! (3) _keypress                                             2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!
;! _ISR (ROOT)
;!   _keypress
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       C       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      3       4       5        5.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       C      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	19
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l694:	
;BajanDecierdo_LE3-3.c: 20: segCnt = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_segCnt)
	line	22
	
l696:	
;BajanDecierdo_LE3-3.c: 22: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	23
	
l698:	
;BajanDecierdo_LE3-3.c: 23: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	24
;BajanDecierdo_LE3-3.c: 24: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	26
	
l700:	
;BajanDecierdo_LE3-3.c: 26: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	27
	
l702:	
;BajanDecierdo_LE3-3.c: 27: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	29
;BajanDecierdo_LE3-3.c: 29: OPTION_REG = 0x04;
	movlw	(04h)
	movwf	(129)^080h	;volatile
	line	31
	
l704:	
;BajanDecierdo_LE3-3.c: 31: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	32
	
l706:	
;BajanDecierdo_LE3-3.c: 32: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	34
	
l708:	
;BajanDecierdo_LE3-3.c: 34: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	goto	l710
	line	36
;BajanDecierdo_LE3-3.c: 36: while(1) {
	
l35:	
	line	37
	
l710:	
;BajanDecierdo_LE3-3.c: 37: delay(122);
	movlw	low(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(delay@overflows)
	movlw	high(07Ah)
	movwf	((delay@overflows))+1
	fcall	_delay
	line	38
	
l712:	
;BajanDecierdo_LE3-3.c: 38: if(!int_flag) {
	btfsc	(_int_flag/8),(_int_flag)&7
	goto	u151
	goto	u150
u151:
	goto	l36
u150:
	line	39
	
l714:	
;BajanDecierdo_LE3-3.c: 39: segCnt++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_segCnt),f
	line	40
	
l716:	
;BajanDecierdo_LE3-3.c: 40: if(segCnt > 9){
	movlw	(0Ah)
	subwf	(_segCnt),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l720
u160:
	line	41
	
l718:	
;BajanDecierdo_LE3-3.c: 41: segCnt = 0;
	clrf	(_segCnt)
	goto	l720
	line	42
	
l37:	
	line	43
;BajanDecierdo_LE3-3.c: 42: }
;BajanDecierdo_LE3-3.c: 43: } else {
	goto	l720
	
l36:	
	line	44
;BajanDecierdo_LE3-3.c: 44: int_flag = 0;
	bcf	(_int_flag/8),(_int_flag)&7
	goto	l720
	line	45
	
l38:	
	line	46
	
l720:	
;BajanDecierdo_LE3-3.c: 45: }
;BajanDecierdo_LE3-3.c: 46: PORTC = segCnt;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_segCnt),w
	movwf	(7)	;volatile
	goto	l710
	line	47
	
l39:	
	line	36
	goto	l710
	
l40:	
	line	48
	
l41:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 51 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
;; Parameters:    Size  Location     Type
;;  overflows       2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	51
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	51
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+btemp+1]
	line	52
	
l684:	
;BajanDecierdo_LE3-3.c: 52: while(overflows > 0) {
	goto	l692
	
l45:	
	line	53
	
l686:	
;BajanDecierdo_LE3-3.c: 53: TMR0 = 231;
	movlw	(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	54
	
l688:	
;BajanDecierdo_LE3-3.c: 54: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	56
;BajanDecierdo_LE3-3.c: 56: while(!T0IF);
	goto	l46
	
l47:	
	
l46:	
	btfss	(90/8),(90)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l46
u130:
	goto	l690
	
l48:	
	line	57
	
l690:	
;BajanDecierdo_LE3-3.c: 57: overflows--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@overflows),f
	skipnc
	incf	(delay@overflows+1),f
	movlw	high(-1)
	addwf	(delay@overflows+1),f
	goto	l692
	line	58
	
l44:	
	line	52
	
l692:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@overflows+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(01h)
	subwf	(delay@overflows),w
u145:

	skipnc
	goto	u141
	goto	u140
u141:
	goto	l686
u140:
	goto	l50
	
l49:	
	line	59
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 61 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
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
;;		_keypress
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	61
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	61
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
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
psect	text2
	line	62
	
i1l672:	
;BajanDecierdo_LE3-3.c: 62: if(INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l53
u11_20:
	line	63
	
i1l674:	
;BajanDecierdo_LE3-3.c: 63: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	64
	
i1l676:	
;BajanDecierdo_LE3-3.c: 64: segCnt = keypress(PORTD);
	movf	(8),w	;volatile
	fcall	_keypress
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	line	65
	
i1l678:	
;BajanDecierdo_LE3-3.c: 65: int_flag = 1;
	bsf	(_int_flag/8),(_int_flag)&7
	line	66
	
i1l680:	
;BajanDecierdo_LE3-3.c: 66: PORTC = segCnt;
	movf	(_segCnt),w
	movwf	(7)	;volatile
	line	67
;BajanDecierdo_LE3-3.c: 67: }
	goto	i1l56
	line	68
	
i1l53:	
;BajanDecierdo_LE3-3.c: 68: else if(T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l56
u12_20:
	line	69
	
i1l682:	
;BajanDecierdo_LE3-3.c: 69: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l56
	line	70
	
i1l55:	
	goto	i1l56
	line	71
	
i1l54:	
	
i1l56:	
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
	global	_keypress

;; *************** function _keypress *****************
;; Defined at:
;;		line 73 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
;; Parameters:    Size  Location     Type
;;  kpad            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  kpad            1    1[COMMON] unsigned char 
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	73
global __ptext3
__ptext3:	;psect for function _keypress
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	73
	global	__size_of_keypress
	__size_of_keypress	equ	__end_of_keypress-_keypress
	
_keypress:	
;incstack = 0
	opt	stack 5
; Regs used in _keypress: [wreg-fsr0h+status,2+status,0]
;keypress@kpad stored from wreg
	movwf	(keypress@kpad)
	line	74
	
i1l616:	
;BajanDecierdo_LE3-3.c: 74: switch(kpad) {
	goto	i1l638
	line	75
;BajanDecierdo_LE3-3.c: 75: case 0x00: segCnt = 0x01; break;
	
i1l60:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_segCnt)
	incf	(_segCnt),f
	goto	i1l640
	line	76
;BajanDecierdo_LE3-3.c: 76: case 0x01: segCnt = 0x02; break;
	
i1l62:	
	
i1l618:	
	movlw	(02h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	77
;BajanDecierdo_LE3-3.c: 77: case 0x02: segCnt = 0x03; break;
	
i1l63:	
	
i1l620:	
	movlw	(03h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	78
;BajanDecierdo_LE3-3.c: 78: case 0x04: segCnt = 0x04; break;
	
i1l64:	
	
i1l622:	
	movlw	(04h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	79
;BajanDecierdo_LE3-3.c: 79: case 0x05: segCnt = 0x05; break;
	
i1l65:	
	
i1l624:	
	movlw	(05h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	80
;BajanDecierdo_LE3-3.c: 80: case 0x06: segCnt = 0x06; break;
	
i1l66:	
	
i1l626:	
	movlw	(06h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	81
;BajanDecierdo_LE3-3.c: 81: case 0x08: segCnt = 0x07; break;
	
i1l67:	
	
i1l628:	
	movlw	(07h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	82
;BajanDecierdo_LE3-3.c: 82: case 0x09: segCnt = 0x08; break;
	
i1l68:	
	
i1l630:	
	movlw	(08h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	83
;BajanDecierdo_LE3-3.c: 83: case 0x0A: segCnt = 0x09; break;
	
i1l69:	
	
i1l632:	
	movlw	(09h)
	movwf	(??_keypress+0)+0
	movf	(??_keypress+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	goto	i1l640
	line	84
;BajanDecierdo_LE3-3.c: 84: default: segCnt = 0x00; break;
	
i1l70:	
	
i1l634:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_segCnt)
	goto	i1l640
	line	85
	
i1l636:	
;BajanDecierdo_LE3-3.c: 85: }
	goto	i1l640
	line	74
	
i1l59:	
	
i1l638:	
	movf	(keypress@kpad),w
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
	goto	i1l60
	xorlw	1^0	; case 1
	skipnz
	goto	i1l618
	xorlw	2^1	; case 2
	skipnz
	goto	i1l620
	xorlw	4^2	; case 4
	skipnz
	goto	i1l622
	xorlw	5^4	; case 5
	skipnz
	goto	i1l624
	xorlw	6^5	; case 6
	skipnz
	goto	i1l626
	xorlw	8^6	; case 8
	skipnz
	goto	i1l628
	xorlw	9^8	; case 9
	skipnz
	goto	i1l630
	xorlw	10^9	; case 10
	skipnz
	goto	i1l632
	goto	i1l634
	opt asmopt_on

	line	85
	
i1l61:	
	line	87
	
i1l640:	
;BajanDecierdo_LE3-3.c: 87: PORTC = segCnt;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_segCnt),w
	movwf	(7)	;volatile
	line	88
;BajanDecierdo_LE3-3.c: 88: return segCnt;
	movf	(_segCnt),w
	goto	i1l71
	
i1l642:	
	line	89
	
i1l71:	
	return
	opt stack 0
GLOBAL	__end_of_keypress
	__end_of_keypress:
	signat	_keypress,4217
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
