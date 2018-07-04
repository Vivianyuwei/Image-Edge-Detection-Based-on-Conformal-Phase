clear all;
clc;
[filename,pathname]=uigetfile({'*.*';'*.bmp';'*.jpg';'*.tif';'*.jpg'},'选择图像');
if isequal(filename,0)||isequal(pathname,0)
  errordlg('您还没有选取图片！！','温馨提示');%如果没有输入，则创建错误对话框 
  return;
else
  image=[pathname,filename];
end
im = imread(image);             % Read the image 
if size(im,3)==3
    im=rgb2gray(im);
end
    
[a,b]=size(im);
im=double(im);

neigh   =  8;
radius  =  1; 

% im=uint8((image-min(min(image)))./(max(max(image))-min(min(image))).*255);
MAPPING = getmapping(neigh,'u2');
LBPHIST=lbp(im,radius,neigh,0,'i');
imshow(LBPHIST,[])
figure,bar(imhist(LBPHIST));xlim([0,255]);