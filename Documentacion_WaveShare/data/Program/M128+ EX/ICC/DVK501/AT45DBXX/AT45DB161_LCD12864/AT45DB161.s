	.module AT45DB161.C
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
; ÏîÄ¿Ãû³Æ:   AT45DBXXXÊ¾Àý³ÌÐò
; 		
; Ä¿±êÏµÍ³:   ¡°DVK501¡± && ¡°M128+ EX¡±
; 
; Ó¦ÓÃÈí¼þ:   ICCAVR 6.31A
; 
; °æ    ±¾:   V1.0 
; 
; Ô²°æÊ±¼ä:   2009-7-1
; 
; ¿ª·¢ÈËÔ±:   zz
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
; ÏÈ½«Êý¾ÝÐ´ÈëAT45DBXXX£¬È»ºóÔÙ¶ÁÊý¾Ý²¢Í¨¹ýLEDÏÔÊ¾
; ----------------------------------------------------------------------
; Ó²¼þÁ¬½Ó£º 	  DVK501				M128 EX+
; 				RST		---------	  PB4
; 				WP		---------	  B5
; 				CS		---------	  PB0
; 				SI		---------	  PB2 
; 				SO		---------	  PB3
; 				SCK		---------	  PB1
; 				L0~L7	---------	  PORTA
; 				CS		---------	  PB4
; 				PSB	    ---------	  GND
; 				SID		---------	  PB2
; 				CLK		---------	  PB1
; ----------------------------------------------------------------------
; ÊµÑéÄÚÈÝ£º
; °Ñ256¸öÊý¾ÝÐ´Èëdataflash»º´æÆ÷1£¬ÔÙ¶Á³ö£¬Ê¹ÓÃPA¿ÚµÄLED×öÖ¸Ê¾£¬¹Û²âÊÇ·ñÓëÐ´ÈëÒ»ÖÂ¡£
; ÓÉÓÚÆäÃüÁî½Ï¶à£¬ÕâÀï²»×÷ÏêÏ¸½éÉÜ£¬ÆäËü¶ÁÐ´·½Ê½¿É²ÎÕÕ±¾Ê¾Àý³ÌÐò
; ---------------------------------------------------------------------
; ----------------------------------------------------------------------
; ×¢ÒâÊÂÏî£º 
; £¨1£©ÈôÓÐ¼ÓÔØ¿âº¯Êý£¬Çë½«¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°¿âº¯Êý¡±ÏÂµÄ¡°ICC_H¡±ÎÄ¼þ¼Ð¿½µ½DÅÌ
; £¨2£©ÇëÏêÏ¸ÔÄ¶Á¡°Ê¹ÓÃ±Ø¶Á¡±¼°Ïà¹Ø×ÊÁÏ¡£
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; #include <iom128v.h>
; #include <macros.h>
; #include "D:\ICC_H\CmmICC.H"
; #include "D:\ICC_H\LCD12864_ST7920_.H"
; #include "D:\ICC_H\AT45DB161.H"
; 
; #define LCD_CLOSE cbi(PORTB,4)
; #define LCD_OPEN sbi(PORTB,4)
; void port_init(void)
; {
; 
;     PORTB = 0xff;
;     DDRB  = 0xbf;
;     PORTC = 0x00;
;     DDRC  = 0xff;
;     PORTD = 0x00;
;     DDRD  = 0xff;   
; }
; 
; void main(void)
; {	
; 	uint i;
; 	uchar tmp[256];
; 	
; 	port_init();  
;     spi_init();  
;     PORTB&=0XEF;
;     delay50ms(1); 
;     PORTB|=(~0xDF);
;     PORTB|=(~0XEF);    
; 	LCD_CLOSE;  //¹ØÒº¾§
;     for(i=0;i<256;i++)
;     {  
;         PORTB&=0XFE;
;         write_buffer(i,i);	    //°Ñ256¸öÊý¾ÝÐ´Èëdataflash»º´æÆ÷ 
;     	PORTB|=(~0XFE);
;     }                                 
; 
; 	delay50ms(2);                   
;    	for(i=0;i<256;i++)           //´Ódataflash»º´æÆ÷°Ñ256¸öÊý¾Ý¶Á³ö
; 	{	
;     	PORTB&=0XFE;
; 		tmp[i]=read_buffer(i);		//¼Ä´æ½á¹û,¹©ºóÃæÏÔÊ¾Ê¹ÓÃ 
;      	PORTB|=(~0XFE);
; 	    delay50us(1);
; 	   
; 	} 
;     PORTB&=0xDF;
; 	
; 	LCD_OPEN; //¿ªÒº¾§
; 	lcd_init();
; 	lcd_clr();
; 	lcd_puts(1,1,"AT45DBX-LCD12864");
; 	lcd_puts(2,1,"FLASH   Òº¾§ÏÔÊ¾");
; 	lcd_puts(3,1,"ÄÚÈÝ:");
; 	
; 	for(i=0;i<256;i++)
; 	{
; 	    lcd_putd(3,5,tmp[i],1);  //½«¸Õ¸Õ´ÓFLASHÄÚ¶Áµ½µÄÄÚÈÝÏÔÊ¾³öÀ´
; 		delay50ms(10); //ÑÓÊ±0.5Ãë
; 	}
; 	
; 	while(1);
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
	sts 116,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; }
	lds R2,116
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; }
	lds R24,113
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
	sts 116,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; }
	lds R2,116
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; }
	lds R24,113
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
	sts 115,R16
	.dbline 159
	ldi R24,132
	sts 116,R24
	.dbline 159
	.dbline 159
	.dbline 160
