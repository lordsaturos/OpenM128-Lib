



#include <iom128v.h>
#include "D:\ICC_H\LCD12864_ST7920_.H"

#define WR_DADR		0x90	
#define RD_DADR		0x91	
#include "D:\ICC_H\PCF8591.H"

#define DISP_DDR	DDRA
#define DISP_PORT	PORTA


void errDisp()				
{
 	DISP_PORT = 0X55;
	delay50ms(4);
	DISP_PORT = 0X00;
	delay50ms(4);
	DISP_PORT = 0XAA;
	delay50ms(4);
	DISP_PORT = 0X00;
	delay50ms(4);
}  



void main(void)
{
    unsigned char ad_tmp2;
	unsigned int ad_tmp0,ad_tmp1;
	DDRF=0xFF;
	TWBR = 0X12;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AD测试程序");
	lcd_puts(2,1,"PCF8591");
	lcd_puts(3,1,"当前电压为:");	
 	 while(1)
	 {
			PCF8591_getAD(MODE0,CHNL0,&ad_tmp2);
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