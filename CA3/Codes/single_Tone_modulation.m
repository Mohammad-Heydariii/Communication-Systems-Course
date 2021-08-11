clear all
clc

fs=1000;
t=0:1/fs:1-1/fs;
f=fs/2*linspace(-1,1,fs);
[xc1,xc1_sum_series,XC1f,XC1_sum_f]=tone_modulation_func(10,100,0.1,10,2,fs);   %B=0.1
[xc2,xc2_sum_series,XC2f,XC2_sum_f]=tone_modulation_func(10,100,1,10,2,fs);     %B=1
[xc3,xc3_sum_series,XC3f,XC3_sum_f]=tone_modulation_func(10,100,5,10,6,fs);     %B=5
[xc4,xc4_sum_series,XC4f,XC4_sum_f]=tone_modulation_func(10,100,10,10,11,fs);    %B=10

% xc modulatiob both sigma & normal

figure(1)
plot(t,xc1,t,double(xc1_sum_series))
legend('xc','xc sigma')
title('modulation with B=0.1')
xlabel('time(s)')
ylim([-150,150]);

figure(2)
plot(t,xc2,t,double(xc2_sum_series))
legend('xc','xc sigma')
title('modulation with B=1')
xlabel('time(s)')
ylim([-150,150]);

figure(3)
plot(t,xc3,t,double(xc3_sum_series))
legend('xc','xc sigma')
title('modulation with B=5')
xlabel('time(s)')
ylim([-150,150]);

figure(4)
plot(t,xc4,t,double(xc4_sum_series))
legend('xc','xc sigma')
title('modulation with B=10')
xlabel('time(s)')
ylim([-150,150]);

% spectrum

figure(5)
plot(f,real(XC1f),f,real(XC1_sum_f))
legend('XC1f','XC1f sigma')
title('modulation spectrum with B=0.1')
xlabel('frequency(Hz)')

figure(6)
plot(f,real(XC2f),f,real(XC2_sum_f))
legend('XC2f','XC2f sigma')
title('modulation spectrum with B=1')
xlabel('frequency(Hz)')

figure(7)
plot(f,real(XC3f),f,real(XC3_sum_f))
legend('XC3f','XC3f sigma')
title('modulation spectrum with B=5')
xlabel('frequency(Hz)')

figure(8)
plot(f,real(XC4f),f,real(XC4_sum_f))
legend('XC4f','XC4f sigma')
title('modulation spectrum with B=10')
xlabel('frequency(Hz)')








