/********************************************************************************************************
*********************************************************************************************************
*
* File                : usart_example_polled.c
* Hardware Environment:	EVK XA1
* Build Environment   : AVR Studio 4.18 sp1 + Winavr 20100110
* Version             : V1.0
* By                  : Wu Ze
* DATE				  : 20100320
*
*                                  (c) Copyright 2005-2010, WaveShare
*                                       http://www.waveShare.net
*                                          All Rights Reserved
*
*********************************************************************************************************
********************************************************************************************************/
#include <stdio.h>
#include <util/delay.h>
#include "avr_compiler.h"
#include "usart_driver.h"
#include "clksys_driver.h"

#define USART USARTF0

static int uart_putchar(char c, FILE *stream);
static void uart_init (void);
 
static FILE mystdout = FDEV_SETUP_STREAM (uart_putchar, NULL, _FDEV_SETUP_WRITE);
 
 
int main (void)
{
    stdout = &mystdout;
	CLKSYS_Enable( OSC_RC32MEN_bm );
	do {} while ( CLKSYS_IsReady( OSC_RC32MRDY_bm ) == 0 );
	CLKSYS_Main_ClockSource_Select( CLK_SCLKSEL_RC32M_gc );
	CLKSYS_Disable( OSC_RC2MEN_bm );

    uart_init();
    while (1)
	{
        printf("www.waveshare.net\n");
		_delay_ms(500);
	}
}
 
 
static int uart_putchar (char c, FILE *stream)
{
    if (c == '\n')
        uart_putchar('\r', stream);
 
    // Wait for the transmit buffer to be empty
    while ( !( USARTF0.STATUS & USART_DREIF_bm) );
 
    // Put our character into the transmit buffer
    USART_PutChar(&USART, c);
 
    return 0;
}
 
 
static void uart_init (void)
{
	/* This PORT setting is only valid to USARTF0 if other USARTs is used a
	 * different PORT and/or pins is used. */
	/* PIN3 (TXD0) as output. */
	PORTF.DIRSET = PIN3_bm;
	PORTF.OUTSET = PIN3_bm;
	/* PC2 (RXD0) as input. */
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
