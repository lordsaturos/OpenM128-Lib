	.module CycleLower65535us.c
	.area text(rom, con, rel)
	.dbfile D:\ICC_H\Software.H
	.dbfunc e speaData _speaData fV
;              y -> y+4
;              j -> y+0
;              i -> R10
;            len -> R12
;            dat -> y+16
	.even
_speaData::
	xcall push_arg4
	xcall push_gset4
	sbiw R28,8
	ldd R12,y+20
	.dbline -1
	.dbline 116
; /*********************************************************************
; 	Î¢ Ñ© µç ×Ó   WaveShare   http://www.waveShare.`net            	
; 		                                                        
; Ä¿    µÄ:   ½¨Á¢Ê¹ÓÃICP1×öÖÜÆÚ²âÁ¿µÄÊ¾Àý³ÌÐò£¨ÖÜÆÚÐ¡ÓÚ65535US£©
; 	
; Ä¿±êÏµÍ³:   »ùÓÚAVRµ¥Æ¬»ú
; 		                                                                
; Ó¦ÓÃÈí¼þ:   ICCAVR
; 		                                                                
; °æ    ±¾:   Version 1.0                                                          
; 		                                                                
; Ô²°æÊ±¼ä:   2005-06-25
; 	
; ¿ª·¢ÈËÔ±:   SEE
; 
; Ëµ    Ã÷:   ÈôÓÃÓÚÉÌÒµÓÃÍ¾£¬Çë±£Áô´Ë¶ÎÎÄ×Ö»ò×¢Ã÷´úÂëÀ´Ô´
; 	
; 	Éî ÛÚ ÊÐ Î¢ Ñ© µç ×Ó ÓÐ ÏÞ ¹« Ë¾ ±£ Áô Ëù ÓÐ µÄ °æ È¨     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ---------------------------------------------------------------------
; °æ±¾¸üÐÂ¼ÇÂ¼£º
; 
; ----------------------------------------------------------------------
; ÊµÑéÄÚÈÝ£º
; Ê¹ÓÃTIMER1×öÖÜÆÚ³¤¶ÈÐ¡ÓÚ65535usµÄÖÜÆÚ²âÁ¿¡£
; ----------------------------------------------------------------------
; Ó²¼þÁ¬½Ó£º	
; ½«Lcd1602²åÈëÖ÷°åµÄLcd1602²å²Û,
; Ê¹ÓÃÁ¬½ÓÏß½«LCD1602µÄÒýÕë½Ó¿ÚÁ¬½Óµ½MCU£º
; //LCD1602£¬4Î»½Ó¿Ú£¬¼´Ê¹ÓÃD4-D7Êý¾Ý¿Ú£¬D0-D3²»½ÓÈëMCU
; //PIN1 --- GND
; //PIN2 --- VCC
; //PIN3 --- V0
; //PIN4 --- RS --- PB5
; //PIN5 --- R/W --- PB6
; //PIN6 --- E --- PB7
; //PIN7 --- D0
; //PIN8 --- D1
; //PIN9 --- D2
; //PIN10 --- D3
; //PIN11 --- D4 --- PD4
; //PIN12 --- D5 --- PD5
; //PIN13 --- D6 --- PD6
; //PIN14 --- D7 --- PD7
; //PIN15 --- VCC
; //PIN16 --- GND
; ----------------------------------------------------------------------
; ×¢ÒâÊÂÏî£º 
; £¨1£©ÈôÓÐ¼ÓÔØ¿âº¯Êý£¬Çë½«¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°¿âº¯Êý¡±ÏÂµÄ¡°ICC_H¡±ÎÄ¼þ¼Ð¿½µ½DÅÌ
; £¨2£©ÇëÏêÏ¸ÔÄ¶Á£º¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ËµÃ÷×ÊÁÏ¡±
; 		
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h>
; #include "D:\ICC_H\CmmICC.H"
; 
; /* lcd control and data port direction */
; #define LCD_DDR_OUT {DDRD|= 0xF0;DDRB |= 0xE0;}
; 
; /* control port */
; #define SET_RS  sbi(PORTB,5)
; #define CLR_RS  cbi(PORTB,5)
; #define OUT_RS  sbi(DDRB,5)
; 
; #define SET_RW  sbi(PORTB,6)
; #define CLR_RW  cbi(PORTB,6)
; #define OUT_RW  sbi(DDRB,6)
; 
; #define SET_E   sbi(PORTB,7)
; #define CLR_E   cbi(PORTB,7)
; #define OUT_E   sbi(DDRB,7)
; 
; /* data port */
; #define SET_D4  sbi(PORTD,4)
; #define CLR_D4  cbi(PORTD,4)
; #define OUT_D4  sbi(DDRD,4)
; 
; #define SET_D5  sbi(PORTD,5)
; #define CLR_D5  cbi(PORTD,5)
; #define OUT_D5  sbi(DDRD,5)
; 
; #define SET_D6  sbi(PORTD,6)
; #define CLR_D6  cbi(PORTD,6)
; #define OUT_D6  sbi(DDRD,6)
; 
; #define SET_D7  sbi(PORTD,7)
; #define CLR_D7  cbi(PORTD,7)
; #define OUT_D7  sbi(DDRD,7)
; 
; /* busy port */
; #define GET_BF	gbi(PIND,7)
; #define OUT_BF	sbi(DDRD,7)
; #define IN_BF	cbi(DDRD,7)
; 
; #include "D:\ICC_H\LCD1602_.H"
; 
; uint32 cycle;  
; uint16 T1OvfTimes=0;
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º»ùÓÚ7.3728M¾§Õñ
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void timer1_init(void)
; {
; 	TCCR1B = 0x00;		//stop
; 	TCNT1 = 0; 			//setup
; 	ICR1 =  0;
; 	TCCR1A = 0x00;
; 	TCCR1B = 0xC2;		//start Timer, prescale:8
	.dbline 119
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
	clr R10
	ldi R20,1
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+0,R20
	std z+1,R21
	std z+2,R22
	std z+3,R23
	xjmp L5
L2:
	.dbline 120
	.dbline 121
	movw R30,R28
	ldd R2,z+0
	ldd R3,z+1
	ldd R4,z+2
	ldd R5,z+3
	movw R30,R28
	ldd R6,z+16
	ldd R7,z+17
	ldd R8,z+18
	ldd R9,z+19
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R6
	movw R18,R8
	xcall div32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 122
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R10
	clr R31
	add R30,R24
	adc R31,R25
	std z+0,R16
	.dbline 123
	movw R30,R28
	ldd R2,z+0
	ldd R3,z+1
	ldd R4,z+2
	ldd R5,z+3
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	movw R30,R28
	std z+0,R16
	std z+1,R17
	std z+2,R18
	std z+3,R19
	.dbline 124
L3:
	.dbline 119
	inc R10
L5:
	.dbline 119
	cp R10,R12
	brsh X0
	xjmp L2
X0:
	.dbline -2
L1:
	adiw R28,8
	xcall pop_gset4
	adiw R28,4
	.dbline 0 ; func end
	ret
	.dbsym l y 4 l
	.dbsym l j 0 l
	.dbsym r i 10 c
	.dbsym r len 12 C
	.dbsym l dat 16 l
	.dbend
	.dbfile D:\ICC_H\I2C.H
	.dbfunc e I2C_Start _I2C_Start fc
	.even
_I2C_Start::
	.dbline -1
	.dbline 128
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; #pragma interrupt_handler timer1_capt_isr:6
; void timer1_capt_isr(void)
; {
	.dbline 129
; 	TCCR1B = 0x00;		//stop
	ldi R24,164
	out 0x36,R24
	.dbline 130
L7:
	.dbline 130
L8:
	.dbline 130
; 	//frq=(ICR1+86);
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 130
	.dbline 130
	.dbline 131
; 	//frq=TIME_1S/frq;	// read (int)value in ICR1 using
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 132
; 	cycle=ICR1-24;
	clr R16
	xjmp L6
L10:
	.dbline 133
; 	//cycle = 1000000;
	ldi R16,1
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e I2C_Restart _I2C_Restart fc
	.even
_I2C_Restart::
	.dbline -1
	.dbline 144
; 	if(T1OvfTimes!=0)
; 		cycle += (uint32)T1OvfTimes*65535;
; 	T1OvfTimes = 0;
; 	ICR1=0;
; 	TCNT1=0;
; 	TCCR1B=0XC2;
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
	.dbline 145
; ÌáÊ¾ËµÃ÷£º
	ldi R24,164
	out 0x36,R24
	.dbline 146
L13:
	.dbline 146
L14:
	.dbline 146
; Êä    Èë£º
	in R2,0x36
	sbrs R2,7
	rjmp L13
	.dbline 146
	.dbline 146
	.dbline 147
; ·µ    »Ø£º
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 148
; --------------------------------------------------------------------*/
	clr R16
	xjmp L12
L16:
	.dbline 149
; #pragma interrupt_handler timer1_ovf_isr:9
	ldi R16,1
	.dbline -2
L12:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e I2C_SendWrDAdr _I2C_SendWrDAdr fc
;         wrDAdr -> R16
	.even
_I2C_SendWrDAdr::
	.dbline -1
	.dbline 160
; void timer1_ovf_isr(void)
; {
; 	T1OvfTimes++;
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
	.dbline 161
; --------------------------------------------------------------------*/
	.dbline 161
	out 0x3,R16
	.dbline 161
	ldi R24,132
	out 0x36,R24
	.dbline 161
	.dbline 161
	.dbline 162
L19:
	.dbline 162
L20:
	.dbline 162
; void mcu_init(void)
	in R2,0x36
	sbrs R2,7
	rjmp L19
	.dbline 162
	.dbline 162
	.dbline 163
; {
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 164
; 	CLI();
	clr R16
	xjmp L18
L22:
	.dbline 165
; 	timer1_init();
	ldi R16,1
	.dbline -2
L18:
	.dbline 0 ; func end
	ret
	.dbsym r wrDAdr 16 c
	.dbend
	.dbfunc e I2C_SendWrDAdr_ _I2C_SendWrDAdr_ fc
;         wrDAdr -> R20,R21
	.even
_I2C_SendWrDAdr_::
	xcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 176
; 	MCUCR = 0x00;
; 	GICR  = 0x00;
; 	TIMSK = 0x24; 
; 	SEI(); 
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
	.dbline 177
; ·µ    »Ø£º
	sbrs R20,0
	rjmp L25
	.dbline 178
; --------------------------------------------------------------------*/
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L27
	.dbline 179
; void main(void)
	clr R16
	xjmp L24
L27:
L25:
	.dbline 180
; {
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 181
; 	mcu_init();
	clr R16
	xjmp L24
L29:
	.dbline 182
; 	DDRB = 0X00;	//set ICP port as input
	ldi R16,1
	.dbline -2
L24:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r wrDAdr 20 i
	.dbend
	.dbfunc e I2C_SendRdDAdr _I2C_SendRdDAdr fc
;         rdDAdr -> R16
	.even
_I2C_SendRdDAdr::
	.dbline -1
	.dbline 193
; 	LCD_DDR_OUT;	//set lcd port as output
; 
; 	LCD1602_init();
; 	LCD1602_puts(0x80,"Cycle:   s ms us");
; 	while(1)
; 	{ 
; 		LCD1602_putd(0xcf,cycle,7);
; 		delay50ms(10);
; 	}
; }
; }
	.dbline 194
; }
	.dbline 194
	out 0x3,R16
	.dbline 194
	ldi R24,132
	out 0x36,R24
	.dbline 194
	.dbline 194
	.dbline 195
L32:
	.dbline 195
L33:
	.dbline 195
; }
	in R2,0x36
	sbrs R2,7
	rjmp L32
	.dbline 195
	.dbline 195
	.dbline 196
; }
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 197
; }
	clr R16
	xjmp L31
