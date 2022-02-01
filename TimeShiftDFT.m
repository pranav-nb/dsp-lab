x=input('Enter the sequence: ');
N=input('Enter number of elements: ');
m=input('Time shift by: ');
x1=circshift(x,m);
X1=fft(x1,N);
disp(X1);
x2=fft(x,N);
for k=1:N
    p(k)=exp(-1i*2*pi*(k-1)*m/N)*x2(k);
end
disp(p);