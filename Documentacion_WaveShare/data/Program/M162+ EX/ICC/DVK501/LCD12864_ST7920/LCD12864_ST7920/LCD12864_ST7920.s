	.module LCD12864_ST7920.C
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
; Ä¿    µÄ:   ½¨Á¢²Ù×÷LCD12864_ST7920Òº¾§µÄÊ¾Àý³ÌÐò
; 
; Ä¿±êÏµÍ³:   »ùÓÚÈÎºÎAVRµ¥Æ¬»ú
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
; ----------------------------------------------------------------------
; °æ±¾¸üÐÂ¼ÇÂ¼£º
; 
; ----------------------------------------------------------------------
; ÊµÑéÄÚÈÝ£º
; ³õÊ¼»¯¡¢¶ÁÐ´Lcd12864_ST7920¡£
; ----------------------------------------------------------------------
; Ó²¼þÁ¬½Ó£º
; LCD12864_ST7920			ATmega162
; 1.GND		--------	GND
; 2.VCC		--------	VCC
; 3.V0		--------	V0
; 4.RS(CS)	--------	VCC
; 5.R/W(SID)	--------	MOSI/PB5
; 6.E(SCLK)	--------	SCK/PB7
; 7.D0		--------	NC
; 8.D1		--------	NC
; 9.D2		--------	NC
; 10.D3		--------	NC
; 11.D4		--------	NC
; 12.D5		--------	NC
; 13.D6		--------	NC
; 14.D7		--------	NC
; 15.PSB		--------	GND
; 16.NC		--------	NC
; 17.RST		--------	NC
; 18.NC		--------	NC
; 19.LED+		--------	VCC
; 20.LED-		--------	GND
; 
; ²Ù×÷²½Öè£º
; (1)±àÒëÉÕÐ´¸Ã³ÌÐòµ½ATmega162£¬¶Ï¿ªµçÔ´
; (2)ÈôÊ¹ÓÃISP½Ó¿ÚÉÕÐ´³ÌÐò£¬Çë¶Ï¿ªISPÉÕÐ´Æ÷
; £¨ÓÉÓÚ±¾Ê¾Àý³ÌÐòÊ¹ÓÃµÄÊÇATmega16µÄSPI½Ó¿Ú£¬¸ÕºÃÊÇISPÉÕÐ´Æ÷µÄÉÕÐ´¿Ú£©
; (3)½«LCD12864_ST7920²åÈëÖ÷°åµÄLcd12864²å²Û
; (4)Ê¹ÓÃÁ¬½ÓÏß½«LCD12864_ST7920µÄÒÔÏÂÒýÕë½Ó¿ÚÁ¬½Óµ½MCU£º
; £¨ÓÉÓÚSMK1632ÒÑ¾­×öºÃÁË´ó²¿·ÖµÄÓ²¼þÁ¬½Ó£¬ÄúÖ»ÐèÁ¬½ÓÒÔÏÂÊý¾Ý¶Ë¿Ú£©
; LCD12864_ST7920			ATmega162
; 4.RS(CS)	--------	VCC
; 5.R/W(SID)	--------	MOSI/PB5
; 6.E(SCLK)	--------	SCK/PB7
; 15.PSB		--------	GND
; (5)ÉÏµç£¬Èç¹û²Ù×÷ÕýÈ·£¬ÕâÊ±Äú¿ÉÒÔ¿´µ½ÏÔÊ¾µÄÄÚÈÝÁË
; 
; ----------------------------------------------------------------------
; ×¢ÒâÊÂÏî£º
; £¨1£©ÈôÓÐ¼ÓÔØ¿âº¯Êý£¬Çë½«¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°¿âº¯Êý¡±ÏÂµÄ¡°ICC_H¡±ÎÄ¼þ¼Ð¿½µ½DÅÌ 
; £¨2£©ÇëÏêÏ¸ÔÄ¶Á£º¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁÐ\SMK1632\ËµÃ÷×ÊÁÏ¡±
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h>
; 
; #include "D:\ICC_H\LCD12864_ST7920.H"
; 
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void main()
; {             
; 	SEI();
; 	lcd_init();
; 	lcd_puts(1,1,"  WaveShare.net");
; 	lcd_puts(3,1,"    Î¢Ñ©µç×Ó");
; 	while(1);
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
; }
; }
; }
	.dbline 119
