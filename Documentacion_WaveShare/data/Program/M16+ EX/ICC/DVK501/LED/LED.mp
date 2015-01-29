NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   034E =    846. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002A  __start
       002A  __text_start
       004C  _exit
       004D  _speaData
       00A6  _delay50us
       00B6  _delay50ms
       00D4  _delayus
       00E1  _main
       00EE  push_arg4
       00F0  push_arg2
       00F3  div32u
       00F5  mod32u
       00F9  div32s
       00FB  mod32s
       0127  long_div_prolog
       013A  long_div_epilog
       014A  tst_R16_R19
       014F  tst_R24_R27
       0154  neg_R24_R27
       015D  empy32s
       015D  empy32u
       0191  push_xgsetF03C
       019A  pop_xgsetF03C
       01A3  neg32
       01AC  long_prolog
       01BA  long_epilog
       01C5  tstzero1
       01CB  tstzero2
       01D1  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0060   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __bss_start
       0060  _dataElem
       0066  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

D:\PROGRA~1\iccv7avr\lib\crtatmega.o	[ crtatmega.s ]
LED.o	[ LED.C ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

