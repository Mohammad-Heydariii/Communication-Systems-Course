[x,Fs]=audioread('sample.wav');

x=x(:,1);

n = length(x);     

Fourier_x=fft(x)/n;

f = (0:Fs/(n-1):Fs);

H_Making_echo=1+0.5*exp(-0.4*pi*f*1i)+0.3*exp(-0.2*pi*f*1i);

Y_final=(H_Making_echo.').*Fourier_x;


v=n*ifft(Y_final);

sound(real(v),Fs)

audiowrite('echoed.wav',real(v),Fs)

[correlation_vx,baze]=xcorr(v,x);

plot(baze,correlation_vx)
title('correlation')
xlabel('Time')


