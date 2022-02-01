x=input('Enter 1st sequence: ');
n1=length(x);
y=input('Enter 2nd sequence: ');
n2=length(y);
a=input('Enter 1st constant: ');
b=input('Enter 2nd constant: ');
N=input('Enter number of samples: ');
if n1>n2
    y=[y zeros(1,n1-n2)];
else
    x=[x zeros(1,n2-n1)];
end
X=fft(x,N);
Y=fft(y,N);
s=a.*X+b.*Y;
disp(s);
h=(a.*x+b.*y);
H=fft(h,N);
disp(H);