	.module Example.C
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
; 	΢ ѩ �� ��   WaveShare   http://www.waveShare.net	
; 
; ����Ŀ��:   ����ʹ��LCD1602��ʾ������
; 
; Ŀ��ϵͳ:   ����AVR��Ƭ��
; 
; Ӧ�����:   ICCAVR                                               
; 
; ��    ��:   Version 1.0
; 
; Բ��ʱ��:   2005-03-01
; 
; ������Ա:   SEE
; 
; ˵    ��:   ��������ҵ��;���뱣���˶����ֻ�ע��������Դ 
; 
; 	�� �� �� ΢ ѩ �� �� �� �� �� ˾ �� �� �� �� �� �� Ȩ
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; �汾���¼�¼��
; 
; ----------------------------------------------------------------------
; ����ģ�飺 
; �ӿ�˵���� 
; 
; ----------------------------------------------------------------------
; ע�����
; 		
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h>
; #include "D:\ICC_H\CmmICC.H"
; 
; /* lcd control and data port direction */
; #define LCD_DDR_OUT {DDRA|= 0xF0;DDRD |= 0xE0;}
; 
; /* control port */
; #define SET_RS  sbi(PORTD,5)
; #define CLR_RS  cbi(PORTD,5)
; #define SET_RW  sbi(PORTD,6)
; #define CLR_RW  cbi(PORTD,6)
; #define SET_E   sbi(PORTD,7)
; #define CLR_E   cbi(PORTD,7)
; 
; /* data port */
; #define SET_D4  sbi(PORTA,4)
; #define CLR_D4  cbi(PORTA,4)
; #define SET_D5  sbi(PORTA,5)
; #define CLR_D5  cbi(PORTA,5)
; #define SET_D6  sbi(PORTA,6)
; #define CLR_D6  cbi(PORTA,6)
; #define SET_D7  sbi(PORTA,7)
; #define CLR_D7  cbi(PORTA,7)
; 
; /* busy port */
; #define GET_BF	gbi(PINA,7)
; #define OUT_BF	sbi(DDRA,7)
; #define IN_BF	cbi(DDRA,7)
; 
; #include "D:\ICC_H\LCD1602_.H"
; 
; #define OUT_BUZ		sbi(DDRB,3)	   //PB3
; #define BUZ_ON  	sbi(PORTB,3)
; #define BUZ_OFF 	cbi(PORTB,3)
; 
; #define OUT_USERLED		sbi(DDRB,2)	   //PB2
; #define USERLED_ON  	sbi(PORTB,2)
; #define USERLED_OFF 	cbi(PORTB,2)
; 
; #define LED_DDR  		DDRC
; #define LED_PORT 		PORTC
; 
; const uint8  userCh0[8]={0x10,0x1f,0x01,0x02,0x04,0x08,0x10,0x1f};
; const uint8  userCh1[8]={0x00,0x08,0x0f,0x01,0x02,0x04,0x08,0x0f};
; const uint8  userCh2[8]={0x00,0x00,0x04,0x07,0x01,0x02,0x04,0x07};
; 
; 
; void ledDisp()
; {
;  	 uint8 i,j;
; 
;  	 LED_PORT = 0XFF;
; 	 delay50ms(5);
; 	 LED_PORT = 0X00;
; 	 delay50ms(5);
; 	 LED_PORT = 0XFF;
; 	 delay50ms(5);
; 	 LED_PORT = 0X00;
; 	 delay50ms(5);	
; 	 LED_PORT = 0XAA;
; 	 delay50ms(5);
; 	 LED_PORT = 0X55;
; 	 delay50ms(5);	
; 	 LED_PORT = 0XAA;
; 	 delay50ms(5);
; 	 LED_PORT = 0X55;
; 	 delay50ms(5);	
; 	
; 		LED_DDR=0XFF;
; 	
; 		for(i=0;i<4;i++)
; 		{
; 			LED_PORT^=0xFF;
; 			delay50ms(5);
; 		}
; 		j=0x01;
; 		for(i=0;i<8;i++)
; 		{
; 			j<<=1;
; 			LED_PORT=j;
; 			delay50ms(5);
; 		}
	.dbline 119
; 		j=0x80;
; 		for(i=0;i<8;i++)
; 		{
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
; 			j>>=1;
; 			LED_PORT=j;
; 			delay50ms(5);
; 		}
; 
; }
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
; /*--------------------------------------------------------------------
	ldi R24,164
	out 0x36,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; ����ȫ�ƣ�
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; �������ܣ�
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; ע�����
	clr R16
	xjmp L6
L10:
	.dbline 131
; ��ʾ˵����
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
; ��    �룺	
; ��    �أ�
; --------------------------------------------------------------------*/
; void main()
; {
;  	LCD_DDR_OUT;
; 	LCD1602_init();
; 	
; 	OUT_BUZ;
; 	OUT_USERLED;
; 	
	.dbline 143
; 	LED_DDR = 0XFF;
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
; 	while(1)
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; 	{
	clr R16
	xjmp L12
L16:
	.dbline 147
; 		LCD1602_setCmd("CLR_SCR");
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
; 		delay50ms(1);
; 		LCD1602_puts(0xC6,"Sleeping");
; 		delay50ms(5);
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(5);
; 		LCD1602_puts(0xC6,"Sleeping");
; 		delay50ms(5);
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(5);
; 		LCD1602_puts(0xC6,"Sleeping");
; 		delay50ms(5);
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
; 		LCD1602_setCGRAM(CGRAM0,userCh0);	//Set CGRAM0' data
	in R2,0x36
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; 		LCD1602_setCGRAM(CGRAM1,userCh1);	//Set CGRAM1' data
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 162
; 		LCD1602_setCGRAM(CGRAM2,userCh2);	//Set CGRAM2' data
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
; 		LCD1602_putc(0x84,CGRAM2);		//putc to 0x84 by CGRAM2' data
; 		delay50ms(10);
; 		LCD1602_putc(0x83,CGRAM1);		//putc to 0x83 by CGRAM1' data
; 		delay50ms(12);
; 		LCD1602_putc(0x82,CGRAM0);		//putc to 0x84 by CGRAM0' data
; 		delay50ms(14);
; 		
; 	
; 		
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(10);
	.dbline 175
; 		LCD1602_puts(0xC2,"wavesahre.net");
	sbrs R20,0
	rjmp L25
	.dbline 176
; 		delay50ms(10);
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
; 		LCD1602_setCmd("CLR_SCR");
	clr R16
	xjmp L24
L27:
L25:
	.dbline 178
; 		delay50ms(10);
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; 		LCD1602_puts(0xC2,"wavesahre.net");
	clr R16
	xjmp L24
L29:
	.dbline 180
; 		delay50ms(10);
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
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(10);
; 		LCD1602_puts(0xC2,"wavesahre.net");
; 		delay50ms(10);
; 	    ledDisp();
; 		
; 		BUZ_ON;
; 		delay50ms(20);
; 		BUZ_OFF;
; 		delay50ms(20);
; 		BUZ_ON;
	.dbline 192
; 		delay50ms(20);
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
; 		BUZ_OFF;
	in R2,0x36
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; 		delay50ms(20);
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; 		
	clr R16
	xjmp L31
L35:
	.dbline 196
; 		USERLED_ON;
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
; 		delay50ms(20);
; 		USERLED_OFF;
; 		delay50ms(20);
; 		USERLED_ON;
; 		delay50ms(20);
; 		USERLED_OFF;
; 		delay50ms(20);		
; 	}
; }
; }
; }
	.dbline 208
