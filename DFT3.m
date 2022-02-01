x=input('Enter input sequence: ');
N=input('Enter number of samples: ');
if N>length(x)
    x=[x zeros(1,N-length(x))];
end
y=dftmtx(N)*x';
disp(y);