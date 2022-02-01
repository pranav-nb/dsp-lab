x=input('Enter the sequence: ');
N=input('Enter number of samples: ');
if N>length(x)
    x=[x zeros(1,N-length(x))];
end
X=fft(x,N);
disp(X);
z=(-1j*2*pi)/N;
for k=1:N
    y(k)=0;
    for n=1:N
        y(k)=y(k)+x(n)*exp(z*(n-1)*(k+N-1));
    end
end
disp(y);