NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   06C4 =   1732. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __start
       0046  __text_start
       0068  _exit
       0069  _speaData
       00C2  _I2C_Start
       00D2  _I2C_Restart
       00E2  _I2C_SendWrDAdr
       00F4  _I2C_SendWrDAdr_
       0111  _I2C_SendRdDAdr
       0123  _I2C_SendRdDAdr_
       013E  _I2C_SendDat
       0150  _I2C_RcvNAckDat
       0164  _I2C_RcvAckDat
       0178  _I2C_Write
       019C  _I2C_Read
       01CF  _I2C_Read_
       0217  _delay50us
       0227  _delay50ms
       0245  _delayus
       0252  _PCF8591_getAD
       0265  _PCF8591_setDA
       0270  _errDisp
       0284  _main
       029F  push_arg4
       02A1  push_arg2
       02A4  div32u
       02A6  mod32u
       02AA  div32s
       02AC  mod32s
       02D8  long_div_prolog
       02EB  long_div_epilog
       02FB  tst_R16_R19
       0300  tst_R24_R27
       0305  neg_R24_R27
       030E  empy32u
       030E  empy32s
       0342  pop_xgset00FC
       0349  pop_xgset30FC
       0352  pop_xgsetF0FC
       035D  push_xgsetF0FC
       035F  push_xgset30FC
       0361  push_xgset00FC
       0363  push_xgset003C
       0368  push_xgsetF03C
       0371  pop_xgsetF03C
       037A  neg32
       0383  long_prolog
       0391  long_epilog
       039C  tstzero1
       03A2  tstzero2
       03A8  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0100   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __bss_start
       0100  _dataElem
       0106  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8591.o	[ PCF8591.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

