NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   0610 =   1552. bytes (rel,con,rom)

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
       0240  _setDat
       0252  _main
       025E  push_arg4
       0260  push_arg2
       0263  div32u
       0265  mod32u
       0269  div32s
       026B  mod32s
       0296  long_div_prolog
       02A9  long_div_epilog
       02B8  tst_R16_R19
       02BD  tst_R24_R27
       02C2  neg_R16_R19
       02CB  neg_R24_R27
       02D4  empy32u
       02D4  empy32s
       0304  pop_gset2
       0307  pop_gset4
       030A  push_gset5
       030C  push_gset4
       030E  push_gset3
       0310  push_gset2
       0312  push_gset1
       0315  pop_gset1
       0316  pop
       0329  long_prolog
       0337  long_epilog
       0342  tstzero1
       0348  tstzero2
       034E  __text_end

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
74LS164.o	[ _74LS164.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

