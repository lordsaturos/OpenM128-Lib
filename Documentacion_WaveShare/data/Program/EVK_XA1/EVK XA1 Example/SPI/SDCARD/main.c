/*******************************************************************************
********************************************************************************
*
* File                  : main.c
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
#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "clksys_driver.h"
#include "spi_driver.h"
#include "usart_driver.h"
#include "sdcard_driver.h"


#define USART USARTF0
static int uart_putchar(char c, FILE *stream);
static void uart_init (void);
static FILE mystdout = FDEV_SETUP_STREAM (uart_putchar, NULL, _FDEV_SETUP_WRITE);

#define SD_SPI_INT SPID_INT_vect
#define SD_SPI_PORT PORTD
#define SD_SPI_NUM SPID
SPI_Master_t sdSpiPort;
PORT_t *sdCsPort = &PORTD;

void sdSpiInit(void);

int main(void)
{
	uint8_t txBuffer[512],rxBuffer[256];
	uint8_t BufferNum,n;
	stdout = &mystdout;

	CLKSYS_Enable( OSC_RC32MEN_bm );
	do {} while ( CLKSYS_IsReady( OSC_RC32MRDY_bm ) == 0 );
	CLKSYS_Main_ClockSource_Select( CLK_SCLKSEL_RC32M_gc );
	CLKSYS_Disable( OSC_RC2MEN_bm );

	uart_init();
	sdSpiInit();

	BufferNum = 0;
	do
	{
		txBuffer[BufferNum] = BufferNum;
	}while(++BufferNum);

	if(sdInit() == true) printf("SD Card initial, complete.\r\n");
	else printf("SD Card initial, failed.\r\n");
	
	if(sdWriteBlock(txBuffer,2,0xFE) == true) printf("SD Card write block, complete.\r\n");
	else printf("SD Card write block, failed.\r\n");


	if(sdReadBlock(rxBuffer,2,256) == true) printf("SD Card read block, complete.\r\n");
	else printf("SD Card write block, failed.\r\n");

	n=0;
	BufferNum=0;
	do
	{
		printf("0x%X\t",rxBuffer[BufferNum]);
		n++;
		if(n==8) 
		{	
			printf("\r\n");
			n=0;
		}
	}while(++BufferNum);

	while(1);
}
 
static int uart_putchar (char c, FILE *stream)
{
    if (c == '\n')
        uart_putchar('\r', stream);
 
    // Wait for the transmit buffer to be empty
    while ( !( USART.STATUS & USART_DREIF_bm) );
 
    // Put our character into the transmit buffer
    USART_PutChar(&USART, c);

    return 0;
}
 
 
static void uart_init (void)
{

	PORTF.DIRSET = PIN3_bm;
	PORTF.OUTSET = PIN3_bm;
	PORTF.DIRCLR = PIN2_bm;
	PORTF.OUTSET = PIN2_bm;

	/* USARTF0, 8 Data bits, No Parity, 1 Stop bit. */
	USART_Format_Set(&USART, USART_CHSIZE_8BIT_gc, USART_PMODE_DISABLED_gc, false);

// Init USART.
// We use USARTF0.
// Want 57600 baud. Have a 32 MHz clock. BSCALE = 0
// BSEL = ( 32000000 / (2^0 * 16*57600)) -1 = 34
// Fbaud = 32000000 / (2^0 * 16 * (34+1))  = 57143 bits/sec (57600 -0.8%)
	USART_Baudrate_Set(&USART, 34 , 0);

	/* Enable both RX and TX. */
	USART_Rx_Enable(&USART);
	USART_Tx_Enable(&USART);
}

void sdSpiInit(void)
{
	/* Init SS pin as output with wired AND and pull-up. */
	SD_SPI_PORT.DIRSET = PIN4_bm;
	SD_SPI_PORT.PIN4CTRL = PORT_OPC_WIREDANDPULL_gc;

	/* Set SS output to high. (No slave addressed). */
	SD_SPI_PORT.OUTSET = PIN4_bm;

	/* Initialize SPI master on port C. */
	SPI_MasterInit(&sdSpiPort,
	               &SD_SPI_NUM,
	               &SD_SPI_PORT,
				   false,
	               SPI_MODE_0_gc,
	               SPI_INTLVL_OFF_gc,
	               false,
	               SPI_PRESCALER_DIV128_gc);
}
