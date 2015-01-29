NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   042A =   1066. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __start
       0038  __text_start
       005A  _exit
       005B  _speaData
       00B4  _delay50us
       00C4  _delay50ms
       00E2  _delayus
       00EF  _spi_init
       00F2  _spi_transmit_byte
       00F6  _write_buffer
       0108  _read_buffer
       011E  _port_init
       012B  _main
       015A  push_arg4
       015C  push_arg2
       015F  div32u
       0161  mod32u
       0165  div32s
       0167  mod32s
       0193  long_div_prolog
       01A6  long_div_epilog
       01B6  tst_R16_R19
       01BB  tst_R24_R27
       01C0  neg_R24_R27
       01C9  empy32u
       01C9  empy32s
       01FD  pop_xgset003C
       0202  push_xgsetF0FC
       0204  push_xgset30FC
       0206  push_xgset00FC
       0208  push_xgset003C
       020D  push_xgsetF03C
       0216  pop_xgsetF03C
       021F  neg32
       0228  long_prolog
       0236  long_epilog
       0241  tstzero1
       0247  tstzero2
       024D  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0100   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __bss_start
       0100  _dataElem
       0106  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT45DB161.o	[ AT45DB161.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

