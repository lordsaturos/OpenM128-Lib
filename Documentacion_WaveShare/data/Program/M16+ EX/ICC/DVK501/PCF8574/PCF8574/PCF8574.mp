NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   06B4 =   1716. bytes (rel,con,rom)

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
       0219  _Write_PCF8574
       0232  _Read_PCF8574
       025C  _port_init
       0268  _main
       027B  push_arg4
       027D  push_arg2
       0280  div32u
       0282  mod32u
       0286  div32s
       0288  mod32s
       02B4  long_div_prolog
       02C7  long_div_epilog
       02D7  tst_R16_R19
       02DC  tst_R24_R27
       02E1  neg_R24_R27
       02EA  empy32s
       02EA  empy32u
       031E  pop_xgset00FC
       0325  pop_xgset30FC
       032E  pop_xgsetF0FC
       0339  push_xgsetF0FC
       033B  push_xgset30FC
       033D  push_xgset00FC
       033F  push_xgset003C
       0344  push_xgsetF03C
       034D  pop_xgsetF03C
       0356  neg32
       035F  long_prolog
       036D  long_epilog
       0378  tstzero1
       037E  tstzero2
       0384  __text_end

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
PCF8574.o	[ PCF8574.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