; }
; }
; }
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
	.dbline 126
; }
; }
; }
; }
; }
; }
; }
	.dbline 127
; }
	ldi R24,164
	out 0x36,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; }
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; }
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; }
	clr R16
	xjmp L6
L10:
	.dbline 131
; }
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
	.dbline 142
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
	.dbline 143
; }
	ldi R24,164
	out 0x36,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; }
	in R2,0x36
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; }
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; }
	clr R16
	xjmp L12
L16:
	.dbline 147
; }
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
	.dbline 158
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
	.dbline 159
; }
	.dbline 159
	out 0x3,R16
	.dbline 159
	ldi R24,132
	out 0x36,R24
	.dbline 159
	.dbline 159
	.dbline 160
L19:
	.dbline 160
L20:
	.dbline 160
; }
	in R2,0x36
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; }
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 162
; }
	clr R16
	xjmp L18
L22:
	.dbline 163
; }
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
	.dbline 174
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
	.dbline 175
; ¤'Ü
	sbrs R20,0
	rjmp L25
	.dbline 176
; ¤'Ü
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L27
	.dbline 177
; ¤'Ü
	clr R16
	xjmp L24
L27:
L25:
	.dbline 178
; ¤'Ü
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; ¤'Ü
	clr R16
	xjmp L24
L29:
	.dbline 180
; ¤'Ü
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
	.dbline 191
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
; ¤'Ü
	.dbline 192
; ¤'Ü
	.dbline 192
	out 0x3,R16
	.dbline 192
	ldi R24,132
	out 0x36,R24
	.dbline 192
	.dbline 192
	.dbline 193
L32:
	.dbline 193
L33:
	.dbline 193
; ¤'Ü
	in R2,0x36
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; ¤'Ü
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; ¤'Ü
	clr R16
	xjmp L31
L35:
	.dbline 196
; ¤'Ü
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
	.dbline 207
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 208
; ´ÉÛ
	sbrs R20,0
	rjmp L38
	.dbline 209
; ´ÉÛ
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L40
	.dbline 210
; ´ÉÛ
	clr R16
	xjmp L37
L40:
L38:
	.dbline 211
; ´ÉÛ
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; ´ÉÛ
	clr R16
	xjmp L37
L42:
	.dbline 213
; ´ÉÛ
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
	.dbline 224
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 225
; ´ÉÛ
	.dbline 225
	out 0x3,R16
	.dbline 225
	ldi R24,132
	out 0x36,R24
	.dbline 225
	.dbline 225
	.dbline 226
L45:
	.dbline 226
L46:
	.dbline 226
; ´ÉÛ
	in R2,0x36
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; ´ÉÛ
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; ´ÉÛ
	clr R16
	xjmp L44
L48:
	.dbline 229
; ´ÉÛ
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
	.dbline 240
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 241
; ´ÉÛ
	ldi R24,132
	out 0x36,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; ´ÉÛ
	in R2,0x36
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; ´ÉÛ
	in R24,0x1
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; ´ÉÛ
	clr R16
	xjmp L50
L54:
	.dbline 245
; ´ÉÛ
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 246
; ´ÉÛ
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
	.dbline 257
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 258
; ´ÉÛ
	ldi R24,196
	out 0x36,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; ´ÉÛ
	in R2,0x36
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; ´ÉÛ
	in R24,0x1
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; ´ÉÛ
	clr R16
	xjmp L56
L60:
	.dbline 262
; ´ÉÛ
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 263
; ´ÉÛ
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
	.dbline 276
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 277
; ´ÉÛ
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; ´ÉÛ
	clr R16
	xjmp L62
L63:
	.dbline 280
; ´ÉÛ
; ´ÉÛ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; ´ÉÛ
	clr R16
	xjmp L62
L65:
	.dbline 283
; ´ÉÛ
; ´ÉÛ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; ´ÉÛ
	clr R16
	xjmp L62
L67:
	.dbline 286
; ´ÉÛ
; ´ÉÛ
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; ´ÉÛ
	clr R16
	xjmp L62
L69:
	.dbline 289
; ´ÉÛ
; ´ÉÛ
	ldi R24,148
	out 0x36,R24
	.dbline 291
