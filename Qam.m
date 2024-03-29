%>>>>>>>>>>>>>>>>Matlab code for M ary-QAM modulation >>>>>>>>>>>>>>>>>%
clc;
clear all;
close all;
M=16; %M=input(' enter the value of M array for QAM modulation : ');
fprintf('\n\n\n'); % input checking loop
Ld=log2(M);
ds=ceil(Ld);
dif=ds-Ld;
if(dif~=0)
error('the value of M is only acceptable if log2(M)is an integer');
end
% binary Information Generation
nbit=64; %number of information bits
msg=round(rand(nbit,1)); % information generation as binary form
disp(' binary information at transmitter '); %binary information at transmitter
disp(msg);
fprintf('\n\n'); % representation of transmitting binary information as digital signal
x=msg;
bp=.000001; % bit period
bit=[];
for n=1:1:length(x)
if x(n)==1;
se=ones(1,100);
else x(n)==0;
se=zeros(1,100);
end
bit=[bit se];
end
t1=bp/100:bp/100:100*length(x)*(bp/100);
figure(1)
subplot(3,1,1);
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 bp*length(x) -.5 1.5]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('transmitting information as digital signal'); % binary information convert into symbolic
form for M-ary QAM modulation
M=M; % order of QAM modulation
msg_reshape=reshape(msg,log2(M),nbit/log2(M))';
disp(' information are reshaped for convert symbolic form');
disp(msg_reshape);
fprintf('\n\n');
size(msg_reshape);
for(j=1:1:nbit/log2(M))
for(i=1:1:log2(M))
a(j,i)=num2str(msg_reshape(j,i));
end
end
as=bin2dec(a);
ass=as';
figure(1)
subplot(3,1,2);
stem(ass,'Linewidth',2.0);
title('serial symbol for M-ary QAM modulation at transmitter');
xlabel('n(discrete time)');
ylabel(' magnitude');
disp('symbolic form information for M-ary QAM ');
disp(ass);
fprintf('\n\n'); % Mapping for M-ary QAM modulation
M=M; %order of QAM modulation
x1=[0:M-1];
p=qammod(ass,M) %constellation design for M-ary QAM according to symbol
sym=0:1:M-1; % considerable symbol of M-ary QAM, just for scatterplot
pp=qammod(sym,M); %constellation diagram for M-ary QAM
scatterplot(pp),grid on;
title('constellation diagram for M-ary QAM');
% M-ary QAM modulation
RR=real(p)
II=imag(p)
sp=bp*2; %symbol period for M-ary QAM
sr=1/sp; % symbol rate
f=sr*2;
t=sp/100:sp/100:sp;
ss=length(t);
m=[];
for(k=1:1:length(RR))
yr=RR(k)*cos(2*pi*f*t); % inphase or real component
yim=II(k)*sin(2*pi*f*t); % Quadrature or imaginary component
y=yr+yim;
m=[m y];
end
tt=sp/100:sp/100:sp*length(RR);
figure(1);
subplot(3,1,3);
plot(tt,m);
title('waveform for M-ary QAM modulation according to symbolic information');
xlabel('time(sec)');
ylabel('amplitude(volt)');
