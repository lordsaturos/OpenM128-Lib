	.module PS2SimpleSoft.c
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
; 	微 雪 电 子   WaveShare   http://www.waveShare.net            	
; 		                                                        
; 目    的:   建立PS/2的SimpleSoft测试程序（软件查询读取PS/2接收到的数据）
; 	
; 目标系统:   基于AVR单片机
; 		                                                                
; 应用软件:   ICCAVR
; 		                                                                
; 版    本:   Version 1.0                                                          
; 		                                                                
; 圆版时间:   2005-06-25
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
; 按PC键盘，观察单片机读到的数据，使用PA/PD口的LED做指示。
; ----------------------------------------------------------------------
; 硬件连接：
; 将PA/PD口的LED指示灯使用短路帽或线短接；
; 将PC键盘插入PS2接口，
; 使用短路帽短接PB0与DATA，
; 使用短路帽短接PB1与CLK
; ----------------------------------------------------------------------
; 注意事项： 
; （1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
; （2）请详细阅读“使用必读”及相关资料。
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom128v.h>
; #include "D:\ICC_H\CmmICC.H"
; #include "D:\ICC_H\PS2_.H"
; 
; #define PRESS_DATA_DDR	DDRA
; #define PRESS_DATA_PORT PORTA
; #define SHIFT_DATA_DDR	DDRC
; #define SHIFT_DATA_PORT PORTC
; 
; #define SET_SDA		sbi(PORTD,3)
; #define CLR_SDA		cbi(PORTD,3)
; #define GET_SDA		gbi(PIND,3)
; #define OUT_SDA 	sbi(DDRD,3)
; #define IN_SDA 		cbi(DDRD,3)
; 
; #define SET_SCK		sbi(PORTD,2)
; #define CLR_SCK		cbi(PORTD,2)
; #define GET_SCK		gbi(PIND,2)
; #define OUT_SCK 	sbi(DDRD,2)
; #define IN_SCK 		cbi(DDRD,2)
; 
; #define DELAY() {NOP();NOP();NOP();NOP();}
; 
; bool rcvF		= 0; 	//是否收到字符标志
; uint8 keyVal; 			//键值
; 
; /*--------------------------------------------------------------------
; 函数名称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
; --------------------------------------------------------------------*/
; void check(void)
; {
;     static uint8 rcvBits = 0;	//接收次数，中断次数
; 	
; 	OUT_SCK; 		   			//设置"SCK_DDR"为输出
; 	DELAY();
; 	SET_SCK;					//"SCK_PORT"输出"1"
; 	DELAY();
; 	
; 	IN_SCK;						//设置"SCK_DDR"为输入
; 	DELAY();
; 	if(!GET_SCK)
; 	{
; 		if((rcvBits>0) && (rcvBits<9))
; 		{ 
; 			keyVal=keyVal>>1; 	//数据是LSB格式
; 			//IN_SDA;			//当有对键盘有属性设置时，注意输入输出切换
; 			//DELAY();
; 			if(GET_SDA) 
; 	 			keyVal=keyVal|0x80; 
; 		}
; 		rcvBits++;
; 		while(!GET_SCK); 		//等待PS/2CLK拉高
; 	
; 		if(rcvBits>10)
; 		{
; 			rcvBits=0; 			//接收11次表示接收完一帧数据
; 			rcvF=1; 			//标识有字符已经输入
; 		}
; 	}
; }
; /*--------------------------------------------------------------------
; 函数名称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
; --------------------------------------------------------------------*/
; void keyHandle(uint8 val) 
; {
; 	uint8 i;
	.dbline 119
; 	static bool isUp=0;			//按键释放动作标志
; 	static bool shift=0;		//shift键按下标志
; 	rcvF = 0; 
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
; 	PRESS_DATA_PORT = val;		//状态指示
; 	if(!isUp)
; 	{
; 		switch(val)
; 		{
; 			case 0xF0 :			// a relase action
; 				isUp = 1;
	.dbline 127
; 				break;
	ldi R24,164
	sts 116,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; 			case 0x12 :			// Left shift
	lds R2,116
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; 				shift = 1;
	lds R24,113
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; 				break;
	clr R16
	xjmp L6
L10:
	.dbline 131
; 			case 0x59 :			// Right shift
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
; 				shift = 1;
; 				break;
; 			default:
; 				if(!shift)		// If shift not pressed
; 				{ 
; /*
; 					for(i=0; unshifted[i][0]!=val && unshifted[i][0]; i++)
; 						;
; 					上述写法较为灵活，但KEIL非UNIXC标准，不能采用该写法
; */
; 					for(i=0; unshifted[i][0]!=val && i<59; i++)
	.dbline 143
; 						;
	ldi R24,164
	sts 116,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; 					if(unshifted[i][0] == val) 
	lds R2,116
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; 						;		//状态指示
	lds R24,113
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; 					
	clr R16
	xjmp L12
L16:
	.dbline 147
; 				} 
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
; 				else			// If shift pressed
; 				{			
; /*
; 					for(i=0; unshifted[i][0]!=val && unshifted[i][0]; i++)
; 						;
; 					上述写法较为灵活，但KEIL非UNIXC标准，不能采用该写法
; */
; 					for(i=0; shifted[i][0]!=val && i<59; i++)
; 						;
; 					if(shifted[i][0] == val) 
; 						SHIFT_DATA_PORT = val;//状态指示
	.dbline 159
; 				}
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
; 		}
	lds R2,116
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; 	}
	lds R24,113
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 162
; 	else 
	clr R16
	xjmp L18
L22:
	.dbline 163
; 	{
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
; 		isUp=0;					
; 		switch(val)
; 		{
; 			case 0x12 :			// Left SHIFT
; 				shift = 0;
; 				break;
; 			case 0x59 :			// Right SHIFT
; 				shift = 0;
; 				break;
; 		}
; 	}
	.dbline 175
; }  
	sbrs R20,0
	rjmp L25
	.dbline 176
