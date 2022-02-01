clc;
x=input('Enter the sequence: ');
N=input('Enter number of elements: ');
m=input('Frequency shift by: ');
X=fft(x,N);
d=circshift(X,m);
disp(d);
for k=1:N
    a(k)=exp(-1j*2*pi*m*(k-1)/N)*x(k);
end
e=fft(a,N);
disp(e);