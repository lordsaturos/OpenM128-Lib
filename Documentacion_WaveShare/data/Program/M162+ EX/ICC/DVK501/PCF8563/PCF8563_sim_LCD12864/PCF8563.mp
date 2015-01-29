NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0027 =     39. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       0097  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0098   0B34 =   2868. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004C  __start
       004C  __text_start
       006E  _exit
       006F  _speaData
       00C8  _delay50us
       00D8  _delay50ms
       00F6  _delayus
       0103  _SPI_init
       010B  _lcd_wrByte
       010F  _lcd_wrCmd
       011C  _lcd_wrDat
       0129  _lcd_set_xy
       0154  _lcd_putc
       0168  _lcd_putd0
       019F  _lcd_putd
       0248  _lcd_puts
       026A  _lcd_puts_
       028D  _lcd_clr
       0293  _lcd_init
       02A6  _sDelay
       02AD  _I2C_Start
       02B9  _I2C_Stop
       02C5  _I2C_Send_DataAddr
       02ED  _I2C_Read_DataAddr
       0316  _I2C_ReadBusy
       033F  _PCF8563_wByte
       0351  _PCF8563_rByte
       0369  _PCF8563_rPage
       038E  _PCF8563_getTime
       03E8  _PCF8563_setTime
       0427  _PCF8563_init
       0434  _main
       04A9  push_arg4
       04AB  push_arg2
       04AE  div32u
       04B0  mod32u
       04B4  div32s
       04B6  mod32s
       04E2  long_div_prolog
       04F5  long_div_epilog
       0505  tst_R16_R19
       050A  tst_R24_R27
       050F  neg_R24_R27
       0518  mod8u
       051A  div8u
       051B  xdiv8u
       0530  empy32u
       0530  empy32s
       0564  pop_xgset00FC
       056B  pop_xgset30FC
       0574  pop_xgsetF0FC
       057F  push_xgsetF0FC
       0581  push_xgset30FC
       0583  push_xgset00FC
       0585  push_xgset003C
       058A  push_xgsetF00C
       0591  pop_xgsetF00C
       0598  push_xgset303C
       059F  pop_xgset303C
       05A6  push_xgsetF03C
       05AF  pop_xgsetF03C
       05B8  neg32
       05C1  long_prolog
       05CF  long_epilog
       05DA  tstzero1
       05E0  tstzero2
       05E6  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0027 =     39. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0127  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0127   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0127  __bss_start
       0127  _dataElem
       012D  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8563.o	[ PCF8563.C ]
<library>	[ asave.s, div32.s, div8u.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s ]
[ lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

