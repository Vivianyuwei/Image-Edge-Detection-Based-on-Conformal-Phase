function [ H ] = entropy2( Image )
Image=double(Image);
k=1;
[row,col]=size(Image);
%..........灰度梯度-对比度............
Image_Con=Image;
for i=1+k:row-k
    for j=1+k:col-k
        I=Image(i-k:i+k,j-k:j+k);
        Magnitude=mean(mean(abs(I-mean(mean(I)))));
        Image_Con(i,j)=Magnitude;
    end
end
Image_En=Image_Con(1+k:row-k,1+k:col-k);
% ...........对比度图像的熵处理.............
Gray_Prob=Image_En/sum(sum(Image_En));
[r,c]=size(Gray_Prob);
H=0;
for i=1:r
    for j=1:c
        H=H-Gray_Prob(i,j)*log(Gray_Prob(i,j));
    end
end
end