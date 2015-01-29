NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   008C   00F0 =    240. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       008C  _unshifted
       008C  __lit_start
       0104  _shifted
       017C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                           idata   017C   0004 =      4. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       017C  __idata_start
       0180  __idata_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0180   0764 =   1892. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       00C0  __start
       00C0  __text_start
       00E0  _exit
       00E1  _speaData
       0140  _I2C_Start
       0150  _I2C_Restart
       0160  _I2C_SendWrDAdr
       0172  _I2C_SendWrDAdr_
       018C  _I2C_SendRdDAdr
       019E  _I2C_SendRdDAdr_
       01B8  _I2C_SendDat
       01CA  _I2C_RcvNAckDat
       01DE  _I2C_RcvAckDat
       01F2  _I2C_Write
       0214  _I2C_Read
       0242  _I2C_Read_
       0285  _delay50us
       0297  _delay50ms
       02AD  _delayus
       02BA  _check
       02F1  _keyHandle
       0373  _main
       0382  push_arg4
       0384  push_arg2
       0387  div32u
       0389  mod32u
       038D  div32s
       038F  mod32s
       03BA  long_div_prolog
       03CD  long_div_epilog
       03DC  tst_R16_R19
       03E1  tst_R24_R27
       03E6  neg_R16_R19
       03EF  neg_R24_R27
       03F8  empy32u
       03F8  empy32s
       0428  pop_gset2
       042B  pop_gset4
       042E  push_gset5
       0430  push_gset4
       0432  push_gset3
       0434  push_gset2
       0436  push_gset1
       0439  pop_gset1
       043A  pop
       044D  long_prolog
       045B  long_epilog
       0466  tstzero1
       046C  tstzero2
       0472  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0100   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0100  __data_start
       0100  _rcvF
       0104  __data_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0104   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0104  __bss_start
       0104  _keyVal
       0105  _dataElem
       010B  __bss_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
PS2SimpleSoft.o	[ PS2SimpleSoft.c ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