L35:
	.dbline 198
; }
	ldi R16,1
	.dbline -2
L31:
	.dbline 0 ; func end
	ret
	.dbsym r rdDAdr 16 c
	.dbend
	.dbfunc e I2C_SendRdDAdr_ _I2C_SendRdDAdr_ fc
;         rdDAdr -> R20
	.even
_I2C_SendRdDAdr_::
	xcall push_gset1
	mov R20,R16
	.dbline -1
	.dbline 209
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 210
; ´ÉÓ
	sbrs R20,0
	rjmp L38
	.dbline 211
; ´ÉÓ
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L40
	.dbline 212
; ´ÉÓ
	clr R16
	xjmp L37
L40:
L38:
	.dbline 213
; ´ÉÓ
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 214
; ´ÉÓ
	clr R16
	xjmp L37
L42:
	.dbline 215
; ´ÉÓ
	ldi R16,1
	.dbline -2
L37:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r rdDAdr 20 c
	.dbend
	.dbfunc e I2C_SendDat _I2C_SendDat fc
;      configDat -> R16
	.even
_I2C_SendDat::
	.dbline -1
	.dbline 226
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 227
; ´ÉÓ
	.dbline 227
	out 0x3,R16
	.dbline 227
	ldi R24,132
	out 0x36,R24
	.dbline 227
	.dbline 227
	.dbline 228
L45:
	.dbline 228
L46:
	.dbline 228
; ´ÉÓ
	in R2,0x36
	sbrs R2,7
	rjmp L45
	.dbline 228
	.dbline 228
	.dbline 229
; ´ÉÓ
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 230
; ´ÉÓ
	clr R16
	xjmp L44
L48:
	.dbline 231
; ´ÉÓ
	ldi R16,1
	.dbline -2
L44:
	.dbline 0 ; func end
	ret
	.dbsym r configDat 16 c
	.dbend
	.dbfunc e I2C_RcvNAckDat _I2C_RcvNAckDat fc
;         pRdDat -> R16,R17
	.even
_I2C_RcvNAckDat::
	.dbline -1
	.dbline 242
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 243
; ´ÉÓ
	ldi R24,132
	out 0x36,R24
	.dbline 244
L51:
	.dbline 244
L52:
	.dbline 244
