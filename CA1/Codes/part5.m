
[autocorrelation_x,time]=xcorr(x.');
[correlation_yx,time1]=xcorr(Yt,x.');

t=(0:n-1)/Fs;

plot(time,autocorrelation_x)
title('autocorrelation')
xlabel('Lags')
figure
plot(time1,correlation_yx)
title('correlation yx')
xlabel('Lags')