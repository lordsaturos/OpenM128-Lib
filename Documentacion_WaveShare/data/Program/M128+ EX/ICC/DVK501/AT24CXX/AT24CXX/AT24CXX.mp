NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   06A0 =   1696. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __text_start
       0046  __start
       0066  _exit
       0067  _speaData
       00C6  _I2C_Start
       00D6  _I2C_Restart
       00E6  _I2C_SendWrDAdr
       00F8  _I2C_SendWrDAdr_
       0112  _I2C_SendRdDAdr
       0124  _I2C_SendRdDAdr_
       013E  _I2C_SendDat
       0150  _I2C_RcvNAckDat
       0164  _I2C_RcvAckDat
       0178  _I2C_Write
       019A  _I2C_Read
       01C8  _I2C_Read_
       020B  _delay50us
       021D  _delay50ms
       0233  _delayus
       0240  _AT24CXX_Write
       0253  _AT24CXX_Read
       0269  _errDisp
       027E  _twi_init
       0287  _main
       02A6  push_arg4
       02A8  push_arg2
       02AB  div32u
       02AD  mod32u
       02B1  div32s
       02B3  mod32s
       02DE  long_div_prolog
       02F1  long_div_epilog
       0300  tst_R16_R19
       0305  tst_R24_R27
       030A  neg_R16_R19
       0313  neg_R24_R27
       031C  empy32u
       031C  empy32s
       034C  pop_gset2
       034F  pop_gset4
       0352  push_gset5
       0354  push_gset4
       0356  push_gset3
       0358  push_gset2
       035A  push_gset1
       035D  pop_gset1
       035E  pop
       0371  long_prolog
       037F  long_epilog
       038A  tstzero1
       0390  tstzero2
       0396  __text_end

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
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT24CXX.o	[ AT24CXX.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

