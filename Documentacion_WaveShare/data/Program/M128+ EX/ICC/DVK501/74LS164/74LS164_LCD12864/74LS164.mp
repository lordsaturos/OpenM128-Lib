NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0030 =     48. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00BC  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00BC   09D8 =   2520. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005E  __text_start
       005E  __start
       007E  _exit
       007F  _speaData
       00DE  _I2C_Start
       00EE  _I2C_Restart
       00FE  _I2C_SendWrDAdr
       0110  _I2C_SendWrDAdr_
       012A  _I2C_SendRdDAdr
       013C  _I2C_SendRdDAdr_
       0156  _I2C_SendDat
       0168  _I2C_RcvNAckDat
       017C  _I2C_RcvAckDat
       0190  _I2C_Write
       01B2  _I2C_Read
       01E0  _I2C_Read_
       0223  _delay50us
       0235  _delay50ms
       024B  _delayus
       0258  _SPI_init
       0261  _lcd_wrByte
       0265  _lcd_wrCmd
       0272  _lcd_wrDat
       027F  _lcd_set_xy
       02AA  _lcd_putc
       02BE  _lcd_putd0
       02F8  _lcd_putd
       03AD  _lcd_puts
       03D0  _lcd_puts_
       03F4  _lcd_clr
       03FB  _lcd_init
       040F  _setDat
       0421  _main
       0454  push_arg4
       0456  push_arg2
       0459  div32u
       045B  mod32u
       045F  div32s
       0461  mod32s
       048C  long_div_prolog
       049F  long_div_epilog
       04AE  tst_R16_R19
       04B3  tst_R24_R27
       04B8  neg_R16_R19
       04C1  neg_R24_R27
       04CA  empy32s
       04CA  empy32u
       04FA  pop_gset2
       04FD  pop_gset3
       0500  pop_gset4
       0503  pop_gset5
       0506  push_gset5
       0508  push_gset4
       050A  push_gset3
       050C  push_gset2
       050E  push_gset1
       0511  pop_gset1
       0512  pop
       0525  long_prolog
       0533  long_epilog
       053E  tstzero1
       0544  tstzero2
       054A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0030 =     48. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0130  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0130   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0130  __bss_start
       0130  _dataElem
       0136  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
74LS164.o	[ _74LS164.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

