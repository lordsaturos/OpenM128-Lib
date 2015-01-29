

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_at24cxx_port.h>
#include <ws_lcd_ST7920_port.h>


int main(void)
{
	uint8_t adr,WrDat,t;	
	uint8_t *pRdDat=&t;	

	st7920LcdInit(); 
	showLine(0,0,lcd_buffer,"深圳微雪电子");
	showLine(0,1,lcd_buffer,"AT24CX实验");
	showLine(0,2,lcd_buffer,"读取结果：");
	refreshLCD(lcd_buffer); 
	adr=0x00;
	WrDat='P';
	twi_init();		
	if( I2C_Write(AT24C_WR_ADDR,adr,WrDat)!=I2C_ERR )	
	{
		_delay_ms(50);	
		if( I2C_Read(AT24C_WR_ADDR,adr,AT24C_RD_ADDR,pRdDat)!=I2C_ERR )	
			showLine(10,2,lcd_buffer,"%c",*pRdDat);
		else
			showLine(10,2,lcd_buffer,"error");	
	}	
	else
		showLine(10,2,lcd_buffer,"error");	

	refreshLCD(lcd_buffer); 
	while(1);
}
