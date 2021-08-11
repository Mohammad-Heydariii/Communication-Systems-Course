function monhani_hamehtemal_func(random_vecto1,random_vector2) 
clc
x=sort(random_vecto1);
y=sort(random_vector2);
[x1,y1]=meshgrid(x,y);
X=[x1(:),y1(:)];
f=mvnpdf(X);
f=reshape(f,length(x),length(y));
contour(sort(x),sort(y),f);
end

