function xc= AM_module(x,fc,Ac,modulation_index) 
clc
syms t
xc(t)=Ac*cos(2*pi*fc*t)+Ac*modulation_index*cos(2*pi*fc*t)*x(t);







end

