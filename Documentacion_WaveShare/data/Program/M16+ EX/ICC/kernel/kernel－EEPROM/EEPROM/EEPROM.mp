NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0054   0008 =      8. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __lit_start
       005C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   005C   06FA =   1786. bytes (rel,con,rom)

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
       01FE  _main
       0244  push_arg4
       0246  push_arg2
       0249  div32u
       024B  mod32u
       024F  div32s
       0251  mod32s
       027C  long_div_prolog
       028F  long_div_epilog
       029E  tst_R16_R19
       02A3  tst_R24_R27
       02A8  neg_R16_R19
       02B1  neg_R24_R27
       02BA  empy32s
       02BA  empy32u
       02EA  pop_gset2
       02ED  pop_gset4
       02F0  push_gset5
       02F2  push_gset4
       02F4  push_gset3
       02F6  push_gset2
       02F8  push_gset1
       02FB  pop_gset1
       02FC  pop
       030F  long_prolog
       031D  long_epilog
       0328  tstzero1
       032E  tstzero2
       0334  asgncblk
       034D  _EEPROMread
       0352  _EEPROMwrite
       0363  _EEPROMReadBytes
       0387  _EEPROMWriteBytes
       03AB  __text_end

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
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
EEPROM.o	[ EEPROM.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s, pmstruct.s, eepromr.s, eepromw.s ]
[ eepromrbytes.s, eepromwbytes.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:1.512