; ´ÉÓ
	in R2,0x36
	sbrs R2,7
	rjmp L51
	.dbline 244
	.dbline 244
	.dbline 245
; ´ÉÓ
	in R24,0x1
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 246
; ´ÉÓ
	clr R16
	xjmp L50
L54:
	.dbline 247
; ´ÉÓ
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 248
; ´ÉÓ
	ldi R16,1
	.dbline -2
L50:
	.dbline 0 ; func end
	ret
	.dbsym r pRdDat 16 pc
	.dbend
	.dbfunc e I2C_RcvAckDat _I2C_RcvAckDat fc
;         pRdDat -> R16,R17
	.even
_I2C_RcvAckDat::
	.dbline -1
	.dbline 259
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 260
; ´ÉÓ
	ldi R24,196
	out 0x36,R24
	.dbline 261
L57:
	.dbline 261
L58:
	.dbline 261
; ´ÉÓ
	in R2,0x36
	sbrs R2,7
	rjmp L57
	.dbline 261
	.dbline 261
	.dbline 262
; ´ÉÓ
	in R24,0x1
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 263
; ´ÉÓ
	clr R16
	xjmp L56
L60:
	.dbline 264
; ´ÉÓ
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 265
; ´ÉÓ
	ldi R16,1
	.dbline -2
L56:
	.dbline 0 ; func end
	ret
	.dbsym r pRdDat 16 pc
	.dbend
	.dbfunc e I2C_Write _I2C_Write fc
;            dat -> y+4
;        wordAdr -> R20
;         wrDAdr -> R22,R23
	.even
_I2C_Write::
	xcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 278
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 279
; ´ÉÓ
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 280
; ´ÉÓ
	clr R16
	xjmp L62
L63:
	.dbline 282
; ´ÉÓ
; ´ÉÓ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 283
; ´ÉÓ
	clr R16
	xjmp L62
L65:
	.dbline 285
; ´ÉÓ
; ´ÉÓ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 286
; ´ÉÓ
	clr R16
	xjmp L62
L67:
	.dbline 288
; ´ÉÓ
; ´ÉÓ
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 289
; ´ÉÓ
	clr R16
	xjmp L62
L69:
	.dbline 291
; ´ÉÓ
; ´ÉÓ
	ldi R24,148
	out 0x36,R24
	.dbline 293
; ´ÉÓ
; ´ÉÓ
	ldi R16,1
	.dbline -2
L62:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym l dat 4 c
	.dbsym r wordAdr 20 c
	.dbsym r wrDAdr 22 i
	.dbend
	.dbfunc e I2C_Read _I2C_Read fc
;         pRdDat -> y+6
;         rdDAdr -> y+4
;        wordAdr -> R20
;         wrDAdr -> R22,R23
	.even
_I2C_Read::
	xcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 324
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 325
; ´ÉÓ
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 326
; ´ÉÓ
	clr R16
	xjmp L71
L72:
	.dbline 328
; ´ÉÓ
; ´ÉÓ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 329
; ´ÉÓ
	clr R16
	xjmp L71
L74:
	.dbline 331
; ´ÉÓ
; ´ÉÓ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 332
; ´ÉÓ
	clr R16
	xjmp L71
L76:
	.dbline 334
; ´ÉÓ
; ´ÉÓ
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 335
; ´ÉÓ
	clr R16
	xjmp L71
L78:
	.dbline 337
; ´ÉÓ
; ´ÉÓ
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 338
; ´ÉÓ
	clr R16
	xjmp L71
L80:
	.dbline 340
; ´ÉÓ
; ´ÉÓ
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 341
; ´ÉÓ
	clr R16
	xjmp L71
L82:
	.dbline 343
; ´ÉÓ
; ´ÉÓ
	ldi R24,148
	out 0x36,R24
	.dbline 345
; ´ÉÓ
; ´ÉÓ
	ldi R16,1
	.dbline -2
L71:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym l pRdDat 6 pc
	.dbsym l rdDAdr 4 c
	.dbsym r wordAdr 20 c
	.dbsym r wrDAdr 22 i
	.dbend
	.dbfunc e I2C_Read_ _I2C_Read_ fc
;              i -> R20
;            num -> R22
;         pRdDat -> R10,R11
;         rdDAdr -> y+8
;        wordAdr -> R20
;         wrDAdr -> R12,R13
	.even
_I2C_Read_::
	xcall push_gset4
	mov R20,R18
	movw R12,R16
	ldd R10,y+10
	ldd R11,y+11
	ldd R22,y+12
	.dbline -1
	.dbline 361
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	.dbline 364
; ´ÉÓ
; ´ÉÓ
; ´ÉÓ
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 365
; ´ÉÓ
	clr R16
	xjmp L84
L85:
	.dbline 367
; ´ÉÓ
; ´ÉÓ
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 368
; ´ÉÓ
	clr R16
	xjmp L84
L87:
	.dbline 370
; ´ÉÓ
; ´ÉÓ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 371
; ´ÉÓ
	clr R16
	xjmp L84
L89:
	.dbline 373
; ´ÉÓ
; ´ÉÓ
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 374
; ´ÉÓ
	clr R16
	xjmp L84
L91:
	.dbline 376
; ´ÉÓ
; ´ÉÓ
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 377
; ´ÉÓ
	clr R16
	xjmp L84
L93:
	.dbline 379
; ´ÉÓ
; ´ÉÓ
	clr R20
	xjmp L98
L95:
	.dbline 380
; ´ÉÓ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 381
; ´ÉÓ
	clr R16
	xjmp L84
L99:
L96:
	.dbline 379
	inc R20
L98:
	.dbline 379
	mov R24,R22
	subi R24,1
	cp R20,R24
	brlo L95
	.dbline 383
; ´ÉÓ
; ´ÉÓ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 384
; ´ÉÓ
	clr R16
	xjmp L84
L101:
	.dbline 386
; ´ÉÓ
; ´ÉÓ
	ldi R24,148
	out 0x36,R24
	.dbline 388
; ´ÉÓ
; ´ÉÓ
	ldi R16,1
	.dbline -2
L84:
	xcall pop_gset4
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r num 22 c
	.dbsym r pRdDat 10 pc
	.dbsym l rdDAdr 8 c
	.dbsym r wordAdr 20 c
	.dbsym r wrDAdr 12 i
	.dbend
	.dbfile D:\ICC_H\Hardware.H
	.dbfunc e delay50us _delay50us fV
;              j -> R20
;              t -> R16,R17
	.even
_delay50us::
	xcall push_gset1
	.dbline -1
	.dbline 105
	.dbline 107
	xjmp L107
L104:
	.dbline 108
	clr R20
	xjmp L111
L108:
	.dbline 109
L109:
	.dbline 108
	inc R20
L111:
	.dbline 108
	cpi R20,70
	brlo L108
L105:
	.dbline 107
	subi R16,1
	sbci R17,0
L107:
	.dbline 107
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L104
	.dbline -2
L103:
	xcall pop_gset1
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
	xcall push_gset1
	.dbline -1
	.dbline 120
	.dbline 122
	xjmp L116
