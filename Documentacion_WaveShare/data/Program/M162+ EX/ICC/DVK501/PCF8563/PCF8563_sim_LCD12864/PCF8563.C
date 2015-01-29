
 
#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"


#define LED_DDR		DDRB
#define LED_PORT	PORTB

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
#define SCL_PIN		bi(PIND,5)


#include "D:\ICC_H\DVK501_IIC_sim.h"
#include "D:\ICC_H\PCF8563_sim.h"

#define DISP_DDR	DDRB
#define DISP_PORT	PORTB


void main()
{
	uint8 time[3],time_tmp;

	PCF8563_init();
	PCF8563_setTime(1,2,3);	
	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"PCF8563-LCD12864");
	lcd_puts(2,1,"时间芯片测试");
	lcd_puts(3,1,"时间:");

	while(1)
	{
	 		PCF8563_getTime(time);
			
			if(time[0]!=time_tmp)
			{
			 	
				if(time[0]==0) lcd_puts(4,6,"0 ");
				
				lcd_putd(4,6,time[0],2);
				lcd_putd(4,2,time[2],2);
				lcd_putc(4,3,':');
				lcd_putd(4,4,time[1],2);
				lcd_putc(4,5,':');
				lcd_putd(4,6,time[0],2);
				time_tmp=time[0];
			}
			delay50ms(5);
	}
}