x=input('Enter 1st sequence: ');
n1=length(x);
h=input('Enter 2md sequence: ');
n2=length(h);
if n1<n2
    x=[x zeros(1, n2-n1)];
else
    h=[h zeros(1,n1-n2)];
end
N=n1+n2-1;
X=fft(x,N);
H=fft(h,N);
Y=X.*H;
y=ifft(Y,N);
disp(y);
a=0:N-1;
stem(a,y);