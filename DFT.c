#include "stdio.h"
#include "math.h"
 float real[4];
 float img[4];
 
#define pi 3.14159
void main()
{
 int x[4]={1,1,1,1};
 int j;
 printf("\nThe DFT is as follows:");
 for (j=0;j<4;j++)
   {
    float realsum=0,imgsum=0;
	float cospart=0,sinpart=0;
	int i=0;
	for (i=0;i<4;i++)
	   { 
	    cospart=cos((2*pi*j*i)/4);
	    sinpart=sin((2*pi*j*i)/4);
	    realsum=realsum+x[i]*cospart;
	    imgsum=imgsum-x[i]*sinpart;
	    }
	 real[j]=realsum;
	 img[j]=imgsum;
	 printf("\nX[%d]=%f+(%f)j",j,realsum,imgsum);
	 }
	  
    
 }
