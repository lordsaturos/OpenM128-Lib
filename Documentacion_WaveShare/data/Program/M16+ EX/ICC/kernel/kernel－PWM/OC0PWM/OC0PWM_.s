	.module OC0PWM_.C
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
; Ä¿    µÄ:   ½¨Á¢Ê¹ÓÃOC0×öPWMµÄÊ¾Àý³ÌÐò
; 	
; Ä¿±êÏµÍ³:   »ùÓÚAVRµ¥Æ¬»ú
; 		                                                                
; Ó¦ÓÃÈí¼þ:   ICCAVR
; 		                                                                
; °æ    ±¾:   Version 1.0                                                          
; 		                                                                
; Ô²°æÊ±¼ä:   2005-06-25
; 	
; ¿ª·¢ÈËÔ±:   SEE£¨ÖÐÎÄÃû²»¸æËßÄã¡«ÅÂÄãÂîÎÒ£©
; 
; Ëµ    Ã÷:   ÈôÓÃÓÚÉÌÒµÓÃÍ¾£¬Çë±£Áô´Ë¶ÎÎÄ×Ö»ò×¢Ã÷´úÂëÀ´Ô´
; 	
; 	Éî ÛÚ ÊÐ Î¢ Ñ© µç ×Ó ÓÐ ÏÞ ¹« Ë¾ ±£ Áô Ëù ÓÐ µÄ °æ È¨     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; °æ±¾¸üÐÂ¼ÇÂ¼£º
; 		°æ    ±¾:   Version 1.1
; 		Ô²°æÊ±¼ä:   2005-03-25
; 
; ----------------------------------------------------------------------
; ½ÓÈëÄ£¿é£º 
; ½Ó¿ÚËµÃ÷£º 
; ----------------------------------------------------------------------
; ×¢ÒâÊÂÏî£º
; 		
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h> 
; #include "D:\ICC_H\CmmICC.H"
; 
; #define OUT_MOTORL_EN	sbi(DDRB,0)
; #define SET_MOTORL_EN	sbi(PORTB,0)
; #define CLR_MOTORL_EN	cbi(PORTB,0)
; 
; #define OUT_MOTORL_DIR	sbi(DDRB,2)
; #define SET_MOTORL_DIR	sbi(PORTB,2)	//motor left turn left
; #define CLR_MOTORL_DIR	cbi(PORTB,2)	//motor left turn right
; 
; #define OUT_MOTORL_PUL	sbi(DDRB,3)
; 
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void timer0_init(void) 
; { 
; 	TCCR0 = (1<<WGM01)|(1<<WGM00)|(1<<COM01)|(1<<COM00)|(1<<CS00);	
; /*
; 	WGM01=1; WGM00=1; --> fast PWM modle
; 	COM01=1; COM00=0; --> ±È½ÏÆ¥ÅäÊ±set OC0 pin
; 	CS00=1;  --> timer0 source ²»¾­¹ýÈÎºÎ·ÖÆµ£¬Ö±½ÓÎªClk£¬Ê¹µÃPWM¿ÉÒÔ¹¤×÷µÃ×ã¹»¿ì
; */
; 	TCNT0 = 0x00;			//ÉèÖÃTC0¼ÆÊý¼Ä´æÆ÷³õÖµ 
; 	OCR0  = 0xe0;			//Êä³ö±È½Ï¼Ä´æÆ÷³õÖµ£¬ÉèÖÃ¸ÃÖµ¿ÉÓÃÓÚµ÷½ÚÕ¼¿Õ±È
; } 
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void main(void) 
; {
; 	OUT_MOTORL_EN;				
; 	OUT_MOTORL_DIR;
; 	OUT_MOTORL_PUL;
; 	SET_MOTORL_EN;
; 	timer0_init(); 
; 	SEI(); 
; 	while(1);
; }
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
	.dbline 119
; 
; 
; 
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
	.dbline 125
; 
; 
; 
; 
; 
; 
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
; 
	.dbline 127
; 
	ldi R24,164
	out 0x36,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; 
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; 
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; 
	clr R16
	xjmp L6
L10:
	.dbline 131
; 
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
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
	.dbline 143
; 
	ldi R24,164
	out 0x36,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; 
	in R2,0x36
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; 
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; 
	clr R16
	xjmp L12
L16:
	.dbline 147
; 
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
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
; 
	.dbline 159
; 
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
; 
	in R2,0x36
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; 
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 162
; 
	clr R16
	xjmp L18
L22:
	.dbline 163
; 
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 175
; æ
	sbrs R20,0
	rjmp L25
	.dbline 176
; æ
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
; æ
	clr R16
	xjmp L24
L27:
L25:
	.dbline 178
; æ
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; æ
	clr R16
	xjmp L24
L29:
	.dbline 180
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 192
; æ
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
; æ
	in R2,0x36
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; æ
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; æ
	clr R16
	xjmp L31
