NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0029 =     41. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00B5  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00B6   0AB4 =   2740. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005B  __text_start
       005B  __start
       007B  _exit
       007C  _speaData
       00DB  _I2C_Start
       00EB  _I2C_Restart
       00FB  _I2C_SendWrDAdr
       010D  _I2C_SendWrDAdr_
       0127  _I2C_SendRdDAdr
       0139  _I2C_SendRdDAdr_
       0153  _I2C_SendDat
       0165  _I2C_RcvNAckDat
       0179  _I2C_RcvAckDat
       018D  _I2C_Write
       01AF  _I2C_Read
       01DD  _I2C_Read_
       0220  _delay50us
       0232  _delay50ms
       0248  _delayus
       0255  _SPI_init
       025E  _lcd_wrByte
       0262  _lcd_wrCmd
       026F  _lcd_wrDat
       027C  _lcd_set_xy
       02A7  _lcd_putc
       02BB  _lcd_putd0
       02F5  _lcd_putd
       03AA  _lcd_puts
       03CD  _lcd_puts_
       03F1  _lcd_clr
       03F8  _lcd_init
       040C  _reset_onewire
       0417  _ack_onewire
       0420  _read_onewire
       043D  _write_onewire
       045D  _convert_ds18b20
       0467  _read_temperature
       0484  _port_init
       048F  _main
       04BF  push_arg4
       04C1  push_arg2
       04C4  div32u
       04C6  mod32u
       04CA  div32s
       04CC  mod32s
       04F7  long_div_prolog
       050A  long_div_epilog
       0519  tst_R16_R19
       051E  tst_R24_R27
       0523  neg_R16_R19
       052C  neg_R24_R27
       0535  empy32s
       0535  empy32u
       0565  pop_gset2
       0568  pop_gset3
       056B  pop_gset4
       056E  pop_gset5
       0571  push_gset5
       0573  push_gset4
       0575  push_gset3
       0577  push_gset2
       0579  push_gset1
       057C  pop_gset1
       057D  pop
       0590  long_prolog
       059E  long_epilog
       05A9  tstzero1
       05AF  tstzero2
       05B5  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0029 =     41. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0129  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0129   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0129  __bss_start
       0129  _dataElem
       012F  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
DS18B20.o	[ DS18B20.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

