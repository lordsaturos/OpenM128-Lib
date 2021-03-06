/*********************************************************************
	微 雪 电 子   WaveShare   http://www.waveShare.net            	
		                                                        
目    的:   建立使用ICP1做周期测量的示例程序（周期超过65535US）
	
目标系统:   基于AVR单片机
		                                                                
应用软件:   ICCAVR
		                                                                
版    本:   Version 1.0                                                          
		                                                                
圆版时间:   2005-06-25
	
开发人员:   SEE

说    明:   若用于商业用途，请保留此段文字或注明代码来源
	
	深 圳 市 微 雪 电 子 有 限 公 司 保 留 所 有 的 版 权     
*********************************************************************/

/*01010101010101010101010101010101010101010101010101010101010101010101
---------------------------------------------------------------------
版本更新记录：

----------------------------------------------------------------------
实验内容：
使用TIMER1做周期长度超过65535us的周期测量。
----------------------------------------------------------------------
硬件连接：	
将Lcd1602插入主板的Lcd1602插槽,
使用连接线将LCD1602的引针接口连接到MCU：
//LCD1602，4位接口，即使用D4-D7数据口，D0-D3不接入MCU
//PIN1 --- GND
//PIN2 --- VCC
//PIN3 --- V0
//PIN4 --- RS --- PB5
//PIN5 --- R/W --- PB6
//PIN6 --- E --- PB7
//PIN7 --- D0
//PIN8 --- D1
//PIN9 --- D2
//PIN10 --- D3
//PIN11 --- D4 --- PD4
//PIN12 --- D5 --- PD5
//PIN13 --- D6 --- PD6
//PIN14 --- D7 --- PD7
//PIN15 --- VCC
//PIN16 --- GND
----------------------------------------------------------------------
注意事项： 
（1）若有加载库函数，请将光盘根目录下的“库函数”下的“ICC_H”文件夹拷到D盘
（2）请详细阅读“使用必读”及相关资料。
		
----------------------------------------------------------------------
10101010101010101010101010101010101010101010101010101010101010101010*/

#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"

/* control port */
#define SET_RS  sbi(PORTB,5)
#define CLR_RS  cbi(PORTB,5)
#define OUT_RS  sbi(DDRB,5)

#define SET_RW  sbi(PORTB,6)
#define CLR_RW  cbi(PORTB,6)
#define OUT_RW  sbi(DDRB,6)

#define SET_E   sbi(PORTB,7)
#define CLR_E   cbi(PORTB,7)
#define OUT_E   sbi(DDRB,7)

/* data port */
#define SET_D4  sbi(PORTD,4)
#define CLR_D4  cbi(PORTD,4)
#define OUT_D4  sbi(DDRD,4)

#define SET_D5  sbi(PORTD,5)
#define CLR_D5  cbi(PORTD,5)
#define OUT_D5  sbi(DDRD,5)

#define SET_D6  sbi(PORTD,6)
#define CLR_D6  cbi(PORTD,6)
#define OUT_D6  sbi(DDRD,6)

#define SET_D7  sbi(PORTD,7)
#define CLR_D7  cbi(PORTD,7)
#define OUT_D7  sbi(DDRD,7)

/* busy port */
#define GET_BF	gbi(PIND,7)
#define OUT_BF	sbi(DDRD,7)
#define IN_BF	cbi(DDRD,7)

#include "D:\ICC_H\LCD1602_.H"

uint32 cycle;  
uint16 T1OvfTimes=0;

/*--------------------------------------------------------------------
函数名称：
函数功能：
注意事项：基于7.3728M晶振
提示说明：
输    入：
返    回：
--------------------------------------------------------------------*/
void timer1_init(void)
{
	TCCR1B = 0x00;		//stop
	TCNT1 = 0; 			//setup
	ICR1 =  0;
	TCCR1A = 0x00;
	TCCR1B = 0xC2;		//start Timer, prescale:8
}		
/*--------------------------------------------------------------------
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
--------------------------------------------------------------------*/
#pragma interrupt_handler timer1_capt_isr:6
void timer1_capt_isr(void)
{
	TCCR1B = 0x00;		//stop
	cycle=ICR1-24;
	if(T1OvfTimes!=0)
		cycle += (uint32)T1OvfTimes*65535;
	T1OvfTimes = 0;
	ICR1=0;
	TCNT1=0;
	TCCR1B=0XC2;
}
/*--------------------------------------------------------------------
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
--------------------------------------------------------------------*/
#pragma interrupt_handler timer1_ovf_isr:9
void timer1_ovf_isr(void)
{
	T1OvfTimes++;
}
/*--------------------------------------------------------------------
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
--------------------------------------------------------------------*/
void mcu_init(void)
{
	CLI();
	timer1_init();
	MCUCR = 0x00;
	GICR  = 0x00;
	TIMSK = 0x24; 
	SEI(); 
}
/*--------------------------------------------------------------------
函数名称：
函数功能：
注意事项：
提示说明：
输    入：
返    回：
--------------------------------------------------------------------*/
void main(void)
{
	mcu_init();
	LCD_DDR_OUT;	//set lcd port as output
	DDRB = 0X00;	//set ICP port as input

	LCD1602_init();
	LCD1602_puts(0x80,"Cycle:   s ms us");
	while(1)
	{ 
		LCD1602_putd(0xcf,cycle,7);
		delay50ms(10);
	}
}