; }
	sbrs R20,0
	rjmp L38
	.dbline 209
; }
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
; }
	clr R16
	xjmp L37
L40:
L38:
	.dbline 211
; }
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; }
	clr R16
	xjmp L37
L42:
	.dbline 213
; }
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
	.dbline 225
; }
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
; }
	in R2,0x36
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; }
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; }
	clr R16
	xjmp L44
L48:
	.dbline 229
; }
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
	.dbline 241
; }
	ldi R24,132
	out 0x36,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; }
	in R2,0x36
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; }
	in R24,0x1
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; }
	clr R16
	xjmp L50
L54:
	.dbline 245
; }
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 246
; }
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
	.dbline 258
; }
	ldi R24,196
	out 0x36,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; }
	in R2,0x36
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; }
	in R24,0x1
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; }
	clr R16
	xjmp L56
L60:
	.dbline 262
; }
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 263
; }
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
	.dbline 277
; }
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; }
	clr R16
	xjmp L62
L63:
	.dbline 280
; }
; }
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; }
	clr R16
	xjmp L62
L65:
	.dbline 283
; }
; }
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; }
	clr R16
	xjmp L62
L67:
	.dbline 286
; }
; }
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; }
	clr R16
	xjmp L62
L69:
	.dbline 289
; }
; }
	ldi R24,148
	out 0x36,R24
	.dbline 291
; }
; }
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
; }
; }
; }
; }
; }
; }
	.dbline 323
; }
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; }
	clr R16
	xjmp L71
L72:
	.dbline 326
; }
; }
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; }
	clr R16
	xjmp L71
L74:
	.dbline 329
; }
; }
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; }
	clr R16
	xjmp L71
