NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0029 =     41. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0099  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   009A   0854 =   2132. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004D  __start
       004D  __text_start
       006F  _exit
       0070  _speaData
       00C9  _delay50us
       00D9  _delay50ms
       00F7  _delayus
       0104  _SPI_init
       010C  _lcd_wrByte
       0110  _lcd_wrCmd
       011D  _lcd_wrDat
       012A  _lcd_set_xy
       0155  _lcd_putc
       0169  _lcd_putd0
       01A0  _lcd_putd
       0249  _lcd_puts
       026B  _lcd_puts_
       028E  _lcd_clr
       0294  _lcd_init
       02A7  _reset_onewire
       02B2  _ack_onewire
       02BB  _read_onewire
       02D8  _write_onewire
       02F8  _convert_ds18b20
       0301  _read_temperature
       031E  _port_init
       0329  _main
       0359  push_arg4
       035B  push_arg2
       035E  div32u
       0360  mod32u
       0364  div32s
       0366  mod32s
       0392  long_div_prolog
       03A5  long_div_epilog
       03B5  tst_R16_R19
       03BA  tst_R24_R27
       03BF  neg_R24_R27
       03C8  empy32u
       03C8  empy32s
       03FC  pop_xgset30FC
       0405  pop_xgsetF0FC
       0410  push_xgsetF0FC
       0412  push_xgset30FC
       0414  push_xgset00FC
       0416  push_xgset003C
       041B  push_xgsetF00C
       0422  pop_xgsetF00C
       0429  push_xgset303C
       0430  pop_xgset303C
       0437  push_xgsetF03C
       0440  pop_xgsetF03C
       0449  neg32
       0452  long_prolog
       0460  long_epilog
       046B  tstzero1
       0471  tstzero2
       0477  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0029 =     41. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0129  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0129   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0129  __bss_start
       0129  _dataElem
       012F  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
DS18B20.o	[ DS18B20.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