L19:
	.dbline 160
L20:
	.dbline 160
; }
	lds R2,116
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; }
	lds R24,113
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
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
	.dbline 175
; Ä'Ü
	sbrs R20,0
	rjmp L25
	.dbline 176
; Ä'Ü
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
; Ä'Ü
	clr R16
	xjmp L24
L27:
L25:
	.dbline 178
; Ä'Ü
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; Ä'Ü
	clr R16
	xjmp L24
L29:
	.dbline 180
; Ä'Ü
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
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
; Ä'Ü
	.dbline 192
; Ä'Ü
	.dbline 192
	sts 115,R16
	.dbline 192
	ldi R24,132
	sts 116,R24
	.dbline 192
	.dbline 192
	.dbline 193
L32:
	.dbline 193
L33:
	.dbline 193
; Ä'Ü
	lds R2,116
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; Ä'Ü
	lds R24,113
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; Ä'Ü
	clr R16
	xjmp L31
L35:
	.dbline 196
; Ä'Ü
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 208
; ôÜ
	sbrs R20,0
	rjmp L38
	.dbline 209
; ôÜ
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
; ôÜ
	clr R16
	xjmp L37
L40:
L38:
	.dbline 211
; ôÜ
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; ôÜ
	clr R16
	xjmp L37
L42:
	.dbline 213
; ôÜ
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 225
; ôÜ
	.dbline 225
	sts 115,R16
	.dbline 225
	ldi R24,132
	sts 116,R24
	.dbline 225
	.dbline 225
	.dbline 226
L45:
	.dbline 226
L46:
	.dbline 226
; ôÜ
	lds R2,116
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; ôÜ
	lds R24,113
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; ôÜ
	clr R16
	xjmp L44
L48:
	.dbline 229
; ôÜ
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 241
; ôÜ
	ldi R24,132
	sts 116,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; ôÜ
	lds R2,116
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; ôÜ
	lds R24,113
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; ôÜ
	clr R16
	xjmp L50
L54:
	.dbline 245
; ôÜ
	lds R2,115
	movw R30,R16
	std z+0,R2
	.dbline 246
; ôÜ
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 258
; ôÜ
	ldi R24,196
	sts 116,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; ôÜ
	lds R2,116
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; ôÜ
	lds R24,113
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; ôÜ
	clr R16
	xjmp L56
L60:
	.dbline 262
