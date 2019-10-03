clc;
clear all;
close all;
t=[0:0.01:1];
%m=sinc(2*3.14*t);
m=sin(2*pi*t)
%m=sawtooth(t);
subplot(211);
hold on;    
plot(m);
title('sinc pulse');
xlabel('time');
ylabel('amplitude');
d=2*pi/100;
for n=1:1:100
    if n==1
        e(n)=m(n)
        eq(n)=d*sign(e(n))
        mq(n)=eq(n)
    else
        e(n)=m(n)-mq(n-1)
        eq(n)=d*sign(e(n))
        mq(n)=mq(n-1)+eq(n)
    end
end
stairs(mq,'black');
hold off;