L76:
	.dbline 332
; }
; }
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; }
	clr R16
	xjmp L71
L78:
	.dbline 335
; }
; }
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; }
	clr R16
	xjmp L71
L80:
	.dbline 338
; }
; }
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; }
	clr R16
	xjmp L71
L82:
	.dbline 341
; }
; }
	ldi R24,148
	out 0x36,R24
	.dbline 343
; }
; }
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
	.dbline 362
; }
; }
; }
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; }
	clr R16
	xjmp L84
L85:
	.dbline 365
; }
; }
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; }
	clr R16
	xjmp L84
L87:
	.dbline 368
; }
; }
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; }
	clr R16
	xjmp L84
L89:
	.dbline 371
; }
; }
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; }
	clr R16
	xjmp L84
L91:
	.dbline 374
; }
; }
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; }
	clr R16
	xjmp L84
L93:
	.dbline 377
; }
; }
	clr R20
	xjmp L98
L95:
	.dbline 378
; }
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; }
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
; }
; }
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; }
	clr R16
	xjmp L84
L101:
	.dbline 384
; }
; }
	ldi R24,148
	out 0x36,R24
	.dbline 386
; }
; }
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
	.dbline 120
	.dbline 121
	clr R18
	clr R19
	.dbline 123
	cbi 0x1a,7
	.dbline 124
	sbi 0x1b,4
	.dbline 125
	sbi 0x1b,5
	.dbline 126
	sbi 0x1b,6
	.dbline 127
	sbi 0x1b,7
	.dbline 128
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	nop
	.dbline 128
	.dbline 128
	.dbline 129
	cbi 0x12,5
	.dbline 130
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	nop
	.dbline 130
	.dbline 130
	.dbline 131
	sbi 0x12,6
	.dbline 132
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	nop
	.dbline 132
	.dbline 132
L122:
	.dbline 135
	.dbline 136
	sbi 0x12,7
	.dbline 137
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	nop
	.dbline 137
	.dbline 137
	.dbline 139
	in R16,0x19
	clr R17
	andi R16,128
	andi R17,0
	.dbline 140
	cbi 0x12,7
	.dbline 141
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	nop
	.dbline 141
	.dbline 141
	.dbline 143
	sbi 0x1b,4
	.dbline 144
	sbi 0x1b,5
	.dbline 145
	sbi 0x1b,6
	.dbline 146
	sbi 0x1b,7
	.dbline 147
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	nop
	.dbline 147
	.dbline 147
	.dbline 148
	sbi 0x12,7
	.dbline 149
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	nop
	.dbline 149
	.dbline 149
	.dbline 151
	cbi 0x12,7
	.dbline 152
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	nop
	.dbline 152
	.dbline 152
	.dbline 153
	cpi R18,232
	ldi R30,3
	cpc R19,R30
	brne L125
	.dbline 154
	.dbline 155
	ldi R24,1
	sts _LCD1602Err,R24
	.dbline 156
	xjmp L121
L125:
	.dbline 158
	subi R18,255  ; offset = 1
	sbci R19,255
	.dbline 159
L123:
	.dbline 160
	tst R16
	breq X1
	xjmp L122
X1:
	.dbline 162
	clr R2
	sts _LCD1602Err,R2
	.dbline 163
	cbi 0x12,7
	.dbline 164
	sbi 0x1a,7
	.dbline -2
	.dbline 165
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
	.dbline 175
	.dbline 176
	sts _bdat,R22
	.dbline 177
	xcall _busy
	.dbline 178
	tst R20
	breq L128
	.dbline 179
	sbi 0x12,5
	xjmp L129
L128:
	.dbline 181
	cbi 0x12,5
L129:
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
	.dbline 183
	cbi 0x12,6
	.dbline 184
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	nop
	.dbline 184
	.dbline 184
	.dbline 185
	lds R2,_bdat
	sbrs R2,4
	rjmp L130
	.dbline 186
	sbi 0x1b,4
	xjmp L131
L130:
	.dbline 188
	cbi 0x1b,4
L131:
	.dbline 189
	lds R2,_bdat
	sbrs R2,5
	rjmp L132
	.dbline 190
	sbi 0x1b,5
	xjmp L133
L132:
	.dbline 192
	cbi 0x1b,5
L133:
	.dbline 193
	lds R2,_bdat
	sbrs R2,6
	rjmp L134
	.dbline 194
	sbi 0x1b,6
	xjmp L135
L134:
	.dbline 196
	cbi 0x1b,6
L135:
	.dbline 197
	lds R2,_bdat
	sbrs R2,7
	rjmp L136
	.dbline 198
	sbi 0x1b,7
	xjmp L137
