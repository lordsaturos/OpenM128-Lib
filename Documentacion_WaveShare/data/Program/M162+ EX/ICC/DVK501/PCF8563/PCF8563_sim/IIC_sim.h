

#ifndef IIC_sim_h
#define IIC_sim_h

#define DELAY_NOP asm("NOP\n")

void delay_5us(void)
{
 	 uchar delay_n;
	 for(delay_n=0;delay_n<=4;delay_n++){}
}





void SDA_IN()		{DDRA&=0xFE;delay_5us();}
void SDA_OUT()		{DDRA|=0x01;delay_5us();}  
void SDA_SET()		{PORTA|=0x01;delay_5us();}
void SDA_CLR()		{PORTA&=0xFE;delay_5us();}
#define SDA_PIN			(PINA&0x01)


void SCL_IN()		{DDRA&=0xFD;delay_5us();}
void SCL_OUT()		{DDRA|=0x02;delay_5us();}  
void SCL_SET()		{PORTA|=0x02;delay_5us();}
void SCL_CLR()		{PORTA&=0xFD;delay_5us();}
#define SCL_PIN			((PINA>>1)&0x01)


#define READ 1
#define WRITE 0

#define ACT 1
#define nACT 0


#define I2C_ERR			0
#define I2C_CRR			1


void I2C_Start()
{
	SCL_OUT();
	SDA_OUT();
	SDA_SET();
	SCL_SET();
	SDA_CLR();
	SCL_CLR();
}


void I2C_Stop()
{
	SCL_OUT();
	SDA_OUT();
	SDA_CLR();
	SCL_SET();
	SDA_SET();
	SCL_CLR();
}


void I2C_Send_DataAddr(uchar wrDAdr)	
{
	uchar I2C_n;
	SCL_OUT();
	SDA_OUT();
	for(I2C_n=0;I2C_n<=7;I2C_n++)
	{
		if((wrDAdr&0x80)==0x80) {SDA_SET();}
		else {SDA_CLR();}	
		SCL_SET();
		SCL_CLR();
		wrDAdr<<=1;
	}
	SDA_IN();
	SDA_SET();
	SCL_SET();
	while(SDA_PIN){};
	SCL_CLR();
}



uchar I2C_Read_DataAddr(uchar bAct)
{
	uchar n;
	uchar rdDAdr=0;
	SCL_CLR();
	SCL_OUT();
	SDA_IN();
	for(n=0;n<=7;n++)
	{
	 	rdDAdr<<=1;
		SCL_SET();
		DELAY_NOP;
		rdDAdr|=SDA_PIN;
		SCL_CLR();
		
	}
	SDA_OUT();
	if(bAct) {SDA_SET();}
	else {SDA_CLR();}
	SCL_SET();
	SCL_CLR();
	return(rdDAdr);
}




uchar I2C_ReadBusy(uchar wrDAdr)	
{
	uchar n;
	SCL_OUT();
	SDA_OUT();
	for(n=0;n<=7;n++)
	{
		if((wrDAdr&0x80)==0x80) {SDA_SET();}
		else {SDA_CLR();}
		SCL_SET();
		SCL_CLR();
		wrDAdr<<=1;
	}
	SDA_IN();
	SDA_SET();
	SCL_SET();
	wrDAdr=SDA_PIN;
	SCL_CLR();	
	return(wrDAdr);

}

#endif