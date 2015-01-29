	.module QueryAD.C
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
; Ŀ    ��:   ����ʹ���ڲ�AD�Ĳ�ѯʾ������
; 	
; Ŀ��ϵͳ:   ����AVR��Ƭ��
; 		                                                                
; Ӧ�����:   ICCAVR
; 		                                                                
; ��    ��:   Version 1.0                                                          
; 		                                                                
; Բ��ʱ��:   2005-06-25
; 	
; ������Ա:   SEE
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
; ʹ�ò�ѯ���AD0�ڣ�ʹ��PB/PD�ڵ�LEDָʾAD���������ݡ�
; ----------------------------------------------------------------------
; Ӳ�����ӣ�	
; ����ADJ0.AD0�������롰MCU.AD0�� ����ʹ�ö�·ñ�̽ӡ�
; ��PB/PD�ڵ�LEDָʾ��ʹ�ܿ����л���"ON"״̬��
; ----------------------------------------------------------------------
; ע����� 
; ��1�����м��ؿ⺯�����뽫���̸�Ŀ¼�µġ��⺯�����µġ�ICC_H���ļ��п���D��
; ��2������ϸ�Ķ������̸�Ŀ¼�µġ���Ʒ����\������ʵ���\SMKϵ��\SMK1632\˵�����ϡ�
; 		
; ----------------------------------------------------------------------
; 10101010101010101010101010101010101010101010101010101010101010101010*/
; 
; #include <iom16v.h>
; #include "D:\ICC_H\CmmICC.H"
; 
; #define H_VAL_DISP_DDR  DDRD
; #define L_VAL_DISP_DDR  DDRB
; #define H_VAL_DISP_PORT PORTD
; #define L_VAL_DISP_PORT PORTB
; 
; const uint8 ADEnStatus[8] = {0xFE,0xFD,0xFB,0xF7,0xEF,0xDF,0xBF,0x7F};
; 
; uint8 AdcMux;			  //ADCͨ��
; uint16 AdcVal;			  //ADCת��ֵ
; 
; /*--------------------------------------------------------------------
; �������ƣ�
; �������ܣ�
; ע�����
; ��ʾ˵����
; ��    �룺
; ��    �أ�
; --------------------------------------------------------------------*/
; void adc_init()
; {
; 	/*--------
; 	���ö�Ӧ��IO��Ϊ�������̬
; 	--------*/
; 	DDRA &= ADEnStatus[AdcMux];	   
; 	PORTA &= ADEnStatus[AdcMux];
; 
; 	ADCSR = 0x00;				//disable adc
; 	ADMUX = (1<<REFS0)|(AdcMux&0x0F);	//set AVcc as Vref, set adc input channel
; 	ACSR = (1<<ACD);			//close analog comparator
; 	//ADCSRA=(1<<ADEN)|(1<<ADIE)|(1<<ADSC)|(1<<ADPS2)|(1<<ADPS1);//64��Ƶ
; }
; /*--------------------------------------------------------------------
; �������ƣ�
; �������ܣ�
; ע�����
; ��ʾ˵����
; ��    �룺
; ��    �أ�
; --------------------------------------------------------------------*/
; void main(void)
; {
; 	H_VAL_DISP_DDR = 0xFF;
; 	L_VAL_DISP_DDR = 0xFF;
; 	AdcMux = 0;				//ʹ��ADCͨ��0
; 	adc_init(); 
; 	while(1)
; 	{ 
; 		ADCSRA=(1<<ADEN)|(1<<ADSC)|(1<<ADPS2)|(1<<ADPS1); 	
; 		while(!ADSC);
; 		H_VAL_DISP_PORT = (ADC&0x300)>>8;	//ADC�ĸ�2λVal
; 		L_VAL_DISP_PORT = ADC&0xFF;			//ADC�ĵ�8λVal
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
	.dbline 128
; }
; }
; }
; }
; }
; }
; }
; }
; }
	.dbline 129
; }
	ldi R24,164
	out 0x36,R24
	.dbline 130
L7:
	.dbline 130
L8:
	.dbline 130
; }
	in R2,0x36
	sbrs R2,7
	rjmp L7
	.dbline 130
	.dbline 130
	.dbline 131
; }
	in R24,0x1
	andi R24,248
	cpi R24,8
	breq L10
	.dbline 132
; }
	clr R16
	xjmp L6
L10:
	.dbline 133
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
	.dbline 144
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
	.dbline 145
; }
	ldi R24,164
	out 0x36,R24
	.dbline 146
L13:
	.dbline 146
L14:
	.dbline 146
; }
	in R2,0x36
	sbrs R2,7
	rjmp L13
	.dbline 146
	.dbline 146
	.dbline 147
; }
	in R24,0x1
	andi R24,248
	cpi R24,16
	breq L16
	.dbline 148
; }
	clr R16
	xjmp L12
L16:
	.dbline 149
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
	.dbline 160
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
	.dbline 161
; }
	.dbline 161
	out 0x3,R16
	.dbline 161
	ldi R24,132
	out 0x36,R24
	.dbline 161
	.dbline 161
	.dbline 162
L19:
	.dbline 162
