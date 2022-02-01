x=input('Enter numerator coefficient: ');
y=input('Enter denominator coefficient: ');
n=input('Enter number of samples: ');
p=ones(1,n);
s=filter(x,y,p);
disp(s);
a=0:n-1;
stem(a,s);