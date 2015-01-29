NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0029 =     41. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       007D  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   007E   0ABC =   2748. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003F  __start
       003F  __text_start
       0061  _exit
       0062  _speaData
       00BB  _I2C_Start
       00C8  _I2C_Restart
       00D5  _I2C_SendWrDAdr
       00E3  _I2C_SendWrDAdr_
       0100  _I2C_SendRdDAdr
       010E  _I2C_SendRdDAdr_
       0129  _I2C_SendDat
       0137  _I2C_RcvNAckDat
       0147  _I2C_RcvAckDat
       0157  _I2C_Write
       017A  _I2C_Read
       01AC  _I2C_Read_
       01F3  _delay50us
       0203  _delay50ms
       0221  _delayus
       022E  _reset_onewire
       0239  _ack_onewire
       0242  _read_onewire
       025F  _write_onewire
       027F  _convert_ds18b20
       0288  _read_temperature
       02A5  _SPI_init
       02AE  _lcd_wrByte
       02B2  _lcd_wrCmd
       02BF  _lcd_wrDat
       02CC  _lcd_set_xy
       02F7  _lcd_putc
       030B  _lcd_putd0
       0342  _lcd_putd
       03EB  _lcd_puts
       040D  _lcd_puts_
       0430  _lcd_clr
       0436  _lcd_init
       0449  _main
       0478  push_arg4
       047A  push_arg2
       047D  div32u
       047F  mod32u
       0483  div32s
       0485  mod32s
       04B1  long_div_prolog
       04C4  long_div_epilog
       04D4  tst_R16_R19
       04D9  tst_R24_R27
       04DE  neg_R24_R27
       04E7  empy32u
       04E7  empy32s
       051B  pop_xgset00FC
       0522  pop_xgset30FC
       052B  pop_xgsetF0FC
       0536  push_xgsetF0FC
       0538  push_xgset30FC
       053A  push_xgset00FC
       053C  push_xgset003C
       0541  push_xgsetF00C
       0548  pop_xgsetF00C
       054F  push_xgset303C
       0556  pop_xgset303C
       055D  push_xgsetF03C
       0566  pop_xgsetF03C
       056F  neg32
       0578  long_prolog
       0586  long_epilog
       0591  tstzero1
       0597  tstzero2
       059D  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0029 =     41. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0089  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0089   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0089  __bss_start
       0089  _dataElem
       008F  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
DS18B20.o	[ DS18B20.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