L20:
	.dbline 162
; }
	in R2,0x36
	sbrs R2,7
	rjmp L19
	.dbline 162
	.dbline 162
	.dbline 163
; }
	in R24,0x1
	andi R24,248
	cpi R24,24
	breq L22
	.dbline 164
; }
	clr R16
	xjmp L18
L22:
	.dbline 165
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
	.dbline 176
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
	.dbline 177
; �'�
	sbrs R20,0
	rjmp L25
	.dbline 178
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
	.dbline 179
; �'�
	clr R16
	xjmp L24
L27:
L25:
	.dbline 180
; �'�
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L29
	.dbline 181
; �'�
	clr R16
	xjmp L24
L29:
	.dbline 182
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
	.dbline 193
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
	.dbline 194
; �'�
	.dbline 194
	out 0x3,R16
	.dbline 194
	ldi R24,132
	out 0x36,R24
	.dbline 194
	.dbline 194
	.dbline 195
L32:
	.dbline 195
L33:
	.dbline 195
; �'�
	in R2,0x36
	sbrs R2,7
	rjmp L32
	.dbline 195
	.dbline 195
	.dbline 196
; �'�
	in R24,0x1
	andi R24,248
	cpi R24,64
	breq L35
	.dbline 197
; �'�
	clr R16
	xjmp L31
L35:
	.dbline 198
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
	.dbline 209
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 210
; ���
	sbrs R20,0
	rjmp L38
	.dbline 211
; ���
	mov R16,R20
	clr R17
	mov R16,R17
	clr R17
	sbrc R16,7
	com R17
	xcall _I2C_SendWrDAdr
	tst R16
	brne L40
	.dbline 212
; ���
	clr R16
	xjmp L37
L40:
L38:
	.dbline 213
; ���
	mov R16,R20
	xcall _I2C_SendWrDAdr
	tst R16
	brne L42
	.dbline 214
; ���
	clr R16
	xjmp L37
L42:
	.dbline 215
; ���
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
	.dbline 226
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 227
; ���
	.dbline 227
	out 0x3,R16
	.dbline 227
	ldi R24,132
	out 0x36,R24
	.dbline 227
	.dbline 227
	.dbline 228
L45:
	.dbline 228
L46:
	.dbline 228
; ���
	in R2,0x36
	sbrs R2,7
	rjmp L45
	.dbline 228
	.dbline 228
	.dbline 229
; ���
	in R24,0x1
	andi R24,248
	cpi R24,40
	breq L48
	.dbline 230
; ���
	clr R16
	xjmp L44
L48:
	.dbline 231
; ���
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
	.dbline 242
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 243
; ���
	ldi R24,132
	out 0x36,R24
	.dbline 244
L51:
	.dbline 244
L52:
	.dbline 244
; ���
	in R2,0x36
	sbrs R2,7
	rjmp L51
	.dbline 244
	.dbline 244
	.dbline 245
; ���
	in R24,0x1
	andi R24,248
	cpi R24,88
	breq L54
	.dbline 246
; ���
	clr R16
	xjmp L50
L54:
	.dbline 247
; ���
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 248
; ���
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
	.dbline 259
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 260
; ���
	ldi R24,196
	out 0x36,R24
	.dbline 261
L57:
	.dbline 261
L58:
	.dbline 261
; ���
	in R2,0x36
	sbrs R2,7
	rjmp L57
	.dbline 261
	.dbline 261
	.dbline 262
; ���
	in R24,0x1
	andi R24,248
	cpi R24,80
	breq L60
	.dbline 263
; ���
	clr R16
	xjmp L56
L60:
	.dbline 264
; ���
	in R2,0x3
	movw R30,R16
	std z+0,R2
	.dbline 265
; ���
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
	.dbline 278
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 279
; ���
	xcall _I2C_Start
	tst R16
	brne L63
	.dbline 280
; ���
	clr R16
	xjmp L62
L63:
	.dbline 282
; ���
; ���
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L65
	.dbline 283
; ���
	clr R16
	xjmp L62
L65:
	.dbline 285
; ���
; ���
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L67
	.dbline 286
; ���
	clr R16
	xjmp L62
L67:
	.dbline 288
; ���
; ���
	ldd R16,y+4
	xcall _I2C_SendDat
	tst R16
	brne L69
	.dbline 289
; ���
	clr R16
	xjmp L62
L69:
	.dbline 291
; ���
; ���
	ldi R24,148
	out 0x36,R24
	.dbline 293
; ���
; ���
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
	.dbline 324
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 325
; ���
	xcall _I2C_Start
	tst R16
	brne L72
	.dbline 326
; ���
	clr R16
	xjmp L71
L72:
	.dbline 328
; ���
; ���
	movw R16,R22
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L74
	.dbline 329
; ���
	clr R16
	xjmp L71
L74:
	.dbline 331
; ���
; ���
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L76
	.dbline 332
; ���
	clr R16
	xjmp L71
L76:
	.dbline 334
; ���
; ���
	xcall _I2C_Restart
	tst R16
	brne L78
	.dbline 335
; ���
	clr R16
	xjmp L71
L78:
	.dbline 337
