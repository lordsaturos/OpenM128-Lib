NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   034E =    846. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __start
       0038  __text_start
       005A  _exit
       005B  _speaData
       00B4  _delay50us
       00C4  _delay50ms
       00E2  _delayus
       00EF  _main
       00FC  push_arg4
       00FE  push_arg2
       0101  div32u
       0103  mod32u
       0107  div32s
       0109  mod32s
       0135  long_div_prolog
       0148  long_div_epilog
       0158  tst_R16_R19
       015D  tst_R24_R27
       0162  neg_R24_R27
       016B  empy32s
       016B  empy32u
       019F  push_xgsetF03C
       01A8  pop_xgsetF03C
       01B1  neg32
       01BA  long_prolog
       01C8  long_epilog
       01D3  tstzero1
       01D9  tstzero2
       01DF  __text_end

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

D:\PROGRA~1\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
LED.o	[ LED.C ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

