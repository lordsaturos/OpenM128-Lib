NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   008C   0008 =      8. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  __idata_start
       0094  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0094   06CA =   1738. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004A  __start
       004A  __text_start
       006C  _exit
       006D  _speaData
       00C6  _I2C_Start
       00D6  _I2C_Restart
       00E6  _I2C_SendWrDAdr
       00F8  _I2C_SendWrDAdr_
       0115  _I2C_SendRdDAdr
       0127  _I2C_SendRdDAdr_
       0142  _I2C_SendDat
       0154  _I2C_RcvNAckDat
       0168  _I2C_RcvAckDat
       017C  _I2C_Write
       01A0  _I2C_Read
       01D3  _I2C_Read_
       021B  _delay50us
       022B  _delay50ms
       0249  _delayus
       0256  _adc_init
       0276  _adc_isr
       028C  _main
       02A6  push_arg4
       02A8  push_arg2
       02AB  div32u
       02AD  mod32u
       02B1  div32s
       02B3  mod32s
       02DF  long_div_prolog
       02F2  long_div_epilog
       0302  tst_R16_R19
       0307  tst_R24_R27
       030C  neg_R24_R27
       0315  empy32s
       0315  empy32u
       0349  pop_xgset00FC
       0350  pop_xgset30FC
       0359  pop_xgsetF0FC
       0364  push_xgsetF0FC
       0366  push_xgset30FC
       0368  push_xgset00FC
       036A  push_xgset003C
       036F  push_xgsetF03C
       0378  pop_xgsetF03C
       0381  neg32
       038A  long_prolog
       0398  long_epilog
       03A3  tstzero1
       03A9  tstzero2
       03AF  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0008 =      8. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  _ADEnStatus
       0100  __data_start
       0108  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0108   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0108  _AdcVal
       0108  __bss_start
       010A  _AdcMux
       010B  _dataElem
       0111  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   003C =     60. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
IntAD.o	[ IntAD.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