; ���
; ���
	ldd R16,y+4
	xcall _I2C_SendRdDAdr
	tst R16
	brne L80
	.dbline 338
; ���
	clr R16
	xjmp L71
L80:
	.dbline 340
; ���
; ���
	ldd R16,y+6
	ldd R17,y+7
	xcall _I2C_RcvNAckDat
	tst R16
	brne L82
	.dbline 341
; ���
	clr R16
	xjmp L71
L82:
	.dbline 343
; ���
; ���
	ldi R24,148
	out 0x36,R24
	.dbline 345
; ���
; ���
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
	.dbline 361
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
; ���
	.dbline 364
; ���
; ���
; ���
	xcall _I2C_Start
	tst R16
	brne L85
	.dbline 365
; ���
	clr R16
	xjmp L84
L85:
	.dbline 367
; ���
; ���
	movw R16,R12
	xcall _I2C_SendWrDAdr_
	tst R16
	brne L87
	.dbline 368
; ���
	clr R16
	xjmp L84
L87:
	.dbline 370
; ���
; ���
	mov R16,R20
	xcall _I2C_SendDat
	tst R16
	brne L89
	.dbline 371
; ���
	clr R16
	xjmp L84
L89:
	.dbline 373
; ���
; ���
	xcall _I2C_Restart
	tst R16
	brne L91
	.dbline 374
; ���
	clr R16
	xjmp L84
L91:
	.dbline 376
; ���
; ���
	ldd R16,y+8
	xcall _I2C_SendRdDAdr
	tst R16
	brne L93
	.dbline 377
; ���
	clr R16
	xjmp L84
L93:
	.dbline 379
; ���
; ���
	clr R20
	xjmp L98
L95:
	.dbline 380
; ���
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvAckDat
	tst R16
	brne L99
	.dbline 381
; ���
	clr R16
	xjmp L84
L99:
L96:
	.dbline 379
	inc R20
L98:
	.dbline 379
	mov R24,R22
	subi R24,1
	cp R20,R24
	brlo L95
	.dbline 383
; ���
; ���
	mov R16,R20
	clr R17
	add R16,R10
	adc R17,R11
	xcall _I2C_RcvNAckDat
	tst R16
	brne L101
	.dbline 384
; ���
	clr R16
	xjmp L84
L101:
	.dbline 386
; ���
; ���
	ldi R24,148
	out 0x36,R24
	.dbline 388
; ���
; ���
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
	.area lit(rom, con, rel)
_ADEnStatus::
	.byte 254,253
	.byte 251,247
	.byte 239,223
	.byte 191,127
	.dbfile E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�AD\QueryAD\QueryAD.C
	.dbsym e ADEnStatus _ADEnStatus A[8:8]kc
	.area text(rom, con, rel)
	.dbfile E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�AD\QueryAD\QueryAD.C
	.dbfunc e adc_init _adc_init fV
	.even
_adc_init::
	.dbline -1
	.dbline 62
	.dbline 66
	ldi R24,<_ADEnStatus
	ldi R25,>_ADEnStatus
	lds R30,_AdcMux
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	in R2,0x1a
	and R2,R30
	out 0x1a,R2
	.dbline 67
	lds R30,_AdcMux
	clr R31
	add R30,R24
	adc R31,R25
	lpm R30,Z
	in R2,0x1b
	and R2,R30
	out 0x1b,R2
	.dbline 69
	clr R2
	out 0x6,R2
	.dbline 70
	lds R24,_AdcMux
	andi R24,15
	ori R24,64
	out 0x7,R24
	.dbline 71
	ldi R24,128
	out 0x8,R24
	.dbline -2
L121:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e main _main fV
	.even
_main::
	.dbline -1
	.dbline 83
	.dbline 84
	ldi R24,255
	out 0x11,R24
	.dbline 85
	out 0x17,R24
	.dbline 86
	clr R2
	sts _AdcMux,R2
	.dbline 87
	xcall _adc_init
	xjmp L124
L123:
	.dbline 89
	.dbline 90
	ldi R24,198
	out 0x6,R24
L126:
	.dbline 91
L127:
	.dbline 91
	.dbline 92
	in R24,0x4
	in R25,0x5
	andi R24,0
	andi R25,3
	mov R24,R25
	clr R25
	out 0x12,R24
	.dbline 93
	in R24,0x4
	in R25,0x5
	andi R25,0
	out 0x18,R24
	.dbline 94
L124:
	.dbline 88
	xjmp L123
X1:
	.dbline -2
L122:
	.dbline 0 ; func end
	ret
	.dbend
	.area bss(ram, con, rel)
	.dbfile E:\΢ѩ����CD1\��Ʒ����\������ʵ���\SMKϵ��\SMK1632\ʵ��̳�\�ں˼��������ʵ��\�ںˣ�AD\QueryAD\QueryAD.C
_AdcVal::
	.blkb 2
	.dbsym e AdcVal _AdcVal i
_AdcMux::
	.blkb 1
	.dbsym e AdcMux _AdcMux c
_dataElem::
	.blkb 6
	.dbfile D:\ICC_H\Software.H
	.dbsym e dataElem _dataElem A[6:6]c
