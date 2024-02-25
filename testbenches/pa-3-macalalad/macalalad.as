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
	FNCALL	_ISR,_keypress_correct
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count_flag
	global	_int_flag
	global	_cnt
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
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
__ptext0:	;psect for function _keypress_correct
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
	file	"macalalad.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_count_flag:
       ds      1

_int_flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_cnt:
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
??_keypress_correct:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_keypress_correct:	; 1 bytes @ 0x0
	ds	1
	global	keypress_correct@x
keypress_correct@x:	; 1 bytes @ 0x1
	ds	1
??_ISR:	; 0 bytes @ 0x2
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	delay@delay
delay@delay:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@y
delay@y:	; 2 bytes @ 0x3
	ds	2
??_main:	; 0 bytes @ 0x5
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
;!    BANK0            80      6       7
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
;!    _ISR->_keypress_correct
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
;!                                              5 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2      99
;!                                              0 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  5     5      0      72
;!                                              2 COMMON     5     5      0
;!                   _keypress_correct
;! ---------------------------------------------------------------------------------
;! (3) _keypress_correct                                     2     2      0      72
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
;!   _keypress_correct
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
;!ABS                  0      0       F       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      6       7       5        8.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       F      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 75 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
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
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
	line	75
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
	line	75
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	76
	
l628:	
;Macalalad_LE3.c: 76: cnt = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_cnt)
	line	78
	
l630:	
;Macalalad_LE3.c: 78: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	79
	
l632:	
;Macalalad_LE3.c: 79: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	80
;Macalalad_LE3.c: 80: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	82
	
l634:	
;Macalalad_LE3.c: 82: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	83
	
l636:	
;Macalalad_LE3.c: 83: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	85
;Macalalad_LE3.c: 85: OPTION_REG = 0x44;
	movlw	(044h)
	movwf	(129)^080h	;volatile
	line	87
	
l638:	
;Macalalad_LE3.c: 87: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	88
	
l640:	
;Macalalad_LE3.c: 88: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	90
	
l642:	
;Macalalad_LE3.c: 90: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	92
;Macalalad_LE3.c: 92: PORTC = cnt;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_cnt),w
	movwf	(7)	;volatile
	goto	l644
	line	94
;Macalalad_LE3.c: 94: while(1){
	
l56:	
	line	95
	
l644:	
;Macalalad_LE3.c: 95: delay(98);
	movlw	low(062h)
	movwf	(delay@delay)
	movlw	high(062h)
	movwf	((delay@delay))+1
	fcall	_delay
	line	97
	
l646:	
;Macalalad_LE3.c: 97: if(cnt == 0x00){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_cnt),f
	skipz
	goto	u131
	goto	u130
u131:
	goto	l57
u130:
	line	98
	
l648:	
;Macalalad_LE3.c: 98: cnt = 0x00;
	clrf	(_cnt)
	line	99
;Macalalad_LE3.c: 99: } else if(int_flag) {
	goto	l654
	
l57:	
	btfss	(_int_flag/8),(_int_flag)&7
	goto	u141
	goto	u140
u141:
	goto	l652
u140:
	line	100
	
l650:	
;Macalalad_LE3.c: 100: int_flag = 0;
	bcf	(_int_flag/8),(_int_flag)&7
	line	101
;Macalalad_LE3.c: 101: } else {
	goto	l654
	
l59:	
	line	102
	
l652:	
;Macalalad_LE3.c: 102: cnt++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_cnt),f
	goto	l654
	line	103
	
l60:	
	goto	l654
	
l58:	
	line	105
	
l654:	
;Macalalad_LE3.c: 103: }
;Macalalad_LE3.c: 105: PORTC = cnt;
	movf	(_cnt),w
	movwf	(7)	;volatile
	goto	l644
	line	106
	
l61:	
	line	94
	goto	l644
	
l62:	
	line	107
	
l63:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 64 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
;; Parameters:    Size  Location     Type
;;  delay           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  y               2    3[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	64
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
	line	64
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	65
	
l612:	
;Macalalad_LE3.c: 65: int y = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@y)
	clrf	(delay@y+1)
	line	67
;Macalalad_LE3.c: 67: while(y < delay) {
	goto	l49
	
l50:	
	line	68
;Macalalad_LE3.c: 68: if(count_flag == 1){
	btfss	(_count_flag/8),(_count_flag)&7
	goto	u91
	goto	u90
u91:
	goto	l49
u90:
	line	69
	
l614:	
;Macalalad_LE3.c: 69: count_flag = 0;
	bcf	(_count_flag/8),(_count_flag)&7
	line	70
	
l616:	
;Macalalad_LE3.c: 70: y++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@y),f
	skipnc
	incf	(delay@y+1),f
	movlw	high(01h)
	addwf	(delay@y+1),f
	goto	l49
	line	71
	
l51:	
	line	72
	
l49:	
	line	67
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@y+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@delay+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u105
	movf	(delay@delay),w
	subwf	(delay@y),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l50
u100:
	goto	l53
	
l52:	
	line	73
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 49 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
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
;;		_keypress_correct
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	49
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
	line	49
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
	line	50
	
i1l618:	
;Macalalad_LE3.c: 50: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	52
;Macalalad_LE3.c: 52: if(INTF){
	btfss	(89/8),(89)&7	;volatile
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l43
u11_20:
	line	53
	
i1l620:	
;Macalalad_LE3.c: 53: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	54
	
i1l622:	
;Macalalad_LE3.c: 54: cnt = keypress_correct(PORTD);
	movf	(8),w	;volatile
	fcall	_keypress_correct
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_cnt)
	line	55
	
i1l624:	
;Macalalad_LE3.c: 55: int_flag = 1;
	bsf	(_int_flag/8),(_int_flag)&7
	line	56
;Macalalad_LE3.c: 56: } else if (T0IF) {
	goto	i1l44
	
i1l43:	
	btfss	(90/8),(90)&7	;volatile
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l44
u12_20:
	line	57
	
i1l626:	
;Macalalad_LE3.c: 57: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	58
;Macalalad_LE3.c: 58: count_flag = 1;
	bsf	(_count_flag/8),(_count_flag)&7
	goto	i1l44
	line	59
	
i1l45:	
	line	61
	
i1l44:	
;Macalalad_LE3.c: 59: }
;Macalalad_LE3.c: 61: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	62
	
