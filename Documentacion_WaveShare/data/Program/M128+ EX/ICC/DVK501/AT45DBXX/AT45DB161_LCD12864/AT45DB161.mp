NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0028 =     40. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00B4  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00B4   0ACA =   2762. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005A  __start
       005A  __text_start
       007A  _exit
       007B  _speaData
       00DA  _I2C_Start
       00EA  _I2C_Restart
       00FA  _I2C_SendWrDAdr
       010C  _I2C_SendWrDAdr_
       0126  _I2C_SendRdDAdr
       0138  _I2C_SendRdDAdr_
       0152  _I2C_SendDat
       0164  _I2C_RcvNAckDat
       0178  _I2C_RcvAckDat
       018C  _I2C_Write
       01AE  _I2C_Read
       01DC  _I2C_Read_
       021F  _delay50us
       0231  _delay50ms
       0247  _delayus
       0254  _SPI_init
       025D  _lcd_wrByte
       0261  _lcd_wrCmd
       026E  _lcd_wrDat
       027B  _lcd_set_xy
       02A6  _lcd_putc
       02BA  _lcd_putd0
       02F4  _lcd_putd
       03A9  _lcd_puts
       03CC  _lcd_puts_
       03F0  _lcd_clr
       03F7  _lcd_init
       040B  _spi_init
       040E  _spi_transmit_byte
       0412  _write_buffer
       0425  _read_buffer
       043B  _port_init
       0446  _main
       04C9  push_arg4
       04CB  push_arg2
       04CE  div32u
       04D0  mod32u
       04D4  div32s
       04D6  mod32s
       0501  long_div_prolog
       0514  long_div_epilog
       0523  tst_R16_R19
       0528  tst_R24_R27
       052D  neg_R16_R19
       0536  neg_R24_R27
       053F  empy32u
       053F  empy32s
       056F  pop_gset2
       0572  pop_gset3
       0575  pop_gset4
       0578  pop_gset5
       057B  push_gset5
       057D  push_gset4
       057F  push_gset3
       0581  push_gset2
       0583  push_gset1
       0586  pop_gset1
       0587  pop
       059A  long_prolog
       05A8  long_epilog
       05B3  tstzero1
       05B9  tstzero2
       05BF  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0028 =     40. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0128  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0128   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0128  __bss_start
       0128  _dataElem
       012E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
AT45DB161.o	[ AT45DB161.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