; ôÜ
	lds R2,115
	movw R30,R16
	std z+0,R2
	.dbline 263
; ôÜ
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 277
; ôÜ
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; ôÜ
	clr R16
	xjmp L62
L63:
	.dbline 280
; ôÜ
; ôÜ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; ôÜ
	clr R16
	xjmp L62
L65:
	.dbline 283
; ôÜ
; ôÜ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; ôÜ
	clr R16
	xjmp L62
L67:
	.dbline 286
; ôÜ
; ôÜ
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; ôÜ
	clr R16
	xjmp L62
L69:
	.dbline 289
; ôÜ
; ôÜ
	ldi R24,148
	sts 116,R24
	.dbline 291
; ôÜ
; ôÜ
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 323
; ôÜ
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; ôÜ
	clr R16
	xjmp L71
L72:
	.dbline 326
; ôÜ
; ôÜ
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; ôÜ
	clr R16
	xjmp L71
L74:
	.dbline 329
; ôÜ
; ôÜ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; ôÜ
	clr R16
	xjmp L71
L76:
	.dbline 332
; ôÜ
; ôÜ
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; ôÜ
	clr R16
	xjmp L71
L78:
	.dbline 335
; ôÜ
; ôÜ
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; ôÜ
	clr R16
	xjmp L71
L80:
	.dbline 338
; ôÜ
; ôÜ
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; ôÜ
	clr R16
	xjmp L71
L82:
	.dbline 341
; ôÜ
; ôÜ
	ldi R24,148
	sts 116,R24
	.dbline 343
; ôÜ
; ôÜ
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
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
; ôÜ
	.dbline 362
; ôÜ
; ôÜ
; ôÜ
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; ôÜ
	clr R16
	xjmp L84
L85:
	.dbline 365
; ôÜ
; ôÜ
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; ôÜ
	clr R16
	xjmp L84
L87:
	.dbline 368
; ôÜ
; ôÜ
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; ôÜ
	clr R16
	xjmp L84
L89:
	.dbline 371
; ôÜ
; ôÜ
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; ôÜ
	clr R16
	xjmp L84
L91:
	.dbline 374
; ôÜ
; ôÜ
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; ôÜ
	clr R16
	xjmp L84
L93:
	.dbline 377
; ôÜ
; ôÜ
	clr R20
	xjmp L98
L95:
	.dbline 378
; ôÜ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; ôÜ
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
; ôÜ
; ôÜ
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; ôÜ
	clr R16
	xjmp L84
L101:
	.dbline 384
; ôÜ
; ôÜ
	ldi R24,148
	sts 116,R24
	.dbline 386
; ôÜ
; ôÜ
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
	.dbline 132
	.dbline 135
L123:
	.dbline 131
	subi R20,255  ; offset = 1
	sbci R21,255
L125:
	.dbline 131
	cp R20,R16
	cpc R21,R17
	brlo L122
	.dbline -2
L121:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 i
	.dbend
	.dbfile D:\ICC_H\LCD12864_ST7920_.H
	.dbfunc e SPI_init _SPI_init fV
	.even
_SPI_init::
	.dbline -1
	.dbline 60
	.dbline 61
	in R24,0x17
	ori R24,15
	out 0x17,R24
	.dbline 62
	ldi R24,80
	out 0xd,R24
	.dbline 63
	ldi R24,1
	out 0xe,R24
	.dbline 64
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
	.dbline 68
	.dbline 69
	out 0xf,R16
L128:
	.dbline 70
L129:
	.dbline 70
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
	.dbline 74
	.dbline 75
	ldi R16,248
	xcall _lcd_wrByte
	.dbline 76
	mov R16,R22
	xcall _lcd_wrByte
	.dbline 77
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
	.dbline 81
	.dbline 82
	ldi R16,250
	xcall _lcd_wrByte
	.dbline 83
	mov R16,R22
	xcall _lcd_wrByte
	.dbline 84
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
	.dbline 91
	.dbline 94
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
	.dbline 95
L137:
	.dbline 96
	mov R20,R22
	subi R20,129    ; addi 127
	.dbline 97
	xjmp L135
