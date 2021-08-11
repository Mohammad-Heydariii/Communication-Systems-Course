t=(0:n-1)/Fs;
t1=(0:1/3:n-1)/Fs;
L=length(H1)
f=(-Fs/2:Fs/(n-1):Fs/2);
RHS=conv(autocorrelation_x,h);

[autocorrelation_y,lag]=xcorr(Yt);

Gy=fft(autocorrelation_y(1:641279))/L;
Gx=fft(autocorrelation_x(1:641279))/L;

compare_result=Gx.*(abs(H1).^2);

%compare part a

plot(time1,correlation_yx)
title('correlation yx')
xlabel('Time')
figure
plot(time1,RHS(1:1282557))
title('Rx(t) * h(t)')
xlabel('Time')

err1=immse(correlation_yx.',RHS(1:1282557))


%compare part b

figure
plot(f,real(Gy))
title('Gy')
xlabel('Frequency')
figure
plot(f,real(compare_result))
title('Gx * H(f)^2')
xlabel('Frequency')

err2=immse( Gy.' ,compare_result)



