
#include <iom162v.h>
#define NO_INCLUDE_I2C_H 1
#include "D:\ICC_H\CmmICC.H"
#include "D:\ICC_H\LCD12864_ST7920_M48.H"

#define DISP_DDR    DDRB
#define DISP_PORT   PORTB

#define SOURCE_DDR  DDRA
#define SOURCE_PORT PORTA

#define IN_RXD		cbi(DDRD,0)	   
#define GET_RXD		gbi(PIND,0)

#define OUT_TXD  	sbi(DDRD,1)	  
#define SET_TXD 	sbi(PORTD,1)
#define CLR_TXD  	cbi(PORTD,1)

#define OUT_PL		sbi(DDRD,4)	   
#define SET_PL		sbi(PORTD,4)
#define CLR_PL		cbi(PORTD,4)


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
	SOURCE_DDR = 0XFF;
	OUT_PL;
	OUT_TXD;
	IN_RXD;

		SOURCE_PORT =99;
		SET_PL;
		CLR_PL;
		SET_PL;
		i = getDat();
		
	lcd_init();
	lcd_clr();
	lcd_puts(1,1,"74LS165-LCD12864");
	lcd_puts(2,1,"��ת��  Һ����ʾ");
	lcd_puts(3,1,"����:");
	lcd_putd(3,4,i,1);
	while(1);
}