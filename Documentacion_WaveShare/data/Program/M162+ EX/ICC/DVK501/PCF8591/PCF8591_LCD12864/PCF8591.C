

#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"

#define WR_DADR		0x90	
#define RD_DADR		0x91	

void sDelay()
{
   unsigned char n=0x07;
   while(n--);
}

#define DELAY_NOP  sDelay()


#define SDA_IN		{cbi(DDRD,4);DELAY_NOP;}
#define SDA_OUT		{sbi(DDRD,4);DELAY_NOP;}
#define SDA_SET		{sbi(PORTD,4);DELAY_NOP;}
#define SDA_CLR		{cbi(PORTD,4);DELAY_NOP;}
#define SDA_PIN		gbi(PIND,4)


#define SCL_IN  	{cbi(DDRD,5);DELAY_NOP;}
#define SCL_OUT		{sbi(DDRD,5);DELAY_NOP;}
#define SCL_SET		{sbi(PORTD,5);DELAY_NOP;}
#define SCL_CLR		{cbi(PORTD,5);DELAY_NOP;}
#define SCL_PIN		gbi(PIND,5)


#include "D:\ICC_H\DVK501_IIC_sim.h"
#include "D:\ICC_H\PCF8591_sim.H"  

#define DISP_DDR	DDRB
#define DISP_PORT	PORTB

void delay250ms(void)
{
	uchar delay_num1,delay_num2;
	for(delay_num1=0;delay_num1<=250;delay_num1++)
		for(delay_num2=0;delay_num2<=250;delay_num2++) {}  
}



void main(void)
{
    unsigned char ad_tmp2;
	unsigned int ad_tmp0,ad_tmp1;
	
	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AD测试程序");
	lcd_puts(2,1,"PCF8591");
	lcd_puts(3,1,"当前电压为:");	
 	 while(1)
	 {
			ad_tmp2=PCF8591_getAD(0x00);
			ad_tmp0=(unsigned int)ad_tmp2;
			if(ad_tmp0!=ad_tmp1)
			{
			 	ad_tmp2=(unsigned char)((ad_tmp0*5)>>8);
			 	lcd_putd(4,4,ad_tmp2,0);
				lcd_putc(4,5,'.');
				ad_tmp2=(unsigned char)(ad_tmp0*5);
				lcd_putd(4,6,ad_tmp2,0);
				lcd_putc(4,7,'V');
				ad_tmp1 = ad_tmp0;
			}
			ad_tmp0=(unsigned int)ad_tmp2;
			delay50ms(1);
		}
}