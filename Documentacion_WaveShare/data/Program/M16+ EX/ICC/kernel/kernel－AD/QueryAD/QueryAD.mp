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
                            text   005C   05EA =   1514. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002E  __start
       002E  __text_start
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
       021C  _main
       0233  push_arg4
       0235  push_arg2
       0238  div32u
       023A  mod32u
       023E  div32s
       0240  mod32s
       026B  long_div_prolog
       027E  long_div_epilog
       028D  tst_R16_R19
       0292  tst_R24_R27
       0297  neg_R16_R19
       02A0  neg_R24_R27
       02A9  empy32s
       02A9  empy32u
       02D9  pop_gset2
       02DC  pop_gset4
       02DF  push_gset5
       02E1  push_gset4
       02E3  push_gset3
       02E5  push_gset2
       02E7  push_gset1
       02EA  pop_gset1
       02EB  pop
       02FE  long_prolog
       030C  long_epilog
       0317  tstzero1
       031D  tstzero2
       0323  __text_end

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
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
QueryAD.o	[ QueryAD.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

