NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0030 =     48. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0084  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0084   0A66 =   2662. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0042  __text_start
       0042  __start
       0064  _exit
       0065  _speaData
       00BE  _I2C_Start
       00CB  _I2C_Restart
       00D8  _I2C_SendWrDAdr
       00E6  _I2C_SendWrDAdr_
       0103  _I2C_SendRdDAdr
       0111  _I2C_SendRdDAdr_
       012C  _I2C_SendDat
       013A  _I2C_RcvNAckDat
       014A  _I2C_RcvAckDat
       015A  _I2C_Write
       017D  _I2C_Read
       01AF  _I2C_Read_
       01F6  _delay50us
       0206  _delay50ms
       0224  _delayus
       0231  _SPI_init
       023A  _lcd_wrByte
       023E  _lcd_wrCmd
       024B  _lcd_wrDat
       0258  _lcd_set_xy
       0283  _lcd_putc
       0297  _lcd_putd0
       02CE  _lcd_putd
       0377  _lcd_puts
       0399  _lcd_puts_
       03BC  _lcd_clr
       03C2  _lcd_init
       03D5  _GetKeyVal
       040C  _main
       0450  push_arg4
       0452  push_arg2
       0455  div32u
       0457  mod32u
       045B  div32s
       045D  mod32s
       0489  long_div_prolog
       049C  long_div_epilog
       04AC  tst_R16_R19
       04B1  tst_R24_R27
       04B6  neg_R24_R27
       04BF  empy32u
       04BF  empy32s
       04F3  pop_xgset00FC
       04FA  pop_xgset30FC
       0503  pop_xgsetF0FC
       050E  push_xgsetF0FC
       0510  push_xgset30FC
       0512  push_xgset00FC
       0514  push_xgset003C
       0519  push_xgsetF00C
       0520  pop_xgsetF00C
       0527  push_xgset303C
       052E  pop_xgset303C
       0535  push_xgsetF03C
       053E  pop_xgsetF03C
       0547  neg32
       0550  long_prolog
       055E  long_epilog
       0569  tstzero1
       056F  tstzero2
       0575  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0030 =     48. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0060  _setSta_
       0064  _getSta_
       0090  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0090   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0090  __bss_start
       0090  _dataElem
       0096  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
MatrixKey.o	[ MatrixKey.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

