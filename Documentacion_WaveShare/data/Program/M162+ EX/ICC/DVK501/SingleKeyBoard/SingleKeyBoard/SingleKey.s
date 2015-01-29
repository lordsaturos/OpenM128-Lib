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
	xcall push_arg4
	xcall push_gset4
	sbiw R28,8
	ldd R12,y+20
	.dbline -1
	.dbline 116
; /*********************************************************************
;     微 雪 电 子   WaveShare   http://www.waveShare.net            	
;                                                                     
; 目    的:   测试"SingleKeyBoard"模块
; 
; 目标系统:   基于任何AVR单片机
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
;     深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; 版本更新记录：
; 
; ----------------------------------------------------------------------
; 实验内容：
; 循环扫描PA口接入的按键，并使用PB口的LED指示灯指示按键的码值。
; ----------------------------------------------------------------------
; 硬件连接：
; 将PB口的LED指示灯使能开关切换到"ON"状态，使其指示按键的码值。
; SingleKeyBoard：K0----K7
;                  |    |
; SMK1632：       PA0--PA7
; ----------------------------------------------------------------------
; 注意事项： 
; （1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
; （2）请详细阅读“使用必读”及相关资料。
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom162v.h>
; #define NO_INCLUDE_I2C_H 1
; #include "D:\ICC_H\CmmICC.H"
; 
; #define LED_DDR  DDRB
; #define LED_P0RT PORTB
; #define KEY_DDR  DDRA
; #define KEY_PORT PORTA
; #define KEY_PIN  PINA
; 
; /*--------------------------------------------------------------------
; 函数名称：键盘扫描
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
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
; 函数名称：
; 函数功能：
; 注意事项：
; 提示说明：
; 输    入：
; 返    回：
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
; }
	.dbline 122
; }
; }
	xjmp L19
L16:
	.dbline 123
; }
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
; }
; }
; }
; }
; }
; }
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
; }
; }
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
	.dbfile E:\吴泽程序备份\DVK500\新建文件夹\STK162~1.0\SINGLE~1\SingleKeyBoard\SingleKey.c
	.dbfunc e scanKey _scanKey fV
	.even
_scanKey::
	.dbline -1
	.dbline 60
	.dbline 61
	clr R2
	out 0x1a,R2
	.dbline 62
	ldi R24,255
	out 0x1b,R24
	.dbline 63
	in R24,0x19
	cpi R24,254
	brne L30
	.dbline 64
	ldi R24,1
	out 0x18,R24
L30:
	.dbline 65
	in R24,0x19
	cpi R24,253
	brne L32
	.dbline 66
	ldi R24,2
	out 0x18,R24
L32:
	.dbline 67
	in R24,0x19
	cpi R24,251
	brne L34
	.dbline 68
	ldi R24,4
	out 0x18,R24
L34:
	.dbline 69
	in R24,0x19
	cpi R24,247
	brne L36
	.dbline 70
	ldi R24,8
	out 0x18,R24
L36:
	.dbline 71
	in R24,0x19
	cpi R24,239
	brne L38
	.dbline 72
	ldi R24,16
	out 0x18,R24
L38:
	.dbline 73
	in R24,0x19
	cpi R24,223
	brne L40
	.dbline 74
	ldi R24,32
	out 0x18,R24
L40:
	.dbline 75
	in R24,0x19
	cpi R24,191
	brne L42
	.dbline 76
	ldi R24,64
	out 0x18,R24
L42:
	.dbline 77
	in R24,0x19
	cpi R24,127
	brne L44
	.dbline 78
	ldi R24,128
	out 0x18,R24
L44:
	.dbline -2
L29:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 89
	.dbline 90
	ldi R24,255
	out 0x17,R24
	xjmp L48
L47:
	.dbline 92
	xcall _scanKey
L48:
	.dbline 91
	xjmp L47
X1:
	.dbline -2
L46:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\吴泽程序备份\DVK500\新建文件夹\STK162~1.0\SINGLE~1\SingleKeyBoard\SingleKey.c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
