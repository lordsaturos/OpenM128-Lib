NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   0054   0003 =      3. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0054  __idata_start
       0057  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0058   0864 =   2148. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       002C  __start
       002C  __text_start
       004E  _exit
       004F  _speaData
       00A8  _I2C_Start
       00B5  _I2C_Restart
       00C2  _I2C_SendWrDAdr
       00D0  _I2C_SendWrDAdr_
       00ED  _I2C_SendRdDAdr
       00FB  _I2C_SendRdDAdr_
       0116  _I2C_SendDat
       0124  _I2C_RcvNAckDat
       0134  _I2C_RcvAckDat
       0144  _I2C_Write
       0167  _I2C_Read
       0199  _I2C_Read_
       01E0  _delay50us
       01F0  _delay50ms
       020E  _delayus
       021B  _WriteAByte
       022E  _ReadNByte
       0245  _PCF8563_getTime
       029D  _PCF8563_setTime
       02D7  _PCF8563_init
       02DD  _errDisp
       02F1  _twi_init
       02F7  _main
       0317  push_arg4
       0319  push_arg2
       031C  div32u
       031E  mod32u
       0322  div32s
       0324  mod32s
       0350  long_div_prolog
       0363  long_div_epilog
       0373  tst_R16_R19
       0378  tst_R24_R27
       037D  neg_R24_R27
       0386  mod8u
       0388  div8u
       0389  xdiv8u
       039E  empy32u
       039E  empy32s
       03D2  pop_xgset00FC
       03D9  pop_xgset30FC
       03E2  pop_xgsetF0FC
       03ED  push_xgsetF0FC
       03EF  push_xgset30FC
       03F1  push_xgset00FC
       03F3  push_xgset003C
       03F8  push_xgsetF00C
       03FF  pop_xgsetF00C
       0406  push_xgsetF03C
       040F  pop_xgsetF03C
       0418  neg32
       0421  long_prolog
       042F  long_epilog
       043A  tstzero1
       0440  tstzero2
       0446  asgnblk
       045E  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0060   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0060  __data_start
       0063  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0063   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0063  __bss_start
       0063  _dataElem
       0069  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

c:\icc\lib\crtatmega.o	[ crtatmega.s ]
PCF8563.o	[ PCF8563.C ]
<library>	[ asave.s, div32.s, div8u.s, emul32.s, gpop3.s, gpop4.s, gpop5.s, gpush.s, gpushz.s, gpushb.s, lneg.s, longutil.s ]
[ struct.s ]

User Global Definitions

ram_end = 0x45f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x54
data = 0x60
eeprom:0.512

