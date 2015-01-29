NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0008 =      8. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  _ADEnStatus
       0054  __lit_start
       005C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   005C   0620 =   1568. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002E  __text_start
       002E  __start
       004E  _exit
       004F  _speaData
       00AE  _I2C_Start
       00BB  _I2C_Restart
       00C8  _I2C_SendWrDAdr
       00D6  _I2C_SendWrDAdr_
       00F0  _I2C_SendRdDAdr
       00FE  _I2C_SendRdDAdr_
       0118  _I2C_SendDat
       0126  _I2C_RcvNAckDat
       0136  _I2C_RcvAckDat
       0146  _I2C_Write
       0167  _I2C_Read
       0194  _I2C_Read_
       01D6  _delay50us
       01E8  _delay50ms
       01FE  _adc_init
       021E  _adc_isr
       0234  _main
       024E  push_arg4
       0250  push_arg2
       0253  div32u
       0255  mod32u
       0259  div32s
       025B  mod32s
       0286  long_div_prolog
       0299  long_div_epilog
       02A8  tst_R16_R19
       02AD  tst_R24_R27
       02B2  neg_R16_R19
       02BB  neg_R24_R27
       02C4  empy32u
       02C4  empy32s
       02F4  pop_gset2
       02F7  pop_gset4
       02FA  push_gset5
       02FC  push_gset4
       02FE  push_gset3
       0300  push_gset2
       0302  push_gset1
       0305  pop_gset1
       0306  pop
       0319  long_prolog
       0327  long_epilog
       0332  tstzero1
       0338  tstzero2
       033E  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0060   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  _AdcVal
       0060  __bss_start
       0062  _AdcMux
       0063  _dataElem
       0069  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   003C =     60. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
IntAD.o	[ IntAD.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

