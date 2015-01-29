NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0027 =     39. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       007B  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   007C   0C42 =   3138. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       003E  __text_start
       003E  __start
       0060  _exit
       0061  _speaData
       00BA  _I2C_Start
       00C7  _I2C_Restart
       00D4  _I2C_SendWrDAdr
       00E2  _I2C_SendWrDAdr_
       00FF  _I2C_SendRdDAdr
       010D  _I2C_SendRdDAdr_
       0128  _I2C_SendDat
       0136  _I2C_RcvNAckDat
       0146  _I2C_RcvAckDat
       0156  _I2C_Write
       0179  _I2C_Read
       01AB  _I2C_Read_
       01F2  _delay50us
       0202  _delay50ms
       0220  _delayus
       022D  _SPI_init
       0236  _lcd_wrByte
       023A  _lcd_wrCmd
       0247  _lcd_wrDat
       0254  _lcd_set_xy
       027F  _lcd_putc
       0293  _lcd_putd0
       02CA  _lcd_putd
       0373  _lcd_puts
       0395  _lcd_puts_
       03B8  _lcd_clr
       03BE  _lcd_init
       03D1  _WriteAByte
       03E4  _ReadNByte
       03FB  _PCF8563_getTime
       0453  _PCF8563_setTime
       048D  _PCF8563_init
       0493  _errDisp
       04A7  _twi_init
       04AD  _main
       0522  push_arg4
       0524  push_arg2
       0527  div32u
       0529  mod32u
       052D  div32s
       052F  mod32s
       055B  long_div_prolog
       056E  long_div_epilog
       057E  tst_R16_R19
       0583  tst_R24_R27
       0588  neg_R24_R27
       0591  mod8u
       0593  div8u
       0594  xdiv8u
       05A9  empy32u
       05A9  empy32s
       05DD  pop_xgset00FC
       05E4  pop_xgset30FC
       05ED  pop_xgsetF0FC
       05F8  push_xgsetF0FC
       05FA  push_xgset30FC
       05FC  push_xgset00FC
       05FE  push_xgset003C
       0603  push_xgsetF00C
       060A  pop_xgsetF00C
       0611  push_xgset303C
       0618  pop_xgset303C
       061F  push_xgsetF03C
       0628  pop_xgsetF03C
       0631  neg32
       063A  long_prolog
       0648  long_epilog
       0653  tstzero1
       0659  tstzero2
       065F  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0027 =     39. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0087  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0087   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0087  __bss_start
       0087  _dataElem
       008D  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8563.o	[ PCF8563.C ]
<library>	[ asave.s, div32.s, div8u.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s ]
[ lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