; /*--------------------------------------------------------------------
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
; 函数名称：
	clr R16
	xjmp L24
L27:
L25:
	.dbline 178
; 函数功能：
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; 注意事项：
	clr R16
	xjmp L24
L29:
	.dbline 180
; 提示说明：
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
; 输    入：
; 返    回：
; --------------------------------------------------------------------*/
; void main(void)
; {
;     PRESS_DATA_DDR = 0XFF;
; 	SHIFT_DATA_DDR = 0XFF;
; 	IN_SDA;
; 	while(1)
; 	{
; 		check();
	.dbline 192
; 		if(rcvF)
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
; 			keyHandle(keyVal);
	lds R2,116
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; 	}
	lds R24,113
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; }
	clr R16
	xjmp L31
L35:
	.dbline 196
; 
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
	.dbline 208
; 
	sbrs R20,0
	rjmp L38
	.dbline 209
; 
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
; 
	clr R16
	xjmp L37
L40:
L38:
	.dbline 211
; 
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; 
	clr R16
	xjmp L37
L42:
	.dbline 213
; 
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
	.dbline 225
; 
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
; 
	lds R2,116
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; 
	lds R24,113
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; 
	clr R16
	xjmp L44
L48:
	.dbline 229
; 
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
	.dbline 241
; 
	ldi R24,132
	sts 116,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; 
	lds R2,116
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; 
	lds R24,113
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; 
	clr R16
	xjmp L50
L54:
	.dbline 245
; 
	lds R2,115
	movw R30,R16
	std z+0,R2
	.dbline 246
; 
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
	.dbline 258
; 
	ldi R24,196
	sts 116,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; 
	lds R2,116
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; 
	lds R24,113
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; 
	clr R16
	xjmp L56
L60:
	.dbline 262
; 
	lds R2,115
	movw R30,R16
	std z+0,R2
	.dbline 263
; 
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
	.dbline 277
; 
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; 
	clr R16
	xjmp L62
L63:
	.dbline 280
; 
; 
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; 
	clr R16
	xjmp L62
L65:
	.dbline 283
; 
; 
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; 
	clr R16
	xjmp L62
L67:
	.dbline 286
; 
; 
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; 
	clr R16
	xjmp L62
L69:
	.dbline 289
; 
; 
	ldi R24,148
	sts 116,R24
	.dbline 291
; 
; 
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
	.dbline 323
