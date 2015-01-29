/********************************************************************************************************
*********************************************************************************************************
*
* File                : evk_xa1_clk.c
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
#include "clksys_driver.h"


	/* Enable for external 8 MHz crystal with quick startup time
	 * (256CLK). Check if it's stable and set the external.
	 *
	 *  Configure PLL with the external 8 MHz cand al as source
	 *  and multiply by 4 to get 32 MHz PLL clock and enable it.
	 *  Disable unused clock and wait for user input.
	 */
void evkXa1ClkInit(void)
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
}
