NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   063C =   1596. bytes (rel,con,rom)

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
       0241  _scanKey
       026E  _main
       0274  push_arg4
       0276  push_arg2
       0279  div32u
       027B  mod32u
       027F  div32s
       0281  mod32s
       02AC  long_div_prolog
       02BF  long_div_epilog
       02CE  tst_R16_R19
       02D3  tst_R24_R27
       02D8  neg_R16_R19
       02E1  neg_R24_R27
       02EA  empy32u
       02EA  empy32s
       031A  pop_gset2
       031D  pop_gset4
       0320  push_gset5
       0322  push_gset4
       0324  push_gset3
       0326  push_gset2
       0328  push_gset1
       032B  pop_gset1
       032C  pop
       033F  long_prolog
       034D  long_epilog
       0358  tstzero1
       035E  tstzero2
       0364  __text_end

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
SingleKey.o	[ SingleKey.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

