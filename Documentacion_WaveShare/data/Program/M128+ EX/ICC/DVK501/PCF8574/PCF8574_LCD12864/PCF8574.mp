NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0042 =     66. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00CE  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00CE   0B0E =   2830. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0067  __text_start
       0067  __start
       0089  _exit
       008A  _speaData
       00E3  _I2C_Start
       00F3  _I2C_Restart
       0103  _I2C_SendWrDAdr
       0115  _I2C_SendWrDAdr_
       0132  _I2C_SendRdDAdr
       0144  _I2C_SendRdDAdr_
       015F  _I2C_SendDat
       0171  _I2C_RcvNAckDat
       0185  _I2C_RcvAckDat
       0199  _I2C_Write
       01BD  _I2C_Read
       01F0  _I2C_Read_
       0238  _delay50us
       0248  _delay50ms
       0266  _delayus
       0273  _SPI_init
       027C  _lcd_wrByte
       0280  _lcd_wrCmd
       028D  _lcd_wrDat
       029A  _lcd_set_xy
       02C5  _lcd_putc
       02D9  _lcd_putd0
       0310  _lcd_putd
       03B9  _lcd_puts
       03DB  _lcd_puts_
       03FE  _lcd_clr
       0404  _lcd_init
       0417  _Write_PCF8574
       0431  _Read_PCF8574
       0460  _port_init
       046E  _main
       04C9  push_arg4
       04CB  push_arg2
       04CE  div32u
       04D0  mod32u
       04D4  div32s
       04D6  mod32s
       0502  long_div_prolog
       0515  long_div_epilog
       0525  tst_R16_R19
       052A  tst_R24_R27
       052F  neg_R24_R27
       0538  empy32u
       0538  empy32s
       056C  pop_xgset00FC
       0573  pop_xgset30FC
       057C  pop_xgsetF0FC
       0587  push_xgsetF0FC
       0589  push_xgset30FC
       058B  push_xgset00FC
       058D  push_xgset003C
       0592  push_xgsetF00C
       0599  pop_xgsetF00C
       05A0  push_xgset303C
       05A7  pop_xgset303C
       05AE  push_xgsetF03C
       05B7  pop_xgsetF03C
       05C0  neg32
       05C9  long_prolog
       05D7  long_epilog
       05E2  tstzero1
       05E8  tstzero2
       05EE  __text_end

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
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

