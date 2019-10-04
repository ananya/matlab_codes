% % PWM Signal Generation
% clc;
% close all;
% clear all;
% t=0:0.001:1;
% s=sawtooth(2*pi*10*t+pi);
% m=0.75*sin(2*pi*1*t);
% n=length(s);
% for i=1:n
%  if (m(i)>=s(i))
%  pwm(i)=1;
%  elseif (m(i)<=s(i))
%  pwm(i)=0;
%  end
% end
% plot(t,pwm,'-g',t,m,'--r',t,s,'--b');
% grid on;
% ylabel('Amplitude');
% xlabel('Time index');
% title('PWM Wave');
% axis([0 1 -1.5 1.5]);


fs=input('Comparator Sawtooth frequency:');
fm=input('Message frequency(Assuming it to be a sine wave):');
a=input('Enter Amplitude of Message:');

t=0:0.0001:1; %sampling rate of 10kHz

stooth=1.01*a.*sawtooth(2*pi*fs*t); %generating a sawtooth wave
%to make the two non zero lobes of pwm not to overlap the amplitude of
%sawtooth wave must be atleast more than a bit to the message amplitude

subplot(3,1,1);
plot(t,stooth); % plotting the sawtooth wave
title('Comparator Wave');

msg=a.*sin(2*pi*fm*t); %generating message wave

subplot(3,1,2);
plot(t,msg); %plotting the sine message wave
title('Message Signal');


for i=1:length(stooth)
if (msg(i)>=stooth(i)) 
    pwm(i)=1; %is message signal amplitude at i th sample is greater than 
    %sawtooth wave amplitude at i th sample
else
    pwm(i)=0;
end
end

subplot(3,1,3);
plot(t,pwm,'r');
title('PWM');
axis([0 1 0 1.1]); %to keep the pwm visible during plotting.
