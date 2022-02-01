clc;
x=input('Enter DFT sequence: ');
n=length(x);
y=ifft(x,n);
a=0:n-1;
stem(a,y);