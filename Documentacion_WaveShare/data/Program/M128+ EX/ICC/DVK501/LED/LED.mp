NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   034E =    846. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __start
       0046  __text_start
       0068  _exit
       0069  _speaData
       00C2  _delay50us
       00D2  _delay50ms
       00F0  _delayus
       00FD  _main
       010A  push_arg4
       010C  push_arg2
       010F  div32u
       0111  mod32u
       0115  div32s
       0117  mod32s
       0143  long_div_prolog
       0156  long_div_epilog
       0166  tst_R16_R19
       016B  tst_R24_R27
       0170  neg_R24_R27
       0179  empy32s
       0179  empy32u
       01AD  push_xgsetF03C
       01B6  pop_xgsetF03C
       01BF  neg32
       01C8  long_prolog
       01D6  long_epilog
       01E1  tstzero1
       01E7  tstzero2
       01ED  __text_end

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

ram_end = 0x10ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

