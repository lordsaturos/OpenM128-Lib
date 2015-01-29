/*********************************************************************
	微 雪 电 子   WaveShare   http://www.waveShare.net            	
		                                                        
目    的:   建立使用MAX232的示例程序
	
目标系统:   基于AVR单片机
		                                                                
应用软件:   ICCAVR
		                                                                
版    本:   Version 1.0                                                          
		                                                                
圆版时间:   2009-03-31
	
开发人员:   zz

说    明:   若用于商业用途，请保留此段文字或注明代码来源
	
	深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权     
*********************************************************************/

/*01010101010101010101010101010101010101010101010101010101010101010101
----------------------------------------------------------------------
版本更新记录：

----------------------------------------------------------------------
实验内容：
先把写数据并显示在MAX232自发自收试验
----------------------------------------------------------------------
硬件连接：
			LCD12864_ST7920			ATmega16
				RS(CS)	--------	VCC
				R/W(SID)--------	MOSI/PB5
				E(SCLK)	--------	SCK/PB7
				PSB		--------	GND
			   
			   DVK501				  ATmega16+
				VCC		---------	  VCC
				GND		---------	  GND
				RXD1   ---------	  PD0(TXD0)
				TXD1	---------	  PD1(RXD0)
				将DB9接口的2脚和3脚短接
----------------------------------------------------------------------
注意事项： 
（1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
（2）请详细阅读“使用必读”及相关资料。
----------------------------------------------------------------------
10101010101010101010101010101010101010101010101010101010101010101010*/

#include <iom16v.h>
#include "D:\ICC_H\LCD12864_ST7920.H"

void UART_init(void)
{
// USART0 initialization
// Communication Parameters: 8 Data, 1 Stop, No Parity
// USART0 Receiver: On
// USART0 Transmitter: On
// USART0 Mode: Asynchronous
// USART0 Baud Rate: 9600
UCSRA=0x00;
UCSRB=0x18;
UCSRC=0x06;
UBRRH=0x00;
UBRRL=0x2F;
}


//从RS232发送一个字节 
void uart_putchar0(char c) 
{ 
    while(!(UCSRA & 0x20));
    UDR = c; 
} 
//从RS232接收一个字节 
unsigned int uart_getchar0(void) 
{ 
    unsigned char status,res; 
    if(!(UCSRA & 0x80)) return -1;        //no data to be received 
    status = UCSRA; 
    res = UDR; 
    if (status & 0x1c) return -1;        // If error, return -1 
    return res; 
}
//等待从RS232接收一个有效的字节 
unsigned char uart_waitchar0(void) 
{ 
    unsigned int c; 
    while((c=uart_getchar0())==-1); 
    return (unsigned char)c; 
} 

void main(void)
{
 	unsigned char tmp;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"MAX232-LCD12864");
	lcd_puts(2,1,"串口  液晶显示");
	lcd_puts(3,1,"内容:");
	
 	UART_init();
	uart_putchar0('c');
	
	tmp=uart_waitchar0();
	
	lcd_putc(3,4,tmp);
	while(1);
}