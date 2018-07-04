% clear all;
% clc;
% [filename, pathname] = uigetfile({'*.tif;*.bmp;*.jpg;*.jpeg;*.gif;*.png','图像文件(*.tif;*.bmp;*.jpg;*.jpeg;*.gif;*.png)'},'选择待处理图片');
% [pathstr, name, ext] = fileparts(filename);
% if (isequal(filename,0) || isequal(pathname,0))
%     disp('User pressed cancel');
%     return;
% else
%     disp(['User selected ', fullfile(pathname, filename)]);
% end
% image = imread([pathname filename]);
% if size(image,3)==3
%     image=rgb2gray(image); 
% end
function [energy,phase,direction]=cms(image)
if size(image,3)==3
    image=rgb2gray(image); 
end
nscale=3;    epsilon=0.001;
 noiseMethod=-1; cutOff=0.5; g=10;kk=3;
minWaveLength=3; mult=2.1;sigmaOnf=0.55;
[m,n]=size(image);
image=double(image);
coarse=2; fine=1; 
r=0.5; s1=3;  size1=3;
 sumAn=zeros(m,n); sumph=zeros(m,n); sumcu=zeros(m,n);
 sumrp=zeros(m,n); sumrx=zeros(m,n);sumry=zeros(m,n);sumrz=zeros(m,n);
 rp=zeros(size1); rx=zeros(size1); ry=zeros(size1); rz=zeros(size1);
 lp = lowpassfilter([m,n],.45,15);  
%   H = FSPECIAL('log',[5,5],0.5);rr=conv2(image,H,'same');
 sumf=zeros(m,n);
M0=-1/(size1^2)*ones(size1);M0(floor(size1/2)+1,floor(size1/2)+1)=(size1^2-1)/size1^2;
image0=conv2(image,M0,'same');
 IM = perfft2(image);[radius, u1, u2] = filtergrid(m, n); radius(1,1) = 1;H = (1i*u1 - u2)./radius;
for k=1:nscale
   wavelength = minWaveLength*mult^(k-1);  fo = 1.0/wavelength;                
        logGabor = exp((-(log(radius/fo)).^2) / (2 * log(sigmaOnf)^2)); 
         logGabor = logGabor.*lp;
        logGabor(1,1) = 0;     IMF = IM.*logGabor;     f = real(ifft2(IMF)); 
   
    cx=(-(size1-1)/2:(size1-1)/2)'*ones(1,size1);
    cy=cx';
    d=cx.^2+cy.^2+1;
    u=cx./d;  v=cy./d;  w=(d-1)./d;   uvw=u.^2+v.^2+w.^2;
%   pf=s1*r^k./(2*pi*((s*r^k)^2+uvw).^2);  pc=s2*r^(k-1)./(2*pi*((s2*r^(k-1))^2+uvw).^2);
    pf=1./(2*pi*((s1*r^k)^2+uvw).^2);  pc=1./(2*pi*((s1*r^(k-1))^2+uvw).^2);
    pcc=(s1*r^k)*pf-(s1*r^(k-1))*pc;
    uc=(pf-pc).*u;   vc=(pf-pc).*v;   wc=(pf-pc).*w;
    rp=conv2(image0,pcc,'same'); rx=conv2(image,uc,'same'); ry=conv2(image,vc,'same');  rz=conv2(image0,wc,'same');
    rxx=mat2gray(rx.^2); ryy=mat2gray(ry.^2);  ff=mat2gray(f.^2);rzz=mat2gray(rz.^2);
    en=sqrt(rxx+ryy+ff+rzz);

    sumAn=sumAn+en;  sumrp=sumrp+rp;  sumrx=sumrx+rx;  sumry=sumry+ry;  sumrz=sumrz+rz;
    sumf=sumf+f;
  
