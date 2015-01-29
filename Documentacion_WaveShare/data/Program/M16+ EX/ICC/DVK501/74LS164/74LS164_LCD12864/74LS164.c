#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920.H"

#define OUT_DATA	sbi(DDRB,1)	   
#define SET_DATA	sbi(PORTB,1)
#define CLR_DATA	cbi(PORTB,1)

#define OUT_CLK  	sbi(DDRB,0)	   
#define SET_CLK 	sbi(PORTB,0)
#define CLR_CLK  	cbi(PORTB,0)


void setDat(uint8 dat)
{
	uint8 i;

	for(i=0;i<8;i++)
	{
		CLR_CLK;
		if((bool)dat&0x80)
			SET_DATA;
		else
			CLR_DATA;
		SET_CLK;
		dat = dat<<1;
	}
}

void main()
{
    uint8 dat=0x00;	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"74LS164-LCD12864");
	lcd_puts(2,1,"串转并  液晶显示");
	lcd_puts(3,1,"输出内容:");
	OUT_DATA;
	OUT_CLK;
	while(1)
	{
	 	dat++;
	 	setDat(dat);
		lcd_putd(3,6,dat,3);
		delay50ms(10);
	}
}