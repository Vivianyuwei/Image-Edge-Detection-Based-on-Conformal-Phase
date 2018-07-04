[filename,pathname]=uigetfile({'*.*';'*.bmp';'*.jpg';'*.tif';'*.jpg'},'选择图像');
if isequal(filename,0)||isequal(pathname,0)
  errordlg('您还没有选取图片！！','温馨提示');%如果没有输入，则创建错误对话框 
  return;
else
  image=[pathname,filename];
end
tic
im = imread(image);             % Read the image 
if size(im,3)==3
    im=rgb2gray(im);
end

mask55 =[0 0 1 0 0;
         0 1 1 1 0;
         1 1 0 1 1;
         0 1 1 1 0;
         0 0 1 0 0];
points = SUSAN(im);
Smax = sum(mask55(:));
pts = points((points(:,3)>Smax/4),:);%当边缘相应>Smax/4时，认为是角点

pt = regionmax(im,pts,13);%取局部极值，减少重复角点,图像分析中取7
%pt = pts;

imshow(im);hold on;%把SUSAN角点叠加显示在原来的图像上
s = 2;
for i=1:size(pt,1)
    plot(pt(i,2),pt(i,1),'r.');
end