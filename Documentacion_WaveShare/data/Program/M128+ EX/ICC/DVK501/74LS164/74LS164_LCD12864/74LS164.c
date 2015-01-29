


#include <iom128v.h>
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_.H"

#define OUT_RXD		sbi(DDRB,6)	   
#define SET_RXD		sbi(PORTB,6)
#define CLR_RXD		cbi(PORTB,6)

#define OUT_TXD  	sbi(DDRB,7)	   
#define SET_TXD 	sbi(PORTB,7)
#define CLR_TXD  	cbi(PORTB,7)


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
    uint8 dat=0x55;	
	DDRA=0x00;
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"74LS164-LCD12864");
	lcd_puts(2,1,"��ת��  Һ����ʾ");
	lcd_puts(3,1,"     (ʮ����)");
	
	OUT_RXD;
	OUT_TXD;
	setDat(dat);
	delay50ms(1);
	lcd_putd(3,2,0x55,1);
	while(1);
}
