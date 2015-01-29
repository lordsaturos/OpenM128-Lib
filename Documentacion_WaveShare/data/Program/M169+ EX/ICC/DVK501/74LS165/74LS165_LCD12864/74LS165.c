


#include <iom169v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_.H"



#define IN_RXD		cbi(DDRE,0)	   
#define GET_RXD		gbi(PINE,0)

#define OUT_TXD  	sbi(DDRE,1)	   
#define SET_TXD 	sbi(PORTE,1)
#define CLR_TXD  	cbi(PORTE,1)

#define OUT_PL		sbi(DDRE,5)	   
#define SET_PL		sbi(PORTE,5)
#define CLR_PL		cbi(PORTE,5)


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
	uint8 i;	
	OUT_PL;
	OUT_TXD;
	IN_RXD;
   
		
		
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"74LS165-LCD12864");
	lcd_puts(2,1,"并转串  液晶显示");
	lcd_puts(3,1,"内容:");
	while(1)
   {
   	SET_PL;
		CLR_PL;
		SET_PL;
   i = getDat();
	lcd_putd(3,4,i,3);
   delay50ms(1);
   }
}
