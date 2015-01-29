NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   001D =     29. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00A9  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00AA   09D4 =   2516. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0055  __text_start
       0055  __start
       0077  _exit
       0078  _speaData
       00D1  _I2C_Start
       00E1  _I2C_Restart
       00F1  _I2C_SendWrDAdr
       0103  _I2C_SendWrDAdr_
       0120  _I2C_SendRdDAdr
       0132  _I2C_SendRdDAdr_
       014D  _I2C_SendDat
       015F  _I2C_RcvNAckDat
       0173  _I2C_RcvAckDat
       0187  _I2C_Write
       01AB  _I2C_Read
       01DE  _I2C_Read_
       0226  _delay50us
       0236  _delay50ms
       0254  _delayus
       0261  _SPI_init
       026A  _lcd_wrByte
       026E  _lcd_wrCmd
       027B  _lcd_wrDat
       0288  _lcd_set_xy
       02B3  _lcd_putc
       02C7  _lcd_putd0
       02FE  _lcd_putd
       03A7  _lcd_puts
       03C9  _lcd_puts_
       03EC  _lcd_clr
       03F2  _lcd_init
       0405  _main
       041A  push_arg4
       041C  push_arg2
       041F  div32u
       0421  mod32u
       0425  div32s
       0427  mod32s
       0453  long_div_prolog
       0466  long_div_epilog
       0476  tst_R16_R19
       047B  tst_R24_R27
       0480  neg_R24_R27
       0489  empy32u
       0489  empy32s
       04BD  pop_xgset00FC
       04C4  pop_xgset30FC
       04CD  pop_xgsetF0FC
       04D8  push_xgsetF0FC
       04DA  push_xgset30FC
       04DC  push_xgset00FC
       04DE  push_xgset003C
       04E3  push_xgsetF00C
       04EA  pop_xgsetF00C
       04F1  push_xgset303C
       04F8  pop_xgset303C
       04FF  push_xgsetF03C
       0508  pop_xgsetF03C
       0511  neg32
       051A  long_prolog
       0528  long_epilog
       0533  tstzero1
       0539  tstzero2
       053F  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   001D =     29. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       011D  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   011D   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       011D  __bss_start
       011D  _dataElem
       0123  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
LCD12864_ST7920.o	[ LCD12864_ST7920.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

