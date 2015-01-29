NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0070   001D =     29. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0070  __idata_start
       008D  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008E   093E =   2366. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0047  __start
       0047  __text_start
       0067  _exit
       0068  _speaData
       00C7  _I2C_Start
       00D4  _I2C_Restart
       00E1  _I2C_SendWrDAdr
       00EF  _I2C_SendWrDAdr_
       0109  _I2C_SendRdDAdr
       0117  _I2C_SendRdDAdr_
       0131  _I2C_SendDat
       013F  _I2C_RcvNAckDat
       014F  _I2C_RcvAckDat
       015F  _I2C_Write
       0180  _I2C_Read
       01AD  _I2C_Read_
       01EF  _delay50us
       0201  _delay50ms
       0217  _delayus
       0225  _SPI_init
       022E  _lcd_wrByte
       0232  _lcd_wrCmd
       023F  _lcd_wrDat
       024C  _lcd_set_xy
       0277  _lcd_putc
       028B  _lcd_putd0
       02C5  _lcd_putd
       037A  _lcd_puts
       039D  _lcd_puts_
       03C1  _lcd_clr
       03C8  _lcd_init
       03DC  _main
       03F0  push_arg4
       03F2  push_arg2
       03F5  div32u
       03F7  mod32u
       03FB  div32s
       03FD  mod32s
       0428  long_div_prolog
       043B  long_div_epilog
       044A  tst_R16_R19
       044F  tst_R24_R27
       0454  neg_R16_R19
       045D  neg_R24_R27
       0466  empy32s
       0466  empy32u
       0496  pop_gset2
       0499  pop_gset3
       049C  pop_gset4
       049F  pop_gset5
       04A2  push_gset5
       04A4  push_gset4
       04A6  push_gset3
       04A8  push_gset2
       04AA  push_gset1
       04AD  pop_gset1
       04AE  pop
       04C1  long_prolog
       04CF  long_epilog
       04DA  tstzero1
       04E0  tstzero2
       04E6  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   001D =     29. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       011D  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   011D   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       011D  __bss_start
       011D  _dataElem
       0123  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
LCD12864_ST7920.o	[ LCD12864_ST7920.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x4ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x70
data = 0x100
eeprom:1.512

