function [z,y]=DSP_demodule(xc,fc,Ac,fs) 
clc

t=-1:2/fs:1-2/fs;
y=2*Ac*cos(2*pi*fc*t).*xc;

z=lowpass(y,100,fs);






end

