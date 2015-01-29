	.module TEST_FT245.C
	.area text(rom, con, rel)
	.dbfile E:\USBTOOLS_CD\FT245E~1\目标MCU源程序\T2313TEST\TEST_FT245.C
	.dbfunc e delay50us _delay50us fV
;              j -> R20
;              t -> R16,R17
	.even
_delay50us::
	rcall push_gset1
	.dbline -1
	.dbline 41
; #include <iot2313v.h>
; #include <macros.h>
; 
; typedef unsigned char	uint8;
; typedef unsigned int	uint16;
; typedef signed  char	sint8;
; typedef signed	int		sint16;
; 
; #define sbi(io,bit)		(  io |=  (1<<bit) )	//example: sbi(PORTA,0);sbi(DDRA,0);
; #define cbi(io,bit)		(  io &= ~(1<<bit) )	//example: cbi(PORTA,0);cbi(DDRA,0);
; #define gbi(pin ,bit)	( pin &   (1<<bit) )	//example: gbi(PINA,0);
; 
; #define DATA_DDR   DDRB
; #define DATA_PORT  PORTB
; 
; #define IN_RD_EN    cbi(DDRD,3)      //PD3
; #define SET_RD_EN   sbi(PORTD,3)
; #define GET_RD_EN   gbi(PIND,3)
; 
; #define IN_WR_EN    cbi(DDRD,2)      //PD2
; #define SET_WR_EN   sbi(PORTD,2)
; #define GET_WR_EN   gbi(PIND,2)
; 
; #define IN_RXF      cbi(DDRD,0)      //PD0
; #define SET_RXF     sbi(PORTD,0)
; #define GET_RXF     gbi(PIND,0)
; 
; #define IN_TXE      cbi(DDRD,1)      //PD1
; #define SET_TXE     sbi(PORTD,1)
; #define GET_TXE     gbi(PIND,1)
; 
; #define OUT_RD      sbi(DDRD,4)      //PD4
; #define RD_ON       sbi(PORTD,4)
; #define RD_OFF      cbi(PORTD,4)
; 
; #define OUT_WR      sbi(DDRD,5)      //PD5
; #define WR_ON       sbi(PORTD,5)
; #define WR_OFF      cbi(PORTD,5)
; 
; void delay50us(sint16 t)
; {
	.dbline 43
;     uint8 j;		
;     for(;t>0;t--)			
	rjmp L5
L2:
	.dbline 44
;         for(j=0;j<70;j++)	
	clr R20
	rjmp L9
L6:
	.dbline 45
L7:
	.dbline 44
	inc R20
L9:
	.dbline 44
	cpi R20,70
	brlo L6
L3:
	.dbline 43
	subi R16,1
	sbci R17,0
L5:
	.dbline 43
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L2
	.dbline -2
L1:
	rcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r j 20 c
	.dbsym r t 16 I
	.dbend
	.dbfunc e delay50ms _delay50ms fV
;              i -> R20,R21
;              t -> R16,R17
	.even
_delay50ms::
	rcall push_gset1
	.dbline -1
	.dbline 49
;             ;
; }
; 
; void delay50ms(sint16 t)
; {
	.dbline 51
; 	uint16 i; 
; 	for(;t>0;t--)
	rjmp L14
L11:
	.dbline 52
; 		for(i=0;i<52642;i++)
	clr R20
	clr R21
	rjmp L18
L15:
	.dbline 53
L16:
	.dbline 52
	subi R20,255  ; offset = 1
	sbci R21,255
L18:
	.dbline 52
	cpi R20,162
	ldi R30,205
	cpc R21,R30
	brlo L15
L12:
	.dbline 51
	subi R16,1
	sbci R17,0
L14:
	.dbline 51
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L11
	.dbline -2
L10:
	rcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 I
	.dbend
	.dbfunc e write_to_ft245 _write_to_ft245 fV
	.even
_write_to_ft245::
	.dbline -1
	.dbline 57
; 			; 
; }
; 
; void write_to_ft245()
; {
	.dbline 58
;     DATA_PORT++;
	in R24,0x18
	subi R24,255    ; addi 1
	out 0x18,R24
	.dbline 59
;     delay50ms(10);
	ldi R16,10
	ldi R17,0
	rcall _delay50ms
	.dbline 60
;     WR_OFF;
	cbi 0x12,5
	.dbline 61
;     delay50us(10);
	ldi R16,10
	ldi R17,0
	rcall _delay50us
	.dbline 62
;     WR_ON;
	sbi 0x12,5
	.dbline 63
;     delay50us(10);
	ldi R16,10
	ldi R17,0
	rcall _delay50us
	.dbline -2
L19:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e read_from_ft245 _read_from_ft245 fV
	.even
_read_from_ft245::
	.dbline -1
	.dbline 67
; }
; 
; void read_from_ft245()
; {
	.dbline 68
;     RD_OFF;
	cbi 0x12,4
	.dbline 69
;     delay50us(10);
	ldi R16,10
	ldi R17,0
	rcall _delay50us
	.dbline 70
;     RD_ON;
	sbi 0x12,4
	.dbline 71
;     delay50us(10);
	ldi R16,10
	ldi R17,0
	rcall _delay50us
	.dbline -2
L20:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;              j -> <dead>
;              i -> <dead>
	.even
_main::
	.dbline -1
	.dbline 75
; }
; 
; void main()
; {
	.dbline 78
;     uint8 i,j;
; 
;     DATA_DDR=0XFF;
	ldi R24,255
	out 0x17,R24
	.dbline 79
;     OUT_WR;
	sbi 0x11,5
	.dbline 80
;     OUT_RD;
	sbi 0x11,4
	.dbline 81
;     IN_WR_EN;
	cbi 0x11,2
	.dbline 82
;     IN_RD_EN;
	cbi 0x11,3
	rjmp L23
L22:
	.dbline 85
; 
;     while(1)
;     {
	.dbline 86
;         SET_WR_EN;
	sbi 0x12,2
	.dbline 87
;         if(!GET_WR_EN)
	sbic 0x10,2
	rjmp L25
	.dbline 88
;             write_to_ft245();
	rcall _write_to_ft245
L25:
	.dbline 90
; 
;         SET_RD_EN;
	sbi 0x12,3
	.dbline 91
;         if(!GET_RD_EN)
	sbic 0x10,3
	rjmp L27
	.dbline 92
;             read_from_ft245();
	rcall _read_from_ft245
L27:
	.dbline 93
L23:
	.dbline 84
	rjmp L22
X0:
	.dbline -2
L21:
	.dbline 0 ; func end
	ret
	.dbsym l j 1 c
	.dbsym l i 1 c
	.dbend
