NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   003F =     63. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00CB  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00CC   0A4C =   2636. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0066  __text_start
       0066  __start
       0086  _exit
       0087  _speaData
       00E6  _I2C_Start
       00F6  _I2C_Restart
       0106  _I2C_SendWrDAdr
       0118  _I2C_SendWrDAdr_
       0132  _I2C_SendRdDAdr
       0144  _I2C_SendRdDAdr_
       015E  _I2C_SendDat
       0170  _I2C_RcvNAckDat
       0184  _I2C_RcvAckDat
       0198  _I2C_Write
       01BA  _I2C_Read
       01E8  _I2C_Read_
       022B  _delay50us
       023D  _delay50ms
       0253  _delayus
       0260  _SPI_init
       0269  _lcd_wrByte
       026D  _lcd_wrCmd
       027A  _lcd_wrDat
       0287  _lcd_set_xy
       02B2  _lcd_putc
       02C6  _lcd_putd0
       0300  _lcd_putd
       03B5  _lcd_puts
       03D8  _lcd_puts_
       03FC  _lcd_clr
       0403  _lcd_init
       0417  _AT24CXX_Write
       042A  _AT24CXX_Read
       0440  _twi_init
       0449  _main
       0496  push_arg4
       0498  push_arg2
       049B  div32u
       049D  mod32u
       04A1  div32s
       04A3  mod32s
       04CE  long_div_prolog
       04E1  long_div_epilog
       04F0  tst_R16_R19
       04F5  tst_R24_R27
       04FA  neg_R16_R19
       0503  neg_R24_R27
       050C  empy32s
       050C  empy32u
       053C  pop_gset2
       053F  pop_gset3
       0542  pop_gset4
       0545  pop_gset5
       0548  push_gset5
       054A  push_gset4
       054C  push_gset3
       054E  push_gset2
       0550  push_gset1
       0553  pop_gset1
       0554  pop
       0567  long_prolog
       0575  long_epilog
       0580  tstzero1
       0586  tstzero2
       058C  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   003F =     63. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       013F  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   013F   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       013F  __bss_start
       013F  _dataElem
       0145  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT24CXX.o	[ AT24CXX.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

