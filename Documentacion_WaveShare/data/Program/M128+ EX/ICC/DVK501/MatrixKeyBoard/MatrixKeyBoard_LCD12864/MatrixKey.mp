NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0030 =     48. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00BC  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00BC   0AA0 =   2720. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005E  __text_start
       005E  __start
       0080  _exit
       0081  _speaData
       00DA  _I2C_Start
       00EA  _I2C_Restart
       00FA  _I2C_SendWrDAdr
       010C  _I2C_SendWrDAdr_
       0129  _I2C_SendRdDAdr
       013B  _I2C_SendRdDAdr_
       0156  _I2C_SendDat
       0168  _I2C_RcvNAckDat
       017C  _I2C_RcvAckDat
       0190  _I2C_Write
       01B4  _I2C_Read
       01E7  _I2C_Read_
       022F  _delay50us
       023F  _delay50ms
       025D  _delayus
       026A  _SPI_init
       0273  _lcd_wrByte
       0277  _lcd_wrCmd
       0284  _lcd_wrDat
       0291  _lcd_set_xy
       02BC  _lcd_putc
       02D0  _lcd_putd0
       0307  _lcd_putd
       03B0  _lcd_puts
       03D2  _lcd_puts_
       03F5  _lcd_clr
       03FB  _lcd_init
       040E  _GetKeyVal
       0445  _main
       0489  push_arg4
       048B  push_arg2
       048E  div32u
       0490  mod32u
       0494  div32s
       0496  mod32s
       04C2  long_div_prolog
       04D5  long_div_epilog
       04E5  tst_R16_R19
       04EA  tst_R24_R27
       04EF  neg_R24_R27
       04F8  empy32u
       04F8  empy32s
       052C  pop_xgset00FC
       0533  pop_xgset30FC
       053C  pop_xgsetF0FC
       0547  push_xgsetF0FC
       0549  push_xgset30FC
       054B  push_xgset00FC
       054D  push_xgset003C
       0552  push_xgsetF00C
       0559  pop_xgsetF00C
       0560  push_xgset303C
       0567  pop_xgset303C
       056E  push_xgsetF03C
       0577  pop_xgsetF03C
       0580  neg32
       0589  long_prolog
       0597  long_epilog
       05A2  tstzero1
       05A8  tstzero2
       05AE  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0030 =     48. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0100  _setSta_
       0104  _getSta_
       0130  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0130   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0130  __bss_start
       0130  _dataElem
       0136  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
MatrixKey.o	[ MatrixKey.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

