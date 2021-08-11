clear all
clc
fs=10e03;
t=0:1/fs:0.2-1/fs;
x=sin(20*pi.*t);
x_new=trapz(t,x);
xcc=fmm(x,10,100,100,fs);   %fm using pm
[xc_sample2,t_sample2]=pmm_tt(x,10,100,10,fs);   %pm

% modulation time vector

figure(1)                                   
plot(t_sample2,xcc)
title('modulation fm using pm')
xlabel('time(s)')
ylim([-15 15])

figure(2)                                   
plot(t_sample2,xc_sample2)
title('modulation pm')
xlabel('time(s)')
ylim([-15 15])




