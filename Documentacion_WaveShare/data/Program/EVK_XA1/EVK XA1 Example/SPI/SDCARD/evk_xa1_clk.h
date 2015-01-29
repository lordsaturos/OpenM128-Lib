/********************************************************************************************************
*********************************************************************************************************
*
* File                : evk_xa1_clk.h
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


#ifndef EVK_XA1_CLK_H
#define EVK_XA1_CLK_H


	/* Enable for external 8 MHz crystal with quick startup time
	 * (256CLK). Check if it's stable and set the external.
	 *
	 *  Configure PLL with the external 8 MHz cand al as source
	 *  and multiply by 4 to get 32 MHz PLL clock and enable it.
	 *  Disable unused clock and wait for user input.
	 */
void evkXa1ClkInit(void);


#endif //EVK_XA1_CLK_H
