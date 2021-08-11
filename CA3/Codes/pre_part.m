clear all
clc
% bessel type 1
n = (0:0.1:10);
j1=besselj(1,n);
j2=besselj(2,n);
j3=besselj(3,n);
j4=besselj(4,n);
j5=besselj(5,n);
plot(n,j1,n,j2,n,j3,n,j4,n,j5)
legend('j1(n)','j2(n)','j3(n)','j4(n)','j5(n)')
title('Bessel Type 1')
xlabel('n')
% bessel type 2

y1=bessely(1,n);
y2=bessely(2,n);
y3=bessely(3,n);
y4=bessely(4,n);
y5=bessely(5,n);
figure()
plot(n,y1,n,y2,n,y3,n,y4,n,y5)
legend('Y1(n)','Y2(n)','Y3(n)','Y4(n)','Y5(n)')
title('Bessel Type 2')
xlabel('n')
axis([-0.1 10.2 -2 0.6])








