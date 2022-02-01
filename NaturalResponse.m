x=input('Enter numerator coefficients: ');
y=input('Enter denominator coefficients: ');
z=input('Enter initial conditions: ');
n=input('Enter number of samples: ');
p=filtic(x,y,z);
o=filter(x,y,zeros(1,n),p);
disp(o);