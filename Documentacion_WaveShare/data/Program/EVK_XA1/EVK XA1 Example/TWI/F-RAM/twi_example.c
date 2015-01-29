/********************************************************************************************************
*********************************************************************************************************
*
* File                : twi_example.c
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

#include "avr_compiler.h"
#include "twi_master_driver.h"
#include <util/delay.h>

#define FM24C_ADDR (0xA0>>1)

/*! Defining number of bytes in buffer. */
#define NUM_BYTES        8

/*! CPU speed 2MHz, BAUDRATE 100KHz and Baudrate Register Settings */
#define CPU_SPEED   2000000
#define BAUDRATE	100000
#define TWI_BAUDSETTING TWI_BAUD(CPU_SPEED, BAUDRATE)


/* Global variables */
TWI_Master_t twiMaster;    /*!< TWI master module. */

/*! Buffer with test data to send.*/
uint8_t sendBuffer[NUM_BYTES] = {0, //data address
                                 1, 2, 3, 4, 5, 6, 7}; //data
uint8_t address=0;
/*! /brief Example code
 *
 *  Example code that reads the key pressed and show a value from the buffer,
 *  sends the value to the slave and read back the processed value which will
 *  be inverted and displayed after key release.
 */
int main(void)
{

	/* Initialize TWI master. */
	TWI_MasterInit(&twiMaster,
	               &TWIF,
	               TWI_MASTER_INTLVL_LO_gc,
	               TWI_BAUDSETTING);


	/* Enable LO interrupt level. */
	PMIC.CTRL |= PMIC_LOLVLEN_bm;
	sei();

		TWI_MasterWriteRead(&twiMaster,
		                    FM24C_ADDR,
		                    sendBuffer,
		                    NUM_BYTES,
		                    0);

		while (twiMaster.status != TWIM_STATUS_READY) {
			/* Wait until transaction is complete. */
		}
		

		TWI_MasterWriteRead(&twiMaster,
		                    FM24C_ADDR,
		                    &address,
		                    1,
		                    7);
		while (twiMaster.status != TWIM_STATUS_READY) {
			/* Wait until transaction is complete. */
		}

		PORTC.DIR = 0xFF;
		for(uint8_t n=0;n<7;n++)
		{
			PORTC.OUT = ~twiMaster.readData[n];
			_delay_ms(1000);
		}
		while(1);
}

/*! TWIF Master Interrupt vector. */
ISR(TWIF_TWIM_vect)
{
	TWI_MasterInterruptHandler(&twiMaster);
}
