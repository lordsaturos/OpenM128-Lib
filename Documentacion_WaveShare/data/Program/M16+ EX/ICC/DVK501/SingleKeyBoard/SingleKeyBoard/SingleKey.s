	.module SingleKey.c
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
	rcall push_arg4
	rcall push_gset4
	sbiw R28,8
	ldd R12,y+20
	.dbline -1
	.dbline 116
; /*********************************************************************
;     Î¢ Ñ© µç ×Ó   WaveShare   http://www.waveShare.net            	
;                                                                     
; Ä¿    µÄ:   ²âÊÔ"SingleKeyBoard"Ä£¿é
; 
; Ä¿±êÏµÍ³:   »ùÓÚÈÎºÎAVRµ¥Æ¬»ú
;                                                                         
; Ó¦ÓÃÈí¼ş:   ICCAVR
;                                                                         
; °æ    ±¾:   Version 1.0                                                          
;                                                                         
; Ô²°æÊ±¼ä:   2005-06-25
;     
; ¿ª·¢ÈËÔ±:   SEE
; 
; Ëµ    Ã÷:   ÈôÓÃÓÚÉÌÒµÓÃÍ¾£¬Çë±£Áô´Ë¶ÎÎÄ×Ö»ò×¢Ã÷´úÂëÀ´Ô´
;     
;     Éî ÛÚ ÊĞ Î¢ Ñ© µç ×Ó ÓĞ ÏŞ ¹« Ë¾ ±£ Áô Ëù ÓĞ µÄ °æ È¨     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; °æ±¾¸üĞÂ¼ÇÂ¼£º
; 
; ----------------------------------------------------------------------
; ÊµÑéÄÚÈİ£º
; Ñ­»·É¨ÃèPD¿Ú½ÓÈëµÄ°´¼ü£¬²¢Ê¹ÓÃPB¿ÚµÄLEDÖ¸Ê¾µÆÖ¸Ê¾°´¼üµÄÂëÖµ¡£
; ----------------------------------------------------------------------
; Ó²¼şÁ¬½Ó£º
; ½«PB¿ÚµÄLEDÖ¸Ê¾µÆÊ¹ÄÜ¿ª¹ØÇĞ»»µ½"ON"×´Ì¬£¬Ê¹ÆäÖ¸Ê¾°´¼üµÄÂëÖµ¡£
; SingleKeyBoard£ºK0----K7
;                  |    |
; SMK1632£º       PA0--PA7
; ----------------------------------------------------------------------
; ×¢ÒâÊÂÏî£º 
; £¨1£©ÈôÓĞ¼ÓÔØ¿âº¯Êı£¬Çë½«¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°¿âº¯Êı¡±ÏÂµÄ¡°ICC_H¡±ÎÄ¼ş¼Ğ¿½µ½DÅÌ
; £¨2£©ÇëÏêÏ¸ÔÄ¶Á¡°Ê¹ÓÃ±Ø¶Á¡±¼°Ïà¹Ø×ÊÁÏ¡£
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom48v.h>
; #include "D:\ICC_H\CmmICC.H"
; 
; #define LED_DDR  DDRB
; #define LED_P0RT PORTB
; #define KEY_DDR  DDRD
; #define KEY_PORT PORTD
; #define KEY_PIN  PIND
; 
; /*--------------------------------------------------------------------
; º¯ÊıÃû³Æ£º¼üÅÌÉ¨Ãè
; º¯Êı¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void scanKey()
; {
;     KEY_DDR=0X00;
;     KEY_PORT=0xFF;
;     if(KEY_PIN==0xFE) 
;         LED_P0RT=0x01;
;     if(KEY_PIN==0xFD) 
;         LED_P0RT=0x02;
;     if(KEY_PIN==0xFB) 
;         LED_P0RT=0x04;
;     if(KEY_PIN==0xF7) 
;         LED_P0RT=0x08;
;     if(KEY_PIN==0xEF) 
;         LED_P0RT=0x10;
;     if(KEY_PIN==0xDF) 
;         LED_P0RT=0x20;
;     if(KEY_PIN==0xBF) 
;         LED_P0RT=0x40;
;     if(KEY_PIN==0x7F) 
;         LED_P0RT=0x80;
;  }
; /*--------------------------------------------------------------------
; º¯ÊıÃû³Æ£º
; º¯Êı¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void main()
; {
;     LED_DDR=0XFF;
;     while(1)
;         scanKey();
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
	rjmp L5
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
	rcall div32u
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
	rcall mod32u
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
	rcall empy32u
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
	rjmp L2
X0:
	.dbline -2
L1:
	adiw R28,8
	rcall pop_gset4
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
	sts 188,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; }
	lds R2,188
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; }
	lds R24,185
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; }
	clr R16
	rjmp L6
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
	sts 188,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; }
	lds R2,188
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; }
	lds R24,185
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; }
	clr R16
	rjmp L12
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
	sts 187,R16
	.dbline 159
	ldi R24,132
	sts 188,R24
	.dbline 159
	.dbline 159
	.dbline 160
L19:
	.dbline 160
L20:
	.dbline 160
; }
	lds R2,188
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; }
	lds R24,185
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 162
; }
	clr R16
	rjmp L18
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
	rcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 174
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
	.dbline 175
; Ô'Ü
	sbrs R20,0
	rjmp L25
	.dbline 176
; Ô'Ü
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	rcall _I2C_SendWrDAdr
	tst R16
	brne L27
	.dbline 177
; Ô'Ü
	clr R16
	rjmp L24
L27:
L25:
	.dbline 178
; Ô'Ü
	mov R16,R20
	rcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; Ô'Ü
	clr R16
	rjmp L24
L29:
	.dbline 180
; Ô'Ü
	ldi R16,1
	.dbline -2
L24:
	rcall pop_gset1
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
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
; Ô'Ü
	.dbline 192
; Ô'Ü
	.dbline 192
	sts 187,R16
	.dbline 192
	ldi R24,132
	sts 188,R24
	.dbline 192
	.dbline 192
	.dbline 193
L32:
	.dbline 193
L33:
	.dbline 193
; Ô'Ü
	lds R2,188
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; Ô'Ü
	lds R24,185
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; Ô'Ü
	clr R16
	rjmp L31
L35:
	.dbline 196
; Ô'Ü
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
	rcall push_gset1
	mov R20,R16
	.dbline -1
	.dbline 207
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 208
; ŒUÜ
	sbrs R20,0
	rjmp L38
	.dbline 209
; ŒUÜ
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	rcall _I2C_SendWrDAdr
	tst R16
	brne L40
	.dbline 210
; ŒUÜ
	clr R16
	rjmp L37
L40:
L38:
	.dbline 211
; ŒUÜ
	mov R16,R20
	rcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; ŒUÜ
	clr R16
	rjmp L37
L42:
	.dbline 213
; ŒUÜ
	ldi R16,1
	.dbline -2
L37:
	rcall pop_gset1
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
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 225
; ŒUÜ
	.dbline 225
	sts 187,R16
	.dbline 225
	ldi R24,132
	sts 188,R24
	.dbline 225
	.dbline 225
	.dbline 226
L45:
	.dbline 226
L46:
	.dbline 226
; ŒUÜ
	lds R2,188
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; ŒUÜ
	lds R24,185
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; ŒUÜ
	clr R16
	rjmp L44
L48:
	.dbline 229
; ŒUÜ
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
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 241
; ŒUÜ
	ldi R24,132
	sts 188,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; ŒUÜ
	lds R2,188
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; ŒUÜ
	lds R24,185
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; ŒUÜ
	clr R16
	rjmp L50
L54:
	.dbline 245
; ŒUÜ
	lds R2,187
	movw R30,R16
	std z+0,R2
	.dbline 246
; ŒUÜ
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
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 258
; ŒUÜ
	ldi R24,196
	sts 188,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; ŒUÜ
	lds R2,188
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; ŒUÜ
	lds R24,185
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; ŒUÜ
	clr R16
	rjmp L56
L60:
	.dbline 262
; ŒUÜ
	lds R2,187
	movw R30,R16
	std z+0,R2
	.dbline 263
; ŒUÜ
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
	rcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 276
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 277
; ŒUÜ
	rcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; ŒUÜ
	clr R16
	rjmp L62
L63:
	.dbline 280
; ŒUÜ
; ŒUÜ
	movw R16,R22
	rcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; ŒUÜ
	clr R16
	rjmp L62
L65:
	.dbline 283
; ŒUÜ
; ŒUÜ
	mov R16,R20
	rcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; ŒUÜ
	clr R16
	rjmp L62
L67:
	.dbline 286
; ŒUÜ
; ŒUÜ
	ldd R16,y+4
	rcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; ŒUÜ
	clr R16
	rjmp L62
L69:
	.dbline 289
; ŒUÜ
; ŒUÜ
	ldi R24,148
	sts 188,R24
	.dbline 291
; ŒUÜ
; ŒUÜ
	ldi R16,1
	.dbline -2
L62:
	rcall pop_gset2
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
	rcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 322
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 323
; ŒUÜ
	rcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; ŒUÜ
	clr R16
	rjmp L71
L72:
	.dbline 326
; ŒUÜ
; ŒUÜ
	movw R16,R22
	rcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; ŒUÜ
	clr R16
	rjmp L71
L74:
	.dbline 329
; ŒUÜ
; ŒUÜ
	mov R16,R20
	rcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; ŒUÜ
	clr R16
	rjmp L71
L76:
	.dbline 332
; ŒUÜ
; ŒUÜ
	rcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; ŒUÜ
	clr R16
	rjmp L71
L78:
	.dbline 335
; ŒUÜ
; ŒUÜ
	ldd R16,y+4
	rcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; ŒUÜ
	clr R16
	rjmp L71
L80:
	.dbline 338
; ŒUÜ
; ŒUÜ
	ldd R16,y+6
	ldd R17,y+7
	rcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; ŒUÜ
	clr R16
	rjmp L71
L82:
	.dbline 341
; ŒUÜ
; ŒUÜ
	ldi R24,148
	sts 188,R24
	.dbline 343
; ŒUÜ
; ŒUÜ
	ldi R16,1
	.dbline -2
L71:
	rcall pop_gset2
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
	rcall push_gset4
	mov R20,R18
	movw R12,R16
	ldd R10,y+10
	ldd R11,y+11
	ldd R22,y+12
	.dbline -1
	.dbline 359
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
; ŒUÜ
	.dbline 362
; ŒUÜ
; ŒUÜ
; ŒUÜ
	rcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; ŒUÜ
	clr R16
	rjmp L84
L85:
	.dbline 365
; ŒUÜ
; ŒUÜ
	movw R16,R12
	rcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; ŒUÜ
	clr R16
	rjmp L84
L87:
	.dbline 368
; ŒUÜ
; ŒUÜ
	mov R16,R20
	rcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; ŒUÜ
	clr R16
	rjmp L84
L89:
	.dbline 371
; ŒUÜ
; ŒUÜ
	rcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; ŒUÜ
	clr R16
	rjmp L84
L91:
	.dbline 374
; ŒUÜ
; ŒUÜ
	ldd R16,y+8
	rcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; ŒUÜ
	clr R16
	rjmp L84
L93:
	.dbline 377
; ŒUÜ
; ŒUÜ
	clr R20
	rjmp L98
L95:
	.dbline 378
; ŒUÜ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	rcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; ŒUÜ
	clr R16
	rjmp L84
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
; ŒUÜ
; ŒUÜ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	rcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; ŒUÜ
	clr R16
	rjmp L84
L101:
	.dbline 384
; ŒUÜ
; ŒUÜ
	ldi R24,148
	sts 188,R24
	.dbline 386
; ŒUÜ
; ŒUÜ
	ldi R16,1
	.dbline -2
L84:
	rcall pop_gset4
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
	rcall push_gset1
	.dbline -1
	.dbline 105
	.dbline 107
	rjmp L107
L104:
	.dbline 108
	clr R20
	rjmp L111
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
	.dbline 120
	.dbline 122
	rjmp L116
L113:
	.dbline 123
	clr R20
	clr R21
	rjmp L120
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
	rcall pop_gset1
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
	rcall push_gset1
	.dbline -1
	.dbline 129
	.dbline 131
	clr R20
	clr R21
	rjmp L125
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
	rcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 i
	.dbend
	.dbfile E:\ÎâÔó³ÌĞò±¸·İ\DVK500\ĞÂ½¨ÎÄ¼ş¼Ğ\stk48+\SINGLE~1\SingleKeyBoard\SingleKey.c
	.dbfunc e scanKey _scanKey fV
	.even
_scanKey::
	.dbline -1
	.dbline 59
	.dbline 60
	clr R2
	out 0xa,R2
	.dbline 61
	ldi R24,255
	out 0xb,R24
	.dbline 62
	in R24,0x9
	cpi R24,254
	brne L127
	.dbline 63
	ldi R24,1
	out 0x5,R24
L127:
	.dbline 64
	in R24,0x9
	cpi R24,253
	brne L129
	.dbline 65
	ldi R24,2
	out 0x5,R24
L129:
	.dbline 66
	in R24,0x9
	cpi R24,251
	brne L131
	.dbline 67
	ldi R24,4
	out 0x5,R24
L131:
	.dbline 68
	in R24,0x9
	cpi R24,247
	brne L133
	.dbline 69
	ldi R24,8
	out 0x5,R24
L133:
	.dbline 70
	in R24,0x9
	cpi R24,239
	brne L135
	.dbline 71
	ldi R24,16
	out 0x5,R24
L135:
	.dbline 72
	in R24,0x9
	cpi R24,223
	brne L137
	.dbline 73
	ldi R24,32
	out 0x5,R24
L137:
	.dbline 74
	in R24,0x9
	cpi R24,191
	brne L139
	.dbline 75
	ldi R24,64
	out 0x5,R24
L139:
	.dbline 76
	in R24,0x9
	cpi R24,127
	brne L141
	.dbline 77
	ldi R24,128
	out 0x5,R24
L141:
	.dbline -2
L126:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 88
	.dbline 89
	ldi R24,255
	out 0x4,R24
	rjmp L145
L144:
	.dbline 91
	rcall _scanKey
L145:
	.dbline 90
	rjmp L144
X1:
	.dbline -2
L143:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\ÎâÔó³ÌĞò±¸·İ\DVK500\ĞÂ½¨ÎÄ¼ş¼Ğ\stk48+\SINGLE~1\SingleKeyBoard\SingleKey.c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
