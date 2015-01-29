NOTE: AVR Code addresses are word addresses
All other addresses (including ones in FLASH) are byte addresses

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   008C   005E =     94. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0046  __start
       0046  __text_start
       0068  _exit
       0069  _timer0_init
       0070  _main
       0075  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                          vector   0000   0004 =      4. bytes (abs,ovr,rom)

Files Linked      [ module(s) ]

C:\icc\lib\crtatmega.o	[ crtatmega.s ]
OC0PWM.o	[ OC0PWM.C ]
<library>	

User Global Definitions

ram_end = 0x10ff
hwstk_size = 0x10

User Base Address Definitions

func_lit = 0x8c
data = 0x100
eeprom:0.4096