L136:
	.dbline 200
	cbi 0x1b,7
L137:
	.dbline 201
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	nop
	.dbline 201
	.dbline 201
	.dbline 202
	sbi 0x12,7
	.dbline 203
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	nop
	.dbline 203
	.dbline 203
	.dbline 204
	cbi 0x12,7
	.dbline 205
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	nop
	.dbline 205
	.dbline 205
	.dbline 207
	lds R2,_bdat
	sbrs R2,0
	rjmp L138
	.dbline 208
	sbi 0x1b,4
	xjmp L139
L138:
	.dbline 210
	cbi 0x1b,4
L139:
	.dbline 211
	lds R2,_bdat
	sbrs R2,1
	rjmp L140
	.dbline 212
	sbi 0x1b,5
	xjmp L141
L140:
	.dbline 214
	cbi 0x1b,5
L141:
	.dbline 215
	lds R2,_bdat
	sbrs R2,2
	rjmp L142
	.dbline 216
	sbi 0x1b,6
	xjmp L143
L142:
	.dbline 218
	cbi 0x1b,6
L143:
	.dbline 219
	lds R2,_bdat
	sbrs R2,3
	rjmp L144
	.dbline 220
	sbi 0x1b,7
	xjmp L145
L144:
	.dbline 222
	cbi 0x1b,7
L145:
	.dbline 223
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	nop
	.dbline 223
	.dbline 223
	.dbline 224
	sbi 0x12,7
	.dbline 225
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	nop
	.dbline 225
	.dbline 225
	.dbline 226
	cbi 0x12,7
	.dbline 227
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	nop
	.dbline 227
	.dbline 227
	.dbline -2
	.dbline 228
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
	.dbline 249
	.dbline 251
	ldi R24,8
	mul R24,R20
	mov R18,R0
	subi R18,192    ; addi 64
	clr R16
	xcall _write
	.dbline 252
	clr R20
	xjmp L150
L147:
	.dbline 253
	mov R30,R20
	clr R31
	add R30,R22
	adc R31,R23
	lpm R18,Z
	ldi R16,1
	xcall _write
L148:
	.dbline 252
	inc R20
L150:
	.dbline 252
	cpi R20,8
	brlo L147
	.dbline -2
	.dbline 257
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
	.dbline 275
	.dbline 282
	ldi R18,<L159
	ldi R19,>L159
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L157
X2:
	.dbline 283
	ldi R18,1
	clr R16
	xcall _write
	xjmp L158
L157:
	.dbline 285
	ldi R18,<L162
	ldi R19,>L162
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L160
X3:
	.dbline 286
	ldi R18,2
	clr R16
	xcall _write
	xjmp L161
L160:
	.dbline 290
	ldi R18,<L165
	ldi R19,>L165
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L163
X4:
	.dbline 291
	.dbline 292
	ldi R24,1
	sts L156,R24
	.dbline 293
	lds R2,L155
	tst R2
	breq L166
	.dbline 294
	ldi R18,7
	clr R16
	xcall _write
	xjmp L164
L166:
	.dbline 296
	ldi R18,6
	clr R16
	xcall _write
	.dbline 297
	xjmp L164
L163:
	.dbline 298
	ldi R18,<L170
	ldi R19,>L170
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L168
X5:
	.dbline 299
	.dbline 300
	clr R2
	sts L156,R2
	.dbline 301
	lds R2,L155
	tst R2
	breq L171
	.dbline 302
	ldi R18,5
	clr R16
	xcall _write
	xjmp L169
L171:
	.dbline 304
	ldi R18,4
	clr R16
	xcall _write
	.dbline 305
	xjmp L169
L168:
	.dbline 306
	ldi R18,<L175
	ldi R19,>L175
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L173
X6:
	.dbline 307
	.dbline 308
	ldi R24,1
	sts L155,R24
	.dbline 309
	lds R2,L156
	tst R2
	breq L176
	.dbline 310
	ldi R18,7
	clr R16
	xcall _write
	xjmp L174
L176:
	.dbline 312
	ldi R18,6
	clr R16
	xcall _write
	.dbline 313
	xjmp L174
L173:
	.dbline 314
	ldi R18,<L180
	ldi R19,>L180
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L178
X7:
	.dbline 315
	.dbline 316
	clr R2
	sts L155,R2
	.dbline 317
	lds R2,L156
	tst R2
	breq L181
	.dbline 318
	ldi R18,5
	clr R16
	xcall _write
	xjmp L179
L181:
	.dbline 320
	ldi R18,4
	clr R16
	xcall _write
	.dbline 321
	xjmp L179
