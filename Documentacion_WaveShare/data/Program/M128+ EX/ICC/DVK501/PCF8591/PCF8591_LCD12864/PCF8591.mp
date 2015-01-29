NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   001F =     31. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00AB  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00AC   0AAA =   2730. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0056  __start
       0056  __text_start
       0076  _exit
       0077  _speaData
       00D6  _I2C_Start
       00E6  _I2C_Restart
       00F6  _I2C_SendWrDAdr
       0108  _I2C_SendWrDAdr_
       0122  _I2C_SendRdDAdr
       0134  _I2C_SendRdDAdr_
       014E  _I2C_SendDat
       0160  _I2C_RcvNAckDat
       0174  _I2C_RcvAckDat
       0188  _I2C_Write
       01AA  _I2C_Read
       01D8  _I2C_Read_
       021B  _delay50us
       022D  _delay50ms
       0243  _delayus
       0250  _SPI_init
       0259  _lcd_wrByte
       025D  _lcd_wrCmd
       026A  _lcd_wrDat
       0277  _lcd_set_xy
       02A2  _lcd_putc
       02B6  _lcd_putd0
       02F0  _lcd_putd
       03A5  _lcd_puts
       03C8  _lcd_puts_
       03EC  _lcd_clr
       03F3  _lcd_init
       0407  _PCF8591_getAD
       041B  _PCF8591_setDA
       0428  _errDisp
       043D  _main
       04A5  push_arg4
       04A7  push_arg2
       04AA  div32u
       04AC  mod32u
       04B0  div32s
       04B2  mod32s
       04DD  long_div_prolog
       04F0  long_div_epilog
       04FF  tst_R16_R19
       0504  tst_R24_R27
       0509  neg_R16_R19
       0512  neg_R24_R27
       051B  empy16s
       052B  empy32s
       052B  empy32u
       055B  pop_gset2
       055E  pop_gset3
       0561  pop_gset4
       0564  pop_gset5
       0567  push_gset5
       0569  push_gset4
       056B  push_gset3
       056D  push_gset2
       056F  push_gset1
       0572  pop_gset1
       0573  pop
       0586  long_prolog
       0594  long_epilog
       059F  tstzero1
       05A5  tstzero2
       05AB  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   001F =     31. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       011F  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   011F   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       011F  __bss_start
       011F  _dataElem
       0125  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8591.o	[ PCF8591.C ]
<library>	[ asave.s, div32.s, emul16s.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

