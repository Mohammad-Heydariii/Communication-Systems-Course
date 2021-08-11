function xc=DSP_module(x,fc,Ac) 
clc
syms t
xc(t)=Ac*cos(2*pi*fc*t)*x(t);







end