L178:
	.dbline 325
	ldi R18,<L185
	ldi R19,>L185
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L183
X8:
	.dbline 326
	.dbline 327
	ldi R24,1
	sts L152,R24
	.dbline 328
	lds R2,L153
	tst R2
	breq L186
	.dbline 329
	lds R2,L154
	tst R2
	breq L188
	.dbline 330
	ldi R18,15
	clr R16
	xcall _write
	xjmp L184
L188:
	.dbline 332
	ldi R18,14
	clr R16
	xcall _write
	xjmp L184
L186:
	.dbline 334
	lds R2,L154
	tst R2
	breq L190
	.dbline 335
	ldi R18,13
	clr R16
	xcall _write
	xjmp L184
L190:
	.dbline 337
	ldi R18,12
	clr R16
	xcall _write
	.dbline 338
	xjmp L184
L183:
	.dbline 339
	ldi R18,<L194
	ldi R19,>L194
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L192
X9:
	.dbline 340
	.dbline 341
	clr R2
	sts L152,R2
	.dbline 342
	lds R2,L153
	tst R2
	breq L195
	.dbline 343
	lds R2,L154
	tst R2
	breq L197
	.dbline 344
	ldi R18,11
	clr R16
	xcall _write
	xjmp L193
L197:
	.dbline 346
	ldi R18,10
	clr R16
	xcall _write
	xjmp L193
L195:
	.dbline 348
	lds R2,L154
	tst R2
	breq L199
	.dbline 349
	ldi R18,9
	clr R16
	xcall _write
	xjmp L193
L199:
	.dbline 351
	ldi R18,8
	clr R16
	xcall _write
	.dbline 352
	xjmp L193
L192:
	.dbline 353
	ldi R18,<L203
	ldi R19,>L203
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L201
X10:
	.dbline 354
	.dbline 355
	ldi R24,1
	sts L153,R24
	.dbline 356
	lds R2,L152
	tst R2
	breq L204
	.dbline 357
	lds R2,L154
	tst R2
	breq L206
	.dbline 358
	ldi R18,15
	clr R16
	xcall _write
	xjmp L202
L206:
	.dbline 360
	ldi R18,14
	clr R16
	xcall _write
	xjmp L202
L204:
	.dbline 362
	lds R2,L154
	tst R2
	breq L208
	.dbline 363
	ldi R18,11
	clr R16
	xcall _write
	xjmp L202
L208:
	.dbline 365
	ldi R18,10
	clr R16
	xcall _write
	.dbline 366
	xjmp L202
L201:
	.dbline 367
	ldi R18,<L212
	ldi R19,>L212
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L210
X11:
	.dbline 368
	.dbline 369
	clr R2
	sts L153,R2
	.dbline 370
	lds R2,L152
	tst R2
	breq L213
	.dbline 371
	lds R2,L154
	tst R2
	breq L215
	.dbline 372
	ldi R18,13
	clr R16
	xcall _write
	xjmp L211
L215:
	.dbline 374
	ldi R18,12
	clr R16
	xcall _write
	xjmp L211
L213:
	.dbline 376
	lds R2,L154
	tst R2
	breq L217
	.dbline 377
	ldi R18,9
	clr R16
	xcall _write
	xjmp L211
L217:
	.dbline 379
	ldi R18,8
	clr R16
	xcall _write
	.dbline 380
	xjmp L211
L210:
	.dbline 381
	ldi R18,<L221
	ldi R19,>L221
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L219
X12:
	.dbline 382
	.dbline 383
	ldi R24,1
	sts L154,R24
	.dbline 384
	lds R2,L152
	tst R2
	breq L222
	.dbline 385
	lds R2,L153
	tst R2
	breq L224
	.dbline 386
	ldi R18,15
	clr R16
	xcall _write
	xjmp L220
L224:
	.dbline 388
; 
; 
	ldi R18,13
	clr R16
	xcall _write
	xjmp L220
L222:
	.dbline 390
; 
; 
	lds R2,L153
	tst R2
	breq L226
	.dbline 391
; 
	ldi R18,11
	clr R16
	xcall _write
	xjmp L220
L226:
	.dbline 393
; 
; 
	ldi R18,9
	clr R16
	xcall _write
	.dbline 394
; 
	xjmp L220
L219:
	.dbline 395
; 
	ldi R18,<L230
	ldi R19,>L230
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L228
X13:
	.dbline 396
; 
	.dbline 397
; 
	clr R2
	sts L154,R2
	.dbline 398
; 
	lds R2,L152
	tst R2
	breq L231
	.dbline 399
; 
	lds R2,L153
	tst R2
	breq L233
	.dbline 400
