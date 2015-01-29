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
                            text   00B2   0A4A =   2634. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0059  __text_start
       0059  __start
       007B  _exit
       007C  _speaData
       00D5  _I2C_Start
       00E5  _I2C_Restart
       00F5  _I2C_SendWrDAdr
       0107  _I2C_SendWrDAdr_
       0124  _I2C_SendRdDAdr
       0136  _I2C_SendRdDAdr_
       0151  _I2C_SendDat
       0163  _I2C_RcvNAckDat
       0177  _I2C_RcvAckDat
       018B  _I2C_Write
       01AF  _I2C_Read
       01E2  _I2C_Read_
       022A  _delay50us
       023A  _delay50ms
       0258  _delayus
       0265  _SPI_init
       026E  _lcd_wrByte
       0272  _lcd_wrCmd
       027F  _lcd_wrDat
       028C  _lcd_set_xy
       02B7  _lcd_putc
       02CB  _lcd_putd0
       0302  _lcd_putd
       03AB  _lcd_puts
       03CD  _lcd_puts_
       03F0  _lcd_clr
       03F6  _lcd_init
       0409  _UART_init
       0415  _uart_putchar0
       0419  _uart_getchar0
       0428  _uart_waitchar0
       0433  _main
       0459  push_arg4
       045B  push_arg2
       045E  div32u
       0460  mod32u
       0464  div32s
       0466  mod32s
       0492  long_div_prolog
       04A5  long_div_epilog
       04B5  tst_R16_R19
       04BA  tst_R24_R27
       04BF  neg_R24_R27
       04C8  empy32u
       04C8  empy32s
       04FC  pop_xgset00FC
       0503  pop_xgset30FC
       050C  pop_xgsetF0FC
       0517  push_xgsetF0FC
       0519  push_xgset30FC
       051B  push_xgset00FC
       051D  push_xgset003C
       0522  push_xgsetF00C
       0529  pop_xgsetF00C
       0530  push_xgset303C
       0537  pop_xgset303C
       053E  push_xgsetF03C
       0547  pop_xgsetF03C
       0550  neg32
       0559  long_prolog
       0567  long_epilog
       0572  tstzero1
       0578  tstzero2
       057E  __text_end

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
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpusha.s, gpushb.s, lneg.s ]
[ longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

