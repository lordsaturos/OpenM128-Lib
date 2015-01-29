NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   001F =     31. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0073  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0074   0A92 =   2706. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003A  __start
       003A  __text_start
       005C  _exit
       005D  _speaData
       00B6  _I2C_Start
       00C3  _I2C_Restart
       00D0  _I2C_SendWrDAdr
       00DE  _I2C_SendWrDAdr_
       00FB  _I2C_SendRdDAdr
       0109  _I2C_SendRdDAdr_
       0124  _I2C_SendDat
       0132  _I2C_RcvNAckDat
       0142  _I2C_RcvAckDat
       0152  _I2C_Write
       0175  _I2C_Read
       01A7  _I2C_Read_
       01EE  _delay50us
       01FE  _delay50ms
       021C  _delayus
       0229  _SPI_init
       0232  _lcd_wrByte
       0236  _lcd_wrCmd
       0243  _lcd_wrDat
       0250  _lcd_set_xy
       027B  _lcd_putc
       028F  _lcd_putd0
       02C6  _lcd_putd
       036F  _lcd_puts
       0391  _lcd_puts_
       03B4  _lcd_clr
       03BA  _lcd_init
       03CD  _PCF8591_getAD
       03E0  _PCF8591_setDA
       03EB  _main
       044E  push_arg4
       0450  push_arg2
       0453  div32u
       0455  mod32u
       0459  div32s
       045B  mod32s
       0487  long_div_prolog
       049A  long_div_epilog
       04AA  tst_R16_R19
       04AF  tst_R24_R27
       04B4  neg_R24_R27
       04BD  empy16s
       04CD  empy32u
       04CD  empy32s
       0501  pop_xgset00FC
       0508  pop_xgset30FC
       0511  pop_xgsetF0FC
       051C  push_xgsetF0FC
       051E  push_xgset30FC
       0520  push_xgset00FC
       0522  push_xgset003C
       0527  push_xgsetF00C
       052E  pop_xgsetF00C
       0535  push_xgset303C
       053C  pop_xgset303C
       0543  push_xgsetF03C
       054C  pop_xgsetF03C
       0555  neg32
       055E  long_prolog
       056C  long_epilog
       0577  tstzero1
       057D  tstzero2
       0583  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   001F =     31. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       007F  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   007F   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       007F  __bss_start
       007F  _dataElem
       0085  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8591.o	[ PCF8591.C ]
<library>	[ asave.s, div32.s, emul16s.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s ]
[ lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

