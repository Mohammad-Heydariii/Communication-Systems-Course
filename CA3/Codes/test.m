

fs=10000;
L=2001;
xcstm=stm(10,100,10,10,20,10000);
xfstm=fftshift(fft(xcstm));
f=-fs/2+fs/L:fs/L:fs/2;
plot(f,real(xfstm))
xlim([-500,500])