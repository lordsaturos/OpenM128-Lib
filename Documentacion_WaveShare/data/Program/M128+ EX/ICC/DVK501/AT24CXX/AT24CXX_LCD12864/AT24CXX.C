



#include <iom128v.h>
#include "D:\ICC_H\LCD12864_ST7920_.H"

#define RD_DADR		0xA1		
#define WR_DADR		0xA0		
#include "D:\ICC_H\AT24CXX.H"


void twi_init()	 	 	
{
	TWBR = 0X03;		
	TWSR &= 0XFC;		
}

void main(void)
{
	uint8 adr,WrDat,t;	
	uint8 *pRdDat=&t;	

	twi_init();
	
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"AT24CXX-LCD12864");
	lcd_puts(2,1,"eeprom  “∫æßœ‘ æ");
	lcd_puts(3,1,"ƒ⁄»›:");

	adr=0x01;
	WrDat=123;
	if( AT24CXX_Write(adr,WrDat)!=AT24CXX_ERR )	
	{
		delay50ms(1);	
		if( AT24CXX_Read(adr,pRdDat)!=AT24CXX_ERR )	
			lcd_putd(3,4,*pRdDat,1);
		else
			lcd_puts(3,1,"read error"); 		
	}	
	else
		lcd_puts(4,1,"write error");	  
	while(1);
}