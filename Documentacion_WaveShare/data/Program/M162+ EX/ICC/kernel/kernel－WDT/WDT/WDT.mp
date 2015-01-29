NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   0356 =    854. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __start
       0038  __text_start
       005A  _exit
       005B  _speaData
       00B4  _delay50us
       00C4  _delay50ms
       00E2  _delayus
       00EF  _wdt_init
       00F3  _main
       0100  push_arg4
       0102  push_arg2
       0105  div32u
       0107  mod32u
       010B  div32s
       010D  mod32s
       0139  long_div_prolog
       014C  long_div_epilog
       015C  tst_R16_R19
       0161  tst_R24_R27
       0166  neg_R24_R27
       016F  empy32u
       016F  empy32s
       01A3  push_xgsetF03C
       01AC  pop_xgsetF03C
       01B5  neg32
       01BE  long_prolog
       01CC  long_epilog
       01D7  tstzero1
       01DD  tstzero2
       01E3  __text_end

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
WDT.o	[ WDT.C ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

