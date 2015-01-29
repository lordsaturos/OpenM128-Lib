NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0118 =    280. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0188  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0188   08FC =   2300. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00C4  __text_start
       00C4  __start
       00E6  _exit
       00E7  _speaData
       0140  _delay50us
       0150  _delay50ms
       016E  _delayus
       017B  _SPI_init
       0183  _lcd_wrByte
       0187  _lcd_wrCmd
       0194  _lcd_wrDat
       01A1  _lcd_set_xy
       01CC  _lcd_putc
       01E0  _lcd_putd0
       0217  _lcd_putd
       02C0  _lcd_puts
       02E2  _lcd_puts_
       0305  _lcd_clr
       030B  _lcd_init
       031E  _check
       0355  _keyHandle
       03CF  _main
       0424  push_arg4
       0426  push_arg2
       0429  div32u
       042B  mod32u
       042F  div32s
       0431  mod32s
       045D  long_div_prolog
       0470  long_div_epilog
       0480  tst_R16_R19
       0485  tst_R24_R27
       048A  neg_R24_R27
       0493  empy32s
       0493  empy32u
       04C7  pop_xgset30FC
       04D0  pop_xgsetF0FC
       04DB  push_xgsetF0FC
       04DD  push_xgset30FC
       04DF  push_xgset00FC
       04E1  push_xgset003C
       04E6  push_xgsetF00C
       04ED  pop_xgsetF00C
       04F4  push_xgset303C
       04FB  pop_xgset303C
       0502  push_xgsetF03C
       050B  pop_xgsetF03C
       0514  neg32
       051D  long_prolog
       052B  long_epilog
       0536  tstzero1
       053C  tstzero2
       0542  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0118 =    280. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  _unshifted
       0100  __data_start
       0178  _shifted
       01F0  _rcvF
       01F1  PS2SimpleSoft.c:rcvBits
       01F2  PS2SimpleSoft.c:isUp
       01F3  PS2SimpleSoft.c:shift
       0218  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0218   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0218  __bss_start
       0218  _tmp2
       0219  _tmp
       021A  _keyVal
       021B  _dataElem
       0221  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PS2SimpleSoft.o	[ PS2SimpleSoft.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

