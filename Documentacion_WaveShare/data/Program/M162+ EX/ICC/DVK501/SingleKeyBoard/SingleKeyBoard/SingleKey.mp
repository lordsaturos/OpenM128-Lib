NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   03AC =    940. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __text_start
       0038  __start
       0058  _exit
       0059  _speaData
       00B8  _delay50us
       00CA  _delay50ms
       00E0  _delayus
       00EE  _scanKey
       011B  _main
       0121  push_arg4
       0123  push_arg2
       0126  div32u
       0128  mod32u
       012C  div32s
       012E  mod32s
       0159  long_div_prolog
       016C  long_div_epilog
       017B  tst_R16_R19
       0180  tst_R24_R27
       0185  neg_R16_R19
       018E  neg_R24_R27
       0197  empy32u
       0197  empy32s
       01C7  pop_gset4
       01CA  push_gset5
       01CC  push_gset4
       01CE  push_gset3
       01D0  push_gset2
       01D2  push_gset1
       01D5  pop_gset1
       01D6  pop
       01E9  long_prolog
       01F7  long_epilog
       0202  tstzero1
       0208  tstzero2
       020E  __text_end

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
SingleKey.o	[ SingleKey.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:1.512

