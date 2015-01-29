NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   06B6 =   1718. bytes (rel,con,rom)

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
       0219  _spi_init
       021C  _spi_transmit_byte
       0220  _write_buffer
       0232  _read_buffer
       0248  _main
       0277  push_arg4
       0279  push_arg2
       027C  div32u
       027E  mod32u
       0282  div32s
       0284  mod32s
       02B0  long_div_prolog
       02C3  long_div_epilog
       02D3  tst_R16_R19
       02D8  tst_R24_R27
       02DD  neg_R24_R27
       02E6  empy32s
       02E6  empy32u
       031A  pop_xgset003C
       031F  pop_xgset00FC
       0326  pop_xgset30FC
       032F  pop_xgsetF0FC
       033A  push_xgsetF0FC
       033C  push_xgset30FC
       033E  push_xgset00FC
       0340  push_xgset003C
       0345  push_xgsetF03C
       034E  pop_xgsetF03C
       0357  neg32
       0360  long_prolog
       036E  long_epilog
       0379  tstzero1
       037F  tstzero2
       0385  __text_end

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
AT45DB161.o	[ AT45DB161.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]


User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

