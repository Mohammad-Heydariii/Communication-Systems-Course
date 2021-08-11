syms t
i=0
for kp=-1:0.2:1;
i=i+1
fc=100;
Ac=10
fs=10000;
%t=0:1/fs:0.2-1/fs;
X=sin(20*pi*t);
Xc=pmm(X,Ac,fc,kp,fs)
Xcnb=nb(X,Ac,fc,kp,fs)
I(i)=immse(Xcnb,Xc)
if I(i)<=0.01
disp(kp)
end
end
KP=-1:0.2:1;
plot(KP,I)