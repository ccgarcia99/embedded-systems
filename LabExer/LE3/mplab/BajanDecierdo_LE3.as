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
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
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
	global	keypress@kpad
keypress@kpad:	; 1 bytes @ 0x0
	ds	1
??_ISR:	; 0 bytes @ 0x1
	ds	5
	global	ISR@data
ISR@data:	; 1 bytes @ 0x6
	ds	1
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
;! (2) _ISR                                                  6     6      0      45
;!                                              1 COMMON     6     6      0
;!                           _keypress
;! ---------------------------------------------------------------------------------
;! (3) _keypress                                             1     1      0      22
;!                                              0 COMMON     1     1      0
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
	
l734:	
;BajanDecierdo_LE3-3.c: 20: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	21
	
l736:	
;BajanDecierdo_LE3-3.c: 21: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	22
	
l738:	
;BajanDecierdo_LE3-3.c: 22: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	24
	
l740:	
;BajanDecierdo_LE3-3.c: 24: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	25
	
l742:	
;BajanDecierdo_LE3-3.c: 25: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	27
	
l744:	
;BajanDecierdo_LE3-3.c: 27: OPTION_REG = 0x44;
	movlw	(044h)
	movwf	(129)^080h	;volatile
	line	29
	
l746:	
;BajanDecierdo_LE3-3.c: 29: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	30
	
l748:	
;BajanDecierdo_LE3-3.c: 30: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	32
	
l750:	
;BajanDecierdo_LE3-3.c: 32: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	goto	l752
	line	34
;BajanDecierdo_LE3-3.c: 34: while(1) {
	
l35:	
	line	35
	
l752:	
;BajanDecierdo_LE3-3.c: 35: delay(98);
	movlw	low(062h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@overflows)
	movlw	high(062h)
	movwf	((delay@overflows))+1
	fcall	_delay
	line	36
	
l754:	
;BajanDecierdo_LE3-3.c: 36: if(!int_flag){;
	btfsc	(_int_flag/8),(_int_flag)&7
	goto	u151
	goto	u150
u151:
	goto	l36
u150:
	line	37
	
l756:	
;BajanDecierdo_LE3-3.c: 37: if(segCnt > 9){
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_segCnt),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l760
u160:
	line	38
	
l758:	
;BajanDecierdo_LE3-3.c: 38: segCnt = 0;
	clrf	(_segCnt)
	goto	l760
	line	39
	
l37:	
	line	40
	
l760:	
;BajanDecierdo_LE3-3.c: 39: }
;BajanDecierdo_LE3-3.c: 40: PORTC = segCnt;
	movf	(_segCnt),w
	movwf	(7)	;volatile
	line	41
	
l762:	
;BajanDecierdo_LE3-3.c: 41: segCnt++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_segCnt),f
	line	42
;BajanDecierdo_LE3-3.c: 42: }else{
	goto	l752
	
l36:	
	line	43
;BajanDecierdo_LE3-3.c: 43: int_flag = 0;
	bcf	(_int_flag/8),(_int_flag)&7
	goto	l752
	line	44
	
l38:	
	goto	l752
	line	45
	
l39:	
	line	34
	goto	l752
	
l40:	
	line	46
	
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
;;		line 48 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
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
	line	48
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	48
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+btemp+1]
	line	49
	
l724:	
;BajanDecierdo_LE3-3.c: 49: while(overflows > 0) {
	goto	l732
	
l45:	
	line	50
	
l726:	
;BajanDecierdo_LE3-3.c: 50: TMR0 = 231;
	movlw	(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	51
	
l728:	
;BajanDecierdo_LE3-3.c: 51: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	52
;BajanDecierdo_LE3-3.c: 52: while(!TMR0IF);
	goto	l46
	
l47:	
	
l46:	
	btfss	(90/8),(90)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l46
u130:
	goto	l730
	
l48:	
	line	53
	
l730:	
;BajanDecierdo_LE3-3.c: 53: overflows--;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@overflows),f
	skipnc
	incf	(delay@overflows+1),f
	movlw	high(-1)
	addwf	(delay@overflows+1),f
	goto	l732
	line	54
	
l44:	
	line	49
	
l732:	
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
	goto	l726
u140:
	goto	l50
	
l49:	
	line	55
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 57 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_keypress
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	57
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	57
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
	line	58
	
i1l712:	
;BajanDecierdo_LE3-3.c: 58: unsigned char data = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@data)
	line	59
	
i1l714:	
;BajanDecierdo_LE3-3.c: 59: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	60
	
i1l716:	
;BajanDecierdo_LE3-3.c: 60: if(INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l53
u11_20:
	line	61
	
i1l718:	
;BajanDecierdo_LE3-3.c: 61: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	62
;BajanDecierdo_LE3-3.c: 62: int_flag = 1;
	bsf	(_int_flag/8),(_int_flag)&7
	line	63
	
i1l720:	
;BajanDecierdo_LE3-3.c: 63: segCnt = keypress(data);
	movf	(ISR@data),w
	fcall	_keypress
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_segCnt)
	line	64
