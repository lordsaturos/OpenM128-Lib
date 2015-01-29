	.module DS18B20.C
	.area text(rom, con, rel)
	.dbfile D:\ICC_H\Software.H
	.dbfunc e speaData _speaData fV
;              y -> y+4
;              j -> y+0
;              i -> R10
;            len -> R12
;            dat -> y+16
	.even
_speaData::
	xcall push_arg4
	xcall push_gset4
	sbiw R28,8
	ldd R12,y+20
	.dbline -1
	.dbline 116
; /*********************************************************************
; 	΢ ѩ �� ��   WaveShare   http://www.waveShare.net            	
; 		                                                            
; ��Ŀ����:   DS18B20ʾ������
; 		
; Ŀ��ϵͳ:   ��DVK501�� && ��M128 EX+��
; 
; Ӧ������:   ICCAVR 6.31A                                             
; 		                                                                
; ��    ��:   V1.0 
;                                                         
; Բ��ʱ��:   2009-7-1
; 
; ������Ա:   zz
; 
; ˵    ��:   ��������ҵ��;���뱣���˶����ֻ�ע��������Դ
; 		
; 	�� �� �� ΢ ѩ �� �� �� �� �� ˾ �� �� �� �� �� �� Ȩ     
; *********************************************************************/
; 
; /*01010101010101010101010101010101010101010101010101010101010101010101
; ----------------------------------------------------------------------
; �汾���¼�¼��
; 
; ----------------------------------------------------------------------
; ʵ�����ݣ�
; ʹ�ÿ������LEDָʾ�Ʋ鿴DS18B20ת���������¶�
; ----------------------------------------------------------------------
; Ӳ�����ӣ� 
; 		 	  DVK501				 M128 EX+
; 				DQ	    ---------	  PB5
; 				PA7:0	---------	  LED7:0
; ----------------------------------------------------------------------
; ע�����
; ��1�����м��ؿ⺯�����뽫���̸�Ŀ¼�µġ��⺯�����µġ�ICC_H���ļ��п���D��
; ��2������ϸ�Ķ���ʹ�ñض�����������ϡ�
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; #include <iom128v.h>
; #include <macros.h>
; #include "D:\ICC_H\CmmICC.H"
; 
; #define DDRx DDRB
; #define PORTx PORTB
; #define PINx PINB
; #define ds18b20_dq 5 //DQ�ڲ���PB5
; 
; #include "D:\ICC_H\DS18B20_DVK501.H"
; //----�˿ڳ�ʼ��----
; void port_init(void)
; {
;     PORTA = 0x00;
;     DDRA  = 0xFF;
;     PORTB = 0xFF;
;     DDRB  = 0xFF;
;     PORTC = 0xFF; //m103 output only
;     DDRC  = 0xFF;
;     PORTD = 0xFF;
;     DDRD  = 0xFF;
; }
; void main(void)
; {	
; 	port_init();
; 	while(1)
; 	{
; 		delay50ms(20);
; 		PORTA=read_temperature();	//��ת�������¶�ͨ��PA����ʾ
; 	}
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 119
; }
; }
; }
	clr R10
	ldi R20,1
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	std z+0,R20
	std z+1,R21
	std z+2,R22
	std z+3,R23
	xjmp L5
L2:
	.dbline 120
	.dbline 121
	movw R30,R28
	ldd R2,z+0
	ldd R3,z+1
	ldd R4,z+2
	ldd R5,z+3
	movw R30,R28
	ldd R6,z+16
	ldd R7,z+17
	ldd R8,z+18
	ldd R9,z+19
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R6
	movw R18,R8
	xcall div32u
	movw R30,R28
	std z+4,R16
	std z+5,R17
	std z+6,R18
	std z+7,R19
	.dbline 122
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	movw R30,R28
	ldd R2,z+4
	ldd R3,z+5
	ldd R4,z+6
	ldd R5,z+7
	st -y,R23
	st -y,R22
	st -y,R21
	st -y,R20
	movw R16,R2
	movw R18,R4
	xcall mod32u
	ldi R24,<_dataElem
	ldi R25,>_dataElem
	mov R30,R10
	clr R31
	add R30,R24
	adc R31,R25
	std z+0,R16
	.dbline 123
	movw R30,R28
	ldd R2,z+0
	ldd R3,z+1
	ldd R4,z+2
	ldd R5,z+3
	ldi R20,10
	ldi R21,0
	ldi R22,0
	ldi R23,0
	st -y,R5
	st -y,R4
	st -y,R3
	st -y,R2
	movw R16,R20
	movw R18,R22
	xcall empy32u
	movw R30,R28
	std z+0,R16
	std z+1,R17
	std z+2,R18
	std z+3,R19
	.dbline 124
L3:
	.dbline 119
	inc R10
L5:
	.dbline 119
	cp R10,R12
	brsh X0
	xjmp L2
X0:
	.dbline -2
L1:
	adiw R28,8
	xcall pop_gset4
	adiw R28,4
	.dbline 0 ; func end
	ret
	.dbsym l y 4 l
	.dbsym l j 0 l
	.dbsym r i 10 c
	.dbsym r len 12 C
	.dbsym l dat 16 l
	.dbend
	.dbfile D:\ICC_H\I2C.H
	.dbfunc e I2C_Start _I2C_Start fc
	.even
_I2C_Start::
	.dbline -1
	.dbline 126
; }
; }
; }
; }
; }
; }
; }
	.dbline 127
; }
	ldi R24,164
	sts 116,R24
	.dbline 128
L7:
	.dbline 128
L8:
	.dbline 128
; }
	lds R2,116
	sbrs R2,7
	rjmp L7
	.dbline 128
	.dbline 128
	.dbline 129
; }
	lds R24,113
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 130
; }
	clr R16
	xjmp L6
L10:
	.dbline 131
; }
	ldi R16,1
	.dbline -2
L6:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e I2C_Restart _I2C_Restart fc
	.even
_I2C_Restart::
	.dbline -1
	.dbline 142
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 143
; }
	ldi R24,164
	sts 116,R24
	.dbline 144
L13:
	.dbline 144
L14:
	.dbline 144
; }
	lds R2,116
	sbrs R2,7
	rjmp L13
	.dbline 144
	.dbline 144
	.dbline 145
; }
	lds R24,113
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 146
; }
	clr R16
	xjmp L12
L16:
	.dbline 147
; }
	ldi R16,1
	.dbline -2
L12:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e I2C_SendWrDAdr _I2C_SendWrDAdr fc
;         wrDAdr -> R16
	.even
_I2C_SendWrDAdr::
	.dbline -1
	.dbline 158
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 159
; }
	.dbline 159
	sts 115,R16
	.dbline 159
	ldi R24,132
	sts 116,R24
	.dbline 159
	.dbline 159
	.dbline 160
L19:
	.dbline 160
L20:
	.dbline 160
; }
	lds R2,116
	sbrs R2,7
	rjmp L19
	.dbline 160
	.dbline 160
	.dbline 161
; }
	lds R24,113
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 162
; }
	clr R16
	xjmp L18
L22:
	.dbline 163
; }
	ldi R16,1
	.dbline -2
L18:
	.dbline 0 ; func end
	ret
	.dbsym r wrDAdr 16 c
	.dbend
	.dbfunc e I2C_SendWrDAdr_ _I2C_SendWrDAdr_ fc
;         wrDAdr -> R20,R21
	.even
_I2C_SendWrDAdr_::
	xcall push_gset1
	movw R20,R16
	.dbline -1
	.dbline 174
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
	.dbline 175
; �'�
	sbrs R20,0
	rjmp L25
	.dbline 176
; �'�
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L27
	.dbline 177
; �'�
	clr R16
	xjmp L24
L27:
L25:
	.dbline 178
; �'�
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 179
; �'�
	clr R16
	xjmp L24
L29:
	.dbline 180
; �'�
	ldi R16,1
	.dbline -2
L24:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r wrDAdr 20 i
	.dbend
	.dbfunc e I2C_SendRdDAdr _I2C_SendRdDAdr fc
;         rdDAdr -> R16
	.even
_I2C_SendRdDAdr::
	.dbline -1
	.dbline 191
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
; �'�
	.dbline 192
; �'�
	.dbline 192
	sts 115,R16
	.dbline 192
	ldi R24,132
	sts 116,R24
	.dbline 192
	.dbline 192
	.dbline 193
L32:
	.dbline 193
L33:
	.dbline 193
; �'�
	lds R2,116
	sbrs R2,7
	rjmp L32
	.dbline 193
	.dbline 193
	.dbline 194
; �'�
	lds R24,113
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 195
; �'�
	clr R16
	xjmp L31
L35:
	.dbline 196
; �'�
	ldi R16,1
	.dbline -2
L31:
	.dbline 0 ; func end
	ret
	.dbsym r rdDAdr 16 c
	.dbend
	.dbfunc e I2C_SendRdDAdr_ _I2C_SendRdDAdr_ fc
;         rdDAdr -> R20
	.even
_I2C_SendRdDAdr_::
	xcall push_gset1
	mov R20,R16
	.dbline -1
	.dbline 207
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 208
; ��
	sbrs R20,0
	rjmp L38
	.dbline 209
; ��
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L40
	.dbline 210
; ��
	clr R16
	xjmp L37
L40:
L38:
	.dbline 211
; ��
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 212
; ��
	clr R16
	xjmp L37
L42:
	.dbline 213
; ��
	ldi R16,1
	.dbline -2
L37:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r rdDAdr 20 c
	.dbend
	.dbfunc e I2C_SendDat _I2C_SendDat fc
;      configDat -> R16
	.even
_I2C_SendDat::
	.dbline -1
	.dbline 224
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 225
; ��
	.dbline 225
	sts 115,R16
	.dbline 225
	ldi R24,132
	sts 116,R24
	.dbline 225
	.dbline 225
	.dbline 226
L45:
	.dbline 226
L46:
	.dbline 226
; ��
	lds R2,116
	sbrs R2,7
	rjmp L45
	.dbline 226
	.dbline 226
	.dbline 227
; ��
	lds R24,113
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 228
; ��
	clr R16
	xjmp L44
L48:
	.dbline 229
; ��
	ldi R16,1
	.dbline -2
L44:
	.dbline 0 ; func end
	ret
	.dbsym r configDat 16 c
	.dbend
	.dbfunc e I2C_RcvNAckDat _I2C_RcvNAckDat fc
;         pRdDat -> R16,R17
	.even
_I2C_RcvNAckDat::
	.dbline -1
	.dbline 240
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 241
; ��
	ldi R24,132
	sts 116,R24
	.dbline 242
L51:
	.dbline 242
L52:
	.dbline 242
; ��
	lds R2,116
	sbrs R2,7
	rjmp L51
	.dbline 242
	.dbline 242
	.dbline 243
; ��
	lds R24,113
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 244
; ��
	clr R16
	xjmp L50
L54:
	.dbline 245
; ��
	lds R2,115
	movw R30,R16
	std z+0,R2
	.dbline 246
; ��
	ldi R16,1
	.dbline -2
L50:
	.dbline 0 ; func end
	ret
	.dbsym r pRdDat 16 pc
	.dbend
	.dbfunc e I2C_RcvAckDat _I2C_RcvAckDat fc
;         pRdDat -> R16,R17
	.even
_I2C_RcvAckDat::
	.dbline -1
	.dbline 257
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 258
; ��
	ldi R24,196
	sts 116,R24
	.dbline 259
L57:
	.dbline 259
L58:
	.dbline 259
; ��
	lds R2,116
	sbrs R2,7
	rjmp L57
	.dbline 259
	.dbline 259
	.dbline 260
; ��
	lds R24,113
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 261
; ��
	clr R16
	xjmp L56
L60:
	.dbline 262
; ��
	lds R2,115
	movw R30,R16
	std z+0,R2
	.dbline 263
; ��
	ldi R16,1
	.dbline -2
L56:
	.dbline 0 ; func end
	ret
	.dbsym r pRdDat 16 pc
	.dbend
	.dbfunc e I2C_Write _I2C_Write fc
;            dat -> y+4
;        wordAdr -> R20
;         wrDAdr -> R22,R23
	.even
_I2C_Write::
	xcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 276
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 277
; ��
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 278
; ��
	clr R16
	xjmp L62
L63:
	.dbline 280
; ��
; ��
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 281
; ��
	clr R16
	xjmp L62
L65:
	.dbline 283
; ��
; ��
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 284
; ��
	clr R16
	xjmp L62
L67:
	.dbline 286
; ��
; ��
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 287
; ��
	clr R16
	xjmp L62
L69:
	.dbline 289
; ��
; ��
	ldi R24,148
	sts 116,R24
	.dbline 291
; ��
; ��
	ldi R16,1
	.dbline -2
L62:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym l dat 4 c
	.dbsym r wordAdr 20 c
	.dbsym r wrDAdr 22 i
	.dbend
	.dbfunc e I2C_Read _I2C_Read fc
;         pRdDat -> y+6
;         rdDAdr -> y+4
;        wordAdr -> R20
;         wrDAdr -> R22,R23
	.even
_I2C_Read::
	xcall push_gset2
	mov R20,R18
	movw R22,R16
	.dbline -1
	.dbline 322
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 323
; ��
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 324
; ��
	clr R16
	xjmp L71
L72:
	.dbline 326
; ��
; ��
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 327
; ��
	clr R16
	xjmp L71
L74:
	.dbline 329
; ��
; ��
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 330
; ��
	clr R16
	xjmp L71
L76:
	.dbline 332
; ��
; ��
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 333
; ��
	clr R16
	xjmp L71
L78:
	.dbline 335
; ��
; ��
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 336
; ��
	clr R16
	xjmp L71
L80:
	.dbline 338
; ��
; ��
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 339
; ��
	clr R16
	xjmp L71
L82:
	.dbline 341
; ��
; ��
	ldi R24,148
	sts 116,R24
	.dbline 343
; ��
; ��
	ldi R16,1
	.dbline -2
L71:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym l pRdDat 6 pc
	.dbsym l rdDAdr 4 c
	.dbsym r wordAdr 20 c
	.dbsym r wrDAdr 22 i
	.dbend
	.dbfunc e I2C_Read_ _I2C_Read_ fc
;              i -> R20
;            num -> R22
;         pRdDat -> R10,R11
;         rdDAdr -> y+8
;        wordAdr -> R20
;         wrDAdr -> R12,R13
	.even
_I2C_Read_::
	xcall push_gset4
	mov R20,R18
	movw R12,R16
	ldd R10,y+10
	ldd R11,y+11
	ldd R22,y+12
	.dbline -1
	.dbline 359
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
; ��
	.dbline 362
; ��
; ��
; ��
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 363
; ��
	clr R16
	xjmp L84
L85:
	.dbline 365
; ��
; ��
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 366
; ��
	clr R16
	xjmp L84
L87:
	.dbline 368
; ��
; ��
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 369
; ��
	clr R16
	xjmp L84
L89:
	.dbline 371
; ��
; ��
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 372
; ��
	clr R16
	xjmp L84
L91:
	.dbline 374
; ��
; ��
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 375
; ��
	clr R16
	xjmp L84
L93:
	.dbline 377
; ��
; ��
	clr R20
	xjmp L98
L95:
	.dbline 378
; ��
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 379
; ��
	clr R16
	xjmp L84
L99:
L96:
	.dbline 377
	inc R20
L98:
	.dbline 377
	mov R24,R22
	subi R24,1
	cp R20,R24
	brlo L95
	.dbline 381
; ��
; ��
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 382
; ��
	clr R16
	xjmp L84
L101:
	.dbline 384
; ��
; ��
	ldi R24,148
	sts 116,R24
	.dbline 386
; ��
; ��
	ldi R16,1
	.dbline -2
L84:
	xcall pop_gset4
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r num 22 c
	.dbsym r pRdDat 10 pc
	.dbsym l rdDAdr 8 c
	.dbsym r wordAdr 20 c
	.dbsym r wrDAdr 12 i
	.dbend
	.dbfile D:\ICC_H\Hardware.H
	.dbfunc e delay50us _delay50us fV
;              j -> R20
;              t -> R16,R17
	.even
_delay50us::
	xcall push_gset1
	.dbline -1
	.dbline 105
	.dbline 107
	xjmp L107
L104:
	.dbline 108
	clr R20
	xjmp L111
L108:
	.dbline 109
L109:
	.dbline 108
	inc R20
L111:
	.dbline 108
	cpi R20,70
	brlo L108
L105:
	.dbline 107
	subi R16,1
	sbci R17,0
L107:
	.dbline 107
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L104
	.dbline -2
L103:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r j 20 c
	.dbsym r t 16 I
	.dbend
	.dbfunc e delay50ms _delay50ms fV
;              i -> R20,R21
;              t -> R16,R17
	.even
_delay50ms::
	xcall push_gset1
	.dbline -1
	.dbline 120
	.dbline 122
	xjmp L116
L113:
	.dbline 123
	clr R20
	clr R21
	xjmp L120
L117:
	.dbline 124
L118:
	.dbline 123
	subi R20,255  ; offset = 1
	sbci R21,255
L120:
	.dbline 123
	cpi R20,162
	ldi R30,205
	cpc R21,R30
	brlo L117
L114:
	.dbline 122
	subi R16,1
	sbci R17,0
L116:
	.dbline 122
	clr R2
	clr R3
	cp R2,R16
	cpc R3,R17
	brlt L113
	.dbline -2
L112:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 I
	.dbend
	.dbfunc e delayus _delayus fV
;              i -> R20,R21
;              t -> R16,R17
	.even
_delayus::
	xcall push_gset1
	.dbline -1
	.dbline 129
	.dbline 131
	clr R20
	clr R21
	xjmp L125
L122:
	.dbline 132
	.dbline 135
L123:
	.dbline 131
	subi R20,255  ; offset = 1
	sbci R21,255
L125:
	.dbline 131
	cp R20,R16
	cpc R21,R17
	brlo L122
	.dbline -2
L121:
	xcall pop_gset1
	.dbline 0 ; func end
	ret
	.dbsym r i 20 i
	.dbsym r t 16 i
	.dbend
	.dbfile D:\ICC_H\onewirefords18b20.H
	.dbfunc e reset_onewire _reset_onewire fV
	.even
_reset_onewire::
	.dbline -1
	.dbline 43
	.dbline 44
	sbi 0x17,5
	.dbline 45
	cbi 0x18,5
	.dbline 46
	ldi R16,500
	ldi R17,1
	xcall _delayus
	.dbline 47
	sbi 0x18,5
	.dbline 48
	ldi R16,60
	ldi R17,0
	xcall _delayus
	.dbline 49
	cbi 0x17,5
	.dbline -2
L126:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e ack_onewire _ack_onewire fV
	.even
_ack_onewire::
	.dbline -1
	.dbline 53
L128:
	.dbline 54
L129:
	.dbline 54
	sbic 0x16,5
	rjmp L128
L131:
	.dbline 55
L132:
	.dbline 55
	sbis 0x16,5
	rjmp L131
	.dbline 56
	ldi R16,38
	ldi R17,0
	xcall _delayus
	.dbline 57
	sbi 0x17,5
	.dbline -2
L127:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e read_onewire _read_onewire fc
;              i -> R20
;           data -> R22
	.even
_read_onewire::
	xcall push_gset2
	.dbline -1
	.dbline 61
	.dbline 62
	clr R22
	.dbline 62
	clr R20
	.dbline 63
	xjmp L138
L135:
	.dbline 64
	.dbline 65
	sbi 0x17,5
	.dbline 67
	lsr R22
	.dbline 68
	cbi 0x18,5
	.dbline 69
	ldi R16,1
	ldi R17,0
	xcall _delayus
	.dbline 70
	sbi 0x18,5
	.dbline 71
	ldi R16,2
	ldi R17,0
	xcall _delayus
	.dbline 73
	cbi 0x17,5
	.dbline 74
	sbis 0x16,5
	rjmp L139
	.dbline 74
	ori R22,128
L139:
	.dbline 75
	ldi R16,118
	ldi R17,0
	xcall _delayus
	.dbline 76
L136:
	.dbline 63
	inc R20
L138:
	.dbline 63
	cpi R20,8
	brlo L135
	.dbline 77
	mov R16,R22
	.dbline -2
L134:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r data 22 c
	.dbend
	.dbfunc e write_onewire _write_onewire fV
;              i -> R20
;           data -> R22
	.even
_write_onewire::
	xcall push_gset2
	mov R22,R16
	.dbline -1
	.dbline 81
	.dbline 82
	clr R20
	.dbline 83
	sbi 0x17,5
	.dbline 84
	xjmp L145
L142:
	.dbline 85
	.dbline 86
	sbrs R22,0
	rjmp L146
	.dbline 87
	.dbline 88
	cbi 0x18,5
	.dbline 89
	ldi R16,14
	ldi R17,0
	xcall _delayus
	.dbline 90
	sbi 0x18,5
	.dbline 91
	ldi R16,108
	ldi R17,0
	xcall _delayus
	.dbline 92
	xjmp L147
L146:
	.dbline 94
	.dbline 95
	cbi 0x18,5
	.dbline 96
	ldi R16,108
	ldi R17,0
	xcall _delayus
	.dbline 97
	sbi 0x18,5
	.dbline 98
	ldi R16,14
	ldi R17,0
	xcall _delayus
	.dbline 99
L147:
	.dbline 100
	lsr R22
	.dbline 101
L143:
	.dbline 84
	inc R20
L145:
	.dbline 84
	cpi R20,8
	brlo L142
	.dbline -2
L141:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r i 20 c
	.dbsym r data 22 c
	.dbend
	.dbfile D:\ICC_H\DS18B20_DVK501.H
	.dbfunc e convert_ds18b20 _convert_ds18b20 fV
	.even
_convert_ds18b20::
	.dbline -1
	.dbline 48
	.dbline 49
	xcall _reset_onewire
	.dbline 50
	xcall _ack_onewire
	.dbline 51
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 52
	ldi R16,204
	xcall _write_onewire
	.dbline 53
	ldi R16,68
	xcall _write_onewire
	.dbline -2
L148:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e read_temperature _read_temperature fc
;          temp1 -> R22
;          temp2 -> R20
	.even
_read_temperature::
	xcall push_gset2
	.dbline -1
	.dbline 57
	.dbline 59
	xcall _convert_ds18b20
	.dbline 60
	xcall _reset_onewire
	.dbline 61
	xcall _ack_onewire
	.dbline 62
	ldi R16,200
	ldi R17,0
	xcall _delay50us
	.dbline 63
	ldi R16,204
	xcall _write_onewire
	.dbline 64
	ldi R16,190
	xcall _write_onewire
	.dbline 65
	xcall _read_onewire
	mov R22,R16
	.dbline 66
	xcall _read_onewire
	mov R20,R16
	.dbline 67
	mov R24,R20
	andi R24,#0x0F
	swap R24
	mov R20,R24
	.dbline 68
	mov R24,R22
	swap R24
	andi R24,#0x0F
	mov R22,R24
	.dbline 69
	or R20,R24
	.dbline 71
	mov R16,R20
	.dbline -2
L149:
	xcall pop_gset2
	.dbline 0 ; func end
	ret
	.dbsym r temp1 22 c
	.dbsym r temp2 20 c
	.dbend
	.dbfile E:\���󱸷�\DVK501��������\M128_E~1\DS18B2~1\DS18B20\DS18B20.C
	.dbfunc e port_init _port_init fV
	.even
_port_init::
	.dbline -1
	.dbline 51
	.dbline 52
	clr R2
	out 0x1b,R2
	.dbline 53
	ldi R24,255
	out 0x1a,R24
	.dbline 54
	out 0x18,R24
	.dbline 55
	out 0x17,R24
	.dbline 56
	out 0x15,R24
	.dbline 57
	out 0x14,R24
	.dbline 58
	out 0x12,R24
	.dbline 59
	out 0x11,R24
	.dbline -2
L150:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 62
	.dbline 63
	xcall _port_init
	xjmp L153
L152:
	.dbline 65
	.dbline 66
	ldi R16,20
	ldi R17,0
	xcall _delay50ms
	.dbline 67
	xcall _read_temperature
	out 0x1b,R16
	.dbline 68
L153:
	.dbline 64
	xjmp L152
X1:
	.dbline -2
L151:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\���󱸷�\DVK501��������\M128_E~1\DS18B2~1\DS18B20\DS18B20.C
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c