function result=stm(Ac,fc,fm,beta,N,fs)

t = 0:1/fs:0.2;
sizee=length(t)
count=0;
for n=-N:1:N
    count=count+1;
    xc(count,:)=Ac*besselj(n,beta)*cos(2*pi*(fc+(n*fm))*t);
    
end
for i=1:sizee
result(i)=sum(xc(:,i));

end
end