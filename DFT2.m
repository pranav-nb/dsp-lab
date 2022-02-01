x=input('Enter input sequence: ');
N=input('Enter number of samples: ');
if N>length(x)
    x=[x zeros(1,N-length(x))];
end
z=(-1i*pi*2)/N;
for k=1:N
    y(k)=0;
    for n=1:N
        y(k)=y(k)+x(n)*exp(z*(n-1)*(k-1));
    end
end
disp(y);
