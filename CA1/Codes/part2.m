
f=(-Fs/2:Fs/(n-1):Fs/2);

H=0.5*exp(-0.4*pi*f*1i);

Magnitude=abs(H);
Phase=angle(H);

F_response=H.*Fourier_x.';


plot(f,abs(F_response))
title('Frequency response')
xlabel('Frequency(Hz)')
ylabel('abs')
figure

plot(f,Magnitude)
title('Magnitude')
xlabel('Frequency(Hz)')
ylabel('abs')
figure
plot(f,Phase)
axis([-70 70 -6 6])
title('Phase')
xlabel('Frequency(Hz)')
ylabel('angle')




