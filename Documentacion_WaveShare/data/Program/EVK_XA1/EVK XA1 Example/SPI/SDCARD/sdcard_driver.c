/*******************************************************************************
********************************************************************************
*
* File                  : sdcard_driver.c
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

#include "sdcard_driver.h"
#include <util/delay.h>

SD_DATA_T sdSendCmd(
        SD_DATA_T cmd ,  /* Command byte */
        SD_ARG_T arg)    /* Argument */
{
	SD_DATA_T n, res;

	if (cmd & 0x80) {	/* ACMD<n> is the command sequense of CMD55-CMD<n> */
		cmd &= 0x7F;
		res = sdSendCmd(CMD55, 0);
		if (res > 1) return res;
	}

	/* Select the card and wait for ready */
	sdDeselect();
	if (!sdSelect()) return 0xFF;

	/* Send command packet */
	spiTransmitterData(cmd);			/* Start + Command index */
	spiTransmitterData((SD_DATA_T)(arg >> 24));	/* Argument[31..24] */
	spiTransmitterData((SD_DATA_T)(arg >> 16));	/* Argument[23..16] */
	spiTransmitterData((SD_DATA_T)(arg >> 8));	/* Argument[15..8] */
	spiTransmitterData((SD_DATA_T)arg);		/* Argument[7..0] */
	if (cmd == CMD0) n = 0x95;			/* Valid CRC for CMD0(0) */
	else if (cmd == CMD8) n = 0x87;			/* Valid CRC for CMD8(0x1AA) */
	else n = 0x01;					/* Dummy CRC + Stop */
	spiTransmitterData(n);

	/* Receive command response */
	if (cmd == CMD12) spiReceiverData();		/* Skip a stuff byte when stop reading */
	n = 10;						/* Wait for a valid response in timeout of 10 attempts */
	do
		res = spiReceiverData();
	while ((res & 0x80) && --n);
	return res;
}

        
SD_STATE_T sdReadBlock(
        SD_DATA_T *buffer ,     /* Data buffer to store received data */
        SD_ADDR_T addr ,        /* Block address */
        SD_COUNT_T count        /* Byte count (must be multiple of 4) */
        )
{
	SD_DATA_T token,waitDelay;

	sdSendCmd(CMD17, (addr<<9));				/* READ_SINGLE_BLOCK */

	waitDelay = 200;
	do {						/* Wait for data packet in timeout of 200ms */
		token = spiReceiverData();
		_delay_ms(1);
		waitDelay--;
	} while ((token == 0xFF) && waitDelay);
	if(!waitDelay) return false;
	if(token != 0xFE) return false;	                /* If not valid data token, retutn with error */

	do {						/* Receive the data block into buffer */
		*buffer=spiReceiverData();
		buffer++;
	} while (count --);
	spiReceiverData();					/* Discard CRC */
	spiReceiverData();

	return true;					/* Return with success */
}


SD_STATE_T sdWriteBlock(
        SD_DATA_T *buffer ,     /* 512 byte data block to be transmitted */
        SD_ADDR_T addr ,        /* Block address */
        SD_DATA_T token        /* Data/Stop token */
        )
{
	SD_DATA_T resp, wc;

	sdSendCmd(CMD24, (addr<<9));	/* Write block */
	
	if (sdWaitReady() != 0xFF) return false;

	spiTransmitterData(token);			/* Xmit data token */
	if (token != 0xFD) {	/* Is data token */
		wc = 0;
		do {					/* Xmit the 512 byte data block to MMC */
			spiTransmitterData(*buffer++);
			spiTransmitterData(*buffer++);
		} while (--wc);
		spiTransmitterData(0xFF);		/* CRC (Dummy) */
		spiTransmitterData(0xFF);
		resp = spiReceiverData();			/* Reveive data response */
		if ((resp & 0x1F) != 0x05)		/* If not accepted, return with error */
			return false;
	}



	return true;
}


SD_DATA_T sdWaitReady (void)
{
	SD_DATA_T res,waitDelay;


	waitDelay = 50;		/* Wait for ready in timeout of 500ms */
	spiReceiverData();
	do{
		res = spiReceiverData();
		_delay_ms(10);
		waitDelay--;
	}while ((res != 0xFF) && waitDelay);

	return res;
}


SD_STATE_T sdInit(void)
{
	SD_DATA_T n;
        //iInit();
        sdCsLow();
        
        for (n = 10; n; n--) spiReceiverData(); /* 80 dummy clocks */
        sdSendCmd(CMD0, 0);
        
        n=100;			/* delay 1000ms */
        while(sdSendCmd(ACMD41, 0))
        {
        	n--;
        	_delay_ms(10);
			if(n==0) return false;
        }
	
        return true;
}


/*-----------------------------------------------------------------------*/
/* Deselect the card and release SPI bus                                 */
/*-----------------------------------------------------------------------*/

void sdDeselect (void)
{
	sdCsHigh();
	spiReceiverData();
}



/*-----------------------------------------------------------------------*/
/* Select the card and wait ready                                        */
/*-----------------------------------------------------------------------*/

SD_STATE_T sdSelect (void)	/* TRUE:Successful, FALSE:Timeout */
{
	sdCsLow();
	if (sdWaitReady() != 0xFF) {
		sdDeselect();
		return false;
	}
	return true;
}
