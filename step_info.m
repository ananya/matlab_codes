clc;
clear all;
close all;

subplot(3,1,1)
sys1 = tf([9],[1 2 9]);
step(sys1)
s1= stepinfo(sys1)
hold on;
sys2 = tf([9],[1 1 9]);
step(sys2)
s2 = stepinfo(sys2)

subplot(3,1,2)
bode(sys1)
hold on;
bode(sys2)

subplot(3,1,3)
nyquistplot(sys1)
hold on;
nyquistplot(sys2)