x=input('Enter input sequence: ');
N=length(x);
z=(1i*pi*2)/N;
for k=1:N
    y(k)=0;
    for n=1:N
        y(k)=y(k)+x(n)*exp(z*(n-1)*(k-1));
    end
end
disp(y);