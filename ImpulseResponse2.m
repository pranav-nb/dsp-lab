x=input('Enter Numerator coefficient: ');
y=input('Enter denominator coefficient: ');
n=input('Enter number of samples: ');
o=[1 zeros(1,(n-1))];
h=filter(x,y,o);
a=0:n-1;
disp(h);
stem(a,h);