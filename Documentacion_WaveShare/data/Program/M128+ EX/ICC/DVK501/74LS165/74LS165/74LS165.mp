NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   061C =   1564. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __start
       0046  __text_start
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
       0240  _getDat
       024D  _main
       0264  push_arg4
       0266  push_arg2
       0269  div32u
       026B  mod32u
       026F  div32s
       0271  mod32s
       029C  long_div_prolog
       02AF  long_div_epilog
       02BE  tst_R16_R19
       02C3  tst_R24_R27
       02C8  neg_R16_R19
       02D1  neg_R24_R27
       02DA  empy32u
       02DA  empy32s
       030A  pop_gset2
       030D  pop_gset4
       0310  push_gset5
       0312  push_gset4
       0314  push_gset3
       0316  push_gset2
       0318  push_gset1
       031B  pop_gset1
       031C  pop
       032F  long_prolog
       033D  long_epilog
       0348  tstzero1
       034E  tstzero2
       0354  __text_end

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
74LS165.o	[ _74LS165.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

