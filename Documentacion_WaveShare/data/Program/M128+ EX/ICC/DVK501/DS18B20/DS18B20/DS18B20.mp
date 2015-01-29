NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   06EC =   1772. bytes (rel,con,rom)

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
       0240  _reset_onewire
       024B  _ack_onewire
       0254  _read_onewire
       0271  _write_onewire
       0291  _convert_ds18b20
       029B  _read_temperature
       02B8  _port_init
       02C3  _main
       02CC  push_arg4
       02CE  push_arg2
       02D1  div32u
       02D3  mod32u
       02D7  div32s
       02D9  mod32s
       0304  long_div_prolog
       0317  long_div_epilog
       0326  tst_R16_R19
       032B  tst_R24_R27
       0330  neg_R16_R19
       0339  neg_R24_R27
       0342  empy32u
       0342  empy32s
       0372  pop_gset2
       0375  pop_gset4
       0378  push_gset5
       037A  push_gset4
       037C  push_gset3
       037E  push_gset2
       0380  push_gset1
       0383  pop_gset1
       0384  pop
       0397  long_prolog
       03A5  long_epilog
       03B0  tstzero1
       03B6  tstzero2
       03BC  __text_end

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
DS18B20.o	[ DS18B20.C ]
<library>	[ asave.s, div32.s, emul32.s, gpop2.s, gpop4.s, gpush.s, longutil.s ]

User Global Definitions

ram_end = 0x105f
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:1.4096