; 
	ldi R18,14
	clr R16
	xcall _write
	xjmp L229
L233:
	.dbline 402
; 
; 
	ldi R18,12
	clr R16
	xcall _write
	xjmp L229
L231:
	.dbline 404
; 
; 
	lds R2,L153
	tst R2
	breq L235
	.dbline 405
; 
	ldi R18,10
	clr R16
	xcall _write
	xjmp L229
L235:
	.dbline 407
; 
; 
	ldi R18,8
	clr R16
	xcall _write
	.dbline 408
; 
	xjmp L229
L228:
	.dbline 412
; 
; 
; 
; 
	ldi R18,<L239
	ldi R19,>L239
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L237
X14:
	.dbline 413
; 
	ldi R18,28
	clr R16
	xcall _write
	xjmp L238
L237:
	.dbline 414
; 
	ldi R18,<L242
	ldi R19,>L242
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L240
X15:
	.dbline 415
; 
	ldi R18,24
	clr R16
	xcall _write
	xjmp L241
L240:
	.dbline 416
; 
	ldi R18,<L245
	ldi R19,>L245
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L243
X16:
	.dbline 417
; 
	ldi R18,20
	clr R16
	xcall _write
	xjmp L244
L243:
	.dbline 418
; 
	ldi R18,<L248
	ldi R19,>L248
	movw R16,R20
	xcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L246
X17:
	.dbline 419
; 
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
	.dbline 420
; 
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
	.dbline 430
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
	.dbline 431
; 
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 432
; 
	cbi 0x1b,7
	.dbline 433
; 
	cbi 0x1b,6
	.dbline 434
; 
	sbi 0x1b,5
	.dbline 435
; 
	sbi 0x1b,4
	.dbline 436
; 
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	nop
	.dbline 436
	.dbline 436
	.dbline 437
; 
	cbi 0x12,5
	.dbline 438
; 
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	nop
	.dbline 438
	.dbline 438
	.dbline 439
; 
	cbi 0x12,6
	.dbline 441
; 
; 
	sbi 0x12,7
	.dbline 442
; 
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	nop
	.dbline 442
	.dbline 442
	.dbline 443
; 
	cbi 0x12,7
	.dbline 444
; 
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 445
; 
	sbi 0x12,7
	.dbline 446
; 
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	nop
	.dbline 446
	.dbline 446
	.dbline 447
; 
	cbi 0x12,7
	.dbline 448
; 
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 449
; 
	sbi 0x12,7
	.dbline 450
; 
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	nop
	.dbline 450
	.dbline 450
	.dbline 451
; 
	cbi 0x12,7
	.dbline 452
; 
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 454
; 
; 
	cbi 0x1b,7
	.dbline 455
; 
	cbi 0x1b,6
	.dbline 456
; 
	sbi 0x1b,5
	.dbline 457
; 
	cbi 0x1b,4
	.dbline 458
; 
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	nop
	.dbline 458
	.dbline 458
	.dbline 459
; 
	sbi 0x12,7
	.dbline 460
; 
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	nop
	.dbline 460
	.dbline 460
	.dbline 461
; 
	cbi 0x12,7
	.dbline 462
; 
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	nop
	.dbline 462
	.dbline 462
	.dbline 463
; 
	ldi R16,<L185
	ldi R17,>L185
	xcall _LCD1602_setCmd
	.dbline 464
; 
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 465
; 
	ldi R16,<L165
	ldi R17,>L165
	.dbline -2
	.dbline 468
; 
; 
; 
L249:
	.dbline 0 ; func end
	xjmp _LCD1602_setCmd
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
	.dbline 487
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
	.dbline 488
; 
	mov R18,R22
	clr R16
	xcall _write
	.dbline 489
; 
	mov R18,R20
	ldi R16,1
	xcall _write
	.dbline -2
	.dbline 490
; 
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
	.dbline 500
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
	.dbline 508
; 
; 
; 
; 
; 
; 
; 
; 
	mov R18,R22
	clr R16
	xcall _write
	xjmp L253
L252:
	.dbline 510
	movw R30,R20
	ld R18,Z+
	movw R20,R30
	ldi R16,1
	xcall _write
L253:
	.dbline 509
; 
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L252
	.dbline -2
	.dbline 511
; 
; 
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
	.dbline 522
; E
; E
; E
; E
; E
; E
; E
; E
; E
; E
; E
	.dbline 525
; E
; E
; E
	ldd R0,y+7
	std y+0,R0
	movw R30,R28
	ldd R16,z+3
	ldd R17,z+4
	ldd R18,z+5
	ldd R19,z+6
	xcall _speaData
	.dbline 527
