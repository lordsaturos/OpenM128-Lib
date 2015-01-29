	.module Lcd1602PBPD.C
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
; 	Î¢ Ñ© µç ×Ó   WaveShare   http://www.waveShare.net	
; 
; ¹¦ÄÜÄ¿µÄ:   ½¨Á¢Ê¹ÓÃLCD1602µÄÊ¾Àý³ÌÐò
; 
; Ä¿±êÏµÍ³:   »ùÓÚAVRµ¥Æ¬»ú
; 
; Ó¦ÓÃÈí¼þ:   ICCAVR                                               
; 
; °æ    ±¾:   Version 1.0
; 
; Ô²°æÊ±¼ä:   2005-03-01
; 
; ¿ª·¢ÈËÔ±:   SEE
; 
; Ëµ    Ã÷:   ÈôÓÃÓÚÉÌÒµÓÃÍ¾£¬Çë±£Áô´Ë¶ÎÎÄ×Ö»ò×¢Ã÷´úÂëÀ´Ô´
; 
; 	Éî ÛÚ ÊÐ Î¢ Ñ© µç ×Ó ÓÐ ÏÞ ¹« Ë¾ ±£ Áô Ëù ÓÐ µÄ °æ È¨
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; °æ±¾¸üÐÂ¼ÇÂ¼£º
; 
; ----------------------------------------------------------------------
; ÊµÑéÄÚÈÝ£º
; ³õÊ¼»¯¡¢¶ÁÐ´Lcd1602¡£
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
; £¨2£©ÇëÏêÏ¸ÔÄ¶Á¡°Ê¹ÓÃ±Ø¶Á¡±¼°Ïà¹Ø×ÊÁÏ¡£
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom162v.h>
; #define NO_INCLUDE_I2C_H 1
; #include "D:\ICC_H\CmmICC.H"
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
; const uint8  userCh0[8]={0x10,0x1f,0x01,0x02,0x04,0x08,0x10,0x1f};
; const uint8  userCh1[8]={0x00,0x08,0x0f,0x01,0x02,0x04,0x08,0x0f};
; const uint8  userCh2[8]={0x00,0x00,0x04,0x07,0x01,0x02,0x04,0x07};
; 
; /*--------------------------------------------------------------------
; º¯ÊýÈ«³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º	
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void main()
; {
; 
; 	LCD1602_init();
; 
; 	while(1)
; 	{
; 		LCD1602_puts(0xC6,"Sleeping");
; 		delay50ms(5);
	.dbline 119
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(5);
; 		LCD1602_puts(0xC6,"Sleeping");
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
	xjmp L10
L7:
	.dbline 108
	clr R20
	xjmp L14
L11:
	.dbline 109
L12:
	.dbline 108
	inc R20
L14:
	.dbline 108
	cpi R20,70
	brlo L11
L8:
	.dbline 107
	subi R16,1
	sbci R17,0
L10:
	.dbline 107
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L7
	.dbline -2
L6:
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
; 		delay50ms(5);
	.dbline 122
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(5);
	xjmp L19
L16:
	.dbline 123
; 		LCD1602_puts(0xC6,"Sleeping");
	clr R20
	clr R21
	xjmp L23
L20:
	.dbline 124
L21:
	.dbline 123
	subi R20,255  ; offset = 1
	sbci R21,255
L23:
	.dbline 123
	cpi R20,162
	ldi R30,205
	cpc R21,R30
	brlo L20
L17:
	.dbline 122
	subi R16,1
	sbci R17,0
L19:
	.dbline 122
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L16
	.dbline -2
L15:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 I
	.dbend
	.dbfunc e delayus _delayus fV
;              i -> R20,R21
;              t -> R16,R17
	.even
_delayus::
	xcall push_gset1
	.dbline -1
	.dbline 129
; 		delay50ms(5);
; 
; 		LCD1602_setCGRAM(CGRAM0,userCh0);	//Set CGRAM0' data
; 		LCD1602_setCGRAM(CGRAM1,userCh1);	//Set CGRAM1' data
; 		LCD1602_setCGRAM(CGRAM2,userCh2);	//Set CGRAM2' data
; 		
	.dbline 131
	clr R20
	clr R21
	xjmp L28
L25:
	.dbline 131
	.dbline 131
	NOP
	
	.dbline 131
L26:
	.dbline 131
	subi R20,255  ; offset = 1
	sbci R21,255
L28:
	.dbline 131
; 		LCD1602_putc(0x84,CGRAM2);		//putc to 0x84 by CGRAM2' data
; 		delay50ms(10);
	cp R16,R20
	cpc R17,R21
	brsh L25
	.dbline -2
L24:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 i
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
; 		LCD1602_putc(0x83,CGRAM1);		//putc to 0x83 by CGRAM1' data
; 		delay50ms(12);
; 		LCD1602_putc(0x82,CGRAM0);		//putc to 0x84 by CGRAM0' data
; 		delay50ms(14);
; 
; 		LCD1602_setCmd("CLR_SCR");
; 	}
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 154
; }
	clr R18
	clr R19
	.dbline 156
; }
; }
	cbi 0x11,7
	.dbline 157
; }
	sbi 0x12,4
	.dbline 158
; }
	sbi 0x12,5
	.dbline 159
; }
	sbi 0x12,6
	.dbline 160
; }
	sbi 0x12,7
	.dbline 161
; }
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
; }
	cbi 0x18,5
	.dbline 163
; }
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
; }
	sbi 0x18,6
	.dbline 165
; }
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
L30:
	.dbline 168
; }
; }
; }
	.dbline 169
; }
	sbi 0x18,7
	.dbline 170
; }
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
; }
; }
	in R16,0x10
	clr R17
	andi R16,128
	andi R17,0
	.dbline 173
; }
	cbi 0x18,7
	.dbline 174
; }
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
; }
; }
	sbi 0x12,4
	.dbline 177
; }
	sbi 0x12,5
	.dbline 178
; }
	sbi 0x12,6
	.dbline 179
; }
	sbi 0x12,7
	.dbline 180
; }
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
; }
	sbi 0x18,7
	.dbline 182
; }
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
; }
; }
	cbi 0x18,7
	.dbline 185
; }
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
; }
	cpi R18,232
	ldi R30,3
	cpc R19,R30
	brne L33
	.dbline 187
; }
	.dbline 188
; }
	ldi R24,1
	sts _LCD1602Err,R24
	.dbline 189
; }
	xjmp L29
L33:
	.dbline 191
; }
; }
	subi R18,255  ; offset = 1
	sbci R19,255
	.dbline 192
; }
L31:
	.dbline 193
; }
	tst R16
	breq X1
	xjmp L30
X1:
	.dbline 195
; }
; }
	clr R2
	sts _LCD1602Err,R2
	.dbline 196
; }
	cbi 0x18,7
	.dbline 197
; }
	sbi 0x11,7
	.dbline -2
L29:
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
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 209
; }
	sts _bdat,R22
	.dbline 210
; }
	xcall _busy
	.dbline 211
; }
	tst R20
	breq L36
	.dbline 212
; }
	sbi 0x18,5
	xjmp L37
L36:
	.dbline 214
; }
; }
	cbi 0x18,5
L37:
	.dbline 215
; }
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
; }
	cbi 0x18,6
	.dbline 217
; }
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
; }
	lds R2,_bdat
	sbrs R2,4
	rjmp L38
	.dbline 219
; }
	sbi 0x12,4
	xjmp L39
L38:
	.dbline 221
; }
; }
	cbi 0x12,4
L39:
	.dbline 222
; }
	lds R2,_bdat
	sbrs R2,5
	rjmp L40
	.dbline 223
; }
	sbi 0x12,5
	xjmp L41
L40:
	.dbline 225
; }
; }
	cbi 0x12,5
L41:
	.dbline 226
; }
	lds R2,_bdat
	sbrs R2,6
	rjmp L42
	.dbline 227
; }
	sbi 0x12,6
	xjmp L43
L42:
	.dbline 229
; }
; }
	cbi 0x12,6
L43:
	.dbline 230
; }
	lds R2,_bdat
	sbrs R2,7
	rjmp L44
	.dbline 231
; }
	sbi 0x12,7
	xjmp L45
L44:
	.dbline 233
; }
; }
	cbi 0x12,7
L45:
	.dbline 234
; }
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
; }
	sbi 0x18,7
	.dbline 236
; }
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
; }
	cbi 0x18,7
	.dbline 238
; }
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
; }
; }
	lds R2,_bdat
	sbrs R2,0
	rjmp L46
	.dbline 241
; }
	sbi 0x12,4
	xjmp L47
L46:
	.dbline 243
; }
; }
	cbi 0x12,4
L47:
	.dbline 244
; }
	lds R2,_bdat
	sbrs R2,1
	rjmp L48
	.dbline 245
; }
	sbi 0x12,5
	xjmp L49
L48:
	.dbline 247
; }
; }
	cbi 0x12,5
L49:
	.dbline 248
; }
	lds R2,_bdat
	sbrs R2,2
	rjmp L50
	.dbline 249
; }
	sbi 0x12,6
	xjmp L51
L50:
	.dbline 251
; }
; }
	cbi 0x12,6
L51:
	.dbline 252
; }
	lds R2,_bdat
	sbrs R2,3
	rjmp L52
	.dbline 253
; }
	sbi 0x12,7
	xjmp L53
L52:
	.dbline 255
; }
; }
	cbi 0x12,7
L53:
	.dbline 256
; }
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
; }
	sbi 0x18,7
	.dbline 258
; }
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
; }
	cbi 0x18,7
	.dbline 260
; }
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
L35:
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
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 284
; }
; }
	ldi R24,8
	mul R24,R20
	mov R18,R0
	subi R18,192    ; addi 64
	clr R16
	xcall _write
	.dbline 285
; }
	clr R20
	xjmp L58
L55:
	.dbline 286
	mov R30,R20
	clr R31
	add R30,R22
	adc R31,R23
	lpm R18,Z
	ldi R16,1
	xcall _write
L56:
	.dbline 285
	inc R20
L58:
	.dbline 285
	cpi R20,8
	brlo L55
	.dbline -2
L54:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r buf 22 pkc
	.dbsym r adr 20 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L60:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L61:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L62:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L63:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L64:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.area text(rom, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.dbfunc e LCD1602_setCmd _LCD1602_setCmd fV
	.dbsym s isACinc L64 c
	.dbsym s shiftEn L63 c
	.dbsym s blinkEn L62 c
	.dbsym s cursorEn L61 c
	.dbsym s dispEn L60 c
;            str -> R20,R21
	.even
_LCD1602_setCmd::
	xcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 308
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	.dbline 315
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	ldi R18,<L67
	ldi R19,>L67
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L65
X2:
	.dbline 316
; è„Ü
	ldi R18,1
	clr R16
	xcall _write
	xjmp L66
L65:
	.dbline 318
; è„Ü
; è„Ü
	ldi R18,<L70
	ldi R19,>L70
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L68
X3:
	.dbline 319
; è„Ü
	ldi R18,2
	clr R16
	xcall _write
	xjmp L69
L68:
	.dbline 323
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	ldi R18,<L73
	ldi R19,>L73
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L71
X4:
	.dbline 324
; è„Ü
	.dbline 325
; è„Ü
	ldi R24,1
	sts L64,R24
	.dbline 326
; è„Ü
	lds R2,L63
	tst R2
	breq L74
	.dbline 327
; è„Ü
	ldi R18,7
	clr R16
	xcall _write
	xjmp L72
L74:
	.dbline 329
; è„Ü
; è„Ü
	ldi R18,6
	clr R16
	xcall _write
	.dbline 330
; è„Ü
	xjmp L72
L71:
	.dbline 331
; è„Ü
	ldi R18,<L78
	ldi R19,>L78
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L76
X5:
	.dbline 332
; è„Ü
	.dbline 333
; è„Ü
	clr R2
	sts L64,R2
	.dbline 334
; è„Ü
	lds R2,L63
	tst R2
	breq L79
	.dbline 335
; è„Ü
	ldi R18,5
	clr R16
	xcall _write
	xjmp L77
L79:
	.dbline 337
; è„Ü
; è„Ü
	ldi R18,4
	clr R16
	xcall _write
	.dbline 338
; è„Ü
	xjmp L77
L76:
	.dbline 339
; è„Ü
	ldi R18,<L83
	ldi R19,>L83
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L81
X6:
	.dbline 340
; è„Ü
	.dbline 341
; è„Ü
	ldi R24,1
	sts L63,R24
	.dbline 342
; è„Ü
	lds R2,L64
	tst R2
	breq L84
	.dbline 343
; è„Ü
	ldi R18,7
	clr R16
	xcall _write
	xjmp L82
L84:
	.dbline 345
; è„Ü
; è„Ü
	ldi R18,6
	clr R16
	xcall _write
	.dbline 346
; è„Ü
	xjmp L82
L81:
	.dbline 347
; è„Ü
	ldi R18,<L88
	ldi R19,>L88
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L86
X7:
	.dbline 348
; è„Ü
	.dbline 349
; è„Ü
	clr R2
	sts L63,R2
	.dbline 350
; è„Ü
	lds R2,L64
	tst R2
	breq L89
	.dbline 351
; è„Ü
	ldi R18,5
	clr R16
	xcall _write
	xjmp L87
L89:
	.dbline 353
; è„Ü
; è„Ü
	ldi R18,4
	clr R16
	xcall _write
	.dbline 354
; è„Ü
	xjmp L87
L86:
	.dbline 358
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	ldi R18,<L93
	ldi R19,>L93
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L91
X8:
	.dbline 359
; è„Ü
	.dbline 360
; è„Ü
	ldi R24,1
	sts L60,R24
	.dbline 361
; è„Ü
	lds R2,L61
	tst R2
	breq L94
	.dbline 362
; è„Ü
	lds R2,L62
	tst R2
	breq L96
	.dbline 363
; è„Ü
	ldi R18,15
	clr R16
	xcall _write
	xjmp L92
L96:
	.dbline 365
; è„Ü
; è„Ü
	ldi R18,14
	clr R16
	xcall _write
	xjmp L92
L94:
	.dbline 367
; è„Ü
; è„Ü
	lds R2,L62
	tst R2
	breq L98
	.dbline 368
; è„Ü
	ldi R18,13
	clr R16
	xcall _write
	xjmp L92
L98:
	.dbline 370
; è„Ü
; è„Ü
	ldi R18,12
	clr R16
	xcall _write
	.dbline 371
; è„Ü
	xjmp L92
L91:
	.dbline 372
; è„Ü
	ldi R18,<L102
	ldi R19,>L102
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L100
X9:
	.dbline 373
; è„Ü
	.dbline 374
; è„Ü
	clr R2
	sts L60,R2
	.dbline 375
; è„Ü
	lds R2,L61
	tst R2
	breq L103
	.dbline 376
; è„Ü
	lds R2,L62
	tst R2
	breq L105
	.dbline 377
; è„Ü
	ldi R18,11
	clr R16
	xcall _write
	xjmp L101
L105:
	.dbline 379
; è„Ü
; è„Ü
	ldi R18,10
	clr R16
	xcall _write
	xjmp L101
L103:
	.dbline 381
; è„Ü
; è„Ü
	lds R2,L62
	tst R2
	breq L107
	.dbline 382
; è„Ü
	ldi R18,9
	clr R16
	xcall _write
	xjmp L101
L107:
	.dbline 384
; è„Ü
; è„Ü
	ldi R18,8
	clr R16
	xcall _write
	.dbline 385
; è„Ü
	xjmp L101
L100:
	.dbline 386
; è„Ü
	ldi R18,<L111
	ldi R19,>L111
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L109
X10:
	.dbline 387
; è„Ü
	.dbline 388
; è„Ü
	ldi R24,1
	sts L61,R24
	.dbline 389
; è„Ü
	lds R2,L60
	tst R2
	breq L112
	.dbline 390
; è„Ü
	lds R2,L62
	tst R2
	breq L114
	.dbline 391
; è„Ü
	ldi R18,15
	clr R16
	xcall _write
	xjmp L110
L114:
	.dbline 393
; è„Ü
; è„Ü
	ldi R18,14
	clr R16
	xcall _write
	xjmp L110
L112:
	.dbline 395
; è„Ü
; è„Ü
	lds R2,L62
	tst R2
	breq L116
	.dbline 396
; è„Ü
	ldi R18,11
	clr R16
	xcall _write
	xjmp L110
L116:
	.dbline 398
; è„Ü
; è„Ü
	ldi R18,10
	clr R16
	xcall _write
	.dbline 399
; è„Ü
	xjmp L110
L109:
	.dbline 400
; è„Ü
	ldi R18,<L120
	ldi R19,>L120
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L118
X11:
	.dbline 401
; è„Ü
	.dbline 402
; è„Ü
	clr R2
	sts L61,R2
	.dbline 403
; è„Ü
	lds R2,L60
	tst R2
	breq L121
	.dbline 404
; è„Ü
	lds R2,L62
	tst R2
	breq L123
	.dbline 405
; è„Ü
	ldi R18,13
	clr R16
	xcall _write
	xjmp L119
L123:
	.dbline 407
; è„Ü
; è„Ü
	ldi R18,12
	clr R16
	xcall _write
	xjmp L119
L121:
	.dbline 409
; è„Ü
; è„Ü
	lds R2,L62
	tst R2
	breq L125
	.dbline 410
; è„Ü
	ldi R18,9
	clr R16
	xcall _write
	xjmp L119
L125:
	.dbline 412
; è„Ü
; è„Ü
	ldi R18,8
	clr R16
	xcall _write
	.dbline 413
; è„Ü
	xjmp L119
L118:
	.dbline 414
; è„Ü
	ldi R18,<L129
	ldi R19,>L129
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L127
X12:
	.dbline 415
; è„Ü
	.dbline 416
; è„Ü
	ldi R24,1
	sts L62,R24
	.dbline 417
; è„Ü
	lds R2,L60
	tst R2
	breq L130
	.dbline 418
; è„Ü
	lds R2,L61
	tst R2
	breq L132
	.dbline 419
; è„Ü
	ldi R18,15
	clr R16
	xcall _write
	xjmp L128
L132:
	.dbline 421
; è„Ü
; è„Ü
	ldi R18,13
	clr R16
	xcall _write
	xjmp L128
L130:
	.dbline 423
; è„Ü
; è„Ü
	lds R2,L61
	tst R2
	breq L134
	.dbline 424
; è„Ü
	ldi R18,11
	clr R16
	xcall _write
	xjmp L128
L134:
	.dbline 426
; è„Ü
; è„Ü
	ldi R18,9
	clr R16
	xcall _write
	.dbline 427
; è„Ü
	xjmp L128
L127:
	.dbline 428
; è„Ü
	ldi R18,<L138
	ldi R19,>L138
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L136
X13:
	.dbline 429
; è„Ü
	.dbline 430
; è„Ü
	clr R2
	sts L62,R2
	.dbline 431
; è„Ü
	lds R2,L60
	tst R2
	breq L139
	.dbline 432
; è„Ü
	lds R2,L61
	tst R2
	breq L141
	.dbline 433
; è„Ü
	ldi R18,14
	clr R16
	xcall _write
	xjmp L137
L141:
	.dbline 435
; è„Ü
; è„Ü
	ldi R18,12
	clr R16
	xcall _write
	xjmp L137
L139:
	.dbline 437
; è„Ü
; è„Ü
	lds R2,L61
	tst R2
	breq L143
	.dbline 438
; è„Ü
	ldi R18,10
	clr R16
	xcall _write
	xjmp L137
L143:
	.dbline 440
; è„Ü
; è„Ü
	ldi R18,8
	clr R16
	xcall _write
	.dbline 441
; è„Ü
	xjmp L137
L136:
	.dbline 445
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	ldi R18,<L147
	ldi R19,>L147
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L145
X14:
	.dbline 446
; è„Ü
	ldi R18,28
	clr R16
	xcall _write
	xjmp L146
L145:
	.dbline 447
; è„Ü
	ldi R18,<L150
	ldi R19,>L150
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L148
X15:
	.dbline 448
; è„Ü
	ldi R18,24
	clr R16
	xcall _write
	xjmp L149
L148:
	.dbline 449
; è„Ü
	ldi R18,<L153
	ldi R19,>L153
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L151
X16:
	.dbline 450
; è„Ü
	ldi R18,20
	clr R16
	xcall _write
	xjmp L152
L151:
	.dbline 451
; è„Ü
	ldi R18,<L156
	ldi R19,>L156
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L154
X17:
	.dbline 452
; è„Ü
	ldi R18,16
	clr R16
	xcall _write
L154:
L152:
L149:
L146:
L137:
L128:
L119:
L110:
L101:
L92:
L87:
L82:
L77:
L72:
L69:
L66:
	.dbline -2
L59:
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
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	.dbline 464
; è„Ü
	sbi 0x17,5
	.dbline 465
; è„Ü
	sbi 0x17,6
	.dbline 466
; è„Ü
	sbi 0x17,7
	.dbline 467
; è„Ü
	sbi 0x11,4
	.dbline 468
; è„Ü
	sbi 0x11,5
	.dbline 469
; è„Ü
	sbi 0x11,6
	.dbline 470
; è„Ü
	sbi 0x11,7
	.dbline 471
; è„Ü
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 473
; è„Ü
; è„Ü
	cbi 0x12,7
	.dbline 474
; è„Ü
	cbi 0x12,6
	.dbline 475
; è„Ü
	sbi 0x12,5
	.dbline 476
; è„Ü
	sbi 0x12,4
	.dbline 477
; è„Ü
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
; è„Ü
	cbi 0x18,5
	.dbline 479
; è„Ü
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
; è„Ü
	cbi 0x18,6
	.dbline 482
; è„Ü
; è„Ü
	sbi 0x18,7
	.dbline 483
; è„Ü
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
; è„Ü
	cbi 0x18,7
	.dbline 485
; è„Ü
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 486
; è„Ü
	sbi 0x18,7
	.dbline 487
; è„Ü
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
; è„Ü
	cbi 0x18,7
	.dbline 489
; è„Ü
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 490
; è„Ü
	sbi 0x18,7
	.dbline 491
; è„Ü
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
; è„Ü
	cbi 0x18,7
	.dbline 493
; è„Ü
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 495
; è„Ü
; è„Ü
	cbi 0x12,7
	.dbline 496
; è„Ü
	cbi 0x12,6
	.dbline 497
; è„Ü
	sbi 0x12,5
	.dbline 498
; è„Ü
	cbi 0x12,4
	.dbline 499
; è„Ü
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
; è„Ü
	sbi 0x18,7
	.dbline 501
; è„Ü
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
; è„Ü
	cbi 0x18,7
	.dbline 503
; è„Ü
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
; è„Ü
	ldi R16,<L93
	ldi R17,>L93
	xcall _LCD1602_setCmd
	.dbline 505
; è„Ü
	ldi R16,<L67
	ldi R17,>L67
	xcall _LCD1602_setCmd
	.dbline 506
; è„Ü
	ldi R16,<L73
	ldi R17,>L73
	xcall _LCD1602_setCmd
	.dbline -2
L157:
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
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	.dbline 529
; è„Ü
	mov R18,R22
	clr R16
	xcall _write
	.dbline 530
; è„Ü
	mov R18,R20
	ldi R16,1
	xcall _write
	.dbline -2
L158:
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
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	.dbline 549
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
; è„Ü
	mov R18,R22
	clr R16
	xcall _write
	xjmp L161
L160:
	.dbline 551
	movw R30,R20
	ld R18,Z+
	movw R20,R30
	ldi R16,1
	xcall _write
L161:
	.dbline 550
; è„Ü
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L160
	.dbline -2
L159:
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
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
	.dbline 565
; ø}Ü
; ø}Ü
	ldd R0,y+7
	std y+0,R0
	movw R30,R28
	ldd R16,z+3
	ldd R17,z+4
	ldd R18,z+5
	ldd R19,z+6
	xcall _speaData
	.dbline 567
; ø}Ü
; ø}Ü
	mov R18,R20
	ldd R0,y+7
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	xcall _write
	.dbline 568
; ø}Ü
	ldd R20,y+7
	subi R20,1
	xjmp L167
L164:
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
L165:
	.dbline 568
	dec R20
L167:
	.dbline 568
	cpi R20,0
	brge L164
	.dbline -2
L163:
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
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
; ø}Ü
	.dbline 583
; ø}Ü
; ø}Ü
; ø}Ü
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
	brsh L169
	.dbline 584
; ø}Ü
	ldi R24,7
	mov R14,R24
	xjmp L170
L169:
	.dbline 585
; ø}Ü
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
	brsh L171
	.dbline 586
; ø}Ü
	ldi R24,6
	mov R14,R24
	xjmp L172
L171:
	.dbline 587
; ø}Ü
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
	brsh L173
	.dbline 588
; ø}Ü
	ldi R24,5
	mov R14,R24
	xjmp L174
L173:
	.dbline 589
; ø}Ü
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
	brsh L175
	.dbline 590
; ø}Ü
	ldi R24,4
	mov R14,R24
	xjmp L176
L175:
	.dbline 591
; ø}Ü
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
	brsh L177
	.dbline 592
; ø}Ü
	ldi R24,3
	mov R14,R24
	xjmp L178
L177:
	.dbline 593
; ø}Ü
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
	brsh L179
	.dbline 594
; ø}Ü
	ldi R24,2
	mov R14,R24
	xjmp L180
L179:
	.dbline 596
; ø}Ü
; ø}Ü
	clr R14
	inc R14
L180:
L178:
L176:
L174:
L172:
L170:
	.dbline 597
; ø}Ü
	std y+0,R14
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	xcall _speaData
	.dbline 599
; ø}Ü
; ø}Ü
	ldd R0,y+15
	cp R14,R0
	brsh L181
	.dbline 600
; ø}Ü
	.dbline 601
; ø}Ü
	mov R18,R10
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	xcall _write
	.dbline 602
; ø}Ü
	ldd R24,y+15
	sub R24,R14
	subi R24,1
	mov R12,R24
	xjmp L186
L183:
	.dbline 603
	ldi R18,32
	ldi R16,1
	xcall _write
L184:
	.dbline 602
	dec R12
L186:
	.dbline 602
	mov R24,R12
	cpi R24,0
	brge L183
	.dbline 604
; ø}Ü
; ø}Ü
L181:
	.dbline 605
; ø}Ü
	mov R24,R14
	subi R24,1
	mov R12,R24
	xjmp L190
L187:
	.dbline 606
; ø}Ü
	.dbline 607
; ø}Ü
	tst R12
	breq L193
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
	breq L191
L193:
	.dbline 608
; ø}Ü
	.dbline 609
; ø}Ü
	mov R18,R10
	sub R18,R12
	clr R16
	xcall _write
	.dbline 610
; ø}Ü
	xjmp L197
L194:
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
L195:
	.dbline 610
	dec R12
L197:
	.dbline 610
	mov R24,R12
	cpi R24,0
	brge L194
	.dbline 612
; ø}Ü
; ø}Ü
L191:
	.dbline 613
L188:
	.dbline 605
	dec R12
L190:
	.dbline 605
	mov R24,R12
	cpi R24,0
	brge L187
	.dbline -2
L168:
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
	.area lit(rom, con, rel)
_userCh0::
	.byte 16,31
	.byte 1,2
	.byte 4,8
	.byte 16,31
	.dbfile E:\ÎâÔó³ÌÐò±¸·Ý\ÒÆÖ²³ÌÐò\STK162~1.0\LCD160~1\Lcd1602\Lcd1602PBPD.C
	.dbsym e userCh0 _userCh0 A[8:8]kc
_userCh1::
	.byte 0,8
	.byte 15,1
	.byte 2,4
	.byte 8,15
	.dbsym e userCh1 _userCh1 A[8:8]kc
_userCh2::
	.byte 0,0
	.byte 4,7
	.byte 1,2
	.byte 4,7
	.dbsym e userCh2 _userCh2 A[8:8]kc
	.area text(rom, con, rel)
	.dbfile E:\ÎâÔó³ÌÐò±¸·Ý\ÒÆÖ²³ÌÐò\STK162~1.0\LCD160~1\Lcd1602\Lcd1602PBPD.C
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 109
	.dbline 111
	xcall _LCD1602_init
	xjmp L200
L199:
	.dbline 114
	.dbline 115
	ldi R18,<L202
	ldi R19,>L202
	ldi R16,198
	xcall _LCD1602_puts
	.dbline 116
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 117
	ldi R16,<L67
	ldi R17,>L67
	xcall _LCD1602_setCmd
	.dbline 118
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 119
	ldi R18,<L202
	ldi R19,>L202
	ldi R16,198
	xcall _LCD1602_puts
	.dbline 120
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 121
	ldi R16,<L67
	ldi R17,>L67
	xcall _LCD1602_setCmd
	.dbline 122
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 123
	ldi R18,<L202
	ldi R19,>L202
	ldi R16,198
	xcall _LCD1602_puts
	.dbline 124
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 126
	ldi R18,<_userCh0
	ldi R19,>_userCh0
	clr R16
	xcall _LCD1602_setCGRAM
	.dbline 127
	ldi R18,<_userCh1
	ldi R19,>_userCh1
	ldi R16,1
	xcall _LCD1602_setCGRAM
	.dbline 128
	ldi R18,<_userCh2
	ldi R19,>_userCh2
	ldi R16,2
	xcall _LCD1602_setCGRAM
	.dbline 130
	ldi R18,2
	ldi R16,132
	xcall _LCD1602_putc
	.dbline 131
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 132
	ldi R18,1
	ldi R16,131
	xcall _LCD1602_putc
	.dbline 133
	ldi R16,12
	ldi R17,0
	xcall _delay50ms
	.dbline 134
	clr R18
	ldi R16,130
	xcall _LCD1602_putc
	.dbline 135
	ldi R16,14
	ldi R17,0
	xcall _delay50ms
	.dbline 137
	ldi R16,<L67
	ldi R17,>L67
	xcall _LCD1602_setCmd
	.dbline 138
L200:
	.dbline 113
	xjmp L199
X18:
	.dbline -2
L198:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\ÎâÔó³ÌÐò±¸·Ý\ÒÆÖ²³ÌÐò\STK162~1.0\LCD160~1\Lcd1602\Lcd1602PBPD.C
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
L202:
	.blkb 9
	.area idata
	.byte 'S,'l,'e,'e,'p,'i,'n,'g,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L156:
	.blkb 10
	.area idata
	.byte 'L,'E,'F,'T,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L153:
	.blkb 11
	.area idata
	.byte 'R,'I,'G,'H,'T,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L150:
	.blkb 9
	.area idata
	.byte 'L,'E,'F,'T,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L147:
	.blkb 10
	.area idata
	.byte 'R,'I,'G,'H,'T,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L138:
	.blkb 10
	.area idata
	.byte 'D,'I,'S,95,'B,'L,'I,'N,'K,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L129:
	.blkb 9
	.area idata
	.byte 'E,'N,95,'B,'L,'I,'N,'K,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L120:
	.blkb 11
	.area idata
	.byte 'C,'L,'O,'S,'E,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L111:
	.blkb 10
	.area idata
	.byte 'O,'P,'E,'N,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L102:
	.blkb 10
	.area idata
	.byte 'C,'L,'O,'S,'E,95,'L,'C,'D,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L93:
	.blkb 9
	.area idata
	.byte 'O,'P,'E,'N,95,'L,'C,'D,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L88:
	.blkb 10
	.area idata
	.byte 'D,'I,'S,95,'S,'H,'I,'F,'T,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L83:
	.blkb 9
	.area idata
	.byte 'E,'N,95,'S,'H,'I,'F,'T,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L78:
	.blkb 7
	.area idata
	.byte 'D,'E,'C,95,'A,'C,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L73:
	.blkb 7
	.area idata
	.byte 'I,'N,'C,95,'A,'C,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L70:
	.blkb 8
	.area idata
	.byte 'G,'O,95,'H,'O,'M,'E,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L67:
	.blkb 8
	.area idata
	.byte 'C,'L,'R,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
