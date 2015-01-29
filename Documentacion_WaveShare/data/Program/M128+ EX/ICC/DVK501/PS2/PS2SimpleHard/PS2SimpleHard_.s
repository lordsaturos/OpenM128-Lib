	.module PS2SimpleHard_.C
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
; #include <iom16v.h>
; #include "D:\ICC_H\CmmICC.H"
; #include "D:\ICC_H\PS2.H"
; 
; #define PRESS_DATA_DDR	DDRA
; #define PRESS_DATA_PORT PORTA
; #define SHIFT_DATA_DDR	DDRB
; #define SHIFT_DATA_PORT PORTB
; 
; #define SET_SDA		sbi(PORTD,1)
; #define CLR_SDA		cbi(PORTD,1)
; #define GET_SDA		gbi(PIND,1)
; #define OUT_SDA	 	sbi(DDRD,1)
; #define IN_SDA 		cbi(DDRD,1)
; 
; #define SET_SCK		sbi(PORTD,3)
; #define CLR_SCK		cbi(PORTD,3)
; #define GET_SCK		gbi(PIND,3)
; #define OUT_SCK 	sbi(DDRD,3)
; #define IN_SCK 		cbi(DDRD,3)
; 
; bool rcvF = 0; 		//ÊÇ·ñÊÕµ½×Ö·û±êÖ¾
; uint8 keyVal; 		//¼üÖµ
; 
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; #pragma interrupt_handler int1_isr:3
; void int1_isr(void)
; {
;     static uint8 rcvBits = 0;	//½ÓÊÕ´ÎÊý£¬ÖÐ¶Ï´ÎÊý
; 	if((rcvBits>0) && (rcvBits<9))
; 	{ 
; 		keyVal=keyVal>>1; 	//Êý¾ÝÊÇLSB¸ñÊ½
; 		//IN_SDA;			//µ±ÓÐ¶Ô¼üÅÌÓÐÊôÐÔÉèÖÃÊ±£¬×¢ÒâÊäÈëÊä³öÇÐ»»
; 		//DELAY();
; 		if(GET_SDA) 
; 	 		keyVal=keyVal|0x80; 
; 	}
; 	rcvBits++;
; 	while(!GET_SCK); 		//µÈ´ýPS/2CLKÀ­¸ß
; 
; 	if(rcvBits>10)
; 	{
; 		rcvBits=0; 			//½ÓÊÕ11´Î±íÊ¾½ÓÊÕÍêÒ»Ö¡Êý¾Ý
; 		rcvF=1; 			//±êÊ¶ÓÐ×Ö·ûÒÑ¾­ÊäÈë
; 	}
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
; ×¢ÒâÊÂÏî£º
; ÌáÊ¾ËµÃ÷£º
; Êä    Èë£º
; ·µ    »Ø£º
; --------------------------------------------------------------------*/
; void keyHandle(uint8 val) 
; {
; 	uint8 i;
; 	static bool isUp=0;			//°´¼üÊÍ·Å¶¯×÷±êÖ¾
; 	static bool shift=0;		//shift¼ü°´ÏÂ±êÖ¾
; 	rcvF = 0; 
; 	PRESS_DATA_PORT = val;		//×´Ì¬Ö¸Ê¾
; 	if(!isUp)
; 	{
; 		switch(val)
; 		{
; 			case 0xF0 :			// a relase action
; 				isUp = 1;
; 				break;
; 			case 0x12 :			// Left shift
; 				shift = 1;
; 				break;
; 			case 0x59 :			// Right shift
; 				shift = 1;
; 				break;
; 			default:
; 				if(!shift)		// If shift not pressed
; 				{ 
; /*
; 					for(i=0; unshifted[i][0]!=val && unshifted[i][0]; i++)
; 						;
; 					ÉÏÊöÐ´·¨½ÏÎªÁé»î£¬µ«KEIL·ÇUNIXC±ê×¼£¬²»ÄÜ²ÉÓÃ¸ÃÐ´·¨
; */
; 					for(i=0; unshifted[i][0]!=val && i<59; i++)
; 						;
; 					if(unshifted[i][0] == val) 
; 						;		//×´Ì¬Ö¸Ê¾
; 					
; 				} 
; 				else			// If shift pressed
; 				{			
; /*
; 					for(i=0; unshifted[i][0]!=val && unshifted[i][0]; i++)
; 						;
; 					ÉÏÊöÐ´·¨½ÏÎªÁé»î£¬µ«KEIL·ÇUNIXC±ê×¼£¬²»ÄÜ²ÉÓÃ¸ÃÐ´·¨
; */
; 					for(i=0; shifted[i][0]!=val && i<59; i++)
; 						;
; 					if(shifted[i][0] == val) 
; 						SHIFT_DATA_PORT = val;//×´Ì¬Ö¸Ê¾
; 				}
; 		}
; 	}
; 	else 
; 	{
; 		isUp=0;					
; 		switch(val)
; 		{
; 			case 0x12 :			// Left SHIFT
; 				shift = 0;
	.dbline 119
; 				break;
; 			case 0x59 :			// Right SHIFT
; 				shift = 0;
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
; 				break;
; 		}
; 	}
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
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
; º¯Êý¹¦ÄÜ£º
	.dbline 127
; ×¢ÒâÊÂÏî£º
	ldi R24,164
	out 0x36,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; ÌáÊ¾ËµÃ÷£º
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; Êä    Èë£º
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; ·µ    »Ø£º
	clr R16
	xjmp L6
L10:
	.dbline 131
; --------------------------------------------------------------------*/
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
; void int1_init()
; {
;  	IN_SCK;					// set SCK_DDR (PD3/INT1) as input
; 	SET_SCK;   					// set SCK_PORT as high level,avoid triggering
; 	MCUCR |= 0b11110011;		// set PD3/INT1 as low level active
; 	GICR  |= 0b10000000;		// enable global interrupt
; 	SEI();	 	  				// enable external interrupt
; }
; /*--------------------------------------------------------------------
; º¯ÊýÃû³Æ£º
; º¯Êý¹¦ÄÜ£º
	.dbline 143
; ×¢ÒâÊÂÏî£º
	ldi R24,164
	out 0x36,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; ÌáÊ¾ËµÃ÷£º
	in R2,0x36
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; Êä    Èë£º
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; ·µ    »Ø£º
	clr R16
	xjmp L12
L16:
	.dbline 147
; --------------------------------------------------------------------*/
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
; void main(void)
; {
;     PRESS_DATA_DDR = 0XFF;
; 	SHIFT_DATA_DDR = 0XFF;
; 	IN_SDA;
; 	int1_init();
; 	while(1)
; 	{
; 		if(rcvF)
; 			keyHandle(keyVal);
; 	}
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
	.area lit(rom, con, rel)
_unshifted::
	.byte 28,'a
	.byte 50,'b
	.byte 33,'c
	.byte 35,'d
	.byte 36,'e
	.byte 43,'f
	.byte 52,'g
	.byte 51,'h
	.byte 'C,'i
	.byte 59,'j
	.byte 'B,'k
	.byte 'K,'l
	.byte 58,'m
	.byte 49,'n
	.byte 'D,'o
	.byte 'M,'p
	.byte 21,'q
	.byte 45,'r
	.byte 27,'s
	.byte 44,'t
	.byte 60,'u
	.byte 42,'v
	.byte 29,'w
	.byte 34,'x
	.byte 53,'y
	.byte 26,'z
	.byte 'E,48
	.byte 22,49
	.byte 30,50
	.byte 38,51
	.byte 37,52
	.byte 46,53
	.byte 54,54
	.byte 61,55
	.byte 62,56
	.byte 'F,57
	.byte 14,96
	.byte 'N,45
	.byte 'U,61
	.byte 93,92
	.byte 41,32
	.byte 'T,91
	.byte 91,93
	.byte 'L,59
	.byte 'R,39
	.byte 'A,44
	.byte 'I,46
	.byte 'J,47
	.byte 'q,46
	.byte 'p,48
	.byte 'i,49
	.byte 'r,50
	.byte 'z,51
	.byte 'k,52
	.byte 's,53
	.byte 't,54
	.byte 'l,55
	.byte 'u,56
	.byte 125,57
	.dbfile D:\ICC_H\PS2.H
	.dbsym e unshifted _unshifted A[118:59:2]kc
_shifted::
	.byte 28,'A
	.byte 50,'B
	.byte 33,'C
	.byte 35,'D
	.byte 36,'E
	.byte 43,'F
	.byte 52,'G
	.byte 51,'H
	.byte 'C,'I
	.byte 59,'J
	.byte 'B,'K
	.byte 'K,'L
	.byte 58,'M
	.byte 49,'N
	.byte 'D,'O
	.byte 'M,'P
	.byte 21,'Q
	.byte 45,'R
	.byte 27,'S
	.byte 44,'T
	.byte 60,'U
	.byte 42,'V
	.byte 29,'W
	.byte 34,'X
	.byte 53,'Y
	.byte 26,'Z
	.byte 'E,48
	.byte 22,49
	.byte 30,50
	.byte 38,51
	.byte 37,52
	.byte 46,53
	.byte 54,54
	.byte 61,55
	.byte 62,56
	.byte 'F,57
	.byte 14,126
	.byte 'N,95
	.byte 'U,43
	.byte 93,124
	.byte 41,32
	.byte 'T,123
	.byte 91,125
	.byte 'L,58
	.byte 'R,34
	.byte 'A,60
	.byte 'I,62
	.byte 'J,63
	.byte 'q,46
	.byte 'p,48
	.byte 'i,49
	.byte 'r,50
	.byte 'z,51
	.byte 'k,52
	.byte 's,53
	.byte 't,54
	.byte 'l,55
	.byte 'u,56
	.byte 125,57
	.dbsym e shifted _shifted A[118:59:2]kc
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\PS2.H
_rcvF::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\PS2.H
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
	.dbsym e rcvF _rcvF c
	.area vector(rom, abs)
	.org 8
	jmp _int1_isr
	.area data(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
L122:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
	.area text(rom, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
	.dbfunc e int1_isr _int1_isr fV
	.dbsym s rcvBits L122 c
	.even
_int1_isr::
	st -y,R2
	st -y,R3
	st -y,R24
	st -y,R25
	in R2,0x3f
	st -y,R2
	.dbline -1
	.dbline 35
	.dbline 37
	clr R2
	lds R3,L122
	cp R2,R3
	brsh L123
	mov R24,R3
	cpi R24,9
	brsh L123
	.dbline 38
	.dbline 39
	lds R2,_keyVal
	lsr R2
	sts _keyVal,R2
	.dbline 42
	sbis 0x10,1
	rjmp L125
	.dbline 43
	mov R24,R2
	ori R24,128
	sts _keyVal,R24
L125:
	.dbline 44
L123:
	.dbline 45
	lds R24,L122
	subi R24,255    ; addi 1
	sts L122,R24
L127:
	.dbline 46
L128:
	.dbline 46
	sbis 0x10,3
	rjmp L127
	.dbline 48
	ldi R24,10
	lds R2,L122
	cp R24,R2
	brsh L130
	.dbline 49
	.dbline 50
	clr R2
	sts L122,R2
	.dbline 51
	ldi R24,1
	sts _rcvF,R24
	.dbline 52
L130:
	.dbline -2
	.dbline 53
L121:
	ld R2,y+
	out 0x3f,R2
	ld R25,y+
	ld R24,y+
	ld R3,y+
	ld R2,y+
	.dbline 0 ; func end
	reti
	.dbend
	.area data(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
L133:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
L134:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
	.area text(rom, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
	.dbfunc e keyHandle _keyHandle fV
	.dbsym s shift L134 c
	.dbsym s isUp L133 c
;              i -> R20
;            val -> R16
	.even
_keyHandle::
	xcall push_gset1
	.dbline -1
	.dbline 63
	.dbline 67
	clr R2
	sts _rcvF,R2
	.dbline 68
	out 0x1b,R16
	.dbline 69
	lds R2,L133
	tst R2
	breq X3
	xjmp L135
X3:
	.dbline 70
	.dbline 71
	mov R20,R16
	clr R21
	cpi R20,89
	ldi R30,0
	cpc R21,R30
	breq L142
	ldi R24,89
	ldi R25,0
	cp R24,R20
	cpc R25,R21
	brlt L160
L159:
	cpi R20,18
	ldi R30,0
	cpc R21,R30
	breq L141
	xjmp L137
L160:
	cpi R20,240
	ldi R30,0
	cpc R21,R30
	breq L140
	xjmp L137
X1:
	.dbline 72
L140:
	.dbline 74
	ldi R24,1
	sts L133,R24
	.dbline 75
	xjmp L136
L141:
	.dbline 77
	ldi R24,1
	sts L134,R24
	.dbline 78
	xjmp L136
L142:
	.dbline 80
	ldi R24,1
	sts L134,R24
	.dbline 81
	xjmp L136
L137:
	.dbline 83
	lds R2,L134
	tst R2
	brne L143
	.dbline 84
	.dbline 90
	clr R20
	xjmp L148
L145:
	.dbline 91
L146:
	.dbline 90
	inc R20
L148:
	.dbline 90
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_unshifted
	ldi R25,>_unshifted
	add R30,R24
	adc R31,R25
	lpm R30,Z
	cp R30,R16
	breq L149
	cpi R20,59
	brlo L145
L149:
	.dbline 92
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_unshifted
	ldi R25,>_unshifted
	add R30,R24
	adc R31,R25
	lpm R30,Z
	cp R30,R16
	breq X4
	xjmp L136
X4:
	.dbline 93
	.dbline 95
	xjmp L136
L143:
	.dbline 97
	.dbline 103
	clr R20
	xjmp L155
L152:
	.dbline 104
L153:
	.dbline 103
	inc R20
L155:
	.dbline 103
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_shifted
	ldi R25,>_shifted
	add R30,R24
	adc R31,R25
	lpm R30,Z
	cp R30,R16
	breq L156
	cpi R20,59
	brlo L152
L156:
	.dbline 105
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_shifted
	ldi R25,>_shifted
	add R30,R24
	adc R31,R25
	lpm R30,Z
	cp R30,R16
	brne L136
	.dbline 106
	out 0x18,R16
	.dbline 107
	.dbline 108
	.dbline 109
	xjmp L136
L135:
	.dbline 111
	.dbline 112
	clr R2
	sts L133,R2
	.dbline 113
	mov R20,R16
	clr R21
	cpi R20,18
	ldi R30,0
	cpc R21,R30
	breq L164
	cpi R20,18
	ldi R30,0
	cpc R21,R30
	brlt L161
L166:
	cpi R20,89
	ldi R30,0
	cpc R21,R30
	breq L165
	xjmp L161
X2:
	.dbline 114
L164:
	.dbline 116
	clr R2
	sts L134,R2
	.dbline 117
	xjmp L162
L165:
	.dbline 119
	clr R2
	sts L134,R2
	.dbline 120
L161:
L162:
	.dbline 122
L136:
	.dbline -2
	.dbline 123
L132:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r val 16 c
	.dbend
	.dbfunc e int1_init _int1_init fV
	.even
_int1_init::
	.dbline -1
	.dbline 133
	.dbline 134
	cbi 0x11,3
	.dbline 135
	sbi 0x12,3
	.dbline 136
	in R24,0x35
	ori R24,243
	out 0x35,R24
	.dbline 137
	in R24,0x3b
	ori R24,128
	out 0x3b,R24
	.dbline 138
	sei
	.dbline -2
	.dbline 139
L167:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 149
	.dbline 150
	ldi R24,255
	out 0x1a,R24
	.dbline 151
	out 0x17,R24
	.dbline 152
	cbi 0x11,1
	.dbline 153
	xcall _int1_init
	xjmp L170
L169:
	.dbline 155
	.dbline 156
	lds R2,_rcvF
	tst R2
	breq L172
	.dbline 157
	lds R16,_keyVal
	xcall _keyHandle
L172:
	.dbline 158
L170:
	.dbline 154
	xjmp L169
X5:
	.dbline -2
	.dbline 159
L168:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\ProductPro\SMK1632\ICCAVR\PS2\PS2SimpleHard\PS2SimpleHard_.C
_keyVal::
	.blkb 1
	.dbsym e keyVal _keyVal c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
