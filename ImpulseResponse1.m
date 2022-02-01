clc;
x=input('Enter Numerator coefficient: ');
y=input('Enter denominator coefficient: ');
n=input('Enter number of samples required: ');
h=impz(x,y,n);
disp(h);
a=0:n-1;
stem(a,h);