L35:
	.dbline 196
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 208
; æ
	sbrs R20,0
	rjmp L38
	.dbline 209
; æ
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
; æ
	clr R16
	xjmp L37
L40:
L38:
	.dbline 211
; æ
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; æ
	clr R16
	xjmp L37
L42:
	.dbline 213
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 225
; æ
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
; æ
	in R2,0x36
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; æ
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; æ
	clr R16
	xjmp L44
L48:
	.dbline 229
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 241
; æ
	ldi R24,132
	out 0x36,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; æ
	in R2,0x36
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; æ
	in R24,0x1
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; æ
	clr R16
	xjmp L50
L54:
	.dbline 245
; æ
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 246
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 258
; æ
	ldi R24,196
	out 0x36,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; æ
	in R2,0x36
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; æ
	in R24,0x1
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; æ
	clr R16
	xjmp L56
L60:
	.dbline 262
; æ
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 263
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 277
; æ
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; æ
	clr R16
	xjmp L62
L63:
	.dbline 280
; æ
; æ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; æ
	clr R16
	xjmp L62
L65:
	.dbline 283
; æ
; æ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; æ
	clr R16
	xjmp L62
L67:
	.dbline 286
; æ
; æ
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; æ
	clr R16
	xjmp L62
L69:
	.dbline 289
; æ
; æ
	ldi R24,148
	out 0x36,R24
	.dbline 291
; æ
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 323
; æ
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; æ
	clr R16
	xjmp L71
L72:
	.dbline 326
; æ
; æ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; æ
	clr R16
	xjmp L71
L74:
	.dbline 329
; æ
; æ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; æ
	clr R16
	xjmp L71
L76:
	.dbline 332
; æ
; æ
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; æ
	clr R16
	xjmp L71
L78:
	.dbline 335
; æ
; æ
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; æ
	clr R16
	xjmp L71
L80:
	.dbline 338
; æ
; æ
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; æ
	clr R16
	xjmp L71
L82:
	.dbline 341
; æ
; æ
	ldi R24,148
	out 0x36,R24
	.dbline 343
; æ
; æ
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
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
; æ
	.dbline 362
; æ
; æ
; æ
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; æ
	clr R16
	xjmp L84
L85:
	.dbline 365
; æ
; æ
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; æ
	clr R16
	xjmp L84
L87:
	.dbline 368
; æ
; æ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; æ
	clr R16
	xjmp L84
L89:
	.dbline 371
; æ
; æ
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; æ
	clr R16
	xjmp L84
L91:
	.dbline 374
; æ
; æ
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; æ
	clr R16
	xjmp L84
L93:
	.dbline 377
; æ
; æ
	clr R20
	xjmp L98
L95:
	.dbline 378
; æ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; æ
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
; æ
; æ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; æ
	clr R16
	xjmp L84
L101:
	.dbline 384
; æ
; æ
	ldi R24,148
	out 0x36,R24
	.dbline 386
; æ
; æ
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
	.dbline 98
	.dbline 100
	xjmp L107
L104:
	.dbline 101
	clr R20
	xjmp L111
L108:
	.dbline 102
L109:
	.dbline 101
	inc R20
L111:
	.dbline 101
	cpi R20,70
	brlo L108
L105:
	.dbline 100
	subi R16,1
	sbci R17,0
L107:
	.dbline 100
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L104
	.dbline -2
	.dbline 103
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
	.dbline 113
	.dbline 115
	xjmp L116
L113:
	.dbline 116
	clr R20
	clr R21
	xjmp L120
L117:
	.dbline 117
L118:
	.dbline 116
	subi R20,255  ; offset = 1
	sbci R21,255
L120:
	.dbline 116
	cpi R20,162
	ldi R30,205
	cpc R21,R30
	brlo L117
L114:
	.dbline 115
	subi R16,1
	sbci R17,0
L116:
	.dbline 115
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L113
	.dbline -2
	.dbline 118
L112:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 I
	.dbend
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PWM\OC0PWM\OC0PWM_.C
	.dbfunc e timer0_init _timer0_init fV
	.even
_timer0_init::
	.dbline -1
	.dbline 58
	.dbline 59
	ldi R24,121
	out 0x33,R24
	.dbline 65
	clr R2
	out 0x32,R2
	.dbline 66
	ldi R24,224
	out 0x3c,R24
	.dbline -2
	.dbline 67
L121:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 77
	.dbline 78
	sbi 0x17,0
	.dbline 79
	sbi 0x17,2
	.dbline 80
	sbi 0x17,3
	.dbline 81
	sbi 0x18,0
	.dbline 82
	xcall _timer0_init
	.dbline 83
	sei
L123:
	.dbline 84
L124:
	.dbline 84
	xjmp L123
X1:
	.dbline -2
	.dbline 85
L122:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PWM\OC0PWM\OC0PWM_.C
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
