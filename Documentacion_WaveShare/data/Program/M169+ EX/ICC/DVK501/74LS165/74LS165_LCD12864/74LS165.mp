NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   005C   0028 =     40. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005C  __idata_start
       0084  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0084   0774 =   1908. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0042  __text_start
       0042  __start
       0064  _exit
       0065  _speaData
       00BE  _delay50us
       00CE  _delay50ms
       00EC  _delayus
       00F9  _SPI_init
       0102  _lcd_wrByte
       0107  _lcd_wrCmd
       0114  _lcd_wrDat
       0121  _lcd_set_xy
       014C  _lcd_putc
       0160  _lcd_putd0
       0197  _lcd_putd
       0240  _lcd_puts
       0262  _lcd_puts_
       0285  _lcd_clr
       028B  _lcd_init
       029E  _getDat
       02AA  _main
       02DE  push_arg4
       02E0  push_arg2
       02E3  div32u
       02E5  mod32u
       02E9  div32s
       02EB  mod32s
       0317  long_div_prolog
       032A  long_div_epilog
       033A  tst_R16_R19
       033F  tst_R24_R27
       0344  neg_R24_R27
       034D  empy32s
       034D  empy32u
       0381  pop_xgset30FC
       038A  pop_xgsetF0FC
       0395  push_xgsetF0FC
       0397  push_xgset30FC
       0399  push_xgset00FC
       039B  push_xgset003C
       03A0  push_xgsetF00C
       03A7  pop_xgsetF00C
       03AE  push_xgset303C
       03B5  pop_xgset303C
       03BC  push_xgsetF03C
       03C5  pop_xgsetF03C
       03CE  neg32
       03D7  long_prolog
       03E5  long_epilog
       03F0  tstzero1
       03F6  tstzero2
       03FC  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0028 =     40. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0128  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0128   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0128  __bss_start
       0128  _dataElem
       012E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
74LS165.o	[ _74LS165.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x5c
data = 0x100
eeprom:0.512

