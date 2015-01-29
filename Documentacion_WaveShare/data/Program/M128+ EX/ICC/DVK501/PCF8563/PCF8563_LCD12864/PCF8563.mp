NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0027 =     39. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00B3  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00B4   0C92 =   3218. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005A  __text_start
       005A  __start
       007C  _exit
       007D  _speaData
       00D6  _I2C_Start
       00E6  _I2C_Restart
       00F6  _I2C_SendWrDAdr
       0108  _I2C_SendWrDAdr_
       0125  _I2C_SendRdDAdr
       0137  _I2C_SendRdDAdr_
       0152  _I2C_SendDat
       0164  _I2C_RcvNAckDat
       0178  _I2C_RcvAckDat
       018C  _I2C_Write
       01B0  _I2C_Read
       01E3  _I2C_Read_
       022B  _delay50us
       023B  _delay50ms
       0259  _delayus
       0266  _SPI_init
       026F  _lcd_wrByte
       0273  _lcd_wrCmd
       0280  _lcd_wrDat
       028D  _lcd_set_xy
       02B8  _lcd_putc
       02CC  _lcd_putd0
       0303  _lcd_putd
       03AC  _lcd_puts
       03CE  _lcd_puts_
       03F1  _lcd_clr
       03F7  _lcd_init
       040A  _WriteAByte
       041D  _ReadNByte
       0434  _PCF8563_getTime
       048C  _PCF8563_setTime
       04C6  _PCF8563_init
       04CC  _errDisp
       04E0  _twi_init
       04E9  _main
       0566  push_arg4
       0568  push_arg2
       056B  div32u
       056D  mod32u
       0571  div32s
       0573  mod32s
       059F  long_div_prolog
       05B2  long_div_epilog
       05C2  tst_R16_R19
       05C7  tst_R24_R27
       05CC  neg_R24_R27
       05D5  mod8u
       05D7  div8u
       05D8  xdiv8u
       05ED  empy32u
       05ED  empy32s
       0621  pop_xgset00FC
       0628  pop_xgset30FC
       0631  pop_xgsetF0FC
       063C  push_xgsetF0FC
       063E  push_xgset30FC
       0640  push_xgset00FC
       0642  push_xgset003C
       0647  push_xgsetF00C
       064E  pop_xgsetF00C
       0655  push_xgset303C
       065C  pop_xgset303C
       0663  push_xgsetF03C
       066C  pop_xgsetF03C
       0675  neg32
       067E  long_prolog
       068C  long_epilog
       0697  tstzero1
       069D  tstzero2
       06A3  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0027 =     39. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0127  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0127   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0127  __bss_start
       0127  _dataElem
       012D  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8563.o	[ PCF8563.C ]
<library>	[ asave.s, div32.s, div8u.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s ]
[ lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

