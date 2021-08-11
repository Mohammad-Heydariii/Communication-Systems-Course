function [xnb_sample,t_sample]=nb(x,Ac,fc,kp,fs) 
clc
syms t
xnb(t) = Ac*cos(2*pi*fc*t)-Ac*kp*sin(2*pi*fc*t)*x(t)
t_sample=0:1/fs:0.2-1/fs;
xnb_sample=double(xnb(t_sample));
end

