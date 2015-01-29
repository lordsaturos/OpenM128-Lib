NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   06F2 =   1778. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002A  __start
       002A  __text_start
       004C  _exit
       004D  _speaData
       00A6  _I2C_Start
       00B3  _I2C_Restart
       00C0  _I2C_SendWrDAdr
       00CE  _I2C_SendWrDAdr_
       00EB  _I2C_SendRdDAdr
       00F9  _I2C_SendRdDAdr_
       0114  _I2C_SendDat
       0122  _I2C_RcvNAckDat
       0132  _I2C_RcvAckDat
       0142  _I2C_Write
       0165  _I2C_Read
       0197  _I2C_Read_
       01DE  _delay50us
       01EE  _delay50ms
       020C  _delayus
       0219  _reset_onewire
       0224  _ack_onewire
       022D  _read_onewire
       024A  _write_onewire
       026A  _convert_ds18b20
       0273  _read_temperature
       0290  _main
       029A  push_arg4
       029C  push_arg2
       029F  div32u
       02A1  mod32u
       02A5  div32s
       02A7  mod32s
       02D3  long_div_prolog
       02E6  long_div_epilog
       02F6  tst_R16_R19
       02FB  tst_R24_R27
       0300  neg_R24_R27
       0309  empy32u
       0309  empy32s
       033D  pop_xgset00FC
       0344  pop_xgset30FC
       034D  pop_xgsetF0FC
       0358  push_xgsetF0FC
       035A  push_xgset30FC
       035C  push_xgset00FC
       035E  push_xgset003C
       0363  push_xgsetF03C
       036C  pop_xgsetF03C
       0375  neg32
       037E  long_prolog
       038C  long_epilog
       0397  tstzero1
       039D  tstzero2
       03A3  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0060   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __bss_start
       0060  _dataElem
       0066  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
DS18B20.o	[ DS18B20.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

