NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   0688 =   1672. bytes (rel,con,rom)

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
       0219  _PCF8591_getAD
       022C  _PCF8591_setDA
       0237  _errDisp
       024B  _main
       0265  push_arg4
       0267  push_arg2
       026A  div32u
       026C  mod32u
       0270  div32s
       0272  mod32s
       029E  long_div_prolog
       02B1  long_div_epilog
       02C1  tst_R16_R19
       02C6  tst_R24_R27
       02CB  neg_R24_R27
       02D4  empy32u
       02D4  empy32s
       0308  pop_xgset00FC
       030F  pop_xgset30FC
       0318  pop_xgsetF0FC
       0323  push_xgsetF0FC
       0325  push_xgset30FC
       0327  push_xgset00FC
       0329  push_xgset003C
       032E  push_xgsetF03C
       0337  pop_xgsetF03C
       0340  neg32
       0349  long_prolog
       0357  long_epilog
       0362  tstzero1
       0368  tstzero2
       036E  __text_end

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
PCF8591.o	[ PCF8591.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

