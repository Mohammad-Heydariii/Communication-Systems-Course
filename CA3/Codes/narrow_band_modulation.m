clear all
clc
syms t
% pm_modulation
x(t)=sin(20*pi*t)
[xc_sample,t_sample]=pmm(x,10,100,10,10e03); 
figure(1)
plot(t_sample,xc_sample)
title('pm modulation')
xlabel('time(s)')

% narrow_band_pm

[xc_sample,t_sample]=nb(x,10,100,10,10e03); 
figure(2)
plot(t_sample,xc_sample)
title('narrow Band modulation')
xlabel('time(s)')

% finding max kp to have minimum error

n=0;
k=0;
for kp=-1:0.1:1 
    k=k+1
   [pm,~]=pmm(x,10,100,kp,10e03); 
   [narrow_band,~]=nb(x,10,100,kp,10e03);
   Error(k)=immse(narrow_band,pm);
   if abs(Error(k))<=0.01
    n=n+1;
    kp_array(n)=kp;   
   end
   
end
kp_max=max(kp_array)
figure(3)
kp_baze=-1:0.1:1;
plot(kp_baze,Error,kp_baze,0.21)
ylim([0 0.09])
title('MSE')
xlabel('kp')










