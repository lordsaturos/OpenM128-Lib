NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0034   0602 =   1538. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       001A  __text_start
       001A  __start
       0039  _exit
       003A  _speaData
       0093  _I2C_Start
       00A3  _I2C_Restart
       00B3  _I2C_SendWrDAdr
       00C5  _I2C_SendWrDAdr_
       00DD  _I2C_SendRdDAdr
       00EF  _I2C_SendRdDAdr_
       0107  _I2C_SendDat
       0119  _I2C_RcvNAckDat
       012D  _I2C_RcvAckDat
       0141  _I2C_Write
       0161  _I2C_Read
       018D  _I2C_Read_
       01CE  _delay50us
       01DE  _delay50ms
       01F2  _delayus
       01FE  _scanKey
       022B  _main
       0231  push_arg4
       0233  push_arg2
       0236  div32u
       0238  mod32u
       023C  div32s
       023E  mod32s
       0269  long_div_prolog
       027C  long_div_epilog
       028B  tst_R16_R19
       0290  tst_R24_R27
       0295  neg_R16_R19
       029E  neg_R24_R27
       02A7  empy32u
       02A7  empy32s
       02D3  pop_gset2
       02D5  pop_gset4
       02D7  push_gset5
       02D9  push_gset4
       02DB  push_gset3
       02DD  push_gset2
       02DF  push_gset1
       02E2  pop_gset1
       02E3  pop
       02F6  long_prolog
       0304  long_epilog
       030F  tstzero1
       0315  tstzero2
       031B  __text_end

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
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
SingleKey.o	[ SingleKey.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x2ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x34
data = 0x100
eeprom:1.256

