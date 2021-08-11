function xc=fmm(x,Ac,fc,kf,fs) 
clc
t=0:1/fs:0.2-1/fs;
for i=1:length(t)
x_new(i)=trapz(t(1:i),x(1:i),2);
end
[xc,~]=pmm_tt(x_new,Ac,fc,2*pi*kf,fs) 
end

