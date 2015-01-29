NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   06C8 =   1736. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __text_start
       0046  __start
       0066  _exit
       0067  _speaData
       00C6  _I2C_Start
       00D6  _I2C_Restart
       00E6  _I2C_SendWrDAdr
       00F8  _I2C_SendWrDAdr_
       0112  _I2C_SendRdDAdr
       0124  _I2C_SendRdDAdr_
       013E  _I2C_SendDat
       0150  _I2C_RcvNAckDat
       0164  _I2C_RcvAckDat
       0178  _I2C_Write
       019A  _I2C_Read
       01C8  _I2C_Read_
       020B  _delay50us
       021D  _delay50ms
       0233  _delayus
       0240  _spi_init
       0243  _spi_transmit_byte
       0247  _write_buffer
       025A  _read_buffer
       0270  _port_init
       027D  _main
       02BA  push_arg4
       02BC  push_arg2
       02BF  div32u
       02C1  mod32u
       02C5  div32s
       02C7  mod32s
       02F2  long_div_prolog
       0305  long_div_epilog
       0314  tst_R16_R19
       0319  tst_R24_R27
       031E  neg_R16_R19
       0327  neg_R24_R27
       0330  empy32s
       0330  empy32u
       0360  pop_gset2
       0363  pop_gset4
       0366  push_gset5
       0368  push_gset4
       036A  push_gset3
       036C  push_gset2
       036E  push_gset1
       0371  pop_gset1
       0372  pop
       0385  long_prolog
       0393  long_epilog
       039E  tstzero1
       03A4  tstzero2
       03AA  __text_end

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
AT45DB161.o	[ AT45DB161.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

