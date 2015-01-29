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
                            text   0098   0864 =   2148. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004C  __start
       004C  __text_start
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
       02A6  _spi_init
       02A9  _spi_transmit_byte
       02AD  _write_buffer
       02BF  _read_buffer
       02D5  _port_init
       02E2  _main
       035B  push_arg4
       035D  push_arg2
       0360  div32u
       0362  mod32u
       0366  div32s
       0368  mod32s
       0394  long_div_prolog
       03A7  long_div_epilog
       03B7  tst_R16_R19
       03BC  tst_R24_R27
       03C1  neg_R24_R27
       03CA  empy32u
       03CA  empy32s
       03FE  pop_xgset003C
       0403  pop_xgset30FC
       040C  pop_xgsetF0FC
       0417  push_xgsetF0FC
       0419  push_xgset30FC
       041B  push_xgset00FC
       041D  push_xgset003C
       0422  push_xgsetF00C
       0429  pop_xgsetF00C
       0430  push_xgset303C
       0437  pop_xgset303C
       043E  push_xgsetF03C
       0447  pop_xgsetF03C
       0450  neg32
       0459  long_prolog
       0467  long_epilog
       0472  tstzero1
       0478  tstzero2
       047E  __text_end

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
AT45DB161.o	[ AT45DB161.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

