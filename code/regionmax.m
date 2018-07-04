function pt = regionmax(I,pts,w)
[m, n] = size(I);
s = floor(w/2);
A = zeros(size(I));
for i = 1:size(pts,1)
    A(pts(i,1),pts(i,2)) = pts(i,3);
end
B = zeros(size(I)+2*s);
B(s+1:end-s,s+1:end-s) = A;
ptemp =zeros(length(pts),3);
num = 0;

for k = 1 : size(pts,1)
    i = pts(k,1);
    j = pts(k,2);
    block = B([0:2*s]+i,[0:2*s]+j);
    if(max(block(:)) > 0 & max(block(:)) == B(i+s,j+s))
        num = num + 1;
        ptemp(num,1) = i;
        ptemp(num,2) = j;
        ptemp(num,3) = A(i,j);
        B([0:2*s]+i,[0:2*s]+j) = 0;
    end
end
pt = ptemp(1:num,:);
end
