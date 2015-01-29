NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0114 =    276. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0168  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0168   0B7C =   2940. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00B4  __start
       00B4  __text_start
       00D6  _exit
       00D7  _speaData
       0130  _I2C_Start
       013D  _I2C_Restart
       014A  _I2C_SendWrDAdr
       0158  _I2C_SendWrDAdr_
       0175  _I2C_SendRdDAdr
       0183  _I2C_SendRdDAdr_
       019E  _I2C_SendDat
       01AC  _I2C_RcvNAckDat
       01BC  _I2C_RcvAckDat
       01CC  _I2C_Write
       01EF  _I2C_Read
       0221  _I2C_Read_
       0268  _delay50us
       0278  _delay50ms
       0296  _delayus
       02A3  _SPI_init
       02AC  _lcd_wrByte
       02B0  _lcd_wrCmd
       02BD  _lcd_wrDat
       02CA  _lcd_set_xy
       02F5  _lcd_putc
       0309  _lcd_putd0
       0340  _lcd_putd
       03E9  _lcd_puts
       040B  _lcd_puts_
       042E  _lcd_clr
       0434  _lcd_init
       0447  _check
       047E  _keyHandle
       04F8  _main
       054D  push_arg4
       054F  push_arg2
       0552  div32u
       0554  mod32u
       0558  div32s
       055A  mod32s
       0586  long_div_prolog
       0599  long_div_epilog
       05A9  tst_R16_R19
       05AE  tst_R24_R27
       05B3  neg_R24_R27
       05BC  empy32u
       05BC  empy32s
       05F0  pop_xgset00FC
       05F7  pop_xgset30FC
       0600  pop_xgsetF0FC
       060B  push_xgsetF0FC
       060D  push_xgset30FC
       060F  push_xgset00FC
       0611  push_xgset003C
       0616  push_xgsetF00C
       061D  pop_xgsetF00C
       0624  push_xgset303C
       062B  pop_xgset303C
       0632  push_xgsetF03C
       063B  pop_xgsetF03C
       0644  neg32
       064D  long_prolog
       065B  long_epilog
       0666  tstzero1
       066C  tstzero2
       0672  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0114 =    276. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _unshifted
       0060  __data_start
       00D6  _shifted
       014C  _rcvF
       014D  PS2SimpleSoft.c:rcvBits
       014E  PS2SimpleSoft.c:isUp
       014F  PS2SimpleSoft.c:shift
       0174  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0174   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0174  __bss_start
       0174  _tmp2
       0175  _tmp
       0176  _keyVal
       0177  _dataElem
       017D  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PS2SimpleSoft.o	[ PS2SimpleSoft.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