; ´ÉÛ
; ´ÉÛ
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
	.dbline 322
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 323
; ´ÉÛ
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; ´ÉÛ
	clr R16
	xjmp L71
L72:
	.dbline 326
; ´ÉÛ
; ´ÉÛ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; ´ÉÛ
	clr R16
	xjmp L71
L74:
	.dbline 329
; ´ÉÛ
; ´ÉÛ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; ´ÉÛ
	clr R16
	xjmp L71
L76:
	.dbline 332
; ´ÉÛ
; ´ÉÛ
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; ´ÉÛ
	clr R16
	xjmp L71
L78:
	.dbline 335
; ´ÉÛ
; ´ÉÛ
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; ´ÉÛ
	clr R16
	xjmp L71
L80:
	.dbline 338
; ´ÉÛ
; ´ÉÛ
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; ´ÉÛ
	clr R16
	xjmp L71
L82:
	.dbline 341
; ´ÉÛ
; ´ÉÛ
	ldi R24,148
	out 0x36,R24
	.dbline 343
; ´ÉÛ
; ´ÉÛ
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
	.dbline 359
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	.dbline 362
; ´ÉÛ
; ´ÉÛ
; ´ÉÛ
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; ´ÉÛ
	clr R16
	xjmp L84
L85:
	.dbline 365
; ´ÉÛ
; ´ÉÛ
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; ´ÉÛ
	clr R16
	xjmp L84
L87:
	.dbline 368
; ´ÉÛ
; ´ÉÛ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; ´ÉÛ
	clr R16
	xjmp L84
L89:
	.dbline 371
; ´ÉÛ
; ´ÉÛ
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; ´ÉÛ
	clr R16
	xjmp L84
L91:
	.dbline 374
; ´ÉÛ
; ´ÉÛ
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; ´ÉÛ
	clr R16
	xjmp L84
L93:
	.dbline 377
; ´ÉÛ
; ´ÉÛ
	clr R20
	xjmp L98
L95:
	.dbline 378
; ´ÉÛ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; ´ÉÛ
	clr R16
	xjmp L84
L99:
L96:
	.dbline 377
	inc R20
L98:
	.dbline 377
	mov R24,R22
	subi R24,1
	cp R20,R24
	brlo L95
	.dbline 381
; ´ÉÛ
; ´ÉÛ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; ´ÉÛ
	clr R16
	xjmp L84
L101:
	.dbline 384
; ´ÉÛ
; ´ÉÛ
	ldi R24,148
	out 0x36,R24
	.dbline 386
; ´ÉÛ
; ´ÉÛ
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
	.dbfunc e delayus _delayus fV
;              i -> R20,R21
;              t -> R16,R17
	.even
_delayus::
	xcall push_gset1
	.dbline -1
	.dbline 129
	.dbline 131
	clr R20
	clr R21
	xjmp L125
L122:
	.dbline 131
	.dbline 131
	NOP
	
	.dbline 131
L123:
	.dbline 131
	subi R20,255  ; offset = 1
	sbci R21,255
L125:
	.dbline 131
	cp R16,R20
	cpc R17,R21
	brsh L122
	.dbline -2
L121:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 i
	.dbend
	.dbfile D:\ICC_H\LCD12864_ST7920.H
	.dbfunc e SPI_init _SPI_init fV
	.even
_SPI_init::
	.dbline -1
	.dbline 83
	.dbline 84
	in R24,0x17
	ori R24,176
	out 0x17,R24
	.dbline 85
	ldi R24,80
	out 0xd,R24
	.dbline 86
	ldi R24,1
	out 0xe,R24
	.dbline 87
	sei
	.dbline -2
L126:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e lcd_wrByte _lcd_wrByte fV
;           data -> R16
	.even
_lcd_wrByte::
	.dbline -1
	.dbline 91
	.dbline 92
	out 0xf,R16
L128:
	.dbline 93
L129:
	.dbline 93
	sbis 0xe,7
	rjmp L128
	.dbline -2
L127:
	.dbline 0 ; func end
	ret
	.dbsym r data 16 c
	.dbend
	.dbfunc e lcd_wrCmd _lcd_wrCmd fV
;             LC -> R20
;             HC -> R22
	.even
