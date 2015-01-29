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
                            text   00B4   09D0 =   2512. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       005A  __text_start
       005A  __start
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
       040B  _getDat
       0418  _main
       044C  push_arg4
       044E  push_arg2
       0451  div32u
       0453  mod32u
       0457  div32s
       0459  mod32s
       0484  long_div_prolog
       0497  long_div_epilog
       04A6  tst_R16_R19
       04AB  tst_R24_R27
       04B0  neg_R16_R19
       04B9  neg_R24_R27
       04C2  empy32s
       04C2  empy32u
       04F2  pop_gset2
       04F5  pop_gset3
       04F8  pop_gset4
       04FB  pop_gset5
       04FE  push_gset5
       0500  push_gset4
       0502  push_gset3
       0504  push_gset2
       0506  push_gset1
       0509  pop_gset1
       050A  pop
       051D  long_prolog
       052B  long_epilog
       0536  tstzero1
       053C  tstzero2
       0542  __text_end

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
74LS165.o	[ _74LS165.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

