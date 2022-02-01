clc;
x=input('Enter input sequence: ');
N=input('Enter number of samples required: ');
if N>length(x)
    x = [x zeros(N-length(x))];
end
a=0:N-1;
y=fft(x,N);
disp(y);
subplot(2,1,1);
stem(a,abs(y));
subplot(2,1,2);
stem(a,angle(y));

