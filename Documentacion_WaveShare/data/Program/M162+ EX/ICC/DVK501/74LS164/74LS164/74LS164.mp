NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   036E =    878. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __text_start
       0038  __start
       005A  _exit
       005B  _speaData
       00B4  _delay50us
       00C4  _delay50ms
       00E2  _delayus
       00EF  _setDat
       00FF  _main
       010C  push_arg4
       010E  push_arg2
       0111  div32u
       0113  mod32u
       0117  div32s
       0119  mod32s
       0145  long_div_prolog
       0158  long_div_epilog
       0168  tst_R16_R19
       016D  tst_R24_R27
       0172  neg_R24_R27
       017B  empy32s
       017B  empy32u
       01AF  push_xgsetF03C
       01B8  pop_xgsetF03C
       01C1  neg32
       01CA  long_prolog
       01D8  long_epilog
       01E3  tstzero1
       01E9  tstzero2
       01EF  __text_end

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
74LS164.o	[ _74LS164.c ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

