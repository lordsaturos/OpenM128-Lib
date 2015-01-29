NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0008 =      8. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0078  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0078   04A8 =   1192. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003C  __start
       003C  __text_start
       005E  _exit
       005F  _speaData
       00B8  _delay50us
       00C8  _delay50ms
       00E6  _delayus
       00F3  _main
       0139  push_arg4
       013B  push_arg2
       013E  div32u
       0140  mod32u
       0144  div32s
       0146  mod32s
       0172  long_div_prolog
       0185  long_div_epilog
       0195  tst_R16_R19
       019A  tst_R24_R27
       019F  neg_R24_R27
       01A8  empy32s
       01A8  empy32u
       01DC  push_xgsetF03C
       01E5  pop_xgsetF03C
       01EE  neg32
       01F7  long_prolog
       0205  long_epilog
       0210  tstzero1
       0216  tstzero2
       021C  asgnblk
       0234  _EEPROMread
       023B  _EEPROMwrite
       024A  _EEPROMReadBytes
       026D  _EEPROMWriteBytes
       0290  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0008 =      8. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0108  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0108   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0108  __bss_start
       0108  _dataElem
       010E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
EEPROM.o	[ EEPROM.C ]
<library>	[ asave.s, div32.s, emul32.s, gpushb.s, lneg.s, longutil.s, struct.s, eepromr.s, eepromw.s, eepromrbytes.s ]
[ eepromwbytes.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