L138:
	.dbline 98
	mov R20,R22
	subi R20,113    ; addi 143
	.dbline 99
	xjmp L135
L139:
	.dbline 100
	mov R20,R22
	subi R20,121    ; addi 135
	.dbline 101
	xjmp L135
L140:
	.dbline 102
	mov R20,R22
	subi R20,105    ; addi 151
	.dbline 103
L134:
	.dbline 104
	.dbline 105
L135:
	.dbline 106
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
	.dbline 110
	.dbline 111
	mov R18,R22
	mov R16,R20
	xcall _lcd_set_xy
	.dbline 112
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	.dbline 113
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
	.dbline 117
	.dbline 120
	ldd R0,y+9
	std y+0,R0
	movw R30,R28
	ldd R16,z+5
	ldd R17,z+6
	ldd R18,z+7
	ldd R19,z+8
	xcall _speaData
	.dbline 121
	mov R18,R22
	mov R16,R20
	xcall _lcd_set_xy
	.dbline 122
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 123
	ldd R20,y+9
	subi R20,1
	xjmp L146
L143:
	.dbline 124
	.dbline 125
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
	.dbline 126
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 127
L144:
	.dbline 123
	dec R20
L146:
	.dbline 123
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
	.dbline 131
	.dbline 135
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
	.dbline 136
	ldi R24,7
	mov R12,R24
	xjmp L149
L148:
	.dbline 137
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
	.dbline 138
	ldi R24,6
	mov R12,R24
	xjmp L151
L150:
	.dbline 139
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
	.dbline 140
	ldi R24,5
	mov R12,R24
	xjmp L153
L152:
	.dbline 141
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
	.dbline 142
	ldi R24,4
	mov R12,R24
	xjmp L155
L154:
	.dbline 143
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
	.dbline 144
	ldi R24,3
	mov R12,R24
	xjmp L157
L156:
	.dbline 145
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
	.dbline 146
	ldi R24,2
	mov R12,R24
	xjmp L159
L158:
	.dbline 148
	clr R12
	inc R12
L159:
L157:
L155:
L153:
L151:
L149:
	.dbline 149
	std y+0,R12
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	xcall _speaData
	.dbline 151
	mov R18,R14
	mov R16,R10
	xcall _lcd_set_xy
	.dbline 152
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 153
	ldd R0,y+15
	cp R12,R0
	brsh L160
	.dbline 154
	.dbline 155
	mov R24,R0
	sub R24,R12
	subi R24,1
	mov R10,R24
	xjmp L165
L162:
	.dbline 156
	.dbline 157
	clr R18
	ldi R16,32
	xcall _lcd_wrDat
	.dbline 158
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 159
L163:
	.dbline 155
	dec R10
L165:
	.dbline 155
	mov R24,R10
	cpi R24,0
	brge L162
	.dbline 160
L160:
	.dbline 161
	mov R24,R12
	subi R24,1
	mov R10,R24
	xjmp L169
L166:
	.dbline 162
	.dbline 163
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
	.dbline 164
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 165
L167:
	.dbline 161
	dec R10
L169:
	.dbline 161
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
	.dbline 169
	.dbline 170
	mov R18,R10
	mov R16,R22
	xcall _lcd_set_xy
	.dbline 171
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	xjmp L172
L171:
	.dbline 173
	.dbline 174
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
	.dbline 175
	subi R20,255  ; offset = 1
	sbci R21,255
	.dbline 176
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	.dbline 177
L172:
	.dbline 172
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
	.dbline 181
	.dbline 182
	mov R18,R12
	mov R16,R10
	xcall _lcd_set_xy
	.dbline 183
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	xjmp L176
L175:
	.dbline 185
	.dbline 186
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
	.dbline 187
	subi R22,255  ; offset = 1
	sbci R23,255
	.dbline 188
	mov R16,R20
	clr R17
	xcall _delay50ms
	.dbline 189
