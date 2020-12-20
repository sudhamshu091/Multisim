opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F84A
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
	FNCALL	_main,_init
	FNCALL	_main,_delay
	FNROOT	_main
	global	_HexTable
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
	line	8
_HexTable:
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	retlw	088h
	retlw	083h
	retlw	0C6h
	retlw	0A1h
	retlw	086h
	retlw	08Eh
	global	_HexTable
	global	_EEADR
_EEADR	set	9
	global	_EEDATA
_EEDATA	set	8
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_STATUS
_STATUS	set	3
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RP0
_RP0	set	29
	global	_EECON1
_EECON1	set	136
	global	_EECON2
_EECON2	set	137
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_RD
_RD	set	1088
	global	_WR
_WR	set	1089
	global	_WREN
_WREN	set	1090
	file	"main_0.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	??_init
??_init:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@mIndex
delay@mIndex:	; 2 bytes @ 0x0
	ds	2
	global	main@nIndex
main@nIndex:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 16, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON           0      0       0
;; BANK0           66      4       4

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_init
;;   _main->_delay

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     118
;;                                              2 BANK0      2     2      0
;;                               _init
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     2      0      47
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            0      0       0       0        0.0%
;;EEDATA              40      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               42      4       4       3        6.1%
;;ABS                  0      0       0       4        0.0%
;;BITBANK0            42      0       0       5        0.0%
;;DATA                 0      0       0       6        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  nIndex          2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       2
;;      Temps:          0       0
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l1687:	
;main.c: 29: int nIndex = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@nIndex)
	clrf	(main@nIndex+1)
	line	31
	
l1689:	
;main.c: 31: init();
	fcall	_init
	goto	l1691
	line	33
;main.c: 33: while (1)
	
l177:	
	line	35
	
l1691:	
;main.c: 34: {
;main.c: 35: if (RA0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1707
u2340:
	line	36
	
l1693:	
;main.c: 36: { PORTB = HexTable[nIndex];
	movf	(main@nIndex),w
	addlw	low((_HexTable-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(6)	;volatile
	line	37
	
l1695:	
;main.c: 37: if (RA1 == 1)
	btfss	(41/8),(41)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1701
u2350:
	line	38
	
l1697:	
;main.c: 38: { nIndex++;
	movlw	low(01h)
	addwf	(main@nIndex),f
	skipnc
	incf	(main@nIndex+1),f
	movlw	high(01h)
	addwf	(main@nIndex+1),f
	line	39
;main.c: 39: if (nIndex == 16) { nIndex = 0; }
	movlw	010h
	xorwf	(main@nIndex),w
	iorwf	(main@nIndex+1),w
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l1705
u2360:
	
l1699:	
	clrf	(main@nIndex)
	clrf	(main@nIndex+1)
	goto	l1705
	
l180:	
	line	40
;main.c: 40: }
	goto	l1705
	line	41
	
l179:	
	line	42
	
l1701:	
;main.c: 41: else
;main.c: 42: { nIndex--;
	movlw	low(-1)
	addwf	(main@nIndex),f
	skipnc
	incf	(main@nIndex+1),f
	movlw	high(-1)
	addwf	(main@nIndex+1),f
	line	43
;main.c: 43: if (nIndex == -1) { nIndex = 15; }
	movlw	high(-1)
	xorwf	(main@nIndex+1),w
	skipz
	goto	u2375
	movlw	low(-1)
	xorwf	(main@nIndex),w
u2375:

	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l1705
u2370:
	
l1703:	
	movlw	low(0Fh)
	movwf	(main@nIndex)
	movlw	high(0Fh)
	movwf	((main@nIndex))+1
	goto	l1705
	
l182:	
	goto	l1705
	line	44
	
l181:	
	line	45
	
l1705:	
;main.c: 44: }
;main.c: 45: delay();
	fcall	_delay
	line	46
;main.c: 46: }
	goto	l1691
	line	47
	
l178:	
	line	48
	
l1707:	
;main.c: 47: else
;main.c: 48: { PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	goto	l1691
	line	49
	
l183:	
	goto	l1691
	line	50
	
l184:	
	line	33
	goto	l1691
	
l185:	
	line	51
	
l186:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:

;; *************** function _delay *****************
;; Defined at:
;;		line 21 in file "C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mIndex          2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       2
;;      Temps:          0       0
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text166
	file	"C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
	line	21
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	22
	
l1677:	
;main.c: 22: int mIndex = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(delay@mIndex)
	clrf	(delay@mIndex+1)
	line	23
;main.c: 23: for (mIndex = 0; mIndex < 100; mIndex++);
	clrf	(delay@mIndex)
	clrf	(delay@mIndex+1)
	
l1679:	
	movf	(delay@mIndex+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(064h)
	subwf	(delay@mIndex),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l1683
u2320:
	goto	l174
	
l1681:	
	goto	l174
	
l172:	
	
l1683:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(delay@mIndex),f
	skipnc
	incf	(delay@mIndex+1),f
	movlw	high(01h)
	addwf	(delay@mIndex+1),f
	
l1685:	
	movf	(delay@mIndex+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(064h)
	subwf	(delay@mIndex),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1683
u2330:
	goto	l174
	
l173:	
	line	24
	
l174:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
	global	_init
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:

;; *************** function _init *****************
;; Defined at:
;;		line 11 in file "C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
;; Parameters:    Size  Location     Type
;;		None
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       2
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text167
	file	"C:\Users\nsanchez\Desktop\CustEd\Lab10\complete\MYMCUP~1\CCODEP~1\main.c"
	line	11
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2+status,0]
	line	12
	
l1667:	
;main.c: 12: ((STATUS) &= ~(1 << (RP0));
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_init+0)+0
	movlw	0
	btfsc	(29/8),(29)&7
	movlw	1
	addlw	1
	goto	u2304
u2305:
	clrc
	rlf	(??_init+0)+0,f
u2304:
	addlw	-1
	skipz
	goto	u2305
	movf	0+(??_init+0)+0,w
	xorlw	0ffh
	movwf	(??_init+1)+0
	movf	(??_init+1)+0,w
	andwf	(3),f	;volatile
	line	13
	
l1669:	
;main.c: 13: PORTA = 0x00;
	clrf	(5)	;volatile
	line	14
	
l1671:	
;main.c: 14: PORTB = 0x00;
	clrf	(6)	;volatile
	line	15
;main.c: 15: ((STATUS) |= 1 << (RP0));
	movlw	(01h)
	movwf	(??_init+0)+0
	movlw	0
	btfsc	(29/8),(29)&7
	movlw	1
	addlw	1
	goto	u2314
u2315:
	clrc
	rlf	(??_init+0)+0,f
u2314:
	addlw	-1
	skipz
	goto	u2315
	movf	0+(??_init+0)+0,w
	movwf	(??_init+1)+0
	movf	(??_init+1)+0,w
	iorwf	(3),f	;volatile
	line	16
	
l1673:	
;main.c: 16: TRISA = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	17
	
l1675:	
;main.c: 17: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	18
	
l169:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
