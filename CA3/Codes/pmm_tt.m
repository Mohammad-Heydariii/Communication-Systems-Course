function [xc_sample,t_sample]=pmm_tt(x,Ac,fc,kp,fs) 
clc
t_sample=0:1/fs:0.2-1/fs;
xc_sample=Ac*cos(2*pi*fc.*t_sample+kp.*x);

end

