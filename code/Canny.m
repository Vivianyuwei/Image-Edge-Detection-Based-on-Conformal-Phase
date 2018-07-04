function edge=Canny(image)

W=[-1 1;-1 1];M=[1 1; -1 -1];
Gx=conv2(double(image),double(W),'same');Gy=conv2(double(image),double(M),'same');
edge=sqrt(Gx.^2+Gy.^2);

end