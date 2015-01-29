NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   001F =     31. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       008F  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0090   094E =   2382. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0048  __text_start
       0048  __start
       006A  _exit
       006B  _speaData
       00C4  _delay50us
       00D4  _delay50ms
       00F2  _delayus
       00FF  _SPI_init
       0107  _lcd_wrByte
       010B  _lcd_wrCmd
       0118  _lcd_wrDat
       0125  _lcd_set_xy
       0150  _lcd_putc
       0164  _lcd_putd0
       019B  _lcd_putd
       0244  _lcd_puts
       0266  _lcd_puts_
       0289  _lcd_clr
       028F  _lcd_init
       02A2  _sDelay
       02A9  _I2C_Start
       02B5  _I2C_Stop
       02C1  _I2C_Send_DataAddr
       02E9  _I2C_Read_DataAddr
       0312  _I2C_ReadBusy
       033B  _PCF8591_getAD
       034C  _PCF8591_setDA
       0358  _delay250ms
       0365  _main
       03C1  push_arg4
       03C3  push_arg2
       03C6  div32u
       03C8  mod32u
       03CC  div32s
       03CE  mod32s
       03FA  long_div_prolog
       040D  long_div_epilog
       041D  tst_R16_R19
       0422  tst_R24_R27
       0427  neg_R24_R27
       0430  empy16s
       0440  empy32u
       0440  empy32s
       0474  pop_xgset30FC
       047D  pop_xgsetF0FC
       0488  push_xgsetF0FC
       048A  push_xgset30FC
       048C  push_xgset00FC
       048E  push_xgset003C
       0493  push_xgsetF00C
       049A  pop_xgsetF00C
       04A1  push_xgset303C
       04A8  pop_xgset303C
       04AF  push_xgsetF03C
       04B8  pop_xgsetF03C
       04C1  neg32
       04CA  long_prolog
       04D8  long_epilog
       04E3  tstzero1
       04E9  tstzero2
       04EF  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   001F =     31. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       011F  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   011F   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       011F  __bss_start
       011F  _dataElem
       0125  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8591.o	[ PCF8591.C ]
<library>	[ asave.s, div32.s, emul16s.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

