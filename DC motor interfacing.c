#include<reg51.h>
sbit switch1=P2^0;
sbit switch2=P2^1;
sbit clk=P3^0;
sbit anticlk=P3^1;

void main()
{
	
	switch1=switch2=1;				//making P2.0 and P2.1 as inputs
	switch1=switch2=0;
	clk=anticlk=0;
	while(1)
	{
		if((switch1))
			clk=1;
		 else if((switch2))
			anticlk=1;
		 else
			 P3=0x00;
		
	}
}	
			