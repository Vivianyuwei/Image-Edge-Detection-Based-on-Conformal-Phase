function [ Pic_H ] = contrast( Image )
k=3;
offset=[-k 0];
offset2=[0 k];
[row,col]=size(Image);
[glcms,SI] = graycomatrix(Image,'Offset',offset,'GrayLimits',[0,255],'NumLevels',32,'Symmetric', true);
stats = graycoprops(glcms, 'Contrast');
Pic_H(1,1)=stats.Contrast;
[glcms,SI] = graycomatrix(Image,'Offset',offset2,'GrayLimits',[0,255],'NumLevels',32,'Symmetric', true);
stats = graycoprops(glcms, 'Contrast');
Pic_H(1,2)=stats.Contrast;
%     
%     [CLBP_S,CLBP_M,CLBP_C] = clbp(Image,R,P,patternMappingriu2,'x');
%     CLBP_SH = hist(CLBP_S(:),0:patternMappingriu2.num-1);
%     CLBP_SH(find(CLBP_SH==0))=1;
%     CLBP_SH=CLBP_SH/sum(CLBP_SH);
%     
%     H=0;
%     for i=1:patternMappingriu2.num
%             H=H-CLBP_SH(i)*log(CLBP_SH(i));
%     end
%     Pic_H(3,pic)=H;
    
%     %..........灰度梯度-对比度............
%     Image_Con=Image;
%     for i=1+k:row-k
%         for j=1+k:col-k
%             I=Image(i-k:i+k,j-k:j+k);
%             Magnitude=mean(mean(abs(I-mean(mean(I)))));
%             Image_Con(i,j)=Magnitude;
%         end
%     end
% % ...........对比度图像的熵处理.............
%     Gray_Prob=Image_Con/sum(sum(Image_Con));
%     [r,c]=size(Gray_Prob);
%     H=0;
%     for i=1:r
%         for j=1:c
%             H=H-Gray_Prob(i,j)*log(Gray_Prob(i,j));
%         end
%     end
%     Pic_H(1,pic)=H;

end

%..........当前目录单个图像处理............
% filename = sprintf('2.bmp');
% Image = imread(filename);
% % Image=double(rgb2gray(Image));
% Image=double(Image);
% [row,col]=size(Image);
% k=1;
% Image_Con=Image;
% 
% %..........灰度梯度-对比度............
% for i=k+1:row-k
%     for j=k+1:col-k
%         I=Image(i-k:i+k,j-k:j+k);
%         Magnitude=mean(mean(abs(I-mean(mean(I)))));
%         Image_Con(i,j)=Magnitude;
%     end
% end
% Image_Con=Image_Con(k+1:row-k,k+1:col-k);
% Image_Con=Image_Con-min(min(Image_Con));
% Image_Con=Image_Con/(max(max(Image_Con)))*255;
% Image_Con=uint8(Image_Con);
% imshow(Image_Con)
% ...........对比度图像的熵处理.............
% Gray_Prob=Image_Con/sum(sum(Image_Con));
% [r,c]=size(Gray_Prob);
% H=0;
% for i=1:r
%     for j=1:c
%         H=H-Gray_Prob(i,j)*log(Gray_Prob(i,j));
%     end
% end

%...........对比度图像的局部熵处理.............
% [r,c]=size(Image_Con);
% LocalEntropy=Image_Con;
% for i=k+1:r-k
%     for j=k+1:c-k
%         I=Image(i-k:i+k,j-k:j+k);
%         Gray_Prob=I/sum(sum(I));
%         H=0;
%         for m=1:2*k+1
%             for n=1:2*k+1
%                 H=H-Gray_Prob(m,n)*log(Gray_Prob(m,n));
%             end
%         end
%         LocalEntropy(i,j)=H;
%     end
% end
% LocalEntropy=LocalEntropy(k+1:r-k,k+1:c-k);
% LocalEntropy=LocalEntropy-min(min(LocalEntropy));
% LocalEntropy=LocalEntropy/(max(max(LocalEntropy)))*255;
% LocalEntropy=uint8(LocalEntropy);
% imshow(LocalEntropy)

















