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
	retlw	01Fh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	08Fh
	retlw	0

	global	_PORTB
_PORTB	set	0x6
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
	file	"dist/default/debug\2x7_segment_display.X.debug.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"7segmentdisplay.c"
	line	10
_digits:
       ds      8

	file	"dist/default/debug\2x7_segment_display.X.debug.s"
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
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        8
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            66      4      12

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
;! (0) _main                                                 4     4      0      68
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
;!BANK0               66      4      12     18.2%
;!BITBANK0            66      0       0      0.0%
;!COMMON               0      0       0      0.0%
;!BITCOMMON            0      0       0      0.0%
;!DATA                 0      0      12      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "7segmentdisplay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[BANK0 ] int 
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
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"7segmentdisplay.c"
	line	13
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	15
	
l578:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	16
	clrf	(134)^080h	;volatile
	line	20
	
l15:	
	line	22
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	23
	
l584:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	low(_digits|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	24
	
l586:	
	asmopt push
asmopt off
movlw	130
movwf	((??_main+0)+0+1)
	movlw	221
movwf	((??_main+0)+0)
	u37:
decfsz	((??_main+0)+0),f
	goto	u37
	decfsz	((??_main+0)+0+1),f
	goto	u37
	nop2
asmopt pop

	line	25
	
l588:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	0
	addwf	(main@i+1),f
	
l590:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	05h
	subwf	(main@i),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l584
u20:
	goto	l15
	global	start
	ljmp	start
	callstack 0
	line	29
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
