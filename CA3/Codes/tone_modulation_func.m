function [xc1,xc1_sum_series,XC1f,XC1_sum_f]=tone_modulation_func(Ac,fc,B,fm,N,fs) 
clc
syms n
t=0:1/fs:1-1/fs;
xc1=Ac*cos(2*pi*fc.*t+B*sin(2*pi*fm.*t));
xc1_sum_series=Ac*symsum(Ac*besselj(n,B)*cos(2*pi*(fc+n*fm).*t),n,-N,N);
XC1f=fft(fftshift(xc1));
XC1_sum_f=fft(fftshift(double(xc1_sum_series)));
end

