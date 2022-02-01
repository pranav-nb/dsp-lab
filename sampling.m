clc;
f=input('Enter the frequency: ');
t=0:0.001:0.1;
x=cos(2*pi*f*t);
subplot(4,1,1);
plot(t,x);
title('Input');
fs=1.5*f;
ts=1/fs;
td=0:ts:0.1;
x=cos(2*pi*f*td);
subplot(4,1,2)
plot(td,x);
title('under sampling');
fs=2*f;
ts=1/fs;
td=0:ts:0.1;
x=cos(2*pi*f*td);
subplot(4,1,3);
plot(td,x);
title('Critical sampling');
fs=6*f;
ts=1/fs;
td=0:ts:0.1;
x=cos(2*pi*f*td);
subplot(4,1,4);
plot(td,x);
title('over sampling');