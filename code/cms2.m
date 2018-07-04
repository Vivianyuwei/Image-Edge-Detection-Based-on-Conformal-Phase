function curvature=cms2(image)
[m,n]=size(image);
image=double(image);
coarse=2; fine=0.9; size1=3;
% M0=-1/(size1^2)*ones(size1);M0(floor(size1/2)+1,floor(size1/2)+1)=(size1^2-1)/size1^2;
% image0=conv2(image,M0,'same');
    rp=zeros(size1);rx=zeros(size1);ry=zeros(size1);rz=zeros(size1);
    cx=(-(size1-1)/2:(size1-1)/2)'*ones(1,size1);
    cy=cx';
    d=cx.^2+cy.^2+1;
    u=cx./d;
    v=cy./d;
    w=(d-1)./d;
    uvw=u.^2+v.^2+w.^2;
    pf=(fine^2+uvw).^-(2);
    pc=(coarse^2+uvw).^-(2);
    pcc=fine*pf-coarse*pc;
    uc=(pf-pc).*u;
    vc=(pf-pc).*v;
    wc=(pf-pc).*w;
%     uc=(pf).*u;
%     vc=(pf).*v;
%     wc=(pf).*w;
%     rp=conv2(image,pcc,'same');
    rp=conv2(image,pf,'same');
    rx=conv2(image,uc,'same');
    ry=conv2(image,vc,'same');
    rz=conv2(image,wc,'same');
        
    curvature=atan2(sqrt(rx.^2+ry.^2),rz);
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
