NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   061E =   1566. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002A  __text_start
       002A  __start
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
       0219  _setDat
       0229  _main
       0230  push_arg4
       0232  push_arg2
       0235  div32u
       0237  mod32u
       023B  div32s
       023D  mod32s
       0269  long_div_prolog
       027C  long_div_epilog
       028C  tst_R16_R19
       0291  tst_R24_R27
       0296  neg_R24_R27
       029F  empy32u
       029F  empy32s
       02D3  pop_xgset00FC
       02DA  pop_xgset30FC
       02E3  pop_xgsetF0FC
       02EE  push_xgsetF0FC
       02F0  push_xgset30FC
       02F2  push_xgset00FC
       02F4  push_xgset003C
       02F9  push_xgsetF03C
       0302  pop_xgsetF03C
       030B  neg32
       0314  long_prolog
       0322  long_epilog
       032D  tstzero1
       0333  tstzero2
       0339  __text_end

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
74LS164.o	[ _74LS164.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

