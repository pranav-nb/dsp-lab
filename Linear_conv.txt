
#include<stdio.h>

int y[20];

main()
{	int m=6;						/*Lenght of i/p samples sequence*/
	int n=6;						/*Lenght of impulse response Co-efficients */
	int i=0,j;
	int x[15]={1,2,3,4,5,6,0,0,0,0,0,0};	/*Input Signal Samples*/
	int h[15]={1,2,3,4,5,6,0,0,0,0,0,0};	/*Impulse Response Co-efficients*/


	for(i=0;i<m+n-1;i++)
	{
	y[i]=0;
	for(j=0;j<=i;j++)

		y[i]+=x[j]*h[i-j];

	}

	for(i=0;i<m+n-1;i++)
	printf("%d\n",y[i]);

}



