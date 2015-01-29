NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   06C0 =   1728. bytes (rel,con,rom)

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
       0219  _AT24CXX_Write
       022C  _AT24CXX_Read
       0241  _errDisp
       0255  _twi_init
       025B  _main
       027C  push_arg4
       027E  push_arg2
       0281  div32u
       0283  mod32u
       0287  div32s
       0289  mod32s
       02B5  long_div_prolog
       02C8  long_div_epilog
       02D8  tst_R16_R19
       02DD  tst_R24_R27
       02E2  neg_R24_R27
       02EB  empy32s
       02EB  empy32u
       031F  pop_xgset003C
       0324  pop_xgset00FC
       032B  pop_xgset30FC
       0334  pop_xgsetF0FC
       033F  push_xgsetF0FC
       0341  push_xgset30FC
       0343  push_xgset00FC
       0345  push_xgset003C
       034A  push_xgsetF03C
       0353  pop_xgsetF03C
       035C  neg32
       0365  long_prolog
       0373  long_epilog
       037E  tstzero1
       0384  tstzero2
       038A  __text_end

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
AT24CXX.o	[ AT24CXX.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

