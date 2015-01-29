/********************************************************************************************************
*********************************************************************************************************
*
* File                : USB.c
* Hardware Environment:	EVK XA1
* Build Environment   : AVR Studio 4.18 sp1 + Winavr 20100110
* Version             : V1.0
* By                  : Wu Ze
* DATE				  : 20100420
*
*                                  (c) Copyright 2005-2010, WaveShare
*                                       http://www.waveShare.net
*                                          All Rights Reserved
*
*********************************************************************************************************
********************************************************************************************************/
#include <avr/io.h>
#include <util/delay.h>
#include "clksys_driver.h"
#include "usart_driver.h"



/*! Define that selects the Usart used in example. */
#define USART USARTD0

/*! USART data struct used in example. */
USART_data_t USART_data;

/*! Array to put received data in. */
uint8_t receiveArray[3];


/*! \brief Example application.
 *
 *  Example application. This example configures USARTC0 for with the parameters:
 *      - 8 bit character size
 *      - No parity
 *      - 1 stop bit
 *      - 9600 Baud
 *
 *  This function then sends three bytes and tests if the received data is
 *  equal to the sent data. The code can be tested by connecting PC3 to PC2. If
 *  the variable 'success' is true at the end of the function, the three bytes
 *  have been successfully sent and received.
*/
int main(void)
{

	CLKSYS_XOSC_Config( OSC_FRQRANGE_2TO9_gc,
	                    false,
	                    OSC_XOSCSEL_XTAL_1KCLK_gc );
	CLKSYS_Enable( OSC_XOSCEN_bm );
	do {} while ( CLKSYS_IsReady( OSC_XOSCRDY_bm ) == 0 );
	
	CLKSYS_PLL_Config( OSC_PLLSRC_XOSC_gc, 4 );
	CLKSYS_Enable( OSC_PLLEN_bm );
	do {} while ( CLKSYS_IsReady( OSC_PLLRDY_bm ) == 0 );
	CLKSYS_Main_ClockSource_Select( CLK_SCLKSEL_PLL_gc );
	CLKSYS_Disable( OSC_RC2MEN_bm );

	PORTD.DIRSET   = PIN3_bm;

	PORTD.DIRCLR   = PIN2_bm;

	/* Use USARTC0 and initialize buffers. */
	USART_InterruptDriver_Initialize(&USART_data, &USART, USART_DREINTLVL_LO_gc);

	/* USARTC0, 8 Data bits, No Parity, 1 Stop bit. */
	USART_Format_Set(USART_data.usart, USART_CHSIZE_8BIT_gc,
                     USART_PMODE_DISABLED_gc, false);

	/* Enable RXC interrupt. */
	USART_RxdInterruptLevel_Set(USART_data.usart, USART_RXCINTLVL_LO_gc);

	// Init USART.
	// We use USARTF0.
	// Want 57600 baud. Have a 32 MHz clock. BSCALE = 0
	// BSEL = ( 32000000 / (2^0 * 16*57600)) -1 = 34
	// Fbaud = 32000000 / (2^0 * 16 * (34+1))  = 57143 bits/sec (57600 -0.8%)
	USART_Baudrate_Set(&USART, 34 , 0);

	/* Enable both RX and TX. */
	USART_Rx_Enable(USART_data.usart);
	USART_Tx_Enable(USART_data.usart);

	/* Enable PMIC interrupt level low. */
	PMIC.CTRL |= PMIC_LOLVLEX_bm;

	/* Enable global interrupts. */
	sei();

	while(1){

	while (USART_RXBufferData_Available(&USART_data) ==false);
	receiveArray[0] = USART_RXBuffer_GetByte(&USART_data);
	while(USART_TXBuffer_PutByte(&USART_data, receiveArray[0])==false);

	}
}


/*! \brief Receive complete interrupt service routine.
 *
 *  Receive complete interrupt service routine.
 *  Calls the common receive complete handler with pointer to the correct USART
 *  as argument.
 */
ISR(USARTD0_RXC_vect)
{
	USART_RXComplete(&USART_data);
}


/*! \brief Data register empty  interrupt service routine.
 *
 *  Data register empty  interrupt service routine.
 *  Calls the common data register empty complete handler with pointer to the
 *  correct USART as argument.
 */
ISR(USARTD0_DRE_vect)
{
	USART_DataRegEmpty(&USART_data);
}

