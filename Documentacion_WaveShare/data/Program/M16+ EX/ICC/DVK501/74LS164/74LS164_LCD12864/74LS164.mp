NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   002C =     44. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0080  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0080   09F4 =   2548. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0040  __text_start
       0040  __start
       0062  _exit
       0063  _speaData
       00BC  _I2C_Start
       00C9  _I2C_Restart
       00D6  _I2C_SendWrDAdr
       00E4  _I2C_SendWrDAdr_
       0101  _I2C_SendRdDAdr
       010F  _I2C_SendRdDAdr_
       012A  _I2C_SendDat
       0138  _I2C_RcvNAckDat
       0148  _I2C_RcvAckDat
       0158  _I2C_Write
       017B  _I2C_Read
       01AD  _I2C_Read_
       01F4  _delay50us
       0204  _delay50ms
       0222  _delayus
       022F  _SPI_init
       0238  _lcd_wrByte
       023C  _lcd_wrCmd
       0249  _lcd_wrDat
       0256  _lcd_set_xy
       0281  _lcd_putc
       0295  _lcd_putd0
       02CC  _lcd_putd
       0375  _lcd_puts
       0397  _lcd_puts_
       03BA  _lcd_clr
       03C0  _lcd_init
       03D3  _setDat
       03E3  _main
       0415  push_arg4
       0417  push_arg2
       041A  div32u
       041C  mod32u
       0420  div32s
       0422  mod32s
       044E  long_div_prolog
       0461  long_div_epilog
       0471  tst_R16_R19
       0476  tst_R24_R27
       047B  neg_R24_R27
       0484  empy32u
       0484  empy32s
       04B8  pop_xgset00FC
       04BF  pop_xgset30FC
       04C8  pop_xgsetF0FC
       04D3  push_xgsetF0FC
       04D5  push_xgset30FC
       04D7  push_xgset00FC
       04D9  push_xgset003C
       04DE  push_xgsetF00C
       04E5  pop_xgsetF00C
       04EC  push_xgset303C
       04F3  pop_xgset303C
       04FA  push_xgsetF03C
       0503  pop_xgsetF03C
       050C  neg32
       0515  long_prolog
       0523  long_epilog
       052E  tstzero1
       0534  tstzero2
       053A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   002C =     44. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       008C  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   008C   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __bss_start
       008C  _dataElem
       0092  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
74LS164.o	[ _74LS164.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

