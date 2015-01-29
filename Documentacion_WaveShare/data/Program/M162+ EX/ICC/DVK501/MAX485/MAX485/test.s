	.module test.c
	.area text(rom, con, rel)
	.dbfile E:\吴泽程序备份\DVK500\新建文件夹\STK162~1.0\MAX485~1\test.c
	.dbfunc e UART_init _UART_init fV
	.even
_UART_init::
	.dbline -1
	.dbline 54
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
; 先把写数据并显示在MX485自发自收试验
; ----------------------------------------------------------------------
; 硬件连接：
; 		 	  DVK500				 DVK500
; 				U1:A	     ---------    U2:A
; 				U1:B		---------	  U2:B
; 				U1:EN		---------	  VCC
; 				U2:EN		---------	  GND
; 	
; 			  STK128+     			STK128+
; 			   PA	---------  		 LED0~7
; 
; 			   DVK500				  STK128+
; 				VCC		---------	  VCC
; 				GND		---------	  GND
; 				U1:DI   ---------	  PE1(TXD0)
; 				U2:RO	---------	  PE0(RXD0)
; 				
; ----------------------------------------------------------------------
; 注意事项： 
; （1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
; （2）请详细阅读“使用必读”及相关资料。
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom162v.h>
; void UART_init(void)
; {
	.dbline 61
; // USART0 initialization
; // Communication Parameters: 8 Data, 1 Stop, No Parity
; // USART0 Receiver: On
; // USART0 Transmitter: On
; // USART0 Mode: Asynchronous
; // USART0 Baud Rate: 9600
; UCSR0A=0x00;
	clr R2
	out 0xb,R2
	.dbline 62
; UCSR0B=0x18;
	ldi R24,24
	out 0xa,R24
	.dbline 63
; UCSR0C=0x06;
	ldi R24,6
	out 0x20,R24
	.dbline 64
; UBRR0H=0x00;
	out 0x20,R2
	.dbline 65
; UBRR0L=0x2F;
	ldi R24,47
	out 0x9,R24
	.dbline -2
L1:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e uart_putchar0 _uart_putchar0 fV
;              c -> R16
	.even
_uart_putchar0::
	.dbline -1
	.dbline 71
; }
; 
; 
; //从RS232发送一个字节 
; void uart_putchar0(char c) 
; { 
L3:
	.dbline 72
L4:
	.dbline 72
;     while(!(UCSR0A & 0x20));
	sbis 0xb,5
	rjmp L3
	.dbline 73
;     UDR0 = c; 
	out 0xc,R16
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbsym r c 16 c
	.dbend
	.dbfunc e uart_getchar0 _uart_getchar0 fi
;            res -> R16
;         status -> R18
	.even
_uart_getchar0::
	.dbline -1
	.dbline 77
; } 
; //从RS232接收一个字节 
; unsigned int uart_getchar0(void) 
; { 
	.dbline 79
;     unsigned char status,res; 
;     if(!(UCSR0A & 0x80)) return -1;        //no data to be received 
	sbic 0xb,7
	rjmp L7
	.dbline 79
	ldi R16,-1
	ldi R17,-1
	xjmp L6
L7:
	.dbline 80
;     status = UCSR0A; 
	in R18,0xb
	.dbline 81
;     res = UDR0; 
	in R16,0xc
	.dbline 82
;     if (status & 0x1c) return -1;        // If error, return -1 
	mov R24,R18
	andi R24,28
	breq L9
	.dbline 82
	ldi R16,-1
	ldi R17,-1
	xjmp L6
L9:
	.dbline 83
;     return res; 
	clr R17
	.dbline -2
L6:
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
	.dbline 87
; } 
; //等待从RS232接收一个有效的字节 
; unsigned char uart_waitchar0(void) 
; { 
L12:
	.dbline 89
L13:
	.dbline 89
;     unsigned int c; 
;     while((c=uart_getchar0())==-1); 
	xcall _uart_getchar0
	movw R20,R16
	cpi R20,255
	ldi R30,255
	cpc R21,R30
	breq L12
	.dbline 90
;     return (unsigned char)c; 
	.dbline -2
L11:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r c 20 i
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 94
; } 
; 
; void main(void)
; {
	.dbline 95
;  	DDRA=0xFF;
	ldi R24,255
	out 0x1a,R24
	.dbline 96
;  	UART_init();
	xcall _UART_init
	.dbline 97
; 	uart_putchar0(0x55);
	ldi R16,85
	xcall _uart_putchar0
	.dbline 99
; 	
; 	PORTA=uart_waitchar0();
	xcall _uart_waitchar0
	out 0x1b,R16
L16:
	.dbline 100
L17:
	.dbline 100
	xjmp L16
X0:
	.dbline -2
L15:
	.dbline 0 ; func end
	ret
	.dbend
