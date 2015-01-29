NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0028 =     40. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0098  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0098   097C =   2428. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004C  __text_start
       004C  __start
       006E  _exit
       006F  _speaData
       00C8  _delay50us
       00D8  _delay50ms
       00F6  _delayus
       0103  _SPI_init
       010C  _lcd_wrByte
       0110  _lcd_wrCmd
       011D  _lcd_wrDat
       012A  _lcd_set_xy
       0155  _lcd_putc
       0169  _lcd_putd0
       01A0  _lcd_putd
       0249  _lcd_puts
       026B  _lcd_puts_
       028E  _lcd_clr
       0294  _lcd_init
       02A7  _sDelay
       02AE  _I2C_Start
       02BA  _I2C_Stop
       02C6  _I2C_Send_DataAddr
       02EE  _I2C_Read_DataAddr
       0317  _I2C_ReadBusy
       0340  _AT24C_wByte
       0352  _AT24C_wPage
       036F  _AT24C_rByte
       0387  _AT24C_rPage
       03AD  _main
       03EC  push_arg4
       03EE  push_arg2
       03F1  div32u
       03F3  mod32u
       03F7  div32s
       03F9  mod32s
       0425  long_div_prolog
       0438  long_div_epilog
       0448  tst_R16_R19
       044D  tst_R24_R27
       0452  neg_R24_R27
       045B  empy32s
       045B  empy32u
       048F  pop_xgset30FC
       0498  pop_xgsetF0FC
       04A3  push_xgsetF0FC
       04A5  push_xgset30FC
       04A7  push_xgset00FC
       04A9  push_xgset003C
       04AE  push_xgsetF00C
       04B5  pop_xgsetF00C
       04BC  push_xgset303C
       04C3  pop_xgset303C
       04CA  push_xgsetF03C
       04D3  pop_xgsetF03C
       04DC  neg32
       04E5  long_prolog
       04F3  long_epilog
       04FE  tstzero1
       0504  tstzero2
       050A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0028 =     40. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0128  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0128   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0128  __bss_start
       0128  _dataElem
       012E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT24CXX.o	[ AT24CXX.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

