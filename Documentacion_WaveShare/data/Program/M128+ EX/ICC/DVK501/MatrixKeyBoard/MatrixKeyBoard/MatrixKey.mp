NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   008C   0008 =      8. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __lit_start
       008C  _setSta_
       0090  _getSta_
       0094  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0094   065C =   1628. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004A  __text_start
       004A  __start
       006A  _exit
       006B  _speaData
       00CA  _I2C_Start
       00DA  _I2C_Restart
       00EA  _I2C_SendWrDAdr
       00FC  _I2C_SendWrDAdr_
       0116  _I2C_SendRdDAdr
       0128  _I2C_SendRdDAdr_
       0142  _I2C_SendDat
       0154  _I2C_RcvNAckDat
       0168  _I2C_RcvAckDat
       017C  _I2C_Write
       019E  _I2C_Read
       01CC  _I2C_Read_
       020F  _delay50us
       0221  _delay50ms
       0237  _delayus
       0245  _GetKeyVal
       027C  _main
       0288  push_arg4
       028A  push_arg2
       028D  div32u
       028F  mod32u
       0293  div32s
       0295  mod32s
       02C0  long_div_prolog
       02D3  long_div_epilog
       02E2  tst_R16_R19
       02E7  tst_R24_R27
       02EC  neg_R16_R19
       02F5  neg_R24_R27
       02FE  empy32u
       02FE  empy32s
       032E  pop_gset2
       0331  pop_gset4
       0334  push_gset5
       0336  push_gset4
       0338  push_gset3
       033A  push_gset2
       033C  push_gset1
       033F  pop_gset1
       0340  pop
       0353  long_prolog
       0361  long_epilog
       036C  tstzero1
       0372  tstzero2
       0378  __text_end

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
MatrixKey.o	[ MatrixKey.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x1e

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

