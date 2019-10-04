%  clc;
%  close all;
%  clear all;
%  fc=1000; % Carrier frequency
%  fs=10000; % Sampling frequency
%  f1=200; % Single tone modulation
%  t=0:1/fs:((2/f1)-(1/fs));
%  x1=0.4*cos(2*pi*f1*t)+0.5; %single tone message to be [0,1]
%  y1=modulate(x1,fc,fs,'ppm');
%  subplot(2,2,1);
%  plot(x1);
%  title(' single tone message, f1=200,fs=10000');
%  subplot(2,2,2);
%  plot(y1);
%  axis([0 500 -0.2 1.2]);
%  title('ppm, one cycle of f1, fc=1000,f1=200');
%  x1_recov=demod(y1,fc,fs,'ppm');
%  subplot(2,2,3);
%  plot(x1_recov);
%  title('time domain recovered,single tone, f1=200');
%  
%  
clc;
clear all;
close all;
fc=1000;
fs=10000;
fm=200;
t=0:10/fs:(2/fm-1/fs);
mt=0.4*sin(2*pi*fm*t)+0.5;
st=modulate(mt,fc,fs,'PPM');
dt=demod(st,fc,fs,'PPM');
figure
subplot(3,1,1);
plot(mt);
title('message signal');
xlabel('timeperiod');
ylabel('amplitude');
axis([0 50 0 1])
subplot(3,1,2);
plot(st);
title('modulated signal');
xlabel('timeperiod');
ylabel('amplitude');
axis([0 500 -0.2 1.2])
subplot(3,1,3);
plot(dt);
title('demodulated signal');
xlabel('timeperiod');
ylabel('amplitude');
axis([0 50 0 1])


