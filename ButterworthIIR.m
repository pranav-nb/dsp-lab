clc;
rp=input('Enter passband ripple: ');
rs=input('Enter stopband ripple: ');
wp=input('Enter passband frequency: ');
ws=input('Enter stopband frequency: ');
fs=input('Enter sampling frequency: ');
w1=2*ws/fs;
w2=2*wp/fs;
[n,wn]=buttord(w1,w2,rp,rs,'s');
c=input('Enter choice of filter: ');
if(c==1)
    [b,a]=butter(n,wn,'low','s');
end
if(c==2)
    [b,a]=butter(n,wn,'high','s');
end
if(c==3)
    [b,a]=butter(n,wn,'stop','s');
end
if(c==4)
    [b,a]=butter(n,wn,'bandpass','s');
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