; E
; E
	mov R18,R20
	ldd R0,y+7
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	xcall _write
	.dbline 528
; E
	ldd R20,y+7
	subi R20,1
	xjmp L259
L256:
	.dbline 529
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
	.dbline 528
	dec R20
L259:
	.dbline 528
	cpi R20,0
	brge L256
	.dbline -2
	.dbline 530
; E
; E
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
	.dbline 540
; E
; E
; E
; E
; E
; E
; E
; E
; E
; E
	.dbline 544
; E
; E
; E
; E
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
	.dbline 545
; E
	ldi R24,7
	mov R14,R24
	xjmp L262
L261:
	.dbline 546
; E
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
	.dbline 547
; E
	ldi R24,6
	mov R14,R24
	xjmp L264
L263:
	.dbline 548
; E
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
	.dbline 549
; E
	ldi R24,5
	mov R14,R24
	xjmp L266
L265:
	.dbline 550
; E
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
	.dbline 551
; E
	ldi R24,4
	mov R14,R24
	xjmp L268
L267:
	.dbline 552
; E
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
	.dbline 553
; E
	ldi R24,3
	mov R14,R24
	xjmp L270
L269:
	.dbline 554
; E
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
	.dbline 555
; E
	ldi R24,2
	mov R14,R24
	xjmp L272
L271:
	.dbline 557
; E
; E
	clr R14
	inc R14
L272:
L270:
L268:
L266:
L264:
L262:
	.dbline 558
; E
	std y+0,R14
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	xcall _speaData
	.dbline 560
; E
; E
	ldd R0,y+15
	cp R14,R0
	brsh L273
	.dbline 561
; E
	.dbline 562
; E
	mov R18,R10
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	xcall _write
	.dbline 563
; E
	ldd R24,y+15
	sub R24,R14
	subi R24,1
	mov R12,R24
	xjmp L278
L275:
	.dbline 564
	ldi R18,32
	ldi R16,1
	xcall _write
L276:
	.dbline 563
	dec R12
L278:
	.dbline 563
	mov R24,R12
	cpi R24,0
	brge L275
	.dbline 565
; E
; E
L273:
	.dbline 566
; E
	mov R24,R14
	subi R24,1
	mov R12,R24
	xjmp L282
L279:
	.dbline 567
; E
	.dbline 568
; E
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
	.dbline 569
; E
	.dbline 570
; E
	mov R18,R10
	sub R18,R12
	clr R16
	xcall _write
	.dbline 571
; E
	xjmp L289
L286:
	.dbline 572
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
	.dbline 571
	dec R12
L289:
	.dbline 571
	mov R24,R12
	cpi R24,0
	brge L286
	.dbline 573
; E
; E
L283:
	.dbline 574
L280:
	.dbline 566
	dec R12
L282:
	.dbline 566
	mov R24,R12
	cpi R24,0
	brge L279
	.dbline -2
	.dbline 575
; E
; E
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
	.area lit(rom, con, rel)
_userCh0::
	.byte 16,31
	.byte 1,2
	.byte 4,8
	.byte 16,31
	.dbfile E:\MYSTUD~1\΢ѩ����\WS_CD1\����������\SMK1632\ICCAVR����\Lcd1602\Lcd1602\Example.C
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
	.dbfile E:\MYSTUD~1\΢ѩ����\WS_CD1\����������\SMK1632\ICCAVR����\Lcd1602\Lcd1602\Example.C
	.dbfunc e ledDisp _ledDisp fV
;              j -> R20
;              i -> R22
	.even
_ledDisp::
	xcall push_gset2
	.dbline -1
	.dbline 83
	.dbline 86
	ldi R24,255
	out 0x15,R24
	.dbline 87
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 88
	clr R2
	out 0x15,R2
	.dbline 89
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 90
	ldi R24,255
	out 0x15,R24
	.dbline 91
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 92
	clr R2
	out 0x15,R2
	.dbline 93
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 94
	ldi R24,170
	out 0x15,R24
	.dbline 95
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 96
	ldi R24,85
	out 0x15,R24
	.dbline 97
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 98
	ldi R24,170
	out 0x15,R24
	.dbline 99
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 100
	ldi R24,85
	out 0x15,R24
	.dbline 101
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 103
	ldi R24,255
	out 0x14,R24
	.dbline 105
	clr R22
	xjmp L294
L291:
	.dbline 106
	.dbline 107
	ldi R24,255
	ldi R25,0
	in R2,0x15
	clr R3
	eor R2,R24
	eor R3,R25
	out 0x15,R2
	.dbline 108
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 109
L292:
	.dbline 105
	inc R22