_lcd_wrCmd::
	xcall push_gset2
	mov R20,R18
	mov R22,R16
	.dbline -1
	.dbline 97
	.dbline 98
	ldi R16,248
	xcall _lcd_wrByte
	.dbline 99
	mov R16,R22
	xcall _lcd_wrByte
	.dbline 100
	mov R16,R20
	xcall _lcd_wrByte
	.dbline -2
L131:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r LC 20 c
	.dbsym r HC 22 c
	.dbend
	.dbfunc e lcd_wrDat _lcd_wrDat fV
;             LD -> R20
;             HD -> R22
	.even
_lcd_wrDat::
	xcall push_gset2
	mov R20,R18
	mov R22,R16
	.dbline -1
	.dbline 104
	.dbline 105
	ldi R16,250
	xcall _lcd_wrByte
	.dbline 106
	mov R16,R22
	xcall _lcd_wrByte
	.dbline 107
	mov R16,R20
	xcall _lcd_wrByte
	.dbline -2
L132:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r LD 20 c
	.dbsym r HD 22 c
	.dbend
	.dbfunc e lcd_set_xy _lcd_set_xy fV
;            adr -> R20
;              y -> R22
;              x -> R20
	.even
_lcd_set_xy::
	xcall push_gset2
	mov R22,R18
	mov R20,R16
	.dbline -1
	.dbline 114
	.dbline 117
	clr R21
	cpi R20,1
	ldi R30,0
	cpc R21,R30
	breq L137
	cpi R20,2
	ldi R30,0
	cpc R21,R30
	breq L138
	cpi R20,3
	ldi R30,0
	cpc R21,R30
	breq L139
	cpi R20,4
	ldi R30,0
	cpc R21,R30
	breq L140
	xjmp L134
X1:
	.dbline 118
L137:
	.dbline 119
	mov R20,R22
	subi R20,129    ; addi 127
	.dbline 120
	xjmp L135
L138:
	.dbline 121
	mov R20,R22
	subi R20,113    ; addi 143
	.dbline 122
	xjmp L135
L139:
	.dbline 123
	mov R20,R22
	subi R20,121    ; addi 135
	.dbline 124
	xjmp L135
L140:
	.dbline 125
	mov R20,R22
	subi R20,105    ; addi 151
	.dbline 126
L134:
	.dbline 127
	.dbline 128
L135:
	.dbline 129
	mov R18,R20
	andi R18,15
	andi R18,#0x0F
	swap R18
	mov R16,R20
	andi R16,240
	xcall _lcd_wrCmd
	.dbline -2
L133:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r adr 20 c
	.dbsym r y 22 c
	.dbsym r x 20 c
	.dbend
	.dbfunc e lcd_putc _lcd_putc fV
;             ch -> y+4
;              y -> R22
;              x -> R20
	.even
_lcd_putc::
	xcall push_gset2
	mov R22,R18
	mov R20,R16
	.dbline -1
	.dbline 133
	.dbline 134
	mov R18,R22
	mov R16,R20
	xcall _lcd_set_xy
	.dbline 135
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	.dbline 136
	ldd R18,y+4
	andi R18,15
	andi R18,#0x0F
	swap R18
	ldd R16,y+4
	andi R16,240
	xcall _lcd_wrDat
	.dbline -2
L141:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym l ch 4 c
	.dbsym r y 22 c
	.dbsym r x 20 c
	.dbend
	.dbfunc e lcd_putd0 _lcd_putd0 fV
;              i -> R20
;         length -> y+9
;            dat -> y+5
;              y -> R22
;              x -> R20
	.even
_lcd_putd0::
	xcall push_gset2
	mov R22,R18
	mov R20,R16
	sbiw R28,1
	.dbline -1
	.dbline 140
	.dbline 143
	ldd R0,y+9
	std y+0,R0
	movw R30,R28
	ldd R16,z+5
	ldd R17,z+6
	ldd R18,z+7
	ldd R19,z+8
	xcall _speaData
	.dbline 144
	mov R18,R22
	mov R16,R20
	xcall _lcd_set_xy
	.dbline 145
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 146
	ldd R20,y+9
	subi R20,1
	xjmp L146