; 
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; 
	clr R16
	xjmp L71
L72:
	.dbline 326
; 
; 
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; 
	clr R16
	xjmp L71
L74:
	.dbline 329
; 
; 
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; 
	clr R16
	xjmp L71
L76:
	.dbline 332
; 
; 
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; 
	clr R16
	xjmp L71
L78:
	.dbline 335
; 
; 
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; 
	clr R16
	xjmp L71
L80:
	.dbline 338
; 
; 
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; 
	clr R16
	xjmp L71
L82:
	.dbline 341
; 
; 
	ldi R24,148
	sts 116,R24
	.dbline 343
; 
; 
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
	.dbline 362
; 
; 
; 
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; 
	clr R16
	xjmp L84
L85:
	.dbline 365
; 
; 
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; 
	clr R16
	xjmp L84
L87:
	.dbline 368
; 
; 
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; 
	clr R16
	xjmp L84
L89:
	.dbline 371
; 
; 
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; 
	clr R16
	xjmp L84
L91:
	.dbline 374
; 
; 
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; 
	clr R16
	xjmp L84
L93:
	.dbline 377
; 
; 
	clr R20
	xjmp L98
L95:
	.dbline 378
; 
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; 
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
; 
; 
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; 
	clr R16
	xjmp L84
L101:
	.dbline 384
; 
; 
	ldi R24,148
	sts 116,R24
	.dbline 386
; 
; 
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
	.byte 'f,32
	.dbfile D:\ICC_H\PS2_.H
	.dbsym e unshifted _unshifted A[120:60:2]kc
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
	.byte 'f,32
	.dbsym e shifted _shifted A[120:60:2]kc
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\PS2_.H
_rcvF::
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\PS2_.H
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
	.dbsym e rcvF _rcvF c