L176:
	.dbline 184
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
	.dbline 193
	.dbline 194
	ldi R18,16
	clr R16
	xcall _lcd_wrCmd
	.dbline 195
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
	.dbline 199
	.dbline 200
	xcall _SPI_init
	.dbline 203
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 204
	ldi R18,48
	ldi R16,48
	xcall _lcd_wrCmd
	.dbline 206
	ldi R18,192
	clr R16
	xcall _lcd_wrCmd
	.dbline 207
	ldi R18,16
	clr R16
	xcall _lcd_wrCmd
	.dbline 209
	ldi R18,96
	clr R16
	xcall _lcd_wrCmd
	.dbline 211
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline -2
L179:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfile D:\ICC_H\AT45DB161.H
	.dbfunc e spi_init _spi_init fV
	.even
_spi_init::
	.dbline -1
	.dbline 24
	.dbline 25
	ldi R24,92
	out 0xd,R24
	.dbline -2
L180:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e spi_transmit_byte _spi_transmit_byte fV
;           Data -> R16
	.even
_spi_transmit_byte::
	.dbline -1
	.dbline 29
	.dbline 30
	out 0xf,R16
L182:
	.dbline 31
L183:
	.dbline 31
	sbis 0xe,7
	rjmp L182
	.dbline -2
L181:
	.dbline 0 ; func end
	ret
	.dbsym r Data 16 c
	.dbend
	.dbfunc e write_buffer _write_buffer fV
;           data -> R20
;   BufferOffset -> R22,R23
	.even
_write_buffer::
	xcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 35
	.dbline 36
	ldi R16,132
	xcall _spi_transmit_byte
	.dbline 37
	ldi R16,255
	xcall _spi_transmit_byte
	.dbline 38
	movw R16,R22
	mov R16,R17
	clr R17
	xcall _spi_transmit_byte
	.dbline 39
	mov R16,R22
	xcall _spi_transmit_byte
	.dbline 40
	mov R16,R20
	xcall _spi_transmit_byte
	.dbline -2
L185:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r data 20 c
	.dbsym r BufferOffset 22 i
	.dbend
	.dbfunc e read_buffer _read_buffer fc
;           temp -> R20
;   BufferOffset -> R20,R21
	.even
_read_buffer::
	xcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 44
	.dbline 46
	ldi R16,84
	xcall _spi_transmit_byte
	.dbline 47
	ldi R16,255
	xcall _spi_transmit_byte
	.dbline 48
	movw R16,R20
	mov R16,R17
	clr R17
	xcall _spi_transmit_byte
	.dbline 49
	mov R16,R20
	xcall _spi_transmit_byte
	.dbline 50
	ldi R16,255
	xcall _spi_transmit_byte
	.dbline 51
	ldi R16,255
	xcall _spi_transmit_byte
	.dbline 52
	in R20,0xf
	.dbline 53
	mov R16,R20
	.dbline -2
L186:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r temp 20 c
	.dbsym r BufferOffset 20 i
	.dbend
	.dbfile E:\ÎâÔó±¸·Ý\DVK501¹âÅÌÄÚÈÝ\M128_E~1\AT45DB~1\AT45DB161_LCD12864\AT45DB161.C
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 61
	.dbline 63
	ldi R24,255
	out 0x18,R24
	.dbline 64
	ldi R24,191
	out 0x17,R24
	.dbline 65
	clr R2
	out 0x15,R2
	.dbline 66
	ldi R24,255
	out 0x14,R24
	.dbline 67
	out 0x12,R2
	.dbline 68
	out 0x11,R24
	.dbline -2
L187:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;            tmp -> y+5
;              i -> R20,R21
	.even
_main::
	sbiw R28,63
	sbiw R28,63
	sbiw R28,63
	sbiw R28,63
	sbiw R28,9  ; offset = 261
	.dbline -1
	.dbline 72
	.dbline 76
	xcall _port_init
	.dbline 77
	xcall _spi_init
	.dbline 78
	in R24,0x18
	andi R24,239
	out 0x18,R24
	.dbline 79
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 80
	in R24,0x18
	ori R24,32
	out 0x18,R24
	.dbline 81
	in R24,0x18
	ori R24,16
	out 0x18,R24
	.dbline 82
	cbi 0x18,4
	.dbline 83
	clr R20
	clr R21
	xjmp L192
