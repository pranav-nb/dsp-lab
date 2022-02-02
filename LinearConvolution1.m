x=input('Enter 1st sequence: ');
h=input('Enter 2nd sequence: ');
n=length(x);
m=length(h);
y=conv(x,h);
disp(y);
t=0:(n+m-1)-1;
stem(t,y);