L127:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
	.area text(rom, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
	.dbfunc e check _check fV
	.dbsym s rcvBits L127 c
	.even
_check::
	.dbline -1
	.dbline 76
	.dbline 79
	sbi 0x11,2
	.dbline 80
	.dbline 80
	nop
	.dbline 80
	nop
	.dbline 80
	nop
	.dbline 80
	nop
	.dbline 80
	.dbline 80
	.dbline 81
	sbi 0x12,2
	.dbline 82
	.dbline 82
	nop
	.dbline 82
	nop
	.dbline 82
	nop
	.dbline 82
	nop
	.dbline 82
	.dbline 82
	.dbline 84
	cbi 0x11,2
	.dbline 85
	.dbline 85
	nop
	.dbline 85
	nop
	.dbline 85
	nop
	.dbline 85
	nop
	.dbline 85
	.dbline 85
	.dbline 86
	sbic 0x10,2
	rjmp L128
	.dbline 87
	.dbline 88
	clr R2
	lds R3,L127
	cp R2,R3
	brsh L130
	mov R24,R3
	cpi R24,9
	brsh L130
	.dbline 89
	.dbline 90
	lds R2,_keyVal
	lsr R2
	sts _keyVal,R2
	.dbline 93
	sbis 0x10,3
	rjmp L132
	.dbline 94
	mov R24,R2
	ori R24,128
	sts _keyVal,R24
L132:
	.dbline 95
L130:
	.dbline 96
	lds R24,L127
	subi R24,255    ; addi 1
	sts L127,R24
L134:
	.dbline 97
L135:
	.dbline 97
	sbis 0x10,2
	rjmp L134
	.dbline 99
	ldi R24,10
	lds R2,L127
	cp R24,R2
	brsh L137
	.dbline 100
	.dbline 101
	clr R2
	sts L127,R2
	.dbline 102
	ldi R24,1
	sts _rcvF,R24
	.dbline 103
L137:
	.dbline 104
L128:
	.dbline -2
L126:
	.dbline 0 ; func end
	ret
	.dbend
	.area data(ram, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
L140:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
L141:
	.blkb 1
	.area idata
	.byte 0
	.area data(ram, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
	.area text(rom, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
	.dbfunc e keyHandle _keyHandle fV
	.dbsym s shift L141 c
	.dbsym s isUp L140 c
;              i -> R20
;            val -> R16
	.even
_keyHandle::
	xcall push_gset1
	.dbline -1
	.dbline 115
	.dbline 119
	clr R2
	sts _rcvF,R2
	.dbline 120
	out 0x1b,R16
	.dbline 121
	lds R2,L140
	tst R2
	breq X3
	xjmp L142
X3:
	.dbline 122
	.dbline 123
	mov R20,R16
	clr R21
	cpi R20,89
	ldi R30,0
	cpc R21,R30
	breq L149
	ldi R24,89
	ldi R25,0
	cp R24,R20
	cpc R25,R21
	brlt L167
L166:
	cpi R20,18
	ldi R30,0
	cpc R21,R30
	breq L148
	xjmp L144
L167:
	cpi R20,240
	ldi R30,0
	cpc R21,R30
	breq L147
	xjmp L144
X1:
	.dbline 124
L147:
	.dbline 126
	ldi R24,1
	sts L140,R24
	.dbline 127
	xjmp L143
L148:
	.dbline 129
	ldi R24,1
	sts L141,R24
	.dbline 130
	xjmp L143
L149:
	.dbline 132
	ldi R24,1
	sts L141,R24
	.dbline 133
	xjmp L143
L144:
	.dbline 135
	lds R2,L141
	tst R2
	brne L150
	.dbline 136
	.dbline 142
	clr R20
	xjmp L155
L152:
	.dbline 143
L153:
	.dbline 142
	inc R20
L155:
	.dbline 142
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_unshifted
	ldi R25,>_unshifted
	add R30,R24
	adc R31,R25
	elpm R30,Z
	cp R30,R16
	breq L156
	cpi R20,59
	brlo L152
L156:
	.dbline 144
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_unshifted
	ldi R25,>_unshifted
	add R30,R24
	adc R31,R25
	elpm R30,Z
	cp R30,R16
	breq X4
	xjmp L143
X4:
	.dbline 145
	.dbline 147
	xjmp L143
L150:
	.dbline 149
	.dbline 155
	clr R20
	xjmp L162
L159:
	.dbline 156
L160:
	.dbline 155
	inc R20
L162:
	.dbline 155
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_shifted
	ldi R25,>_shifted
	add R30,R24
	adc R31,R25
	elpm R30,Z
	cp R30,R16
	breq L163
	cpi R20,59
	brlo L159
L163:
	.dbline 157
	ldi R24,2
	mul R24,R20
	movw R30,R0
	ldi R24,<_shifted
	ldi R25,>_shifted
	add R30,R24
	adc R31,R25
	elpm R30,Z
	cp R30,R16
	brne L143
	.dbline 158
	out 0x15,R16
	.dbline 159
	.dbline 160
	.dbline 161
	xjmp L143
L142:
	.dbline 163
	.dbline 164
	clr R2
	sts L140,R2
	.dbline 165
	mov R20,R16
	clr R21
	cpi R20,18
	ldi R30,0
	cpc R21,R30
	breq L171
	cpi R20,18
	ldi R30,0
	cpc R21,R30
	brlt L168
L173:
	cpi R20,89
	ldi R30,0
	cpc R21,R30
	breq L172
	xjmp L168
X2:
	.dbline 166
L171:
	.dbline 168
	clr R2
	sts L141,R2
	.dbline 169
	xjmp L169
L172:
	.dbline 171
	clr R2
	sts L141,R2
	.dbline 172
L168:
L169:
	.dbline 174
L143:
	.dbline -2
L139:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r val 16 c
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 185
	.dbline 186
	ldi R24,255
	out 0x1a,R24
	.dbline 187
	out 0x14,R24
	.dbline 188
	cbi 0x11,3
	xjmp L176
L175:
	.dbline 190
	.dbline 191
	xcall _check
	.dbline 192
	lds R2,_rcvF
	tst R2
	breq L178
	.dbline 193
	lds R16,_keyVal
	xcall _keyHandle
L178:
	.dbline 194
L176:
	.dbline 189
	xjmp L175
X5:
	.dbline -2
L174:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\吴泽备份\DVK501光盘内容\M128_E~1\PS2PC~1\PS2SimpleSoft\PS2SimpleSoft.c
_keyVal::
	.blkb 1
	.dbsym e keyVal _keyVal c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
