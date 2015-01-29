/* This file has been prepared for Doxygen automatic documentation generation.*/
/*! \file *********************************************************************
 *
 * \brief  XMEGA ADC driver example source.
 *
 *      This file contains an example application that demonstrates the ADC
 *      driver. It shows how to set up the ADC to measure the voltage on four
 *      analog inputs. It uses the internal VCC/1.6 voltage as conversion reference.
 *      A number of samples are stored in an SRAM table for later examination.
 *
 *      The recommended test setup for this application is to connect five
 *      10k resistors in series between GND and VCC source and connect the four
 *      resistor junctions to analog input ADCA4, ADCA5, ADCA6 and ADCA7.
 *
 *      To achieve the best performance, the voltage reference can be decoupled
 *      through the external ADC reference pins.
 *
 * \par Application note:
 *      AVR1300: Using the XMEGA ADC
 *
 * \par Documentation
 *      For comprehensive code documentation, supported compilers, compiler
 *      settings and supported devices see readme.html
 *
 * \author
 *      Atmel Corporation: http://www.atmel.com \n
 *      Support email: avr@atmel.com
 *
 * $Revision: 644 $
 * $Date: 2007-10-02 11:17:38 +0200 (ty, 02 okt 2007) $  \n
 *
 * Copyright (c) 2008, Atmel Corporation All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * 3. The name of ATMEL may not be used to endorse or promote products derived
 * from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE EXPRESSLY AND
 * SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************/
#include <stdio.h>
#include <util/delay.h>
//#include "avr_compiler.h"
#include "adc_driver.h"
#include "clksys_driver.h"
#include "usart_driver.h"


#define USART USARTF0

static int uart_putchar(char c, FILE *stream);
static void uart_init (void);
 
static FILE mystdout = FDEV_SETUP_STREAM (uart_putchar, NULL, _FDEV_SETUP_WRITE);


/*! How many samples for each ADC channel.*/
#define SAMPLE_COUNT 10

/*! Sample storage (all four channels).*/
int16_t adcSamples[3];

volatile int8_t offset;

int main(void)
{
	stdout = &mystdout;

	CLKSYS_Enable( OSC_RC32MEN_bm );
	do {} while ( CLKSYS_IsReady( OSC_RC32MRDY_bm ) == 0 );
	CLKSYS_Main_ClockSource_Select( CLK_SCLKSEL_RC32M_gc );
	CLKSYS_Disable( OSC_RC2MEN_bm );

	uart_init();
	
	/* Move stored calibration values to ADC A. */
	ADC_CalibrationValues_Load(&ADCA);

	/* Set up ADC A to have signed conversion mode and 12 bit resolution. */
  	ADC_ConvMode_and_Resolution_Config(&ADCA, ADC_ConvMode_Signed, ADC_RESOLUTION_12BIT_gc);

	/* Set sample rate. */
	ADC_Prescaler_Config(&ADCA, ADC_PRESCALER_DIV512_gc);

	/* Set reference voltage on ADC A to be VCC/1.6 V.*/
	ADC_Reference_Config(&ADCA, ADC_REFSEL_VCC_gc); 


	ADC_Ch_InputMode_and_Gain_Config(&ADCA.CH0,
	                                 ADC_CH_INPUTMODE_SINGLEENDED_gc,
	                                 ADC_CH_GAIN_1X_gc);

	ADC_Ch_InputMode_and_Gain_Config(&ADCA.CH1,
	                                 ADC_CH_INPUTMODE_SINGLEENDED_gc,
	                                 ADC_CH_GAIN_1X_gc);

	ADC_Ch_InputMode_and_Gain_Config(&ADCA.CH2,
	                                 ADC_CH_INPUTMODE_SINGLEENDED_gc,
                                     ADC_CH_GAIN_1X_gc);

    
	/* Set input to the channels in ADC A */
	ADC_Ch_InputMux_Config(&ADCA.CH0, ADC_CH_MUXPOS_PIN0_gc, 0);
	ADC_Ch_InputMux_Config(&ADCA.CH1, ADC_CH_MUXPOS_PIN1_gc, 0);
	ADC_Ch_InputMux_Config(&ADCA.CH2, ADC_CH_MUXPOS_PIN2_gc, 0);


	/* Setup sweep of all four virtual channels. */
	ADC_SweepChannels_Config(&ADCA, ADC_SWEEP_0123_gc);

	/* Enable ADC A .*/
	ADC_Enable(&ADCA);


	ADC_Wait_32MHz(&ADCA);

	/* Enable free running mode. */
	ADC_FreeRunning_Enable(&ADCA);

	/* Store samples in table.*/
	while(1)
	{
		//ADC_Ch_Conversion_Start(&ADCA.CH0);
	  	do{
			/* If the conversion on the ADCA channel 0 never is
			 * complete this will be a deadlock. */
		}while(!ADC_Ch_Conversion_Complete(&ADCA.CH0));
		adcSamples[0] = ADC_ResultCh_GetWord_Signed(&ADCA.CH0, 0);

		//ADC_Ch_Conversion_Start(&ADCA.CH1);
		do{
			/* If the conversion on the ADCA channel 1 never is
			 * complete this will be a deadlock.*/
		}while(!ADC_Ch_Conversion_Complete(&ADCA.CH1));
		adcSamples[1] = ADC_ResultCh_GetWord_Signed(&ADCA.CH1, 0);

		//ADC_Ch_Conversion_Start(&ADCA.CH2);
		do{
			/* If the conversion on the ADCA channel 2 never is
			 * complete this will be a deadlock.*/
		}while(!ADC_Ch_Conversion_Complete(&ADCA.CH2));
		adcSamples[2] = ADC_ResultCh_GetWord_Signed(&ADCA.CH2, 0);

		printf("temperature:%X;\tvoltage:%X;\tlight:%X\n",adcSamples[0],adcSamples[1],adcSamples[2]);
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

