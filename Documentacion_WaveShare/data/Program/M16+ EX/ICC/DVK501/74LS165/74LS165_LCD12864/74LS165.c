#include <iom16v.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920.H"



#define SOURCE_DDR  DDRD
#define SOURCE_PORT PORTD

#define IN_RXD		cbi(DDRD,0)	   
#define GET_RXD		gbi(PIND,0)

#define OUT_TXD  	sbi(DDRD,1)	   
#define SET_TXD 	sbi(PORTD,1)
#define CLR_TXD  	cbi(PORTD,1)

#define OUT_PL		sbi(DDRC,1)	   
#define SET_PL		sbi(PORTC,1)
#define CLR_PL		cbi(PORTC,1)

uint8 getDat()
{
	uint8 i,dat;
	for(i=0;i<8;i++)
	{
		CLR_TXD;
		dat = dat<<1;
		if(GET_RXD)
			dat |= 0x01;
		SET_TXD;
	}
	return dat;
}

void main()
{
	uint8 i1,i2;	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"74LS165-LCD12864");
	lcd_puts(2,1,"并转串  液晶显示");
	lcd_puts(3,1,"内容:");
	
	SOURCE_DDR = 0XFF;
	OUT_PL;
	OUT_TXD;
	IN_RXD;
	while(1)
	{
		SET_PL;
		CLR_PL;
		SET_PL;
	    i1=getDat();
	    if(i1!=i2)
		{
		i2=i1;
		lcd_puts(3,4,"   ");
		lcd_putd(3,4,i2,1);
		}
		delay50ms(5);
		

	}
}
