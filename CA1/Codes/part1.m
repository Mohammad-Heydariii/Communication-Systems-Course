[x,Fs]=audioread('sample.wav');
x=x(:,1);
n = length(x);     
Fourier_x=fft(x)/n;
fshift = (-Fs/2:Fs/(n-1):Fs/2);
shifted_x=fftshift(Fourier_x);
plot(fshift,abs(shifted_x))
title('Magnitude')
xlabel('Frequency(Hz)')
ylabel('abs')
figure
plot(fshift,angle(shifted_x))
axis([-1 1 -6 6])
title('Phase')
xlabel('Frequency(Hz)')
ylabel('angle')



                    


