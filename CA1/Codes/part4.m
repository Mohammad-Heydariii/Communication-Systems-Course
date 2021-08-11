t=(0:n-1)/Fs;
f = (0:Fs/(n-1):Fs);

H1=1+0.5*exp(-0.4*pi*f*1i);

h=ifft(H1);
plot(real(h))
title('time domin response')
xlabel('time(s)')
z=conv(x,h.');

figure

plot(t,z(1:641279))
title('time response with conv')
xlabel('time(s)')
figure
plot(t,Yt)
title('time response with * & ifft')
xlabel('time(s)')


