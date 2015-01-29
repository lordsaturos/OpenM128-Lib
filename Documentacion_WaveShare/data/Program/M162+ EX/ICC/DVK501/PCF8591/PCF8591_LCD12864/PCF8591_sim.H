

#ifndef PCF8591_sim_H
#define PCF8591_sim_H


#include "IIC_sim.h"


#ifndef WR_DADR 
	#define WR_DADR		0x90	
#endif
#ifndef RD_DADR 
	#define RD_DADR		0x91	
#endif

#define MODE0 	0x00	
						
						
						
#define MODE1 	0x10	
						
						
#define MODE2 	0x20	
						
						
#define MODE3 	0x30	
						

#define CHNL0 	0		
#define CHNL1 	1		
#define CHNL2 	2		
#define CHNL3 	3		

#define DAouputEn	0x40	




uchar PCF8591_getAD(uchar wordAdr)
{
	uchar PCF8591_num;
	I2C_Start();
	I2C_Send_DataAddr(WR_DADR); 
	I2C_Send_DataAddr(wordAdr); 
	I2C_Start();
	I2C_Send_DataAddr(RD_DADR); 
	PCF8591_num=I2C_Read_DataAddr(ACT);	
	I2C_Stop();
	return(PCF8591_num); 
}



void PCF8591_setDA(uchar val)
{
	I2C_Start(); 
	I2C_Send_DataAddr(WR_DADR); 
	I2C_Send_DataAddr(DAouputEn); 
	I2C_Send_DataAddr(val); 
	I2C_Stop();
}

#endif