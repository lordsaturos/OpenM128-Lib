	.module test.c
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
; 目    的:   建立使用PCF8574的示例程序
; 	
; 目标系统:   基于AVR单片机
; 		                                                                
; 应用软件:   ICCAVR
; 		                                                                
; 版    本:   Version 1.0                                                          
; 		                                                                
; 圆版时间:   2009-03-31
; 	
; 开发人员:   zz
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
; 先把写数据并显示在MAX232自发自收试验
; ----------------------------------------------------------------------
; 硬件连接：
; 
; 	
; 			  STK128+     			STK128+
; 			   PA	---------  		 LED0~7
; 			   
; 			   DVK500				  STK128+
; 				VCC		---------	  VCC
; 				GND		---------	  GND
; 				RXD1   ---------	  PE1(TXD0)
; 				TXD1	---------	  PE0(RXD0)
; 				
; 				并将DB9接口的2脚和3脚短接
; 				
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
; #include "D:\ICC_H\LCD12864_ST7920_M48.H"
; 
; void UART_init(void)
; {
; // USART0 initialization
; // Communication Parameters: 8 Data, 1 Stop, No Parity
; // USART0 Receiver: On
; // USART0 Transmitter: On
; // USART0 Mode: Asynchronous
; // USART0 Baud Rate: 9600
; UCSR0A=0x00;
; UCSR0B=0x18;
; UCSR0C=0x06;
; UBRR0H=0x00;
; UBRR0L=0x2F;
; }
; 
; 
; //从RS232发送一个字节 
; void uart_putchar0(char c) 
; { 
;     while(!(UCSR0A & 0x20));
;     UDR0 = c; 
; } 
; //从RS232接收一个字节 
; int uart_getchar0(void) 
; { 
;     char status,res; 
;     if(!(UCSR0A & 0x80)) return -1;        //no data to be received 
;     status = UCSR0A; 
;     res = UDR0; 
;     if (status & 0x1c) return -1;        // If error, return -1 
;     return res; 
; } 
; //等待从RS232接收一个有效的字节 
; char uart_waitchar0(void) 
; { 
;     int c; 
;     while((c=uart_getchar0())==-1); 
;     return c; 
; } 
; 
; void main(void)
; {
;  	char tmp;
;  	DDRA=0xFF;
; 
; 	lcd_init();
; 	lcd_clr();
; 	lcd_puts(1,1,"MAX232-LCD12864");
; 	lcd_puts(2,1,"串口  液晶显示");
; 	lcd_puts(3,1,"内容:");
; 	
;  	UART_init();
; 	uart_putchar0('c');
; 	
; 	tmp=uart_waitchar0();
; 	
; 	lcd_putc(3,4,tmp);
; 	while(1);
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
; }
; }
	clr R20
	clr R21
	xjmp L28
L25:
	.dbline 132
	.dbline 135
L26:
	.dbline 131
	subi R20,255  ; offset = 1
	sbci R21,255
L28:
	.dbline 131
	cp R20,R16
	cpc R21,R17
	brlo L25
	.dbline -2
L24:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 i
	.dbend
	.dbfile D:\ICC_H\LCD12864_ST7920_M48.H
	.dbfunc e SPI_init _SPI_init fV
	.even
_SPI_init::
	.dbline -1
	.dbline 83
	.dbline 84
	ldi R24,255
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
L29:
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
L31:
	.dbline 93
L32:
	.dbline 93
	sbis 0xe,7
	rjmp L31
	.dbline -2
L30:
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
L34:
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
L35:
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
	breq L40
	cpi R20,2
	ldi R30,0
	cpc R21,R30
	breq L41
	cpi R20,3
	ldi R30,0
	cpc R21,R30
	breq L42
	cpi R20,4
	ldi R30,0
	cpc R21,R30
	breq L43
	xjmp L37
X1:
	.dbline 118
L40:
	.dbline 119
	mov R20,R22
	subi R20,129    ; addi 127
	.dbline 120
	xjmp L38
L41:
	.dbline 121
	mov R20,R22
	subi R20,113    ; addi 143
	.dbline 122
	xjmp L38
L42:
	.dbline 123
	mov R20,R22
	subi R20,121    ; addi 135
	.dbline 124
	xjmp L38
L43:
	.dbline 125
	mov R20,R22
	subi R20,105    ; addi 151
	.dbline 126
L37:
	.dbline 127
	.dbline 128
L38:
	.dbline 129
	mov R18,R20
	andi R18,15
	andi R18,#0x0F
	swap R18
	mov R16,R20
	andi R16,240
	xcall _lcd_wrCmd
	.dbline -2