L113:
	.dbline 123
	clr R20
	clr R21
	xjmp L120
L117:
	.dbline 124
L118:
	.dbline 123
	subi R20,255  ; offset = 1
	sbci R21,255
L120:
	.dbline 123
	cpi R20,162
	ldi R30,205
	cpc R21,R30
	brlo L117
L114:
	.dbline 122
	subi R16,1
	sbci R17,0
L116:
	.dbline 122
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L113
	.dbline -2
L112:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 I
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Hardware.H
_LCD1602Err::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Hardware.H
	.dbfile D:\ICC_H\LCD1602_.H
	.dbsym e LCD1602Err _LCD1602Err c
	.area text(rom, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.dbfunc e busy _busy fV
;        busySta -> R16
;    busyCounter -> R18,R19
	.even
_busy::
	.dbline -1
	.dbline 153
	.dbline 154
	clr R18
	clr R19
	.dbline 156
	cbi 0x11,7
	.dbline 157
	sbi 0x12,4
	.dbline 158
	sbi 0x12,5
	.dbline 159
	sbi 0x12,6
	.dbline 160
	sbi 0x12,7
	.dbline 161
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	nop
	.dbline 161
	.dbline 161
	.dbline 162
	cbi 0x18,5
	.dbline 163
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	nop
	.dbline 163
	.dbline 163
	.dbline 164
	sbi 0x18,6
	.dbline 165
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	nop
	.dbline 165
	.dbline 165
L122:
	.dbline 168
	.dbline 169
	sbi 0x18,7
	.dbline 170
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	nop
	.dbline 170
	.dbline 170
	.dbline 172
	in R16,0x10
	clr R17
	andi R16,128
	andi R17,0
	.dbline 173
	cbi 0x18,7
	.dbline 174
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	nop
	.dbline 174
	.dbline 174
	.dbline 176
	sbi 0x12,4
	.dbline 177
	sbi 0x12,5
	.dbline 178
	sbi 0x12,6
	.dbline 179
	sbi 0x12,7
	.dbline 180
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	nop
	.dbline 180
	.dbline 180
	.dbline 181
	sbi 0x18,7
	.dbline 182
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	nop
	.dbline 182
	.dbline 182
	.dbline 184
	cbi 0x18,7
	.dbline 185
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	nop
	.dbline 185
	.dbline 185
	.dbline 186
	cpi R18,232
	ldi R30,3
	cpc R19,R30
	brne L125
	.dbline 187
	.dbline 188
	ldi R24,1
	sts _LCD1602Err,R24
	.dbline 189
	xjmp L121
L125:
	.dbline 191
	subi R18,255  ; offset = 1
	sbci R19,255
	.dbline 192
L123:
	.dbline 193
	tst R16
	breq X1
	xjmp L122
X1:
	.dbline 195
	clr R2
	sts _LCD1602Err,R2
	.dbline 196
	cbi 0x18,7
	.dbline 197
	sbi 0x11,7
	.dbline -2
L121:
	.dbline 0 ; func end
	ret
	.dbsym r busySta 16 c
	.dbsym r busyCounter 18 i
	.dbend
	.dbfunc e write _write fV
;            dat -> R22
;           flag -> R20
	.even
_write::
	xcall push_gset2
	mov R22,R18
	mov R20,R16
	.dbline -1
	.dbline 208
	.dbline 209
	sts _bdat,R22
	.dbline 210
	xcall _busy
	.dbline 211
	tst R20
	breq L128
	.dbline 212
	sbi 0x18,5
	xjmp L129
L128:
	.dbline 214
	cbi 0x18,5
L129:
	.dbline 215
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	nop
	.dbline 215
	.dbline 215
	.dbline 216
	cbi 0x18,6
	.dbline 217
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	nop
	.dbline 217
	.dbline 217
	.dbline 218
	lds R2,_bdat
	sbrs R2,4
	rjmp L130
	.dbline 219
	sbi 0x12,4
	xjmp L131
L130:
	.dbline 221
	cbi 0x12,4
L131:
	.dbline 222
	lds R2,_bdat
	sbrs R2,5
	rjmp L132
	.dbline 223
	sbi 0x12,5
	xjmp L133
L132:
	.dbline 225
	cbi 0x12,5
L133:
	.dbline 226
	lds R2,_bdat
	sbrs R2,6
	rjmp L134
	.dbline 227
	sbi 0x12,6
	xjmp L135
L134:
	.dbline 229
	cbi 0x12,6
L135:
	.dbline 230
	lds R2,_bdat
	sbrs R2,7
	rjmp L136
	.dbline 231
	sbi 0x12,7
	xjmp L137
L136:
	.dbline 233
	cbi 0x12,7
L137:
	.dbline 234
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	nop
	.dbline 234
	.dbline 234
	.dbline 235
	sbi 0x18,7
	.dbline 236
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	nop
	.dbline 236
	.dbline 236
	.dbline 237
	cbi 0x18,7
	.dbline 238
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	nop
	.dbline 238
	.dbline 238
	.dbline 240
	lds R2,_bdat
	sbrs R2,0
	rjmp L138
	.dbline 241
	sbi 0x12,4
	xjmp L139
L138:
	.dbline 243
	cbi 0x12,4
L139:
	.dbline 244
	lds R2,_bdat
	sbrs R2,1
	rjmp L140
	.dbline 245
	sbi 0x12,5
	xjmp L141
L140:
	.dbline 247
	cbi 0x12,5
L141:
	.dbline 248
	lds R2,_bdat
	sbrs R2,2
	rjmp L142
	.dbline 249
	sbi 0x12,6
	xjmp L143
L142:
	.dbline 251
	cbi 0x12,6
L143:
	.dbline 252
	lds R2,_bdat
	sbrs R2,3
	rjmp L144
	.dbline 253
	sbi 0x12,7
	xjmp L145
L144:
	.dbline 255
	cbi 0x12,7
L145:
	.dbline 256
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	nop
	.dbline 256
	.dbline 256
	.dbline 257
	sbi 0x18,7
	.dbline 258
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	nop
	.dbline 258
	.dbline 258
	.dbline 259
	cbi 0x18,7
	.dbline 260
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	nop
	.dbline 260
	.dbline 260
	.dbline -2
L127:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r dat 22 c
	.dbsym r flag 20 c
	.dbend
	.dbfunc e LCD1602_setCGRAM _LCD1602_setCGRAM fV
;              i -> R20
;            buf -> R22,R23
;            adr -> R20
	.even
_LCD1602_setCGRAM::
	xcall push_gset2
	movw R22,R18
	mov R20,R16
	.dbline -1
	.dbline 282
	.dbline 284
	ldi R24,8
	mul R24,R20
	mov R18,R0
	subi R18,192    ; addi 64
	clr R16
	xcall _write
	.dbline 285
	clr R20
	xjmp L150
L147:
	.dbline 286
	mov R30,R20
	clr R31
	add R30,R22
	adc R31,R23
	lpm R18,Z
	ldi R16,1
	xcall _write
L148:
	.dbline 285
	inc R20
L150:
	.dbline 285
	cpi R20,8
	brlo L147
	.dbline -2
L146:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r buf 22 pkc
	.dbsym r adr 20 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L152:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L153:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L154:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L155:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L156:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.area text(rom, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.dbfunc e LCD1602_setCmd _LCD1602_setCmd fV
	.dbsym s isACinc L156 c
	.dbsym s shiftEn L155 c
	.dbsym s blinkEn L154 c
	.dbsym s cursorEn L153 c
	.dbsym s dispEn L152 c
;            str -> R20,R21
	.even
_LCD1602_setCmd::
	xcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 308
	.dbline 315
	ldi R18,<L159
	ldi R19,>L159
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L157
X2:
	.dbline 316
	ldi R18,1
	clr R16
	xcall _write
	xjmp L158
L157:
	.dbline 318
	ldi R18,<L162
	ldi R19,>L162
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L160
X3:
	.dbline 319
	ldi R18,2
	clr R16
	xcall _write
	xjmp L161
L160:
	.dbline 323
	ldi R18,<L165
	ldi R19,>L165
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L163
X4:
	.dbline 324
	.dbline 325
	ldi R24,1
	sts L156,R24
	.dbline 326
	lds R2,L155
	tst R2
	breq L166
	.dbline 327
	ldi R18,7
	clr R16
	xcall _write
	xjmp L164
L166:
	.dbline 329
	ldi R18,6
	clr R16
	xcall _write
	.dbline 330
	xjmp L164
L163:
	.dbline 331
	ldi R18,<L170
	ldi R19,>L170
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L168
X5:
	.dbline 332
	.dbline 333
	clr R2
	sts L156,R2
	.dbline 334
	lds R2,L155
	tst R2
	breq L171
	.dbline 335
	ldi R18,5
	clr R16
	xcall _write
	xjmp L169
L171:
	.dbline 337
	ldi R18,4
	clr R16
	xcall _write
	.dbline 338
	xjmp L169
L168:
	.dbline 339
	ldi R18,<L175
	ldi R19,>L175
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L173
X6:
	.dbline 340
	.dbline 341
	ldi R24,1
	sts L155,R24
	.dbline 342
	lds R2,L156
	tst R2
	breq L176
	.dbline 343
	ldi R18,7
	clr R16
	xcall _write
	xjmp L174
L176:
	.dbline 345
	ldi R18,6
	clr R16
	xcall _write
	.dbline 346
	xjmp L174
L173:
	.dbline 347
	ldi R18,<L180
	ldi R19,>L180
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L178
X7:
	.dbline 348
	.dbline 349
	clr R2
	sts L155,R2
	.dbline 350
	lds R2,L156
	tst R2
	breq L181
	.dbline 351
	ldi R18,5
	clr R16
	xcall _write
	xjmp L179
L181:
	.dbline 353
	ldi R18,4
	clr R16
	xcall _write
	.dbline 354
	xjmp L179
L178:
	.dbline 358
	ldi R18,<L185
	ldi R19,>L185
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L183
X8:
	.dbline 359
	.dbline 360
	ldi R24,1
	sts L152,R24
	.dbline 361
	lds R2,L153
	tst R2
	breq L186
	.dbline 362
	lds R2,L154
	tst R2
	breq L188
	.dbline 363
	ldi R18,15
	clr R16
	xcall _write
	xjmp L184
L188:
	.dbline 365
	ldi R18,14
	clr R16
	xcall _write
	xjmp L184
L186:
	.dbline 367
	lds R2,L154
	tst R2
	breq L190
	.dbline 368
	ldi R18,13
	clr R16
	xcall _write
	xjmp L184
L190:
	.dbline 370
	ldi R18,12
	clr R16
	xcall _write
	.dbline 371
	xjmp L184
L183:
	.dbline 372
	ldi R18,<L194
	ldi R19,>L194
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L192
X9:
	.dbline 373
	.dbline 374
	clr R2
	sts L152,R2
	.dbline 375
	lds R2,L153
	tst R2
	breq L195
	.dbline 376
	lds R2,L154
	tst R2
	breq L197
	.dbline 377
	ldi R18,11
	clr R16
	xcall _write
	xjmp L193
L197:
	.dbline 379
	ldi R18,10
	clr R16
	xcall _write
	xjmp L193
L195:
	.dbline 381
	lds R2,L154
	tst R2
	breq L199
	.dbline 382
	ldi R18,9
	clr R16
	xcall _write
	xjmp L193
L199:
	.dbline 384
	ldi R18,8
	clr R16
	xcall _write
	.dbline 385
	xjmp L193
L192:
	.dbline 386
	ldi R18,<L203
	ldi R19,>L203
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L201
X10:
	.dbline 387
	.dbline 388
	ldi R24,1
	sts L153,R24
	.dbline 389
; h­Ô
	lds R2,L152
	tst R2
	breq L204
	.dbline 390
; h­Ô
	lds R2,L154
	tst R2
	breq L206
	.dbline 391
; h­Ô
	ldi R18,15
	clr R16
	xcall _write
	xjmp L202
L206:
	.dbline 393
; h­Ô
; h­Ô
	ldi R18,14
	clr R16
	xcall _write
	xjmp L202
L204:
	.dbline 395
; h­Ô
; h­Ô
	lds R2,L154
	tst R2
	breq L208
	.dbline 396
; h­Ô
	ldi R18,11
	clr R16
	xcall _write
	xjmp L202
L208:
	.dbline 398
; h­Ô
; h­Ô
	ldi R18,10
	clr R16
	xcall _write
	.dbline 399
; h­Ô
	xjmp L202
L201:
	.dbline 400
; h­Ô
	ldi R18,<L212
	ldi R19,>L212
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L210
X11:
	.dbline 401
; h­Ô
	.dbline 402
; h­Ô
	clr R2
	sts L153,R2
	.dbline 403
; h­Ô
	lds R2,L152
	tst R2
	breq L213
	.dbline 404
; h­Ô
	lds R2,L154
	tst R2
	breq L215
	.dbline 405
; h­Ô
	ldi R18,13
	clr R16
	xcall _write
	xjmp L211
L215:
	.dbline 407
; h­Ô
; h­Ô
	ldi R18,12
	clr R16
	xcall _write
	xjmp L211
L213:
	.dbline 409
; h­Ô
; h­Ô
	lds R2,L154
	tst R2
	breq L217
	.dbline 410
; h­Ô
	ldi R18,9
	clr R16
	xcall _write
	xjmp L211
L217:
	.dbline 412
; h­Ô
; h­Ô
	ldi R18,8
	clr R16
	xcall _write
	.dbline 413
; h­Ô
	xjmp L211
L210:
	.dbline 414
; h­Ô
	ldi R18,<L221
	ldi R19,>L221
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L219
X12:
	.dbline 415
; h­Ô
	.dbline 416
; h­Ô
	ldi R24,1
	sts L154,R24
	.dbline 417
; h­Ô
	lds R2,L152
	tst R2
	breq L222
	.dbline 418
; h­Ô
	lds R2,L153
	tst R2
	breq L224
	.dbline 419
; h­Ô
	ldi R18,15
	clr R16
	xcall _write
	xjmp L220
L224:
	.dbline 421
; h­Ô
; h­Ô
	ldi R18,13
	clr R16
	xcall _write
	xjmp L220
L222:
	.dbline 423
; h­Ô
; h­Ô
	lds R2,L153
	tst R2
	breq L226
	.dbline 424
; h­Ô
	ldi R18,11
	clr R16
	xcall _write
	xjmp L220
L226:
	.dbline 426
; h­Ô
; h­Ô
	ldi R18,9
	clr R16
	xcall _write
	.dbline 427
; h­Ô
	xjmp L220
L219:
	.dbline 428
; h­Ô
	ldi R18,<L230
	ldi R19,>L230
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L228
X13:
	.dbline 429
; h­Ô
	.dbline 430
; h­Ô
	clr R2
	sts L154,R2
	.dbline 431
; h­Ô
	lds R2,L152
	tst R2
	breq L231
	.dbline 432
; h­Ô
	lds R2,L153
	tst R2
	breq L233
	.dbline 433
; h­Ô
	ldi R18,14
	clr R16
	xcall _write
	xjmp L229
L233:
	.dbline 435
; h­Ô
; h­Ô
	ldi R18,12
	clr R16
	xcall _write
	xjmp L229
L231:
	.dbline 437
; h­Ô
; h­Ô
	lds R2,L153
	tst R2
	breq L235
	.dbline 438
; h­Ô
	ldi R18,10
	clr R16
	xcall _write
	xjmp L229
L235:
	.dbline 440
; h­Ô
; h­Ô
	ldi R18,8
	clr R16
	xcall _write
	.dbline 441
; h­Ô
	xjmp L229
L228:
	.dbline 445
; h­Ô
; h­Ô
; h­Ô
; h­Ô
	ldi R18,<L239
	ldi R19,>L239
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L237
X14:
	.dbline 446
; h­Ô
	ldi R18,28
	clr R16
	xcall _write
	xjmp L238
L237:
	.dbline 447
; h­Ô
	ldi R18,<L242
	ldi R19,>L242
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L240
X15:
	.dbline 448
; h­Ô
	ldi R18,24
	clr R16
	xcall _write
	xjmp L241
L240:
	.dbline 449
; h­Ô
	ldi R18,<L245
	ldi R19,>L245
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L243
X16:
	.dbline 450
; h­Ô
	ldi R18,20
	clr R16
	xcall _write
	xjmp L244
L243:
	.dbline 451
; h­Ô
	ldi R18,<L248
	ldi R19,>L248
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L246
X17:
	.dbline 452
; h­Ô
	ldi R18,16
	clr R16
	xcall _write
L246:
L244:
L241:
L238:
L229:
L220:
L211:
L202:
L193:
L184:
L179:
L174:
L169:
L164:
L161:
L158:
	.dbline -2
L151:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r str 20 pc
	.dbend
	.dbfunc e LCD1602_init _LCD1602_init fV
	.even
_LCD1602_init::
	.dbline -1
	.dbline 463
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
	.dbline 464
; h­Ô
	sbi 0x17,5
	.dbline 465
; h­Ô
	sbi 0x17,6
	.dbline 466
; h­Ô
	sbi 0x17,7
	.dbline 467
; h­Ô
	sbi 0x11,4
	.dbline 468
; h­Ô
	sbi 0x11,5
	.dbline 469
; h­Ô
	sbi 0x11,6
	.dbline 470
; h­Ô
	sbi 0x11,7
	.dbline 471
; h­Ô
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 473
; h­Ô
; h­Ô
	cbi 0x12,7
	.dbline 474
; h­Ô
	cbi 0x12,6
	.dbline 475
; h­Ô
	sbi 0x12,5
	.dbline 476
; h­Ô
	sbi 0x12,4
	.dbline 477
; h­Ô
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	nop
	.dbline 477
	.dbline 477
	.dbline 478
; h­Ô
	cbi 0x18,5
	.dbline 479
; h­Ô
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	nop
	.dbline 479
	.dbline 479
	.dbline 480
; h­Ô
	cbi 0x18,6
	.dbline 482
; h­Ô
; h­Ô
	sbi 0x18,7
	.dbline 483
; h­Ô
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	nop
	.dbline 483
	.dbline 483
	.dbline 484
; h­Ô
	cbi 0x18,7
	.dbline 485
; h­Ô
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 486
; h­Ô
	sbi 0x18,7
	.dbline 487
; h­Ô
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	nop
	.dbline 487
	.dbline 487
	.dbline 488
; h­Ô
	cbi 0x18,7
	.dbline 489
; h­Ô
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 490
; h­Ô
	sbi 0x18,7
	.dbline 491
; h­Ô
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	nop
	.dbline 491
	.dbline 491
	.dbline 492
; h­Ô
	cbi 0x18,7
	.dbline 493
; h­Ô
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 495
; h­Ô
; h­Ô
	cbi 0x12,7
	.dbline 496
; h­Ô
	cbi 0x12,6
	.dbline 497
; h­Ô
	sbi 0x12,5
	.dbline 498
; h­Ô
	cbi 0x12,4
	.dbline 499
; h­Ô
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	nop
	.dbline 499
	.dbline 499
	.dbline 500
; h­Ô
	sbi 0x18,7
	.dbline 501
; h­Ô
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	nop
	.dbline 501
	.dbline 501
	.dbline 502
; h­Ô
	cbi 0x18,7
	.dbline 503
; h­Ô
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	nop
	.dbline 503
	.dbline 503
	.dbline 504
; h­Ô
	ldi R16,<L185
	ldi R17,>L185
	xcall _LCD1602_setCmd
	.dbline 505
; h­Ô
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 506
; h­Ô
	ldi R16,<L165
	ldi R17,>L165
	xcall _LCD1602_setCmd
	.dbline -2
L249:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e LCD1602_putc _LCD1602_putc fV
;             ch -> R20
;            adr -> R22
	.even
_LCD1602_putc::
	xcall push_gset2
	mov R20,R18
	mov R22,R16
	.dbline -1
	.dbline 528
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
	.dbline 529
; h­Ô
	mov R18,R22
	clr R16
	xcall _write
	.dbline 530
; h­Ô
	mov R18,R20
	ldi R16,1
	xcall _write
	.dbline -2
L250:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r ch 20 c
	.dbsym r adr 22 c
	.dbend
	.dbfunc e LCD1602_puts _LCD1602_puts fV
;            str -> R20,R21
;       startAdr -> R22
	.even
_LCD1602_puts::
	xcall push_gset2
	movw R20,R18
	mov R22,R16
	.dbline -1
	.dbline 541
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
	.dbline 549
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
; h­Ô
	mov R18,R22
	clr R16
	xcall _write
	xjmp L253
L252:
	.dbline 551
	movw R30,R20
	ld R18,Z+
	movw R20,R30
	ldi R16,1
	xcall _write
L253:
	.dbline 550
; h­Ô
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L252
	.dbline -2
L251:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r str 20 pc
	.dbsym r startAdr 22 c
	.dbend
	.dbfunc e LCD1602_putd0 _LCD1602_putd0 fV
;              i -> R20
;         length -> y+7
;            dat -> y+3
;         endAdr -> R20
	.even
_LCD1602_putd0::
	st -y,r19
	st -y,r18
	xcall push_gset1
	mov R20,R16
	sbiw R28,1
	.dbline -1
	.dbline 563
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
	.dbline 565
; ðUÔ
; ðUÔ
	ldd R0,y+7
	std y+0,R0
	movw R30,R28
	ldd R16,z+3
	ldd R17,z+4
	ldd R18,z+5
	ldd R19,z+6
	xcall _speaData
	.dbline 567
; ðUÔ
; ðUÔ
	mov R18,R20
	ldd R0,y+7
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	xcall _write
	.dbline 568
; ðUÔ
	ldd R20,y+7
	subi R20,1
	xjmp L259
L256:
	.dbline 569
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R20
	clr R31
	sbrc R30,7
	com R31
	add R30,R24
	adc R31,R25
	ldd R18,z+0
	subi R18,208    ; addi 48
	ldi R16,1
	xcall _write
L257:
	.dbline 568
	dec R20
L259:
	.dbline 568
	cpi R20,0
	brge L256
	.dbline -2
L255:
	adiw R28,1
	xcall pop_gset1
	adiw R28,2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 C
	.dbsym l length 7 c
	.dbsym l dat 3 l
	.dbsym r endAdr 20 c
	.dbend
	.dbfunc e LCD1602_putd _LCD1602_putd fV
;      effectLen -> R14
;              i -> R12
;         length -> y+15
;            dat -> y+11
;         endAdr -> R10
	.even
_LCD1602_putd::
	st -y,r19
	st -y,r18
	xcall push_gset5
	mov R10,R16
	sbiw R28,1
	.dbline -1
	.dbline 580
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
; ðUÔ
	.dbline 583
; ðUÔ
; ðUÔ
; ðUÔ
	ldi R20,63
	ldi R21,66
	ldi R22,15
	ldi R23,0
	movw R30,R28
	ldd R2,z+11
	ldd R3,z+12
	ldd R4,z+13
	ldd R5,z+14
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L261
	.dbline 584
; ðUÔ
	ldi R24,7
	mov R14,R24
	xjmp L262
L261:
	.dbline 585
; ðUÔ
	ldi R20,159
	ldi R21,134
	ldi R22,1
	ldi R23,0
	movw R30,R28
	ldd R2,z+11
	ldd R3,z+12
	ldd R4,z+13
	ldd R5,z+14
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L263
	.dbline 586
; ðUÔ
	ldi R24,6
	mov R14,R24
	xjmp L264
L263:
	.dbline 587
; ðUÔ
	ldi R20,15
	ldi R21,39
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+11
	ldd R3,z+12
	ldd R4,z+13
	ldd R5,z+14
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L265
	.dbline 588
; ðUÔ
	ldi R24,5
	mov R14,R24
	xjmp L266
L265:
	.dbline 589
; ðUÔ
	ldi R20,231
	ldi R21,3
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+11
	ldd R3,z+12
	ldd R4,z+13
	ldd R5,z+14
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L267
	.dbline 590
; ðUÔ
	ldi R24,4
	mov R14,R24
	xjmp L268
L267:
	.dbline 591
; ðUÔ
	ldi R20,99
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+11
	ldd R3,z+12
	ldd R4,z+13
	ldd R5,z+14
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L269
	.dbline 592
; ðUÔ
	ldi R24,3
	mov R14,R24
	xjmp L270
L269:
	.dbline 593
; ðUÔ
	ldi R20,9
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+11
	ldd R3,z+12
	ldd R4,z+13
	ldd R5,z+14
	cp R20,R2
	cpc R21,R3
	cpc R22,R4
	cpc R23,R5
	brsh L271
	.dbline 594
; ðUÔ
	ldi R24,2
	mov R14,R24
	xjmp L272
L271:
	.dbline 596
; ðUÔ
; ðUÔ
	clr R14
	inc R14
L272:
L270:
L268:
L266:
L264:
L262:
	.dbline 597
; ðUÔ
	std y+0,R14
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	xcall _speaData
	.dbline 599
; ðUÔ
; ðUÔ
	ldd R0,y+15
	cp R14,R0
	brsh L273
	.dbline 600
; ðUÔ
	.dbline 601
; ðUÔ
	mov R18,R10
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	xcall _write
	.dbline 602
; ðUÔ
	ldd R24,y+15
	sub R24,R14
	subi R24,1
	mov R12,R24
	xjmp L278
L275:
	.dbline 603
	ldi R18,32
	ldi R16,1
	xcall _write
L276:
	.dbline 602
	dec R12
L278:
	.dbline 602
	mov R24,R12
	cpi R24,0
	brge L275
	.dbline 604
; ðUÔ
; ðUÔ
L273:
	.dbline 605
; ðUÔ
	mov R24,R14
	subi R24,1
	mov R12,R24
	xjmp L282
L279:
	.dbline 606
; ðUÔ
	.dbline 607
; ðUÔ
	tst R12
	breq L285
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R12
	clr R31
	sbrc R30,7
	com R31
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	tst R2
	breq L283
L285:
	.dbline 608
; ðUÔ
	.dbline 609
; ðUÔ
	mov R18,R10
	sub R18,R12
	clr R16
	xcall _write
	.dbline 610
; ðUÔ
	xjmp L289
L286:
	.dbline 611
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R12
	clr R31
	sbrc R30,7
	com R31
	add R30,R24
	adc R31,R25
	ldd R18,z+0
	subi R18,208    ; addi 48
	ldi R16,1
	xcall _write
L287:
	.dbline 610
	dec R12
L289:
	.dbline 610
	mov R24,R12
	cpi R24,0
	brge L286
	.dbline 612
; ðUÔ
; ðUÔ
L283:
	.dbline 613
L280:
	.dbline 605
	dec R12
L282:
	.dbline 605
	mov R24,R12
	cpi R24,0
	brge L279
	.dbline -2
L260:
	adiw R28,1
	xcall pop_gset5
	adiw R28,2
	.dbline 0 ; func end
	ret
	.dbsym r effectLen 14 C
	.dbsym r i 12 C
	.dbsym l length 15 c
	.dbsym l dat 11 l
	.dbsym r endAdr 10 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
_T1OvfTimes::
	.blkb 2
	.area idata
	.word 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­TIMER\ICPTimer1\CycleLower65535us.c
	.dbsym e T1OvfTimes _T1OvfTimes i
	.area text(rom, con, rel)
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­TIMER\ICPTimer1\CycleLower65535us.c
	.dbfunc e timer1_init _timer1_init fV
	.even
_timer1_init::
	.dbline -1
	.dbline 111
	.dbline 112
	clr R2
	out 0x2e,R2
	.dbline 113
	clr R3
	out 0x2d,R3
	out 0x2c,R2
	.dbline 114
	out 0x27,R3
	out 0x26,R2
	.dbline 115
	out 0x2f,R2
	.dbline 116
	ldi R24,194
	out 0x2e,R24
	.dbline -2
L290:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 20
	jmp _timer1_capt_isr
	.area text(rom, con, rel)
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­TIMER\ICPTimer1\CycleLower65535us.c
	.dbfunc e timer1_capt_isr _timer1_capt_isr fV
	.even
_timer1_capt_isr::
	st -y,R2
	st -y,R3
	st -y,R4
	st -y,R5
	st -y,R16
	st -y,R17
	st -y,R18
	st -y,R19
	st -y,R24
	st -y,R25
	st -y,R26
	st -y,R27
	st -y,R30
	in R2,0x3f
	st -y,R2
	xcall push_gset2
	.dbline -1
	.dbline 128
	.dbline 129
	clr R2
	out 0x2e,R2
	.dbline 132
	in R24,0x26
	in R25,0x27
	sbiw R24,24
	movw R2,R24
	clr R4
	clr R5
	sts _cycle+1,R3
	sts _cycle,R2
	sts _cycle+2+1,R5
	sts _cycle+2,R4
	.dbline 134
	lds R2,_T1OvfTimes
	lds R3,_T1OvfTimes+1
	tst R2
	brne X18
	tst R3
	breq L292
X18:
	.dbline 135
	lds R2,_T1OvfTimes
	lds R3,_T1OvfTimes+1
	clr R4
	clr R5
	ldi R20,255
	ldi R21,255
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	lds R4,_cycle+2
	lds R5,_cycle+2+1
	lds R2,_cycle
	lds R3,_cycle+1
	add R2,R16
	adc R3,R17
	adc R4,R18
	adc R5,R19
	sts _cycle+1,R3
	sts _cycle,R2
	sts _cycle+2+1,R5
	sts _cycle+2,R4
L292:
	.dbline 136
	clr R2
	clr R3
	sts _T1OvfTimes+1,R3
	sts _T1OvfTimes,R2
	.dbline 137
	out 0x27,R3
	out 0x26,R2
	.dbline 138
	out 0x2d,R3
	out 0x2c,R2
	.dbline 139
	ldi R24,194
	out 0x2e,R24
	.dbline -2
L291:
	xcall pop_gset2
	ld R2,y+
	out 0x3f,R2
	ld R30,y+
	ld R27,y+
	ld R26,y+
	ld R25,y+
	ld R24,y+
	ld R19,y+
	ld R18,y+
	ld R17,y+
	ld R16,y+
	ld R5,y+
	ld R4,y+
	ld R3,y+
	ld R2,y+
	.dbline 0 ; func end
	reti
	.dbend
	.area vector(rom, abs)
	.org 32
	jmp _timer1_ovf_isr
	.area text(rom, con, rel)
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­TIMER\ICPTimer1\CycleLower65535us.c
	.dbfunc e timer1_ovf_isr _timer1_ovf_isr fV
	.even
_timer1_ovf_isr::
	st -y,R24
	st -y,R25
	in R24,0x3f
	st -y,R24
	.dbline -1
	.dbline 151
	.dbline 152
	lds R24,_T1OvfTimes
	lds R25,_T1OvfTimes+1
	adiw R24,1
	sts _T1OvfTimes+1,R25
	sts _T1OvfTimes,R24
	.dbline -2
L294:
	ld R24,y+
	out 0x3f,R24
	ld R25,y+
	ld R24,y+
	.dbline 0 ; func end
	reti
	.dbend
	.dbfunc e mcu_init _mcu_init fV
	.even
_mcu_init::
	.dbline -1
	.dbline 163
	.dbline 164
	cli
	.dbline 165
	xcall _timer1_init
	.dbline 166
	clr R2
	out 0x35,R2
	.dbline 167
	out 0x3b,R2
	.dbline 168
	ldi R24,36
	out 0x39,R24
	.dbline 169
	sei
	.dbline -2
L295:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	sbiw R28,3
	.dbline -1
	.dbline 180
	.dbline 181
	xcall _mcu_init
	.dbline 182
	clr R2
	out 0x17,R2
	.dbline 183
	.dbline 183
	in R24,0x11
	ori R24,240
	out 0x11,R24
	.dbline 183
	in R24,0x17
	ori R24,224
	out 0x17,R24
	.dbline 183
	.dbline 183
	.dbline 185
	xcall _LCD1602_init
	.dbline 186
	ldi R18,<L297
	ldi R19,>L297
	ldi R16,128
	xcall _LCD1602_puts
	xjmp L299
L298:
	.dbline 188
	.dbline 189
	ldi R24,7
	std y+2,R24
	lds R4,_cycle+2
	lds R5,_cycle+2+1
	lds R2,_cycle
	lds R3,_cycle+1
	std y+0,R4
	std y+1,R5
	movw R18,R2
	ldi R16,207
	xcall _LCD1602_putd
	.dbline 190
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 191
L299:
	.dbline 187
	xjmp L298
X19:
	.dbline -2
L296:
	adiw R28,3
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­TIMER\ICPTimer1\CycleLower65535us.c
_cycle::
	.blkb 4
	.dbsym e cycle _cycle l
_bdat::
	.blkb 1
	.dbfile D:\ICC_H\LCD1602_.H
	.dbsym e bdat _bdat c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L297:
	.blkb 17
	.area idata
	.byte 'C,'y,'c,'l,'e,58,32,32,32,'s,32,'m,'s,32,'u,'s
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L248:
	.blkb 10
	.area idata
	.byte 'L,'E,'F,'T,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L245:
	.blkb 11
	.area idata
	.byte 'R,'I,'G,'H,'T,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L242:
	.blkb 9
	.area idata
	.byte 'L,'E,'F,'T,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L239:
	.blkb 10
	.area idata
	.byte 'R,'I,'G,'H,'T,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L230:
	.blkb 10
	.area idata
	.byte 'D,'I,'S,95,'B,'L,'I,'N,'K,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L221:
	.blkb 9
	.area idata
	.byte 'E,'N,95,'B,'L,'I,'N,'K,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L212:
	.blkb 11
	.area idata
	.byte 'C,'L,'O,'S,'E,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L203:
	.blkb 10
	.area idata
	.byte 'O,'P,'E,'N,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L194:
	.blkb 10
	.area idata
	.byte 'C,'L,'O,'S,'E,95,'L,'C,'D,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L185:
	.blkb 9
	.area idata
	.byte 'O,'P,'E,'N,95,'L,'C,'D,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L180:
	.blkb 10
	.area idata
	.byte 'D,'I,'S,95,'S,'H,'I,'F,'T,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L175:
	.blkb 9
	.area idata
	.byte 'E,'N,95,'S,'H,'I,'F,'T,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L170:
	.blkb 7
	.area idata
	.byte 'D,'E,'C,95,'A,'C,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L165:
	.blkb 7
	.area idata
	.byte 'I,'N,'C,95,'A,'C,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L162:
	.blkb 8
	.area idata
	.byte 'G,'O,95,'H,'O,'M,'E,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L159:
	.blkb 8
	.area idata
	.byte 'C,'L,'R,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
