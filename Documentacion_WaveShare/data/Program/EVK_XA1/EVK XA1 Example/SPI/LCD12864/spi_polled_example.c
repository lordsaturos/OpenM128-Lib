/*******************************************************************************
********************************************************************************
*
* File                  : spi_polled_example.c
* Hardware Environment  :	
* Build Environment     : AVR Studio 4.18 + Winavr 20100110
* By                    : Wu Ze
* DATE                  : 2010-04-20
*
*                   (c) Copyright 2005-2010, WaveShare
*                         http://www.waveShare.net
*                            All Rights Reserved
*
********************************************************************************
*******************************************************************************/
#include "avr_compiler.h"
#include "spi_driver.h"
#include <util/delay.h>

/* Global variables */
uint8_t lcd_buffer[64];

/*! \brief SPI master module on PORT C. */
SPI_Master_t spiMasterC;

#include "ws_lcd_st7920.h"


int main(void)
{
	/* Init SS pin as output with wired AND and pull-up. */
	PORTC.DIRSET = PIN4_bm;
	PORTC.PIN4CTRL = PORT_OPC_WIREDANDPULL_gc;
	
	/* Set SS output to high. (No slave addressed). */
	PORTC.OUTSET = PIN4_bm;

	_delay_ms(100);
	/* Initialize SPI master on port C. */
	SPI_MasterInit(&spiMasterC,
	               &SPIC,
	               &PORTC,
	               false,
	               SPI_MODE_0_gc,
	               SPI_INTLVL_OFF_gc,
	               false,
	               SPI_PRESCALER_DIV4_gc);


	sendCodeST7920(0x0C);//整体显示
	sendCodeST7920(0x01);//清屏
	_delay_ms(3);
	memset(lcd_buffer,' ',sizeof(lcd_buffer));
	showLine(4,0,lcd_buffer,"微雪电子");
	showLine(3,1,lcd_buffer,"Waveshare");
	refreshLCD(lcd_buffer);
	PORTC.DIR=0xFF;
	PORTC.OUT = ~0xFD;
	while(1);

}
