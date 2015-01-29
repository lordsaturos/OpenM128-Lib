/*******************************************************************************
********************************************************************************
*
* File                  : sdcard_driver.h
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
#ifndef SDCARD_DRIVER_H
#define SDCARD_DRIVER_H 1

#include <stdint.h>
#include "spi_driver.h"
#include "sdcard_conf.h"

/* Definitions for SDCard command */
#define CMD0	(0x40+0)	/* GO_IDLE_STATE */
#define CMD1	(0x40+1)	/* SEND_OP_COND (MMC) */
#define	ACMD41	(0xC0+41)	/* SEND_OP_COND (SDC) */
#define CMD8	(0x40+8)	/* SEND_IF_COND */
#define CMD9	(0x40+9)	/* SEND_CSD */
#define CMD10	(0x40+10)	/* SEND_CID */
#define CMD12	(0x40+12)	/* STOP_TRANSMISSION */
#define ACMD13	(0xC0+13)	/* SD_STATUS (SDC) */
#define CMD16	(0x40+16)	/* SET_BLOCKLEN */
#define CMD17	(0x40+17)	/* READ_SINGLE_BLOCK */
#define CMD18	(0x40+18)	/* READ_MULTIPLE_BLOCK */
#define CMD23	(0x40+23)	/* SET_BLOCK_COUNT (MMC) */
#define	ACMD23	(0xC0+23)	/* SET_WR_BLK_ERASE_COUNT (SDC) */
#define CMD24	(0x40+24)	/* WRITE_BLOCK */
#define CMD25	(0x40+25)	/* WRITE_MULTIPLE_BLOCK */
#define CMD55	(0x40+55)	/* APP_CMD */
#define CMD58	(0x40+58)	/* READ_OCR */

/* SDCard Variable Types  */
#define	SD_DATA_T	uint8_t
#define	SD_ADDR_T	uint32_t
#define	SD_STATE_T	bool
#define	SD_COUNT_T	uint16_t
#define	SD_ARG_T	uint32_t

extern SPI_Master_t sdSpiPort;
/* Transmitter and Receiver data */
#define spiTransmitterData(data)	SPI_MasterTransceiveByte(&sdSpiPort,data)
#define spiReceiverData()		SPI_MasterTransceiveByte(&sdSpiPort,0xFF)


extern PORT_t *sdCsPort;
#define CSPIN	0x10	/* CS PIN */
#define sdCsLow()	SPI_MasterSSLow(sdCsPort, CSPIN)
#define sdCsHigh()	SPI_MasterSSHigh(sdCsPort, CSPIN)	

SD_DATA_T sdSendCmd(
        SD_DATA_T cmd ,  /* Command byte */
        SD_ARG_T arg    /* Argument */
        );

SD_STATE_T sdReadBlock(
        SD_DATA_T *buffer ,     /* Data buffer to store received data */
        SD_ADDR_T addr ,        /* Block address */
        SD_COUNT_T count        /* Byte count (must be multiple of 4) */
        );

SD_STATE_T sdWriteBlock(
        SD_DATA_T *buffer ,     /* 512 byte data block to be transmitted */
        SD_ADDR_T addr ,        /* Block address */
        SD_DATA_T token        /* Data/Stop token */
        );

SD_DATA_T sdWaitReady (void);

SD_STATE_T sdInit(void);

void sdDeselect (void);

SD_STATE_T sdSelect (void);

#endif
