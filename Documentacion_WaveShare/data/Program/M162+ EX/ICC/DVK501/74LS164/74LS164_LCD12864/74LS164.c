

#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"

#define OUT_RXD		sbi(DDRB,1)	  
#define SET_RXD		sbi(PORTB,1)
#define CLR_RXD		cbi(PORTB,1)

#define OUT_TXD  	sbi(DDRB,0)	   
#define SET_TXD 	sbi(PORTB,0)
#define CLR_TXD  	cbi(PORTB,0)


void setDat(uint8 dat)
{
	uint8 i;

	for(i=0;i<8;i++)
	{
		CLR_TXD;
		if((bool)dat&0x80)
			SET_RXD;
		else
			CLR_RXD;
		SET_TXD;
		dat = dat<<1;
	}
}

void main()
{
    uint8 dat=99;	
	DDRA=0x00;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"74LS164-LCD12864");
	lcd_puts(2,1,"串转并  液晶显示");
	lcd_puts(3,1,"内容:");
	
	OUT_RXD;
	OUT_TXD;
	setDat(dat);
	delay50ms(1);
	lcd_putd(3,4,PINA,1);
	while(1);
}
