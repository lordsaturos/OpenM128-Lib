NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   0042 =     66. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       00B2  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00B2   0926 =   2342. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0059  __text_start
       0059  __start
       007B  _exit
       007C  _speaData
       00D5  _delay50us
       00E5  _delay50ms
       0103  _delayus
       0110  _SPI_init
       0118  _lcd_wrByte
       011C  _lcd_wrCmd
       0129  _lcd_wrDat
       0136  _lcd_set_xy
       0161  _lcd_putc
       0175  _lcd_putd0
       01AC  _lcd_putd
       0255  _lcd_puts
       0277  _lcd_puts_
       029A  _lcd_clr
       02A0  _lcd_init
       02B3  _sDelay
       02BA  _I2C_Start
       02C6  _I2C_Stop
       02D2  _I2C_Send_DataAddr
       02FA  _I2C_Read_DataAddr
       0323  _I2C_ReadBusy
       034C  _PCF8574_wByte
       0356  _PCF8574_rByte
       0364  _port_init
       0373  _main
       03CE  push_arg4
       03D0  push_arg2
       03D3  div32u
       03D5  mod32u
       03D9  div32s
       03DB  mod32s
       0407  long_div_prolog
       041A  long_div_epilog
       042A  tst_R16_R19
       042F  tst_R24_R27
       0434  neg_R24_R27
       043D  empy32s
       043D  empy32u
       0471  pop_xgset30FC
       047A  pop_xgsetF0FC
       0485  push_xgsetF0FC
       0487  push_xgset30FC
       0489  push_xgset00FC
       048B  push_xgset003C
       0490  push_xgsetF00C
       0497  pop_xgsetF00C
       049E  push_xgset303C
       04A5  pop_xgset303C
       04AC  push_xgsetF03C
       04B5  pop_xgsetF03C
       04BE  neg32
       04C7  long_prolog
       04D5  long_epilog
       04E0  tstzero1
       04E6  tstzero2
       04EC  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0042 =     66. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0142  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0142   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0142  __bss_start
       0142  _dataElem
       0148  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8574.o	[ PCF8574.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:0.512