%      if k == 1 
%        if noiseMethod == -1     % Use median to estimate noise statistics
%             tau = median(sumAn(:))/sqrt(log(4));
%         elseif noiseMethod == -2 % Use mode to estimate noise statistics
%             nbins = 50;  % Default number of histogram bins to use
%             mx = max(sumAn(:));
%             edges = 0:mx/nbins:mx;
%             n = histc(sumAn(:),edges); 
%             [dum,ind] = max(n); % Find maximum and index of maximum in histogram 
%             tau  = (edges(ind)+edges(ind+1))/2;    
%         end
%             maxAn = en;
%       else
%             maxAn = max(maxAn,en);   
%       end       
end

% width = (sumAn./(maxAn + epsilon) - 1) / (nscale-1); % Now calculate the sigmoidal weighting function.
% weight = 1.0 ./ (1 + exp( (cutOff - width)*g)); 
%  if noiseMethod >= 0     % We are using a fixed noise threshold
%         T = noiseMethod;    % use supplied noiseMethod value as the threshold
%  else
%         totalTau = tau * (1 - (1/mult)^nscale)/(1-(1/mult));
%         EstNoiseEnergyMean = totalTau*sqrt(pi/2);        % Expected mean and std
%         EstNoiseEnergySigma = totalTau*sqrt((4-pi)/2);   % values of noise energy
%         T =  EstNoiseEnergyMean + kk*EstNoiseEnergySigma; % Noise threshold
%  end
%     curvature=atan2(sqrt(rx.^2+ry.^2),rz);
    direction=atan2(ry,rx);
    phase=atan2(sqrt(rx.^2+ry.^2+rz.^2),rp);
%     energy=sqrt(rp.^2+rx.^2+ry.^2+rz.^2);
% phase=atan2(sqrt(rx.^2+ry.^2+rz.^2),rp);
sumrx=mat2gray(sumrx.^2);sumry=mat2gray(sumry.^2);sumf=mat2gray(sumf.^2);
energy=sqrt(sumrx+sumry+sumf);energy=mat2gray(energy);
% sumAn=mat2gray(sumAn);
%   energy=(energy-min(min(energy)))./(max(max(energy))-min(min(energy)));
%  phasecon= weight.*max(1 - 1.5*acos(energy./(sumAn + epsilon)),0);
% phasecon=weight.*(energy./(sumAn + epsilon));
% imshow(image,[]);
%  figure;imshow(energy,[]);
%  figure;imshow(phase,[]);
%  figure;imshow(direction,[]);
%     direction=atan2(ry,rx);
%     phase=atan2(sqrt(rx.^2+ry.^2+rz.^2),rp);
%   energy=log(sqrt(rx.^2+ry.^2)+1);
%     energy=sqrt(rx.^2+ry.^2);
%     energy=sqrt(rx.^2+ry.^2);
    
%     energy=(energy-min(min(energy)))./(max(max(energy))-min(min(energy)));
% 
%     a=log(energy+1);energy(find(energy>=0.1))=1;energy(find(energy<0.1))=0;
%     a=log(energy+1);energy(find(energy>=0.1))=1;energy(find(energy<0.1))=0;
%     imshow(a.*energy,[]);
%  imshow(image,[]);
%  figure;imshow(curvature,[]);figure;imshow(direction,[]);figure;imshow(phase,[]);
%  figure;imshow(energy,[]);
%  or = atan(-ry./(rx+0.001));  
%  or(or<0) = or(or<0)+pi;   
%  or = fix(or/pi*180);
%  nonmax = nonmaxsup(energy, or, 20); 
%  figure,imshow(nonmax,[]);
%  figure,imshow(energy,[]);
%  figure,imshow(phase,[]);
%  figure,imshow(direction,[]);
%  figure,imshow(curvature,[]);

% figure;imshow(phasecon,[]);
%  figure;imshow(energy,[]);
%  figure;imshow(phase,[]);
%  figure;imshow(direction,[]);
%  figure;imshow(curvature,[]);
 
 %     or = atan(-sumry./(sumrx+0.0001));   
%     or(or<0) = or(or<0)+pi;   
%     or = fix(or/pi*180);
%     nonmax = nonmaxsup(energy, or, 1); 
%  figure,imshow(nonmax,[]);
