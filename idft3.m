x=input('Enter DFT sequence: ');
n=length(x);
y=(conj(dftmtx(n))*x.')/n;
disp(y);
a=0:n-1;
stem(a,y);