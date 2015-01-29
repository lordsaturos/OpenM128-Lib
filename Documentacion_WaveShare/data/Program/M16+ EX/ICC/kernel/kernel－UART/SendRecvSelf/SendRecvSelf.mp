NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0054   05D8 =   1496. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002A  __text_start
       002A  __start
       004A  _exit
       004B  _speaData
       00AA  _I2C_Start
       00B7  _I2C_Restart
       00C4  _I2C_SendWrDAdr
       00D2  _I2C_SendWrDAdr_
       00EC  _I2C_SendRdDAdr
       00FA  _I2C_SendRdDAdr_
       0114  _I2C_SendDat
       0122  _I2C_RcvNAckDat
       0132  _I2C_RcvAckDat
       0142  _I2C_Write
       0163  _I2C_Read
       0190  _I2C_Read_
       01D2  _delay50us
       01E4  _delay50ms
       01FA  _uart0_init
       0205  _uart0_rx_isr
       020E  _mcu_init
       0216  _main
       0226  push_arg4
       0228  push_arg2
       022B  div32u
       022D  mod32u
       0231  div32s
       0233  mod32s
       025E  long_div_prolog
       0271  long_div_epilog
       0280  tst_R16_R19
       0285  tst_R24_R27
       028A  neg_R16_R19
       0293  neg_R24_R27
       029C  empy32u
       029C  empy32s
       02CC  pop_gset2
       02CF  pop_gset4
       02D2  push_gset5
       02D4  push_gset4
       02D6  push_gset3
       02D8  push_gset2
       02DA  push_gset1
       02DD  pop_gset1
       02DE  pop
       02F1  long_prolog
       02FF  long_epilog
       030A  tstzero1
       0310  tstzero2
       0316  __text_end

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
                          vector   0000   0030 =     48. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
SendRecvSelf.o	[ SendRecvSelf.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

