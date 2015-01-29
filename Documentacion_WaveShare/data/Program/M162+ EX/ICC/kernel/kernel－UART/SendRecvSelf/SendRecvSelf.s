	.module SendRecvSelf.c
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
; Ä¿    µÄ:   ½¨Á¢Ê¹ÓÃUART×ö×Ô·¢×ÔÊÕµÄÊ¾Àı³ÌĞò
; 	
; Ä¿±êÏµÍ³:   »ùÓÚAVRµ¥Æ¬»ú
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
; 	Éî ÛÚ ÊĞ Î¢ Ñ© µç ×Ó ÓĞ ÏŞ ¹« Ë¾ ±£ Áô Ëù ÓĞ µÄ °æ È¨     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; °æ±¾¸üĞÂ¼ÇÂ¼£º
; 
; ----------------------------------------------------------------------
; ÊµÑéÄÚÈİ£º
; ×Ô·¢×ÔÊÕ£¬Ê¹ÓÃPB¿ÚµÄLEDÖ¸Ê¾½ÓÊÕµ½µÄÊı¾İ£¬¹Û²ìÊÇ·ñÓë·¢ËÍµÄÊı¾İÒ»ÖÂ¡£
; ----------------------------------------------------------------------
; Ó²¼şÁ¬½Ó£º	
; ½«MCU.RXDÓëMCU.TXDÊ¹ÓÃ¶ÌÂ·Ã±¶Ì½Ó£¬½«PB¿ÚµÄLEDÖ¸Ê¾µÆÊ¹ÄÜ¿ª¹ØÇĞ»»µ½"ON"×´Ì¬¡£
; ----------------------------------------------------------------------
; ×¢ÒâÊÂÏî£º
; £¨1£©ÈôÓĞ¼ÓÔØ¿âº¯Êı£¬Çë½«¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°¿âº¯Êı¡±ÏÂµÄ¡°ICC_H¡±ÎÄ¼ş¼Ğ¿½µ½DÅÌ
; £¨2£©ÇëÏêÏ¸ÔÄ¶Á£º¹âÅÌ¸ùÄ¿Â¼ÏÂµÄ¡°²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁĞ\SMK1632\ËµÃ÷×ÊÁÏ¡±
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h>
; #include "D:\ICC_H\CmmICC.H"
; 
; #define DISP_PORT PORTB
; #define DISP_DDR  DDRB
; 
; /*--------------------------------------------------------------------
; º¯ÊıÃû³Æ£º
; º¯Êı¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º»ùÓÚ7.3728M¾§Õñ
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void uart0_init(void)
; {
; 	UCSRB = 0x00;	//disable while setting baud rate
; 	UCSRA = 0x00;
; 	UCSRC = 0x86;
; 	UBRRL = 47;		//set baud rate lo
; 	UBRRH = 0x00;	//set baud rate hi
; 	UCSRB = 0x98;
; }
; /*--------------------------------------------------------------------
; º¯ÊıÃû³Æ£º
; º¯Êı¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; #pragma interrupt_handler uart0_rx_isr:12
; void uart0_rx_isr(void)
; {
; 	DISP_PORT = UDR;
; 	//delay50ms(1);
; }
; /*--------------------------------------------------------------------
; º¯ÊıÃû³Æ£º
; º¯Êı¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void mcu_init(void)
; {
; 	CLI(); 
; 	uart0_init();
; 	MCUCR = 0x00;
; 	GICR  = 0x00;
; 	TIMSK = 0x00;	//timer interrupt sources
; 	SEI();			//re-enable interrupts
; }
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
; 	uint8 counter=0;
; 
; 	mcu_init();
; 
; 	DISP_DDR=0xFF;
; 
; 	while(1)
; 	{
; 		UDR=counter++;
; 		while(!(UCSRA&0x40));
; 		UCSRA|=0x40;
; 		delay50ms(4);
; 	}
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
	.dbline 128
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 129
; }
	ldi R24,164
	out 0x36,R24
	.dbline 130
L7:
	.dbline 130
L8:
	.dbline 130
; }
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 130
	.dbline 130
	.dbline 131
; }
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 132
; }
	clr R16
	xjmp L6
L10:
	.dbline 133
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
	.dbline 144
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
	.dbline 145
; }
	ldi R24,164
	out 0x36,R24
	.dbline 146
L13:
	.dbline 146
L14:
	.dbline 146
; }
	in R2,0x36
	sbrs R2,7
	rjmp L13
	.dbline 146
	.dbline 146
	.dbline 147
; }
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 148
; }
	clr R16
	xjmp L12
L16:
	.dbline 149
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
	.dbline 160
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
	.dbline 161
; }
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
; }
	in R2,0x36
	sbrs R2,7
	rjmp L19
	.dbline 162
	.dbline 162
	.dbline 163
; }
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 164
; }
	clr R16
	xjmp L18
L22:
	.dbline 165
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
	.dbline 176
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
	.dbline 177
; ¬'Ô
	sbrs R20,0
	rjmp L25
	.dbline 178
; ¬'Ô
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
; ¬'Ô
	clr R16
	xjmp L24
L27:
L25:
	.dbline 180
; ¬'Ô
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 181
; ¬'Ô
	clr R16
	xjmp L24
L29:
	.dbline 182
; ¬'Ô
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
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
; ¬'Ô
	.dbline 194
; ¬'Ô
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
; ¬'Ô
	in R2,0x36
	sbrs R2,7
	rjmp L32
	.dbline 195
	.dbline 195
	.dbline 196
; ¬'Ô
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 197
; ¬'Ô
	clr R16
	xjmp L31
L35:
	.dbline 198
; ¬'Ô
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
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁĞ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­UART\SendRecvSelf\SendRecvSelf.c
	.dbfunc e uart0_init _uart0_init fV
	.even
_uart0_init::
	.dbline -1
	.dbline 53
	.dbline 54
	clr R2
	out 0xa,R2
	.dbline 55
	out 0xb,R2
	.dbline 56
	ldi R24,134
	out 0x20,R24
	.dbline 57
	ldi R24,47
	out 0x9,R24
	.dbline 58
	out 0x20,R2
	.dbline 59
	ldi R24,152
	out 0xa,R24
	.dbline -2
L121:
	.dbline 0 ; func end
	ret
	.dbend
	.area vector(rom, abs)
	.org 44
	jmp _uart0_rx_isr
	.area text(rom, con, rel)
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁĞ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­UART\SendRecvSelf\SendRecvSelf.c
	.dbfunc e uart0_rx_isr _uart0_rx_isr fV
	.even
_uart0_rx_isr::
	st -y,R2
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 71
	.dbline 72
	in R2,0xc
	out 0x18,R2
	.dbline -2
L122:
	ld R2,y+
	out 0x3f,R2
	ld R2,y+
	.dbline 0 ; func end
	reti
	.dbend
	.dbfunc e mcu_init _mcu_init fV
	.even
_mcu_init::
	.dbline -1
	.dbline 84
	.dbline 85
	cli
	.dbline 86
	xcall _uart0_init
	.dbline 87
	clr R2
	out 0x35,R2
	.dbline 88
	out 0x3b,R2
	.dbline 89
	out 0x39,R2
	.dbline 90
	sei
	.dbline -2
L123:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
;        counter -> R20
	.even
_main::
	.dbline -1
	.dbline 101
	.dbline 102
	clr R20
	.dbline 104
	xcall _mcu_init
	.dbline 106
	ldi R24,255
	out 0x17,R24
	xjmp L126
L125:
	.dbline 109
	.dbline 110
	mov R2,R20
	subi R20,255    ; addi 1
	out 0xc,R2
L128:
	.dbline 111
L129:
	.dbline 111
	sbis 0xb,6
	rjmp L128
	.dbline 112
	sbi 0xb,6
	.dbline 113
	ldi R16,4
	ldi R17,0
	xcall _delay50ms
	.dbline 114
L126:
	.dbline 108
	xjmp L125
X1:
	.dbline -2
L124:
	.dbline 0 ; func end
	ret
	.dbsym r counter 20 c
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\Î¢Ñ©µç×ÓCD1\²úÆ·×ÊÁÏ\¿ª·¢°åÊµÑé°å\SMKÏµÁĞ\SMK1632\ÊµÑé½Ì³Ì\ÄÚºË¼°Ö÷°åÏà¹ØÊµÑé\ÄÚºË£­UART\SendRecvSelf\SendRecvSelf.c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
