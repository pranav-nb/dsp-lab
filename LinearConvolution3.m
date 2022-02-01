x=input('Enter 1st sequence: ');
h=input('Enter 2nd sequence: ');
m=length(x);
n=length(h);
x=[x zeros(1,n)];
h=[h zeros(1,m)];
for i=1:(m+n-1)
    y(i)=0;
    for j=1:i
        y(i)=y(i)+x(j)*h(i-j+1);
    end 
end
disp(y);