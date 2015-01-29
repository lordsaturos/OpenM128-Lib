

#define _DVK501_M128_EX_ 1
#include <avr/io.h>
#include <util/delay.h>
#include <ws_iic_port.h>
#include <ws_at24cxx_port.h>

#define DISP_DDR	DDRA
#define DISP_PORT	PORTA

void errDisp()				
{
 	DISP_PORT = 0X55;
	_delay_ms(500);
	DISP_PORT = 0X00;
	_delay_ms(500);
	DISP_PORT = 0XAA;
	_delay_ms(500);
	DISP_PORT = 0X00;
	_delay_ms(500);
}

int main(void)
{
	uint8_t WrDat,t;	
	uint8_t *pRdDat=&t;	
	
	DISP_DDR = 0XFF;
	twi_init();
		
	for(WrDat=0;WrDat<255;WrDat++)		
	{
	if( I2C_Write(AT24C_WR_ADDR,WrDat,WrDat)!=I2C_ERR )	
	{
		_delay_ms(50);	
		if( I2C_Read(AT24C_WR_ADDR,WrDat,AT24C_RD_ADDR,pRdDat)!=I2C_ERR )	
			PORTA =*pRdDat;   		
		else
			errDisp();
		
	}	
	else
		errDisp();
	_delay_ms(1000);
	}  
	while(1);
}