L36:
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
; }
; }
	.dbline 134
; }
	mov R18,R22
	mov R16,R20
	xcall _lcd_set_xy
	.dbline 135
; }
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	.dbline 136
; }
	ldd R18,y+4
	andi R18,15
	andi R18,#0x0F
	swap R18
	ldd R16,y+4
	andi R16,240
	xcall _lcd_wrDat
	.dbline -2
L44:
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
; }
; }
; }
; }
	.dbline 143
; }
; }
; }
	ldd R0,y+9
	std y+0,R0
	movw R30,R28
	ldd R16,z+5
	ldd R17,z+6
	ldd R18,z+7
	ldd R19,z+8
	xcall _speaData
	.dbline 144
; }
	mov R18,R22
	mov R16,R20
	xcall _lcd_set_xy
	.dbline 145
; }
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 146
; }
	ldd R20,y+9
	subi R20,1
	xjmp L49
L46:
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
L47:
	.dbline 146
	dec R20
L49:
	.dbline 146
	cpi R20,0
	brge L46
	.dbline -2
L45:
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
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 158
; }
; }
; }
; }
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
	brsh L51
	.dbline 159
; }
	ldi R24,7
	mov R12,R24
	xjmp L52
L51:
	.dbline 160
; }
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
	brsh L53
	.dbline 161
; }
	ldi R24,6
	mov R12,R24
	xjmp L54
L53:
	.dbline 162
; }
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
	brsh L55
	.dbline 163
; }
	ldi R24,5
	mov R12,R24
	xjmp L56
L55:
	.dbline 164
; }
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
	brsh L57
	.dbline 165
; }
	ldi R24,4
	mov R12,R24
	xjmp L58
L57:
	.dbline 166
; }
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
	brsh L59
	.dbline 167
; }
	ldi R24,3
	mov R12,R24
	xjmp L60
L59:
	.dbline 168
; }
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
	brsh L61
	.dbline 169
; }
	ldi R24,2
	mov R12,R24
	xjmp L62
L61:
	.dbline 171
; }
; }
	clr R12
	inc R12
L62:
L60:
L58:
L56:
L54:
L52:
	.dbline 172
; }
	std y+0,R12
	movw R30,R28
	ldd R16,z+11
	ldd R17,z+12
	ldd R18,z+13
	ldd R19,z+14
	xcall _speaData
	.dbline 174
; }
; }
	mov R18,R14
	mov R16,R10
	xcall _lcd_set_xy
	.dbline 175
; }
	ldi R16,40
	ldi R17,0
	xcall _delay50us
	.dbline 176
; }
	ldd R0,y+15
	cp R12,R0
	brsh L63
	.dbline 177
; }
	.dbline 178
; }
	mov R24,R0
	sub R24,R12
	subi R24,1
	mov R10,R24
	xjmp L68
L65:
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
L66:
	.dbline 178
	dec R10
L68:
	.dbline 178
	mov R24,R10
	cpi R24,0
	brge L65
	.dbline 183
; }
; }
; }
; }
; }
L63:
	.dbline 184
; }
	mov R24,R12
	subi R24,1
	mov R10,R24
	xjmp L72
L69:
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
L70:
	.dbline 184
	dec R10
L72:
	.dbline 184
	mov R24,R10
	cpi R24,0
	brge L69
	.dbline -2
L50:
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
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 193
; }
	mov R18,R10
	mov R16,R22
	xcall _lcd_set_xy
	.dbline 194
; }
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	xjmp L75
L74:
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
L75:
	.dbline 195
; }
	movw R30,R20
	ldd R2,z+0
	tst R2
	brne L74
	.dbline -2
L73:
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
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 205
; }
	mov R18,R12
	mov R16,R10
	xcall _lcd_set_xy
	.dbline 206
; }
	ldi R16,20
	ldi R17,0
	xcall _delay50us
	xjmp L79
L78:
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
L79:
	.dbline 207
; }
	movw R30,R22
	ldd R2,z+0
	tst R2
	brne L78
	.dbline -2
L77:
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
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 217
; }
	ldi R18,16
	clr R16
	xcall _lcd_wrCmd
	.dbline 218
; }
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline -2
L81:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e lcd_init _lcd_init fV
	.even
_lcd_init::
	.dbline -1
	.dbline 222
; }
; }
; }
; }
	.dbline 223
; }
	xcall _SPI_init
	.dbline 226
; }
; }
; }
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline 227
; }
	ldi R18,48
	ldi R16,48
	xcall _lcd_wrCmd
	.dbline 229
