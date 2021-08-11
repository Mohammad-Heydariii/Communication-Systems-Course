
f = (0:Fs/(n-1):Fs);

H1=1+0.5*exp(-0.4*pi*f*1i);

t1=(0:n-1)*(100/n);
Yf=(H1.').*(Fourier_x);


Yt=n*ifft(Yf);

plot(t1,Yt')
title('time response with ifft')
xlabel('time(s)')

figure
plot(t1,x.')
title('signal x without any filter')
xlabel('time(s)')

sound(real(Yt),Fs)

audiowrite('new.wav',real(Yt),Fs)