L189:
	.dbline 84
	.dbline 85
	in R24,0x18
	andi R24,254
	out 0x18,R24
	.dbline 86
	mov R18,R20
	movw R16,R20
	xcall _write_buffer
	.dbline 87
	in R24,0x18
	ori R24,1
	out 0x18,R24
	.dbline 88
L190:
	.dbline 83
	subi R20,255  ; offset = 1
	sbci R21,255
L192:
	.dbline 83
	cpi R20,0
	ldi R30,1
	cpc R21,R30
	brlo L189
	.dbline 90
	ldi R16,2
	ldi R17,0
	xcall _delay50ms
	.dbline 91
	clr R20
	clr R21
	xjmp L196
L193:
	.dbline 92
	.dbline 93
	in R24,0x18
	andi R24,254
	out 0x18,R24
	.dbline 94
	movw R16,R20
	xcall _read_buffer
	movw R24,R28
	adiw R24,5
	movw R30,R20
	add R30,R24
	adc R31,R25
	std z+0,R16
	.dbline 95
	in R24,0x18
	ori R24,1
	out 0x18,R24
	.dbline 96
	ldi R16,1
	ldi R17,0
	xcall _delay50us
	.dbline 98
L194:
	.dbline 91
	subi R20,255  ; offset = 1
	sbci R21,255
L196:
	.dbline 91
	cpi R20,0
	ldi R30,1
	cpc R21,R30
	brlo L193
	.dbline 99
	in R24,0x18
	andi R24,223
	out 0x18,R24
	.dbline 101
	sbi 0x18,4
	.dbline 102
	xcall _lcd_init
	.dbline 103
	xcall _lcd_clr
	.dbline 104
	ldi R24,<L197
	ldi R25,>L197
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,1
	xcall _lcd_puts
	.dbline 105
	ldi R24,<L198
	ldi R25,>L198
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,2
	xcall _lcd_puts
	.dbline 106
	ldi R24,<L199
	ldi R25,>L199
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,3
	xcall _lcd_puts
	.dbline 108
	clr R20
	clr R21
	xjmp L203
L200:
	.dbline 109
	.dbline 110
	ldi R24,1
	std y+4,R24
	movw R24,R28
	adiw R24,5
	movw R30,R20
	add R30,R24
	adc R31,R25
	ldd R2,z+0
	clr R3
	clr R4
	clr R5
	std y+0,R2
	std y+1,R3
	std y+2,R4
	std y+3,R5
	ldi R18,5
	ldi R16,3
	xcall _lcd_putd
	.dbline 111
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 112
L201:
	.dbline 108
	subi R20,255  ; offset = 1
	sbci R21,255
L203:
	.dbline 108
	cpi R20,0
	ldi R30,1
	cpc R21,R30
	brlo L200
L204:
	.dbline 114
L205:
	.dbline 114
	xjmp L204
X2:
	.dbline -2
L188:
	adiw R28,63
	adiw R28,63
	adiw R28,63
	adiw R28,63
	adiw R28,9  ; offset = 261
	.dbline 0 ; func end
	ret
	.dbsym l tmp 5 A[256:256]c
	.dbsym r i 20 i
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\ÎâÔó±¸·Ý\DVK501¹âÅÌÄÚÈÝ\M128_E~1\AT45DB~1\AT45DB161_LCD12864\AT45DB161.C
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L199:
	.blkb 6
	.area idata
	.byte 196,218,200,221,58,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L198:
	.blkb 17
	.area idata
	.byte 'F,'L,'A,'S,'H,32,32,32,210,186,190,167,207,212,202,190
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L197:
	.blkb 17
	.area idata
	.byte 'A,'T,52,53,'D,'B,'X,45,'L,'C,'D,49,50,56,54,52
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
