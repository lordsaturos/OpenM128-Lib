NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   008C   00EC =    236. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  _unshifted
       008C  __lit_start
       0102  _shifted
       0178  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0178   0004 =      4. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0178  __idata_start
       017C  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   017C   071A =   1818. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00BE  __text_start
       00BE  __start
       00DE  _exit
       00DF  _speaData
       013E  _I2C_Start
       014B  _I2C_Restart
       0158  _I2C_SendWrDAdr
       0166  _I2C_SendWrDAdr_
       0180  _I2C_SendRdDAdr
       018E  _I2C_SendRdDAdr_
       01A8  _I2C_SendDat
       01B6  _I2C_RcvNAckDat
       01C6  _I2C_RcvAckDat
       01D6  _I2C_Write
       01F7  _I2C_Read
       0224  _I2C_Read_
       0266  _delay50us
       0278  _delay50ms
       028E  _int1_isr
       02C0  _keyHandle
       0342  _int1_init
       034C  _main
       035B  push_arg4
       035D  push_arg2
       0360  div32u
       0362  mod32u
       0366  div32s
       0368  mod32s
       0393  long_div_prolog
       03A6  long_div_epilog
       03B5  tst_R16_R19
       03BA  tst_R24_R27
       03BF  neg_R16_R19
       03C8  neg_R24_R27
       03D1  empy32u
       03D1  empy32s
       0401  pop_gset2
       0404  pop_gset4
       0407  push_gset5
       0409  push_gset4
       040B  push_gset3
       040D  push_gset2
       040F  push_gset1
       0412  pop_gset1
       0413  pop
       0426  long_prolog
       0434  long_epilog
       043F  tstzero1
       0445  tstzero2
       044B  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0100  _rcvF
       0104  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0104   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0104  __bss_start
       0104  _keyVal
       0105  _dataElem
       010B  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   000C =     12. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PS2SimpleHard.o	[ PS2SimpleHard.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

