NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0028 =     40. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0098  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0098   0770 =   1904. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004C  __text_start
       004C  __start
       006E  _exit
       006F  _speaData
       00C8  _delay50us
       00D8  _delay50ms
       00F6  _delayus
       0103  _SPI_init
       010B  _lcd_wrByte
       010F  _lcd_wrCmd
       011C  _lcd_wrDat
       0129  _lcd_set_xy
       0154  _lcd_putc
       0168  _lcd_putd0
       019F  _lcd_putd
       0248  _lcd_puts
       026A  _lcd_puts_
       028D  _lcd_clr
       0293  _lcd_init
       02A6  _getDat
       02B2  _main
       02E6  push_arg4
       02E8  push_arg2
       02EB  div32u
       02ED  mod32u
       02F1  div32s
       02F3  mod32s
       031F  long_div_prolog
       0332  long_div_epilog
       0342  tst_R16_R19
       0347  tst_R24_R27
       034C  neg_R24_R27
       0355  empy32s
       0355  empy32u
       0389  pop_xgset30FC
       0392  pop_xgsetF0FC
       039D  push_xgsetF0FC
       039F  push_xgset30FC
       03A1  push_xgset00FC
       03A3  push_xgset003C
       03A8  push_xgsetF00C
       03AF  pop_xgsetF00C
       03B6  push_xgset303C
       03BD  pop_xgset303C
       03C4  push_xgsetF03C
       03CD  pop_xgsetF03C
       03D6  neg32
       03DF  long_prolog
       03ED  long_epilog
       03F8  tstzero1
       03FE  tstzero2
       0404  __text_end

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

func_lit = 0x70
data = 0x100
eeprom:0.512