i1l46:	
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
	global	_keypress_correct

;; *************** function _keypress_correct *****************
;; Defined at:
;;		line 20 in file "D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    1[COMMON] unsigned char 
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
	line	20
global __ptext3
__ptext3:	;psect for function _keypress_correct
psect	text3
	file	"D:\uni_2023-2024\cpe3201\embedded-systems\testbenches\pa-3-macalalad\Macalalad_LE3.c"
	line	20
	global	__size_of_keypress_correct
	__size_of_keypress_correct	equ	__end_of_keypress_correct-_keypress_correct
	
_keypress_correct:	
;incstack = 0
	opt	stack 5
; Regs used in _keypress_correct: [wreg-fsr0h+status,2+status,0]
;keypress_correct@x stored from wreg
	movwf	(keypress_correct@x)
	line	22
	
i1l588:	
;Macalalad_LE3.c: 22: if(x > 0x0A){
	movlw	(0Bh)
	subwf	(keypress_correct@x),w
	skipc
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l606
u8_20:
	line	23
	
i1l590:	
;Macalalad_LE3.c: 23: return 0x00;
	movlw	(0)
	goto	i1l32
	
i1l592:	
	goto	i1l32
	line	24
	
i1l31:	
	line	26
;Macalalad_LE3.c: 24: }
;Macalalad_LE3.c: 26: switch(x){
	goto	i1l606
	line	27
;Macalalad_LE3.c: 27: case (0x00): x = 0x01;
	
i1l34:	
	clrf	(keypress_correct@x)
	incf	(keypress_correct@x),f
	line	28
;Macalalad_LE3.c: 28: break;
	goto	i1l608
	line	30
;Macalalad_LE3.c: 30: case (0x01): x = 0x02;
	
i1l36:	
	
i1l594:	
	movlw	(02h)
	movwf	(??_keypress_correct+0)+0
	movf	(??_keypress_correct+0)+0,w
	movwf	(keypress_correct@x)
	line	31
;Macalalad_LE3.c: 31: break;
	goto	i1l608
	line	33
;Macalalad_LE3.c: 33: case (0x02): x = 0x03;
	
i1l37:	
	
i1l596:	
	movlw	(03h)
	movwf	(??_keypress_correct+0)+0
	movf	(??_keypress_correct+0)+0,w
	movwf	(keypress_correct@x)
	line	34
;Macalalad_LE3.c: 34: break;
	goto	i1l608
	line	36
;Macalalad_LE3.c: 36: case (0x08): x = 0x07;
	
i1l38:	
	
i1l598:	
	movlw	(07h)
	movwf	(??_keypress_correct+0)+0
	movf	(??_keypress_correct+0)+0,w
	movwf	(keypress_correct@x)
	line	37
;Macalalad_LE3.c: 37: break;
	goto	i1l608
	line	39
;Macalalad_LE3.c: 39: case (0x09): x = 0x08;
	
i1l39:	
	
i1l600:	
	movlw	(08h)
	movwf	(??_keypress_correct+0)+0
	movf	(??_keypress_correct+0)+0,w
	movwf	(keypress_correct@x)
	line	40
;Macalalad_LE3.c: 40: break;
	goto	i1l608
	line	42
;Macalalad_LE3.c: 42: case (0x0A): x = 0x09;
	
i1l40:	
	
i1l602:	
	movlw	(09h)
	movwf	(??_keypress_correct+0)+0
	movf	(??_keypress_correct+0)+0,w
	movwf	(keypress_correct@x)
	line	43
;Macalalad_LE3.c: 43: break;
	goto	i1l608
	line	45
	
i1l604:	
;Macalalad_LE3.c: 45: }
	goto	i1l608
	line	26
	
i1l33:	
	
i1l606:	
	movf	(keypress_correct@x),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           41     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l34
	xorlw	1^0	; case 1
	skipnz
	goto	i1l594
	xorlw	2^1	; case 2
	skipnz
	goto	i1l596
	xorlw	8^2	; case 8
	skipnz
	goto	i1l598
	xorlw	9^8	; case 9
	skipnz
	goto	i1l600
	xorlw	10^9	; case 10
	skipnz
	goto	i1l602
	goto	i1l608
	opt asmopt_on

	line	45
	
i1l35:	
	line	46
	
i1l608:	
;Macalalad_LE3.c: 46: return x;
	movf	(keypress_correct@x),w
	goto	i1l32
	
i1l610:	
	line	47
	
i1l32:	
	return
	opt stack 0
GLOBAL	__end_of_keypress_correct
	__end_of_keypress_correct:
	signat	_keypress_correct,4217
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
