clc;
clear all;
close all;
g = tf([6,0,1],[1,3,3,1])
h = tf([1,3,2],[1,3,4,12])
t=g/(1+g*h)
f=feedback(g,h)
