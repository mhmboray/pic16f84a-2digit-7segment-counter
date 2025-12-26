subtitle "Microchip MPLAB XC8 C Compiler v3.00 (Free license) build 20241204225717 Og1 "

pagewidth 120

	opt flic

	processor	16F84A
include "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f84a.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
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
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PORTA equ 05h ;# 
# 212 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PORTB equ 06h ;# 
# 274 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EEDATA equ 08h ;# 
# 281 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EEADR equ 09h ;# 
# 288 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PCLATH equ 0Ah ;# 
# 308 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
INTCON equ 0Bh ;# 
# 386 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
OPTION_REG equ 081h ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
TRISA equ 085h ;# 
# 500 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
TRISB equ 086h ;# 
# 562 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EECON1 equ 088h ;# 
# 606 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EECON2 equ 089h ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PORTA equ 05h ;# 
# 212 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PORTB equ 06h ;# 
# 274 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EEDATA equ 08h ;# 
# 281 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EEADR equ 09h ;# 
# 288 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
PCLATH equ 0Ah ;# 
# 308 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
INTCON equ 0Bh ;# 
# 386 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
OPTION_REG equ 081h ;# 
# 456 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
TRISA equ 085h ;# 
# 500 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
TRISB equ 086h ;# 
# 562 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EECON1 equ 088h ;# 
# 606 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f84a.h"
EECON2 equ 089h ;# 
	debug_source C
	FNROOT	_main
	global	_digits
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"7segmentdisplay.c"
	line	10

;initializer for _digits
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_j
	global	_i
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_i:
       ds      2

	global	_PORTB
_PORTB	set	0x6
	global	_RA1
_RA1	set	0x29
	global	_RA0
_RA0	set	0x28
	global	_TRISB
_TRISB	set	0x86
	global	_TRISA
_TRISA	set	0x85
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "XT"
	config WDTE = "OFF"
	config PWRTE = "OFF"
	config CP = "OFF"
	file	"dist/production/debug\2x7_segment_display.X.debug.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_j:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"7segmentdisplay.c"
	line	10
_digits:
       ds      10

	file	"dist/production/debug\2x7_segment_display.X.debug.s"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        10
;!    BSS         2
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            66      4      18

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
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
;! (0) _main                                                 4     4      0      46
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BANK0               66      4      18     27.3%
;!BITBANK0            66      0       0      0.0%
;!COMMON               0      0       0      0.0%
;!BITCOMMON            0      0       0      0.0%
;!DATA                 0      0      18      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 26 in file "7segmentdisplay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       2
;;      Temps:          0       2
;;      Totals:         0       4
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"7segmentdisplay.c"
	line	26
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"7segmentdisplay.c"
	line	26
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	28
	
l614:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	29
	clrf	(134)^080h	;volatile
	line	31
	
l23:	
	line	33
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_i)
	clrf	(_i+1)
	line	35
	
l620:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_j)
	clrf	(_j+1)
	line	37
	
l626:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@k)
	clrf	(main@k+1)
	
l28:	
	line	40
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	41
	bcf	(41/8),(41)&7	;volatile
	line	42
	
l632:	
	movf	(_j),w
	addlw	low(_digits|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	43
	
l634:	
	asmopt push
asmopt off
movlw	13
movwf	((??_main+0)+0+1)
	movlw	251
movwf	((??_main+0)+0)
	u77:
decfsz	((??_main+0)+0),f
	goto	u77
	decfsz	((??_main+0)+0+1),f
	goto	u77
	nop2
asmopt pop

	line	44
	
l636:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	45
	
l638:	
	bsf	(41/8),(41)&7	;volatile
	line	46
	
l640:	
	movf	(_i),w
	addlw	low(_digits|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	47
	asmopt push
asmopt off
movlw	13
movwf	((??_main+0)+0+1)
	movlw	251
movwf	((??_main+0)+0)
	u87:
decfsz	((??_main+0)+0),f
	goto	u87
	decfsz	((??_main+0)+0+1),f
	goto	u87
	nop2
asmopt pop

	line	48
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	0
	addwf	(main@k+1),f
	
l642:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	01h
	subwf	(main@k),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l28
u40:
	line	49
	
l644:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	0
	addwf	(_j+1),f
	
l646:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	0Ah
	subwf	(_j),w
u55:

	skipc
	goto	u51
	goto	u50
u51:
	goto	l626
u50:
	line	50
	
l648:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	0
	addwf	(_i+1),f
	
l650:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	0Ah
	subwf	(_i),w
u65:

	skipc
	goto	u61
	goto	u60
u61:
	goto	l620
u60:
	goto	l23
	global	start
	ljmp	start
	callstack 0
	line	52
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