;BajanDecierdo_LE3-3.c: 64: }
	goto	i1l54
	line	65
	
i1l53:	
;BajanDecierdo_LE3-3.c: 65: else if(TMR0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l54
u12_20:
	line	66
	
i1l722:	
;BajanDecierdo_LE3-3.c: 66: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l54
	line	67
	
i1l55:	
	line	68
	
i1l54:	
;BajanDecierdo_LE3-3.c: 67: }
;BajanDecierdo_LE3-3.c: 68: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	69
	
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
;;		line 71 in file "D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
;; Parameters:    Size  Location     Type
;;  kpad            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  kpad            1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	71
global __ptext3
__ptext3:	;psect for function _keypress
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\LabExer\LE3\mplab\BajanDecierdo_LE3-3.c"
	line	71
	global	__size_of_keypress
	__size_of_keypress	equ	__end_of_keypress-_keypress
	
_keypress:	
;incstack = 0
	opt	stack 5
; Regs used in _keypress: [wreg-fsr0h+status,2+status,0]
;keypress@kpad stored from wreg
	movwf	(keypress@kpad)
	line	72
	
i1l636:	
;BajanDecierdo_LE3-3.c: 72: switch(kpad) {
	goto	i1l680
	line	73
;BajanDecierdo_LE3-3.c: 73: case 0x00: return 0x01;
	
i1l60:	
	
i1l638:	
	movlw	(01h)
	goto	i1l61
	
i1l640:	
	goto	i1l61
	line	74
;BajanDecierdo_LE3-3.c: 74: case 0x01: return 0x02;
	
i1l62:	
	
i1l642:	
	movlw	(02h)
	goto	i1l61
	
i1l644:	
	goto	i1l61
	line	75
;BajanDecierdo_LE3-3.c: 75: case 0x02: return 0x03;
	
i1l63:	
	
i1l646:	
	movlw	(03h)
	goto	i1l61
	
i1l648:	
	goto	i1l61
	line	76
;BajanDecierdo_LE3-3.c: 76: case 0x04: return 0x04;
	
i1l64:	
	
i1l650:	
	movlw	(04h)
	goto	i1l61
	
i1l652:	
	goto	i1l61
	line	77
;BajanDecierdo_LE3-3.c: 77: case 0x05: return 0x05;
	
i1l65:	
	
i1l654:	
	movlw	(05h)
	goto	i1l61
	
i1l656:	
	goto	i1l61
	line	78
;BajanDecierdo_LE3-3.c: 78: case 0x06: return 0x06;
	
i1l66:	
	
i1l658:	
	movlw	(06h)
	goto	i1l61
	
i1l660:	
	goto	i1l61
	line	79
;BajanDecierdo_LE3-3.c: 79: case 0x08: return 0x07;
	
i1l67:	
	
i1l662:	
	movlw	(07h)
	goto	i1l61
	
i1l664:	
	goto	i1l61
	line	80
;BajanDecierdo_LE3-3.c: 80: case 0x09: return 0x08;
	
i1l68:	
	
i1l666:	
	movlw	(08h)
	goto	i1l61
	
i1l668:	
	goto	i1l61
	line	81
;BajanDecierdo_LE3-3.c: 81: case 0x0A: return 0x09;
	
i1l69:	
	
i1l670:	
	movlw	(09h)
	goto	i1l61
	
i1l672:	
	goto	i1l61
	line	82
;BajanDecierdo_LE3-3.c: 82: default: return 0x00;
	
i1l70:	
	
i1l674:	
	movlw	(0)
	goto	i1l61
	
i1l676:	
	goto	i1l61
	line	83
	
i1l678:	
;BajanDecierdo_LE3-3.c: 83: }
	goto	i1l61
	line	72
	
i1l59:	
	
i1l680:	
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
	goto	i1l638
	xorlw	1^0	; case 1
	skipnz
	goto	i1l642
	xorlw	2^1	; case 2
	skipnz
	goto	i1l646
	xorlw	4^2	; case 4
	skipnz
	goto	i1l650
	xorlw	5^4	; case 5
	skipnz
	goto	i1l654
	xorlw	6^5	; case 6
	skipnz
	goto	i1l658
	xorlw	8^6	; case 8
	skipnz
	goto	i1l662
	xorlw	9^8	; case 9
	skipnz
	goto	i1l666
	xorlw	10^9	; case 10
	skipnz
	goto	i1l670
	goto	i1l674
	opt asmopt_on

	line	83
	
i1l71:	
	line	84
	
i1l61:	
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
