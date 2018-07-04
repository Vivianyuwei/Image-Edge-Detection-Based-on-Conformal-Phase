function edge=Sobel(image)
W=[-1 0 1;-2 0 2;-1 0 1];M=[1 2 1; 0 0 0; -1 -2 -1];
Gx=conv2(double(image),double(W),'same');Gy=conv2(double(image),double(M),'same');
edge=sqrt(Gx.^2+Gy.^2);
end