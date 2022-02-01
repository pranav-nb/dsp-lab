clc;
R=5;
rp=input('Enter passband ripple: ');
rs=input('Enter stopband ripple: ');
wp=input('Enter passband frequency: ');
ws=input('Enter stopband frequency: ');
fs=input('Enter sampling frequency: ');
w1=2*ws/fs;
w2=2*sp/fs;
[n,wn]=cheb1ord(w1,w2,rp,rs,'s');
c=input('Enter filter choice: ');
if(c==1)
    [b,a]=cheby1(n,R,wn,'low','s');
end
if(c==2)
    [b,a]=cheby1(n,R,wn,'high','s');
end
if(c==3)
    [b,a]=cheby1(n,R,wn,'bandpass','s');
end
if(c==4)
    [b,a]=cheby1(n,R,wn,'stop','s');
end
w=0:0.001:pi;
[h,om]=freqs(b,a,w);
m=20*log(abs(h));
an=angle(h);
subplot(2,1,1);
plot(om/pi,m);
title('Magnitude response');
subplot(2,1,2);
plot(om/pi,an);
title('phase response');