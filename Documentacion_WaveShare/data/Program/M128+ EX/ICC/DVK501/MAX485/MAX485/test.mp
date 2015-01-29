NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   002A   066A =   1642. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0015  __text_start
       0015  __start
       0036  _exit
       0037  _speaData
       008A  _I2C_Start
       009A  _I2C_Restart
       00AA  _I2C_SendWrDAdr
       00BC  _I2C_SendWrDAdr_
       00D9  _I2C_SendRdDAdr
       00EB  _I2C_SendRdDAdr_
       0106  _I2C_SendDat
       0118  _I2C_RcvNAckDat
       012C  _I2C_RcvAckDat
       0140  _I2C_Write
       0162  _I2C_Read
       0193  _I2C_Read_
       01D9  _delay50us
       01E9  _delay50ms
       0207  _delayus
       0214  _UART_init
       0220  _uart_putchar0
       0224  _uart_getchar0
       0233  _uart_waitchar0
       023E  _main
       0247  push_arg4
       0249  push_arg2
       024C  div32u
       024E  mod32u
       0252  div32s
       0254  mod32s
       027F  long_div_prolog
       0292  long_div_epilog
       02A1  tst_R16_R19
       02A6  tst_R24_R27
       02AB  neg_R24_R27
       02B4  empy32u
       02B4  empy32s
       02E4  pop_xgset00FC
       02EB  pop_xgset30FC
       02F4  pop_xgsetF0FC
       02FF  push_xgsetF0FC
       0301  push_xgset30FC
       0303  push_xgset00FC
       0305  push_xgset003C
       030A  push_xgsetF03C
       0313  pop_xgsetF03C
       031C  neg32
       0325  long_prolog
       0333  long_epilog
       033E  tstzero1
       0344  tstzero2
       034A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0060   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __bss_start
       0060  _dataElem
       0066  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0002 =      2. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtAVR.o	[ crtavr.s ]
test.o	[ test.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x25f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x2a
data = 0x60
eeprom:0.512

