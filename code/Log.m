function edge=Log(image)
W=[0 -1 0;-1 4 -1;0 -1 0];M=[-1 -1 -1;-1 8 -1; -1 -1 -1];
Gx=conv2(double(image),double(W),'same');Gy=conv2(double(image),double(M),'same');
edge=sqrt(Gx.^2+Gy.^2);
end