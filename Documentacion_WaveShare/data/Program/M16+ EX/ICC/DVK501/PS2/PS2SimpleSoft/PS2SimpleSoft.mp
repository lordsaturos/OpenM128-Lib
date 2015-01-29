NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   00F0 =    240. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0144  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0144   0788 =   1928. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00A2  __start
       00A2  __text_start
       00C4  _exit
       00C5  _speaData
       011E  _I2C_Start
       012B  _I2C_Restart
       0138  _I2C_SendWrDAdr
       0146  _I2C_SendWrDAdr_
       0163  _I2C_SendRdDAdr
       0171  _I2C_SendRdDAdr_
       018C  _I2C_SendDat
       019A  _I2C_RcvNAckDat
       01AA  _I2C_RcvAckDat
       01BA  _I2C_Write
       01DD  _I2C_Read
       020F  _I2C_Read_
       0256  _delay50us
       0266  _delay50ms
       0284  _delayus
       0291  _check
       02C8  _keyHandle
       034E  _main
       035D  push_arg4
       035F  push_arg2
       0362  div32u
       0364  mod32u
       0368  div32s
       036A  mod32s
       0396  long_div_prolog
       03A9  long_div_epilog
       03B9  tst_R16_R19
       03BE  tst_R24_R27
       03C3  neg_R24_R27
       03CC  empy32s
       03CC  empy32u
       0400  pop_xgset00FC
       0407  pop_xgset30FC
       0410  pop_xgsetF0FC
       041B  push_xgsetF0FC
       041D  push_xgset30FC
       041F  push_xgset00FC
       0421  push_xgset003C
       0426  push_xgsetF03C
       042F  pop_xgsetF03C
       0438  neg32
       0441  long_prolog
       044F  long_epilog
       045A  tstzero1
       0460  tstzero2
       0466  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   00F0 =    240. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _unshifted
       0060  __data_start
       00D6  _shifted
       014C  _rcvF
       014D  PS2SimpleSoft.c:rcvBits
       014E  PS2SimpleSoft.c:isUp
       014F  PS2SimpleSoft.c:shift
       0150  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0150   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0150  __bss_start
       0150  _keyVal
       0151  _dataElem
       0157  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PS2SimpleSoft.o	[ PS2SimpleSoft.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

