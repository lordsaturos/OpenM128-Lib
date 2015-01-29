NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0030 =     48. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       00A0  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00A0   07E6 =   2022. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0050  __text_start
       0050  __start
       0072  _exit
       0073  _speaData
       00CC  _delay50us
       00DC  _delay50ms
       00FA  _delayus
       0107  _SPI_init
       010F  _lcd_wrByte
       0113  _lcd_wrCmd
       0120  _lcd_wrDat
       012D  _lcd_set_xy
       0158  _lcd_putc
       016C  _lcd_putd0
       01A3  _lcd_putd
       024C  _lcd_puts
       026E  _lcd_puts_
       0291  _lcd_clr
       0297  _lcd_init
       02AA  _GetKeyVal
       02E1  _main
       0325  push_arg4
       0327  push_arg2
       032A  div32u
       032C  mod32u
       0330  div32s
       0332  mod32s
       035E  long_div_prolog
       0371  long_div_epilog
       0381  tst_R16_R19
       0386  tst_R24_R27
       038B  neg_R24_R27
       0394  empy32s
       0394  empy32u
       03C8  pop_xgset30FC
       03D1  pop_xgsetF0FC
       03DC  push_xgsetF0FC
       03DE  push_xgset30FC
       03E0  push_xgset00FC
       03E2  push_xgset003C
       03E7  push_xgsetF00C
       03EE  pop_xgsetF00C
       03F5  push_xgset303C
       03FC  pop_xgset303C
       0403  push_xgsetF03C
       040C  pop_xgsetF03C
       0415  neg32
       041E  long_prolog
       042C  long_epilog
       0437  tstzero1
       043D  tstzero2
       0443  __text_end

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
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