L294:
	.dbline 105
	cpi R22,4
	brlo L291
	.dbline 110
	ldi R20,1
	.dbline 111
	clr R22
	xjmp L298
L295:
	.dbline 112
	.dbline 113
	lsl R20
	.dbline 114
	out 0x15,R20
	.dbline 115
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 116
L296:
	.dbline 111
	inc R22
L298:
	.dbline 111
	cpi R22,8
	brlo L295
	.dbline 117
	ldi R20,128
	.dbline 118
	clr R22
	xjmp L302
L299:
	.dbline 119
	.dbline 120
	lsr R20
	.dbline 121
	out 0x15,R20
	.dbline 122
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 123
L300:
	.dbline 118
	inc R22
L302:
	.dbline 118
	cpi R22,8
	brlo L299
	.dbline -2
	.dbline 125
L290:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r j 20 c
	.dbsym r i 22 c
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 136
	.dbline 137
	.dbline 137
	in R24,0x1a
	ori R24,240
	out 0x1a,R24
	.dbline 137
	in R24,0x11
	ori R24,224
	out 0x11,R24
	.dbline 137
	.dbline 137
	.dbline 138
	xcall _LCD1602_init
	.dbline 140
	sbi 0x17,3
	.dbline 141
	sbi 0x17,2
	.dbline 143
	ldi R24,255
	out 0x14,R24
	xjmp L305
L304:
	.dbline 146
	.dbline 147
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 148
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 149
	ldi R18,<L307
	ldi R19,>L307
	ldi R16,198
	xcall _LCD1602_puts
	.dbline 150
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 151
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 152
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 153
	ldi R18,<L307
	ldi R19,>L307
	ldi R16,198
	xcall _LCD1602_puts
	.dbline 154
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 155
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 156
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 157
	ldi R18,<L307
	ldi R19,>L307
	ldi R16,198
	xcall _LCD1602_puts
	.dbline 158
	ldi R16,5
	ldi R17,0
	xcall _delay50ms
	.dbline 160
	ldi R18,<_userCh0
	ldi R19,>_userCh0
	clr R16
	xcall _LCD1602_setCGRAM
	.dbline 161
	ldi R18,<_userCh1
	ldi R19,>_userCh1
	ldi R16,1
	xcall _LCD1602_setCGRAM
	.dbline 162
	ldi R18,<_userCh2
	ldi R19,>_userCh2
	ldi R16,2
	xcall _LCD1602_setCGRAM
	.dbline 164
	ldi R18,2
	ldi R16,132
	xcall _LCD1602_putc
	.dbline 165
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 166
	ldi R18,1
	ldi R16,131
	xcall _LCD1602_putc
	.dbline 167
	ldi R16,12
	ldi R17,0
	xcall _delay50ms
	.dbline 168
	clr R18
	ldi R16,130
	xcall _LCD1602_putc
	.dbline 169
	ldi R16,14
	ldi R17,0
	xcall _delay50ms
	.dbline 173
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 174
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 175
	ldi R18,<L308
	ldi R19,>L308
	ldi R16,194
	xcall _LCD1602_puts
	.dbline 176
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 177
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 178
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 179
	ldi R18,<L308
	ldi R19,>L308
	ldi R16,194
	xcall _LCD1602_puts
	.dbline 180
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 181
	ldi R16,<L159
	ldi R17,>L159
	xcall _LCD1602_setCmd
	.dbline 182
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 183
	ldi R18,<L308
	ldi R19,>L308
	ldi R16,194
	xcall _LCD1602_puts
	.dbline 184
	ldi R16,10
	ldi R17,0
	xcall _delay50ms
	.dbline 185
	xcall _ledDisp
	.dbline 187
	sbi 0x18,3
	.dbline 188
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 189
	cbi 0x18,3
	.dbline 190
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 191
	sbi 0x18,3
	.dbline 192
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 193
	cbi 0x18,3
	.dbline 194
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 196
	sbi 0x18,2
	.dbline 197
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 198
	cbi 0x18,2
	.dbline 199
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 200
	sbi 0x18,2
	.dbline 201
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 202
	cbi 0x18,2
	.dbline 203
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 204
L305:
	.dbline 145
	xjmp L304
X18:
	.dbline -2
	.dbline 205
L303:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\MYSTUD~1\΢ѩ����\WS_CD1\����������\SMK1632\ICCAVR����\Lcd1602\Lcd1602\Example.C
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
L308:
	.blkb 14
	.area idata
	.byte 'w,'a,'v,'e,'s,'a,'h,'r,'e,46,'n,'e,'t,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L307:
	.blkb 9
	.area idata
	.byte 'S,'l,'e,'e,'p,'i,'n,'g,0
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
