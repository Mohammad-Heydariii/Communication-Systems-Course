function [xc_sample,t_sample]=pmm(x,Ac,fc,kp,fs) 
clc
syms t
xc(t)=Ac*cos(2*pi*fc*t+kp*x(t));
t_sample=0:1/fs:0.2-1/fs;
xc_sample=double(xc(t_sample));
end

