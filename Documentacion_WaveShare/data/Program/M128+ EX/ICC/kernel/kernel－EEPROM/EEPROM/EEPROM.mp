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
                            text   0094   077E =   1918. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       004A  __text_start
       004A  __start
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
       0256  _main
       029C  push_arg4
       029E  push_arg2
       02A1  div32u
       02A3  mod32u
       02A7  div32s
       02A9  mod32s
       02D5  long_div_prolog
       02E8  long_div_epilog
       02F8  tst_R16_R19
       02FD  tst_R24_R27
       0302  neg_R24_R27
       030B  empy32s
       030B  empy32u
       033F  pop_xgset00FC
       0346  pop_xgset30FC
       034F  pop_xgsetF0FC
       035A  push_xgsetF0FC
       035C  push_xgset30FC
       035E  push_xgset00FC
       0360  push_xgset003C
       0365  push_xgsetF03C
       036E  pop_xgsetF03C
       0377  neg32
       0380  long_prolog
       038E  long_epilog
       0399  tstzero1
       039F  tstzero2
       03A5  asgnblk
       03BD  _EEPROMread
       03C4  _EEPROMwrite
       03D3  _EEPROMReadBytes
       03EE  _EEPROMWriteBytes
       0409  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0008 =      8. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0108  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0108   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0108  __bss_start
       0108  _dataElem
       010E  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
EEPROM.o	[ EEPROM.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushb.s, lneg.s, longutil.s, struct.s ]
[ eepromr.s, eepromw.s, eepromrbytes.s, eepromwbytes.s ]

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

