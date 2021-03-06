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
	rcall push_arg4
	rcall push_gset4
	sbiw R28,8
	ldd R12,y+20
	.dbline -1
	.dbline 116
; /*********************************************************************
; 	微 雪 电 子   WaveShare   http://www.waveShare.net	
; 
; 功能目的:   建立使用LCD1602的示例程序
; 
; 目标系统:   基于AVR单片机
; 
; 应用软件:   ICCAVR                                               
; 
; 版    本:   Version 1.0
; 
; 圆版时间:   2005-03-01
; 
; 开发人员:   SEE
; 
; 说    明:   若用于商业用途，请保留此段文字或注明代码来源
; 
; 	深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; 版本更新记录：
; 
; ----------------------------------------------------------------------
; 实验内容：
; 初始化、读写Lcd1602。
; ----------------------------------------------------------------------
; 硬件连接：
; 将Lcd1602插入主板的Lcd1602插槽,
; 使用连接线将LCD1602的引针接口连接到MCU：
; //LCD1602，4位接口，即使用D4-D7数据口，D0-D3不接入MCU
; //PIN1 --- GND
; //PIN2 --- VCC
; //PIN3 --- V0
; //PIN4 --- RS --- PC0
; //PIN5 --- R/W --- PD6
; //PIN6 --- E --- PD7
; //PIN7 --- D0
; //PIN8 --- D1
; //PIN9 --- D2
; //PIN10 --- D3
; //PIN11 --- D4 --- PC1
; //PIN12 --- D5 --- PC2
; //PIN13 --- D6 --- PC3
; //PIN14 --- D7 --- PC4
; //PIN15 --- VCC
; //PIN16 --- GND
; ----------------------------------------------------------------------
; 注意事项： 
; （1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
; （2）请详细阅读“使用必读”及相关资料。
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom48v.h>
; #include "D:\ICC_H\CmmICC.H"
; /* control port */
; #define SET_RS  sbi(PORTC,0)
; #define CLR_RS  cbi(PORTC,0)
; #define OUT_RS  sbi(DDRC,0)
; 
; #define SET_RW  sbi(PORTD,6)
; #define CLR_RW  cbi(PORTD,6)
; #define OUT_RW  sbi(DDRD,6)
; 
; #define SET_E   sbi(PORTD,7)
; #define CLR_E   cbi(PORTD,7)
; #define OUT_E   sbi(DDRD,7)
; 
; /* data port */
; #define SET_D4  sbi(PORTC,1)
; #define CLR_D4  cbi(PORTC,1)
; #define OUT_D4  sbi(DDRC,1)
; 
; #define SET_D5  sbi(PORTC,2)
; #define CLR_D5  cbi(PORTC,2)
; #define OUT_D5  sbi(DDRC,2)
; 
; #define SET_D6  sbi(PORTC,3)
; #define CLR_D6  cbi(PORTC,3)
; #define OUT_D6  sbi(DDRC,3)
; 
; #define SET_D7  sbi(PORTC,4)
; #define CLR_D7  cbi(PORTC,4)
; #define OUT_D7  sbi(DDRC,4)
; 
; /* busy port */
; #define GET_BF	gbi(PINC,4)
; #define OUT_BF	sbi(DDRC,4)
; #define IN_BF	cbi(DDRC,4)
; 
; #include "D:\ICC_H\LCD1602_.H"
; 
; const uint8  userCh0[8]={0x10,0x1f,0x01,0x02,0x04,0x08,0x10,0x1f};
; const uint8  userCh1[8]={0x00,0x08,0x0f,0x01,0x02,0x04,0x08,0x0f};
; const uint8  userCh2[8]={0x00,0x00,0x04,0x07,0x01,0x02,0x04,0x07};
; 
; /*--------------------------------------------------------------------
; 函数全称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：	
; 返    回：
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
; 		LCD1602_setCmd("CLR_SCR");
	.dbline 119
; 		delay50ms(5);
; 		LCD1602_puts(0xC6,"Sleeping");
; 		delay50ms(5);
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
; 		LCD1602_setCmd("CLR_SCR");
; 		delay50ms(5);
; 		LCD1602_puts(0xC6,"Sleeping");
; 		delay50ms(5);
; 
; 		LCD1602_setCGRAM(CGRAM0,userCh0);	//Set CGRAM0' data
; 		LCD1602_setCGRAM(CGRAM1,userCh1);	//Set CGRAM1' data
	.dbline 127
; 		LCD1602_setCGRAM(CGRAM2,userCh2);	//Set CGRAM2' data
	ldi R24,164
	sts 188,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; 		
	lds R2,188
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; 		LCD1602_putc(0x84,CGRAM2);		//putc to 0x84 by CGRAM2' data
	lds R24,185
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; 		delay50ms(10);
	clr R16
	rjmp L6
L10:
	.dbline 131
; 		LCD1602_putc(0x83,CGRAM1);		//putc to 0x83 by CGRAM1' data
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
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
	.dbline 175
; �'�
	sbrs R20,0
	rjmp L25
	.dbline 176
; �'�
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
; �'�
	clr R16
	rjmp L24
L27:
L25:
	.dbline 178
; �'�
	mov R16,R20
	rcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; �'�
	clr R16
	rjmp L24
L29:
	.dbline 180
; �'�
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
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
	.dbline 192
; �'�
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
; �'�
	lds R2,188
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; �'�
	lds R24,185
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; �'�
	clr R16
	rjmp L31
L35:
	.dbline 196
; �'�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 208
; 孶�
	sbrs R20,0
	rjmp L38
	.dbline 209
; 孶�
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
; 孶�
	clr R16
	rjmp L37
L40:
L38:
	.dbline 211
; 孶�
	mov R16,R20
	rcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; 孶�
	clr R16
	rjmp L37
L42:
	.dbline 213
; 孶�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 225
; 孶�
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
; 孶�
	lds R2,188
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; 孶�
	lds R24,185
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; 孶�
	clr R16
	rjmp L44
L48:
	.dbline 229
; 孶�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 241
; 孶�
	ldi R24,132
	sts 188,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; 孶�
	lds R2,188
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; 孶�
	lds R24,185
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; 孶�
	clr R16
	rjmp L50
L54:
	.dbline 245
; 孶�
	lds R2,187
	movw R30,R16
	std z+0,R2
	.dbline 246
; 孶�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 258
; 孶�
	ldi R24,196
	sts 188,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; 孶�
	lds R2,188
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; 孶�
	lds R24,185
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; 孶�
	clr R16
	rjmp L56
L60:
	.dbline 262
; 孶�
	lds R2,187
	movw R30,R16
	std z+0,R2
	.dbline 263
; 孶�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 277
; 孶�
	rcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; 孶�
	clr R16
	rjmp L62
L63:
	.dbline 280
; 孶�
; 孶�
	movw R16,R22
	rcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; 孶�
	clr R16
	rjmp L62
L65:
	.dbline 283
; 孶�
; 孶�
	mov R16,R20
	rcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; 孶�
	clr R16
	rjmp L62
L67:
	.dbline 286
; 孶�
; 孶�
	ldd R16,y+4
	rcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; 孶�
	clr R16
	rjmp L62
L69:
	.dbline 289
; 孶�
; 孶�
	ldi R24,148
	sts 188,R24
	.dbline 291
; 孶�
; 孶�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 323
; 孶�
	rcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; 孶�
	clr R16
	rjmp L71
L72:
	.dbline 326
; 孶�
; 孶�
	movw R16,R22
	rcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; 孶�
	clr R16
	rjmp L71
L74:
	.dbline 329
; 孶�
; 孶�
	mov R16,R20
	rcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; 孶�
	clr R16
	rjmp L71
L76:
	.dbline 332
; 孶�
; 孶�
	rcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; 孶�
	clr R16
	rjmp L71
L78:
	.dbline 335
; 孶�
; 孶�
	ldd R16,y+4
	rcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; 孶�
	clr R16
	rjmp L71
L80:
	.dbline 338
; 孶�
; 孶�
	ldd R16,y+6
	ldd R17,y+7
	rcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; 孶�
	clr R16
	rjmp L71
L82:
	.dbline 341
; 孶�
; 孶�
	ldi R24,148
	sts 188,R24
	.dbline 343
; 孶�
; 孶�
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
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
; 孶�
	.dbline 362
; 孶�
; 孶�
; 孶�
	rcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; 孶�
	clr R16
	rjmp L84
L85:
	.dbline 365
; 孶�
; 孶�
	movw R16,R12
	rcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; 孶�
	clr R16
	rjmp L84
L87:
	.dbline 368
; 孶�
; 孶�
	mov R16,R20
	rcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; 孶�
	clr R16
	rjmp L84
L89:
	.dbline 371
; 孶�
; 孶�
	rcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; 孶�
	clr R16
	rjmp L84
L91:
	.dbline 374
; 孶�
; 孶�
	ldd R16,y+8
	rcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; 孶�
	clr R16
	rjmp L84
L93:
	.dbline 377
; 孶�
; 孶�
	clr R20
	rjmp L98
L95:
	.dbline 378
; 孶�
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	rcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; 孶�
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
; 孶�
; 孶�
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	rcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; 孶�
	clr R16
	rjmp L84
L101:
	.dbline 384
; 孶�
; 孶�
	ldi R24,148
	sts 188,R24
	.dbline 386
; 孶�
; 孶�
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
	cbi 0x7,4
	.dbline 157
	sbi 0x8,1
	.dbline 158
	sbi 0x8,2
	.dbline 159
	sbi 0x8,3
	.dbline 160
	sbi 0x8,4
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
	cbi 0x8,0
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
	sbi 0xb,6
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
L127:
	.dbline 168
	.dbline 169
	sbi 0xb,7
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
	in R16,0x6
	clr R17
	andi R16,16
	andi R17,0
	.dbline 173
	cbi 0xb,7
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
	sbi 0x8,1
	.dbline 177
	sbi 0x8,2
	.dbline 178
	sbi 0x8,3
	.dbline 179
	sbi 0x8,4
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
	sbi 0xb,7
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
	cbi 0xb,7
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
	brne L130
	.dbline 187
	.dbline 188
	ldi R24,1
	sts _LCD1602Err,R24
	.dbline 189
	rjmp L126
L130:
	.dbline 191
	subi R18,255  ; offset = 1
	sbci R19,255
	.dbline 192
L128:
	.dbline 193
	tst R16
	breq X1
	rjmp L127
X1:
	.dbline 195
	clr R2
	sts _LCD1602Err,R2
	.dbline 196
	cbi 0xb,7
	.dbline 197
	sbi 0x7,4
	.dbline -2
L126:
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
	rcall push_gset2
	mov R22,R18
	mov R20,R16
	.dbline -1
	.dbline 208
	.dbline 209
	sts _bdat,R22
	.dbline 210
	rcall _busy
	.dbline 211
	tst R20
	breq L133
	.dbline 212
	sbi 0x8,0
	rjmp L134
L133:
	.dbline 214
	cbi 0x8,0
L134:
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
	cbi 0xb,6
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
	rjmp L135
	.dbline 219
	sbi 0x8,1
	rjmp L136
L135:
	.dbline 221
	cbi 0x8,1
L136:
	.dbline 222
	lds R2,_bdat
	sbrs R2,5
	rjmp L137
	.dbline 223
	sbi 0x8,2
	rjmp L138
L137:
	.dbline 225
	cbi 0x8,2
L138:
	.dbline 226
	lds R2,_bdat
	sbrs R2,6
	rjmp L139
	.dbline 227
	sbi 0x8,3
	rjmp L140
L139:
	.dbline 229
	cbi 0x8,3
L140:
	.dbline 230
	lds R2,_bdat
	sbrs R2,7
	rjmp L141
	.dbline 231
	sbi 0x8,4
	rjmp L142
L141:
	.dbline 233
	cbi 0x8,4
L142:
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
	sbi 0xb,7
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
	cbi 0xb,7
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
	rjmp L143
	.dbline 241
	sbi 0x8,1
	rjmp L144
L143:
	.dbline 243
	cbi 0x8,1
L144:
	.dbline 244
	lds R2,_bdat
	sbrs R2,1
	rjmp L145
	.dbline 245
	sbi 0x8,2
	rjmp L146
L145:
	.dbline 247
	cbi 0x8,2
L146:
	.dbline 248
	lds R2,_bdat
	sbrs R2,2
	rjmp L147
	.dbline 249
	sbi 0x8,3
	rjmp L148
L147:
	.dbline 251
	cbi 0x8,3
L148:
	.dbline 252
	lds R2,_bdat
	sbrs R2,3
	rjmp L149
	.dbline 253
	sbi 0x8,4
	rjmp L150
L149:
	.dbline 255
	cbi 0x8,4
L150:
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
	sbi 0xb,7
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
	cbi 0xb,7
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
L132:
	rcall pop_gset2
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
	rcall push_gset2
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
	rcall _write
	.dbline 285
	clr R20
	rjmp L155
L152:
	.dbline 286
	mov R30,R20
	clr R31
	add R30,R22
	adc R31,R23
	lpm R18,Z
	ldi R16,1
	rcall _write
L153:
	.dbline 285
	inc R20
L155:
	.dbline 285
	cpi R20,8
	brlo L152
	.dbline -2
L151:
	rcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r buf 22 pkc
	.dbsym r adr 20 c
	.dbend
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L157:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L158:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L159:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L160:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
L161:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.area text(rom, con, rel)
	.dbfile D:\ICC_H\LCD1602_.H
	.dbfunc e LCD1602_setCmd _LCD1602_setCmd fV
	.dbsym s isACinc L161 c
	.dbsym s shiftEn L160 c
	.dbsym s blinkEn L159 c
	.dbsym s cursorEn L158 c
	.dbsym s dispEn L157 c
;            str -> R20,R21
	.even
_LCD1602_setCmd::
	rcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 308
	.dbline 315
	ldi R18,<L164
	ldi R19,>L164
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L162
X2:
	.dbline 316
	ldi R18,1
	clr R16
	rcall _write
	rjmp L163
L162:
	.dbline 318
	ldi R18,<L167
	ldi R19,>L167
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L165
X3:
	.dbline 319
	ldi R18,2
	clr R16
	rcall _write
	rjmp L166
L165:
	.dbline 323
	ldi R18,<L170
	ldi R19,>L170
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L168
X4:
	.dbline 324
	.dbline 325
	ldi R24,1
	sts L161,R24
	.dbline 326
	lds R2,L160
	tst R2
	breq L171
	.dbline 327
	ldi R18,7
	clr R16
	rcall _write
	rjmp L169
L171:
	.dbline 329
	ldi R18,6
	clr R16
	rcall _write
	.dbline 330
	rjmp L169
L168:
	.dbline 331
	ldi R18,<L175
	ldi R19,>L175
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L173
X5:
	.dbline 332
	.dbline 333
	clr R2
	sts L161,R2
	.dbline 334
	lds R2,L160
	tst R2
	breq L176
	.dbline 335
	ldi R18,5
	clr R16
	rcall _write
	rjmp L174
L176:
	.dbline 337
	ldi R18,4
	clr R16
	rcall _write
	.dbline 338
	rjmp L174
L173:
	.dbline 339
	ldi R18,<L180
	ldi R19,>L180
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L178
X6:
	.dbline 340
	.dbline 341
	ldi R24,1
	sts L160,R24
	.dbline 342
	lds R2,L161
	tst R2
	breq L181
	.dbline 343
	ldi R18,7
	clr R16
	rcall _write
	rjmp L179
L181:
	.dbline 345
	ldi R18,6
	clr R16
	rcall _write
	.dbline 346
	rjmp L179
L178:
	.dbline 347
	ldi R18,<L185
	ldi R19,>L185
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L183
X7:
	.dbline 348
	.dbline 349
	clr R2
	sts L160,R2
	.dbline 350
	lds R2,L161
	tst R2
	breq L186
	.dbline 351
	ldi R18,5
	clr R16
	rcall _write
	rjmp L184
L186:
	.dbline 353
	ldi R18,4
	clr R16
	rcall _write
	.dbline 354
	rjmp L184
L183:
	.dbline 358
	ldi R18,<L190
	ldi R19,>L190
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L188
X8:
	.dbline 359
	.dbline 360
	ldi R24,1
	sts L157,R24
	.dbline 361
	lds R2,L158
	tst R2
	breq L191
	.dbline 362
	lds R2,L159
	tst R2
	breq L193
	.dbline 363
	ldi R18,15
	clr R16
	rcall _write
	rjmp L189
L193:
	.dbline 365
	ldi R18,14
	clr R16
	rcall _write
	rjmp L189
L191:
	.dbline 367
	lds R2,L159
	tst R2
	breq L195
	.dbline 368
	ldi R18,13
	clr R16
	rcall _write
	rjmp L189
L195:
	.dbline 370
	ldi R18,12
	clr R16
	rcall _write
	.dbline 371
	rjmp L189
L188:
	.dbline 372
	ldi R18,<L199
	ldi R19,>L199
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L197
X9:
	.dbline 373
	.dbline 374
	clr R2
	sts L157,R2
	.dbline 375
	lds R2,L158
	tst R2
	breq L200
	.dbline 376
	lds R2,L159
	tst R2
	breq L202
	.dbline 377
	ldi R18,11
	clr R16
	rcall _write
	rjmp L198
L202:
	.dbline 379
	ldi R18,10
	clr R16
	rcall _write
	rjmp L198
L200:
	.dbline 381
	lds R2,L159
	tst R2
	breq L204
	.dbline 382
	ldi R18,9
	clr R16
	rcall _write
	rjmp L198
L204:
	.dbline 384
	ldi R18,8
	clr R16
	rcall _write
	.dbline 385
	rjmp L198
L197:
	.dbline 386
	ldi R18,<L208
	ldi R19,>L208
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L206
X10:
	.dbline 387
; 鑴�
	.dbline 388
; 鑴�
	ldi R24,1
	sts L158,R24
	.dbline 389
; 鑴�
	lds R2,L157
	tst R2
	breq L209
	.dbline 390
; 鑴�
	lds R2,L159
	tst R2
	breq L211
	.dbline 391
; 鑴�
	ldi R18,15
	clr R16
	rcall _write
	rjmp L207
L211:
	.dbline 393
; 鑴�
; 鑴�
	ldi R18,14
	clr R16
	rcall _write
	rjmp L207
L209:
	.dbline 395
; 鑴�
; 鑴�
	lds R2,L159
	tst R2
	breq L213
	.dbline 396
; 鑴�
	ldi R18,11
	clr R16
	rcall _write
	rjmp L207
L213:
	.dbline 398
; 鑴�
; 鑴�
	ldi R18,10
	clr R16
	rcall _write
	.dbline 399
; 鑴�
	rjmp L207
L206:
	.dbline 400
; 鑴�
	ldi R18,<L217
	ldi R19,>L217
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L215
X11:
	.dbline 401
; 鑴�
	.dbline 402
; 鑴�
	clr R2
	sts L158,R2
	.dbline 403
; 鑴�
	lds R2,L157
	tst R2
	breq L218
	.dbline 404
; 鑴�
	lds R2,L159
	tst R2
	breq L220
	.dbline 405
; 鑴�
	ldi R18,13
	clr R16
	rcall _write
	rjmp L216
L220:
	.dbline 407
; 鑴�
; 鑴�
	ldi R18,12
	clr R16
	rcall _write
	rjmp L216
L218:
	.dbline 409
; 鑴�
; 鑴�
	lds R2,L159
	tst R2
	breq L222
	.dbline 410
; 鑴�
	ldi R18,9
	clr R16
	rcall _write
	rjmp L216
L222:
	.dbline 412
; 鑴�
; 鑴�
	ldi R18,8
	clr R16
	rcall _write
	.dbline 413
; 鑴�
	rjmp L216
L215:
	.dbline 414
; 鑴�
	ldi R18,<L226
	ldi R19,>L226
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L224
X12:
	.dbline 415
; 鑴�
	.dbline 416
; 鑴�
	ldi R24,1
	sts L159,R24
	.dbline 417
; 鑴�
	lds R2,L157
	tst R2
	breq L227
	.dbline 418
; 鑴�
	lds R2,L158
	tst R2
	breq L229
	.dbline 419
; 鑴�
	ldi R18,15
	clr R16
	rcall _write
	rjmp L225
L229:
	.dbline 421
; 鑴�
; 鑴�
	ldi R18,13
	clr R16
	rcall _write
	rjmp L225
L227:
	.dbline 423
; 鑴�
; 鑴�
	lds R2,L158
	tst R2
	breq L231
	.dbline 424
; 鑴�
	ldi R18,11
	clr R16
	rcall _write
	rjmp L225
L231:
	.dbline 426
; 鑴�
; 鑴�
	ldi R18,9
	clr R16
	rcall _write
	.dbline 427
; 鑴�
	rjmp L225
L224:
	.dbline 428
; 鑴�
	ldi R18,<L235
	ldi R19,>L235
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L233
X13:
	.dbline 429
; 鑴�
	.dbline 430
; 鑴�
	clr R2
	sts L159,R2
	.dbline 431
; 鑴�
	lds R2,L157
	tst R2
	breq L236
	.dbline 432
; 鑴�
	lds R2,L158
	tst R2
	breq L238
	.dbline 433
; 鑴�
	ldi R18,14
	clr R16
	rcall _write
	rjmp L234
L238:
	.dbline 435
; 鑴�
; 鑴�
	ldi R18,12
	clr R16
	rcall _write
	rjmp L234
L236:
	.dbline 437
; 鑴�
; 鑴�
	lds R2,L158
	tst R2
	breq L240
	.dbline 438
; 鑴�
	ldi R18,10
	clr R16
	rcall _write
	rjmp L234
L240:
	.dbline 440
; 鑴�
; 鑴�
	ldi R18,8
	clr R16
	rcall _write
	.dbline 441
; 鑴�
	rjmp L234
L233:
	.dbline 445
; 鑴�
; 鑴�
; 鑴�
; 鑴�
	ldi R18,<L244
	ldi R19,>L244
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L242
X14:
	.dbline 446
; 鑴�
	ldi R18,28
	clr R16
	rcall _write
	rjmp L243
L242:
	.dbline 447
; 鑴�
	ldi R18,<L247
	ldi R19,>L247
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L245
X15:
	.dbline 448
; 鑴�
	ldi R18,24
	clr R16
	rcall _write
	rjmp L246
L245:
	.dbline 449
; 鑴�
	ldi R18,<L250
	ldi R19,>L250
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L248
X16:
	.dbline 450
; 鑴�
	ldi R18,20
	clr R16
	rcall _write
	rjmp L249
L248:
	.dbline 451
; 鑴�
	ldi R18,<L253
	ldi R19,>L253
	movw R16,R20
	rcall _strcmp
	cpi R16,0
	cpc R16,R17
	brne L251
X17:
	.dbline 452
; 鑴�
	ldi R18,16
	clr R16
	rcall _write
L251:
L249:
L246:
L243:
L234:
L225:
L216:
L207:
L198:
L189:
L184:
L179:
L174:
L169:
L166:
L163:
	.dbline -2
L156:
	rcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r str 20 pc
	.dbend
	.dbfunc e LCD1602_init _LCD1602_init fV
	.even
_LCD1602_init::
	.dbline -1
	.dbline 463
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
	.dbline 464
; 鑴�
	sbi 0x7,0
	.dbline 465
; 鑴�
	sbi 0xa,6
	.dbline 466
; 鑴�
	sbi 0xa,7
	.dbline 467
; 鑴�
	sbi 0x7,1
	.dbline 468
; 鑴�
	sbi 0x7,2
	.dbline 469
; 鑴�
	sbi 0x7,3
	.dbline 470
; 鑴�
	sbi 0x7,4
	.dbline 471
; 鑴�
	ldi R16,1
	ldi R17,0
	rcall _delay50ms
	.dbline 473
; 鑴�
; 鑴�
	cbi 0x8,4
	.dbline 474
; 鑴�
	cbi 0x8,3
	.dbline 475
; 鑴�
	sbi 0x8,2
	.dbline 476
; 鑴�
	sbi 0x8,1
	.dbline 477
; 鑴�
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
; 鑴�
	cbi 0x8,0
	.dbline 479
; 鑴�
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
; 鑴�
	cbi 0xb,6
	.dbline 482
; 鑴�
; 鑴�
	sbi 0xb,7
	.dbline 483
; 鑴�
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
; 鑴�
	cbi 0xb,7
	.dbline 485
; 鑴�
	ldi R16,200
	ldi R17,0
	rcall _delay50us
	.dbline 486
; 鑴�
	sbi 0xb,7
	.dbline 487
; 鑴�
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
; 鑴�
	cbi 0xb,7
	.dbline 489
; 鑴�
	ldi R16,200
	ldi R17,0
	rcall _delay50us
	.dbline 490
; 鑴�
	sbi 0xb,7
	.dbline 491
; 鑴�
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
; 鑴�
	cbi 0xb,7
	.dbline 493
; 鑴�
	ldi R16,200
	ldi R17,0
	rcall _delay50us
	.dbline 495
; 鑴�
; 鑴�
	cbi 0x8,4
	.dbline 496
; 鑴�
	cbi 0x8,3
	.dbline 497
; 鑴�
	sbi 0x8,2
	.dbline 498
; 鑴�
	cbi 0x8,1
	.dbline 499
; 鑴�
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
; 鑴�
	sbi 0xb,7
	.dbline 501
; 鑴�
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
; 鑴�
	cbi 0xb,7
	.dbline 503
; 鑴�
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
; 鑴�
	ldi R16,<L190
	ldi R17,>L190
	rcall _LCD1602_setCmd
	.dbline 505
; 鑴�
	ldi R16,<L164
	ldi R17,>L164
	rcall _LCD1602_setCmd
	.dbline 506
; 鑴�
	ldi R16,<L170
	ldi R17,>L170
	rcall _LCD1602_setCmd
	.dbline -2
L254:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e LCD1602_putc _LCD1602_putc fV
;             ch -> R20
;            adr -> R22
	.even
_LCD1602_putc::
	rcall push_gset2
	mov R20,R18
	mov R22,R16
	.dbline -1
	.dbline 528
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
	.dbline 529
; 鑴�
	mov R18,R22
	clr R16
	rcall _write
	.dbline 530
; 鑴�
	mov R18,R20
	ldi R16,1
	rcall _write
	.dbline -2
L255:
	rcall pop_gset2
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
	rcall push_gset2
	movw R20,R18
	mov R22,R16
	.dbline -1
	.dbline 541
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
	.dbline 549
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
; 鑴�
	mov R18,R22
	clr R16
	rcall _write
	rjmp L258
L257:
	.dbline 551
	movw R30,R20
	ld R18,Z+
	movw R20,R30
	ldi R16,1
	rcall _write
L258:
	.dbline 550
; 鑴�
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L257
	.dbline -2
L256:
	rcall pop_gset2
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
	rcall push_gset1
	mov R20,R16
	sbiw R28,1
	.dbline -1
	.dbline 563
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 565
; ��
; ��
	ldd R0,y+7
	std y+0,R0
	movw R30,R28
	ldd R16,z+3
	ldd R17,z+4
	ldd R18,z+5
	ldd R19,z+6
	rcall _speaData
	.dbline 567
; ��
; ��
	mov R18,R20
	ldd R0,y+7
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	rcall _write
	.dbline 568
; ��
	ldd R20,y+7
	subi R20,1
	rjmp L264
L261:
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
	rcall _write
L262:
	.dbline 568
	dec R20
L264:
	.dbline 568
	cpi R20,0
	brge L261
	.dbline -2
L260:
	adiw R28,1
	rcall pop_gset1
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
	rcall push_gset5
	mov R10,R16
	sbiw R28,1
	.dbline -1
	.dbline 580
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 583
; ��
; ��
; ��
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
	brsh L266
	.dbline 584
; ��
	ldi R24,7
	mov R14,R24
	rjmp L267
L266:
	.dbline 585
; ��
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
	brsh L268
	.dbline 586
; ��
	ldi R24,6
	mov R14,R24
	rjmp L269
L268:
	.dbline 587
; ��
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
	brsh L270
	.dbline 588
; ��
	ldi R24,5
	mov R14,R24
	rjmp L271
L270:
	.dbline 589
; ��
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
	brsh L272
	.dbline 590
; ��
	ldi R24,4
	mov R14,R24
	rjmp L273
L272:
	.dbline 591
; ��
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
	brsh L274
	.dbline 592
; ��
	ldi R24,3
	mov R14,R24
	rjmp L275
L274:
	.dbline 593
; ��
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
	brsh L276
	.dbline 594
; ��
	ldi R24,2
	mov R14,R24
	rjmp L277
L276:
	.dbline 596
; ��
; ��
	clr R14
	inc R14
L277:
L275:
L273:
L271:
L269:
L267:
	.dbline 597
; ��
	std y+0,R14
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	rcall _speaData
	.dbline 599
; ��
; ��
	ldd R0,y+15
	cp R14,R0
	brsh L278
	.dbline 600
; ��
	.dbline 601
; ��
	mov R18,R10
	sub R18,R0
	subi R18,255    ; addi 1
	clr R16
	rcall _write
	.dbline 602
; ��
	ldd R24,y+15
	sub R24,R14
	subi R24,1
	mov R12,R24
	rjmp L283
L280:
	.dbline 603
	ldi R18,32
	ldi R16,1
	rcall _write
L281:
	.dbline 602
	dec R12
L283:
	.dbline 602
	mov R24,R12
	cpi R24,0
	brge L280
	.dbline 604
; ��
; ��
L278:
	.dbline 605
; ��
	mov R24,R14
	subi R24,1
	mov R12,R24
	rjmp L287
L284:
	.dbline 606
; ��
	.dbline 607
; ��
	tst R12
	breq L290
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
	breq L288
L290:
	.dbline 608
; ��
	.dbline 609
; ��
	mov R18,R10
	sub R18,R12
	clr R16
	rcall _write
	.dbline 610
; ��
	rjmp L294
L291:
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
	rcall _write
L292:
	.dbline 610
	dec R12
L294:
	.dbline 610
	mov R24,R12
	cpi R24,0
	brge L291
	.dbline 612
; ��
; ��
L288:
	.dbline 613
L285:
	.dbline 605
	dec R12
L287:
	.dbline 605
	mov R24,R12
	cpi R24,0
	brge L284
	.dbline -2
L265:
	adiw R28,1
	rcall pop_gset5
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
	.dbfile E:\吴泽程序备份\DVK500\stk48+\LCD160~1\Lcd1602\Lcd1602PBPD.C
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
	.dbfile E:\吴泽程序备份\DVK500\stk48+\LCD160~1\Lcd1602\Lcd1602PBPD.C
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 108
	.dbline 110
	rcall _LCD1602_init
	rjmp L297
L296:
	.dbline 113
	.dbline 114
	ldi R18,<L299
	ldi R19,>L299
	ldi R16,198
	rcall _LCD1602_puts
	.dbline 115
	ldi R16,5
	ldi R17,0
	rcall _delay50ms
	.dbline 116
	ldi R16,<L164
	ldi R17,>L164
	rcall _LCD1602_setCmd
	.dbline 117
	ldi R16,5
	ldi R17,0
	rcall _delay50ms
	.dbline 118
	ldi R18,<L299
	ldi R19,>L299
	ldi R16,198
	rcall _LCD1602_puts
	.dbline 119
	ldi R16,5
	ldi R17,0
	rcall _delay50ms
	.dbline 120
	ldi R16,<L164
	ldi R17,>L164
	rcall _LCD1602_setCmd
	.dbline 121
	ldi R16,5
	ldi R17,0
	rcall _delay50ms
	.dbline 122
	ldi R18,<L299
	ldi R19,>L299
	ldi R16,198
	rcall _LCD1602_puts
	.dbline 123
	ldi R16,5
	ldi R17,0
	rcall _delay50ms
	.dbline 125
	ldi R18,<_userCh0
	ldi R19,>_userCh0
	clr R16
	rcall _LCD1602_setCGRAM
	.dbline 126
	ldi R18,<_userCh1
	ldi R19,>_userCh1
	ldi R16,1
	rcall _LCD1602_setCGRAM
	.dbline 127
	ldi R18,<_userCh2
	ldi R19,>_userCh2
	ldi R16,2
	rcall _LCD1602_setCGRAM
	.dbline 129
	ldi R18,2
	ldi R16,132
	rcall _LCD1602_putc
	.dbline 130
	ldi R16,10
	ldi R17,0
	rcall _delay50ms
	.dbline 131
	ldi R18,1
	ldi R16,131
	rcall _LCD1602_putc
	.dbline 132
	ldi R16,12
	ldi R17,0
	rcall _delay50ms
	.dbline 133
	clr R18
	ldi R16,130
	rcall _LCD1602_putc
	.dbline 134
	ldi R16,14
	ldi R17,0
	rcall _delay50ms
	.dbline 136
	ldi R16,<L164
	ldi R17,>L164
	rcall _LCD1602_setCmd
	.dbline 137
L297:
	.dbline 112
	rjmp L296
X18:
	.dbline -2
L295:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\吴泽程序备份\DVK500\stk48+\LCD160~1\Lcd1602\Lcd1602PBPD.C
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
L299:
	.blkb 9
	.area idata
	.byte 'S,'l,'e,'e,'p,'i,'n,'g,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L253:
	.blkb 10
	.area idata
	.byte 'L,'E,'F,'T,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L250:
	.blkb 11
	.area idata
	.byte 'R,'I,'G,'H,'T,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L247:
	.blkb 9
	.area idata
	.byte 'L,'E,'F,'T,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L244:
	.blkb 10
	.area idata
	.byte 'R,'I,'G,'H,'T,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L235:
	.blkb 10
	.area idata
	.byte 'D,'I,'S,95,'B,'L,'I,'N,'K,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L226:
	.blkb 9
	.area idata
	.byte 'E,'N,95,'B,'L,'I,'N,'K,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L217:
	.blkb 11
	.area idata
	.byte 'C,'L,'O,'S,'E,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L208:
	.blkb 10
	.area idata
	.byte 'O,'P,'E,'N,95,'C,'U,'R,'S,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L199:
	.blkb 10
	.area idata
	.byte 'C,'L,'O,'S,'E,95,'L,'C,'D,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L190:
	.blkb 9
	.area idata
	.byte 'O,'P,'E,'N,95,'L,'C,'D,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L185:
	.blkb 10
	.area idata
	.byte 'D,'I,'S,95,'S,'H,'I,'F,'T,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L180:
	.blkb 9
	.area idata
	.byte 'E,'N,95,'S,'H,'I,'F,'T,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L175:
	.blkb 7
	.area idata
	.byte 'D,'E,'C,95,'A,'C,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L170:
	.blkb 7
	.area idata
	.byte 'I,'N,'C,95,'A,'C,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L167:
	.blkb 8
	.area idata
	.byte 'G,'O,95,'H,'O,'M,'E,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L164:
	.blkb 8
	.area idata
	.byte 'C,'L,'R,95,'S,'C,'R,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