; }
; }
	ldi R18,192
	clr R16
	xcall _lcd_wrCmd
	.dbline 230
; }
	ldi R18,16
	clr R16
	xcall _lcd_wrCmd
	.dbline 232
; }
; }
	ldi R18,96
	clr R16
	xcall _lcd_wrCmd
	.dbline 234
; }
; }
	ldi R16,1
	ldi R17,0
	xcall _delay50ms
	.dbline -2
L82:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfile E:\DVK500光盘内容\STK162~1.0\MAX232~1\MAX232_LCD12864\test.c
	.dbfunc e UART_init _UART_init fV
	.even
_UART_init::
	.dbline -1
	.dbline 56
	.dbline 63
	clr R2
	out 0xb,R2
	.dbline 64
	ldi R24,24
	out 0xa,R24
	.dbline 65
	ldi R24,6
	out 0x20,R24
	.dbline 66
	out 0x20,R2
	.dbline 67
	ldi R24,47
	out 0x9,R24
	.dbline -2
L83:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e uart_putchar0 _uart_putchar0 fV
;              c -> R16
	.even
_uart_putchar0::
	.dbline -1
	.dbline 73
L85:
	.dbline 74
L86:
	.dbline 74
	sbis 0xb,5
	rjmp L85
	.dbline 75
	out 0xc,R16
	.dbline -2
L84:
	.dbline 0 ; func end
	ret
	.dbsym r c 16 c
	.dbend
	.dbfunc e uart_getchar0 _uart_getchar0 fI
;            res -> R16
;         status -> R18
	.even
_uart_getchar0::
	.dbline -1
	.dbline 79
	.dbline 81
	sbic 0xb,7
	rjmp L89
	.dbline 81
	ldi R16,-1
	ldi R17,-1
	xjmp L88
L89:
	.dbline 82
	in R18,0xb
	.dbline 83
	in R16,0xc
	.dbline 84
	mov R24,R18
	andi R24,28
	breq L91
	.dbline 84
	ldi R16,-1
	ldi R17,-1
	xjmp L88
L91:
	.dbline 85
	clr R17
	.dbline -2
L88:
	.dbline 0 ; func end
	ret
	.dbsym r res 16 c
	.dbsym r status 18 c
	.dbend
	.dbfunc e uart_waitchar0 _uart_waitchar0 fc
;              c -> R20,R21
	.even
_uart_waitchar0::
	xcall push_gset1
	.dbline -1
	.dbline 89
L94:
	.dbline 91
L95:
	.dbline 91
	xcall _uart_getchar0
	movw R20,R16
	cpi R20,255
	ldi R30,255
	cpc R21,R30
	breq L94
	.dbline 92
	.dbline -2
L93:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r c 20 I
	.dbend
	.dbfunc e main _main fV
;            tmp -> R20
	.even
_main::
	sbiw R28,2
	.dbline -1
	.dbline 96
	.dbline 98
	ldi R24,255
	out 0x1a,R24
	.dbline 100
	xcall _lcd_init
	.dbline 101
	xcall _lcd_clr
	.dbline 102
	ldi R24,<L98
	ldi R25,>L98
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,1
	xcall _lcd_puts
	.dbline 103
	ldi R24,<L99
	ldi R25,>L99
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,2
	xcall _lcd_puts
	.dbline 104
	ldi R24,<L100
	ldi R25,>L100
	std y+1,R25
	std y+0,R24
	ldi R18,1
	ldi R16,3
	xcall _lcd_puts
	.dbline 106
	xcall _UART_init
	.dbline 107
	ldi R16,99
	xcall _uart_putchar0
	.dbline 109
	xcall _uart_waitchar0
	mov R20,R16
	.dbline 111
	std y+0,R20
	ldi R18,4
	ldi R16,3
	xcall _lcd_putc
L101:
	.dbline 112
L102:
	.dbline 112
	xjmp L101
X2:
	.dbline -2
L97:
	adiw R28,2
	.dbline 0 ; func end
	ret
	.dbsym r tmp 20 c
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\DVK500光盘内容\STK162~1.0\MAX232~1\MAX232_LCD12864\test.c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L100:
	.blkb 6
	.area idata
	.byte 196,218,200,221,58,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L99:
	.blkb 15
	.area idata
	.byte 180,174,191,218,32,32,210,186,190,167,207,212,202,190,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
L98:
	.blkb 16
	.area idata
	.byte 'M,'A,'X,50,51,50,45,'L,'C,'D,49,50,56,54,52,0
	.area data(ram, con, rel)
	.dbfile D:\ICC_H\Software.H
