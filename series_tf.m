clc;
clear all;
close all;
g1 = tf([1],[1,2])
g2 = tf([1,3],[1,2,2])
s = g1*g2
p = g1+g2
f = feedback(g1,g2)
sf = feedback(s,1)