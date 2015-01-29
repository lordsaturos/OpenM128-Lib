NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   005C   0366 =    870. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002E  __text_start
       002E  __start
       0050  _exit
       0051  _speaData
       00AA  _delay50us
       00BA  _delay50ms
       00D8  _delayus
       00E5  _getDat
       00F1  _main
       00FE  push_arg4
       0100  push_arg2
       0103  div32u
       0105  mod32u
       0109  div32s
       010B  mod32s
       0137  long_div_prolog
       014A  long_div_epilog
       015A  tst_R16_R19
       015F  tst_R24_R27
       0164  neg_R24_R27
       016D  empy32s
       016D  empy32u
       01A1  push_xgsetF03C
       01AA  pop_xgsetF03C
       01B3  neg32
       01BC  long_prolog
       01CA  long_epilog
       01D5  tstzero1
       01DB  tstzero2
       01E1  __text_end

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
74LS165.o	[ _74LS165.c ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x5c
data = 0x100
eeprom:0.512

