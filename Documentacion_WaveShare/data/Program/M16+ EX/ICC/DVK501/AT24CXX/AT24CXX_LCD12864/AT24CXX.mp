NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   002E =     46. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0082  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0082   0A9A =   2714. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0041  __text_start
       0041  __start
       0063  _exit
       0064  _speaData
       00BD  _I2C_Start
       00CA  _I2C_Restart
       00D7  _I2C_SendWrDAdr
       00E5  _I2C_SendWrDAdr_
       0102  _I2C_SendRdDAdr
       0110  _I2C_SendRdDAdr_
       012B  _I2C_SendDat
       0139  _I2C_RcvNAckDat
       0149  _I2C_RcvAckDat
       0159  _I2C_Write
       017C  _I2C_Read
       01AE  _I2C_Read_
       01F5  _delay50us
       0205  _delay50ms
       0223  _delayus
       0230  _SPI_init
       0239  _lcd_wrByte
       023D  _lcd_wrCmd
       024A  _lcd_wrDat
       0257  _lcd_set_xy
       0282  _lcd_putc
       0296  _lcd_putd0
       02CD  _lcd_putd
       0376  _lcd_puts
       0398  _lcd_puts_
       03BB  _lcd_clr
       03C1  _lcd_init
       03D4  _AT24CXX_Write
       03E7  _AT24CXX_Read
       03FC  _errDisp
       0410  _twi_init
       0416  _main
       0464  push_arg4
       0466  push_arg2
       0469  div32u
       046B  mod32u
       046F  div32s
       0471  mod32s
       049D  long_div_prolog
       04B0  long_div_epilog
       04C0  tst_R16_R19
       04C5  tst_R24_R27
       04CA  neg_R24_R27
       04D3  empy32s
       04D3  empy32u
       0507  pop_xgset003C
       050C  pop_xgset00FC
       0513  pop_xgset30FC
       051C  pop_xgsetF0FC
       0527  push_xgsetF0FC
       0529  push_xgset30FC
       052B  push_xgset00FC
       052D  push_xgset003C
       0532  push_xgsetF00C
       0539  pop_xgsetF00C
       0540  push_xgset303C
       0547  pop_xgset303C
       054E  push_xgsetF03C
       0557  pop_xgsetF03C
       0560  neg32
       0569  long_prolog
       0577  long_epilog
       0582  tstzero1
       0588  tstzero2
       058E  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   002E =     46. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       008E  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   008E   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       008E  __bss_start
       008E  _dataElem
       0094  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT24CXX.o	[ AT24CXX.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s ]
[ lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

