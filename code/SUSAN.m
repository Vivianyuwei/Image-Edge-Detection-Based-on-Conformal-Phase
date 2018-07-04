function points = SUSAN(I)
T = 27;
msize = 5;
mask =[0 0 1 0 0;
       0 1 1 1 0;
       1 1 0 1 1;
       0 1 1 1 0;
       0 0 1 0 0];

[m, n] = size(I);
s = floor(msize/2);
Smax = sum(mask(:));
G = Smax*3/4;
A = zeros(size(I)+2*s);
A(s+1:end-s,s+1:end-s) = I;
points = zeros(m*n,3);
for i = 2 : m-1
    for j = 2 : n-1
        C = A([0:2*s]+i,[0:2*s]+j);
        C0 = I(i,j);
        D = double(C0) - C(logical(mask));
        S = sum(abs(D)< T);
        points((i-1)*n+j,1) = i;
        points((i-1)*n+j,2) = j;
        if(S < G) points((i-1)*n+j,3) = (G - S); end
        %if(S < G) points((i-1)*n+j,3) = (G - S)/Smax; end
    end
    
end