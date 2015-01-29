NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0070   044A =   1098. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0038  __text_start
       0038  __start
       005A  _exit
       005B  _speaData
       00B4  _delay50us
       00C4  _delay50ms
       00E2  _delayus
       00EF  _reset_onewire
       00FA  _ack_onewire
       0103  _read_onewire
       0120  _write_onewire
       0140  _convert_ds18b20
       0149  _read_temperature
       0166  _port_init
       0171  _main
       017A  push_arg4
       017C  push_arg2
       017F  div32u
       0181  mod32u
       0185  div32s
       0187  mod32s
       01B3  long_div_prolog
       01C6  long_div_epilog
       01D6  tst_R16_R19
       01DB  tst_R24_R27
       01E0  neg_R24_R27
       01E9  empy32s
       01E9  empy32u
       021D  push_xgsetF03C
       0226  pop_xgsetF03C
       022F  neg32
       0238  long_prolog
       0246  long_epilog
       0251  tstzero1
       0257  tstzero2
       025D  __text_end

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
DS18B20.o	[ DS18B20.C ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

