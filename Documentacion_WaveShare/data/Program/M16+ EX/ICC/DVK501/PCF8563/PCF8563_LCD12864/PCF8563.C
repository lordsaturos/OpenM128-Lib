#include <iom16v.h>
#include "D:\ICC_H\LCD12864_ST7920.H"

#define WR_DADR		0xA2
#define RD_DADR		0xA3
#include "D:\ICC_H\PCF8563.H"

#define DISP_DDR	DDRA
#define DISP_PORT	PORTA

void errDisp()	  	   	
{
 	DISP_PORT = 0XAA;
	delay50ms(2);
	DISP_PORT = 0X00;
	delay50ms(2);
 	DISP_PORT = 0X55;
	delay50ms(2);
	DISP_PORT = 0X00;
	delay50ms(2);
}

void twi_init()	 	 	
{
	TWBR = 0X03;		
	TWSR &= 0XFC;		
}

void main()
{
	uint8 time[3],time_tmp;
	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"PCF8563-LCD12864");
	lcd_puts(2,1,"时间芯片测试");
	lcd_puts(3,1,"时间:");

	PCF8563_init();
	PCF8563_setTime(1,2,3);	
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