L143:
	.dbline 147
	.dbline 148
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R20
	clr R31
	sbrc R30,7
	com R31
	add R30,R24
	adc R31,R25
	ldd R24,z+0
	clr R25
	adiw R24,48
	mov R18,R24
	andi R18,15
	andi R19,0
	lsl R18
	rol R19
	lsl R18
	rol R19
	lsl R18
	rol R19
	lsl R18
	rol R19
	mov R16,R24
	andi R16,240
	andi R17,0
	xcall _lcd_wrDat
	.dbline 149
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 150
L144:
	.dbline 146
	dec R20
L146:
	.dbline 146
	cpi R20,0
	brge L143
	.dbline -2
L142:
	adiw R28,1
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 C
	.dbsym l length 9 c
	.dbsym l dat 5 l
	.dbsym r y 22 c
	.dbsym r x 20 c
	.dbend
	.dbfunc e lcd_putd _lcd_putd fV
;      effectLen -> R12
;              i -> R10
;         length -> y+15
;            dat -> y+11
;              y -> R14
;              x -> R10
	.even
_lcd_putd::
	xcall push_gset5
	mov R14,R18
	mov R10,R16
	sbiw R28,1
	.dbline -1
	.dbline 154
	.dbline 158
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
	brsh L148
	.dbline 159
	ldi R24,7
	mov R12,R24
	xjmp L149
L148:
	.dbline 160
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
	brsh L150
	.dbline 161
	ldi R24,6
	mov R12,R24
	xjmp L151
L150:
	.dbline 162
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
	brsh L152
	.dbline 163
	ldi R24,5
	mov R12,R24
	xjmp L153
L152:
	.dbline 164
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
	brsh L154
	.dbline 165
	ldi R24,4
	mov R12,R24
	xjmp L155
L154:
	.dbline 166
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
	brsh L156
	.dbline 167
	ldi R24,3
	mov R12,R24
	xjmp L157
L156:
	.dbline 168
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
	brsh L158
	.dbline 169
	ldi R24,2
	mov R12,R24
	xjmp L159
L158:
	.dbline 171
	clr R12
	inc R12
L159:
L157:
L155:
L153:
L151:
L149:
	.dbline 172
	std y+0,R12
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	xcall _speaData
	.dbline 174
	mov R18,R14
	mov R16,R10
	xcall _lcd_set_xy
	.dbline 175
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 176
	ldd R0,y+15
	cp R12,R0
	brsh L160
	.dbline 177
	.dbline 178
	mov R24,R0
	sub R24,R12
	subi R24,1
	mov R10,R24
	xjmp L165
L162:
	.dbline 179
	.dbline 180
	clr R18
	ldi R16,32
	xcall _lcd_wrDat
	.dbline 181
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 182
L163:
	.dbline 178
	dec R10
L165:
	.dbline 178
	mov R24,R10
	cpi R24,0
	brge L162
	.dbline 183
L160:
	.dbline 184
	mov R24,R12
	subi R24,1
	mov R10,R24
	xjmp L169
L166:
	.dbline 185
	.dbline 186
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R10
	clr R31
	sbrc R30,7
	com R31
	add R30,R24
	adc R31,R25
	ldd R24,z+0
	clr R25
	adiw R24,48
	mov R18,R24
	andi R18,15
	andi R19,0
	lsl R18
	rol R19
	lsl R18
	rol R19
	lsl R18
	rol R19
	lsl R18
	rol R19
	mov R16,R24
	andi R16,240
	andi R17,0
	xcall _lcd_wrDat
	.dbline 187
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 188
L167:
	.dbline 184
	dec R10
L169:
	.dbline 184
	mov R24,R10
	cpi R24,0
	brge L166
	.dbline -2
L147:
	adiw R28,1
	xcall pop_gset5
	.dbline 0 ; func end
	ret
	.dbsym r effectLen 12 C
	.dbsym r i 10 C
	.dbsym l length 15 c
	.dbsym l dat 11 l
	.dbsym r y 14 c
	.dbsym r x 10 c
	.dbend
	.dbfunc e lcd_puts _lcd_puts fV
;            str -> R20,R21
;              y -> R10
;              x -> R22
	.even
