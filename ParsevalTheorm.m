clc;
x=input('Enter sequence: ');
N=input('Enter number of elements: ');
sum=0;
for n=0:N-1
    p=x(n+1)*x(n+1);
    sum = sum+p;
end
z1=sum;
disp(z1);
q=fft(x,N);
tot=0;
for k=0:N-1
    c=abs(q(k+1).*q(k+1));
    tot=tot+c;
end
z2=tot/N;
disp(z2);
