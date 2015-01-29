NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   00F0 =    240. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0160  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0160   04CC =   1228. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00B0  __start
       00B0  __text_start
       00D2  _exit
       00D3  _speaData
       012C  _delay50us
       013C  _delay50ms
       015A  _delayus
       0167  _check
       019E  _keyHandle
       0224  _main
       0233  push_arg4
       0235  push_arg2
       0238  div32u
       023A  mod32u
       023E  div32s
       0240  mod32s
       026C  long_div_prolog
       027F  long_div_epilog
       028F  tst_R16_R19
       0294  tst_R24_R27
       0299  neg_R24_R27
       02A2  empy32u
       02A2  empy32s
       02D6  push_xgsetF03C
       02DF  pop_xgsetF03C
       02E8  neg32
       02F1  long_prolog
       02FF  long_epilog
       030A  tstzero1
       0310  tstzero2
       0316  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   00F0 =    240. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  _unshifted
       0100  __data_start
       0176  _shifted
       01EC  _rcvF
       01ED  PS2SimpleSoft.c:rcvBits
       01EE  PS2SimpleSoft.c:isUp
       01EF  PS2SimpleSoft.c:shift
       01F0  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   01F0   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       01F0  __bss_start
       01F0  _keyVal
       01F1  _dataElem
       01F7  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PS2SimpleSoft.o	[ PS2SimpleSoft.c ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