_lcd_puts::
	xcall push_gset3
	mov R10,R18
	mov R22,R16
	ldd R20,y+6
	ldd R21,y+7
	.dbline -1
	.dbline 192
	.dbline 193
	mov R18,R10
	mov R16,R22
	xcall _lcd_set_xy
	.dbline 194
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	xjmp L172
L171:
	.dbline 196
	.dbline 197
	movw R30,R20
	ldd R2,z+0
	clr R3
	mov R18,R2
	andi R18,15
	andi R18,#0x0F
	swap R18
	mov R16,R2
	andi R16,240
	xcall _lcd_wrDat
	.dbline 198
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 199
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	.dbline 200
L172:
	.dbline 195
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L171
	.dbline -2
L170:
	xcall pop_gset3
	.dbline 0 ; func end
	ret
	.dbsym r str 20 pc
	.dbsym r y 10 c
	.dbsym r x 22 c
	.dbend
	.dbfunc e lcd_puts_ _lcd_puts_ fV
;          dlyMs -> R20
;            str -> R22,R23
;              y -> R12
;              x -> R10
	.even
_lcd_puts_::
	xcall push_gset4
	mov R12,R18
	mov R10,R16
	ldd R22,y+8
	ldd R23,y+9
	ldd R20,y+10
	.dbline -1
	.dbline 204
	.dbline 205
	mov R18,R12
	mov R16,R10
	xcall _lcd_set_xy
	.dbline 206
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	xjmp L176
L175:
	.dbline 208
	.dbline 209
	movw R30,R22
	ldd R2,z+0
	clr R3
	mov R18,R2
	andi R18,15
	andi R18,#0x0F
	swap R18
	mov R16,R2
	andi R16,240
	xcall _lcd_wrDat
	.dbline 210
	subi R22,255  ; offset = 1
	sbci R23,255
	.dbline 211
	mov R16,R20
	clr R17
	xcall _delay50ms
	.dbline 212
L176:
	.dbline 207
	movw R30,R22
	ldd R2,z+0
	tst R2
	brne L175
	.dbline -2
L174:
	xcall pop_gset4
	.dbline 0 ; func end
	ret
	.dbsym r dlyMs 20 c
	.dbsym r str 22 pc
	.dbsym r y 12 c
	.dbsym r x 10 c
	.dbend
	.dbfunc e lcd_clr _lcd_clr fV
	.even
_lcd_clr::
	.dbline -1
	.dbline 216
	.dbline 217
	ldi R18,16
	clr R16
	xcall _lcd_wrCmd
	.dbline 218
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline -2
L178:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e lcd_init _lcd_init fV
	.even
_lcd_init::
	.dbline -1
	.dbline 222
	.dbline 223
	xcall _SPI_init
	.dbline 226
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 227
	ldi R18,48
	ldi R16,48
	xcall _lcd_wrCmd
	.dbline 229
	ldi R18,192
	clr R16
	xcall _lcd_wrCmd
	.dbline 230
	ldi R18,16
	clr R16
	xcall _lcd_wrCmd
	.dbline 232
	ldi R18,96
	clr R16
	xcall _lcd_wrCmd
	.dbline 234
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline -2
L179:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfile E:\ÎâÔó³ÌÐò±¸·Ý\ÒÆÖ²³ÌÐò\STK162~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.C
	.dbfunc e main _main fV
	.even
_main::
	sbiw R28,2
	.dbline -1
	.dbline 86
	.dbline 87
	sei
	.dbline 88
	xcall _lcd_init
	.dbline 89
	ldi R24,<L181
	ldi R25,>L181
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,1
	xcall _lcd_puts
	.dbline 90
	ldi R24,<L182
	ldi R25,>L182
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,3
	xcall _lcd_puts
L183:
	.dbline 91
L184:
	.dbline 91
	xjmp L183
X2:
	.dbline -2
L180:
	adiw R28,2
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\ÎâÔó³ÌÐò±¸·Ý\ÒÆÖ²³ÌÐò\STK162~1.0\LCD128~1\LCD12864_ST7920\LCD12864_ST7920.C
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L182:
	.blkb 13
	.area idata
	.byte 32,32,32,32,206,162,209,169,181,231,215,211,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L181:
	.blkb 16
	.area idata
	.byte 32,32,'W,'a,'v,'e,'S,'h,'a,'r,'e,46,'n,'e,'t,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
