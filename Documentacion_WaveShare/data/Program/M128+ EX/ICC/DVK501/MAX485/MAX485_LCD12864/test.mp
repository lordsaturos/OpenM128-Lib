NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0025 =     37. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       00B1  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   00B2   09EE =   2542. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0059  __text_start
       0059  __start
       0079  _exit
       007A  _speaData
       00D9  _I2C_Start
       00E9  _I2C_Restart
       00F9  _I2C_SendWrDAdr
       010B  _I2C_SendWrDAdr_
       0125  _I2C_SendRdDAdr
       0137  _I2C_SendRdDAdr_
       0151  _I2C_SendDat
       0163  _I2C_RcvNAckDat
       0177  _I2C_RcvAckDat
       018B  _I2C_Write
       01AD  _I2C_Read
       01DB  _I2C_Read_
       021E  _delay50us
       0230  _delay50ms
       0246  _delayus
       0253  _SPI_init
       025C  _lcd_wrByte
       0260  _lcd_wrCmd
       026D  _lcd_wrDat
       027A  _lcd_set_xy
       02A5  _lcd_putc
       02B9  _lcd_putd0
       02F3  _lcd_putd
       03A8  _lcd_puts
       03CB  _lcd_puts_
       03EF  _lcd_clr
       03F6  _lcd_init
       040A  _UART_init
       0416  _uart_putchar0
       041A  _uart_getchar0
       0429  _uart_waitchar0
       0434  _main
       045A  push_arg4
       045C  push_arg2
       045F  div32u
       0461  mod32u
       0465  div32s
       0467  mod32s
       0492  long_div_prolog
       04A5  long_div_epilog
       04B4  tst_R16_R19
       04B9  tst_R24_R27
       04BE  neg_R16_R19
       04C7  neg_R24_R27
       04D0  empy32s
       04D0  empy32u
       0500  pop_gset2
       0503  pop_gset3
       0506  pop_gset4
       0509  pop_gset5
       050C  push_gset5
       050E  push_gset4
       0510  push_gset3
       0512  push_gset2
       0514  push_gset1
       0517  pop_gset1
       0518  pop
       052B  long_prolog
       0539  long_epilog
       0544  tstzero1
       054A  tstzero2
       0550  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0025 =     37. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0125  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0125   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0125  __bss_start
       0125  _dataElem
       012B  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
test.o	[ test.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

