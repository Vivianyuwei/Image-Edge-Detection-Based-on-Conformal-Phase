function [ Image_mean,Image_num_U,Image_num_D ] = ms_image_mean( num_ring,d_image )
%MS_IMAGE_MEAN 此处显示函数摘要
%   此处显示详细说明
radius=num_ring;
neighbors=num_ring*8;
spoints=zeros(neighbors,2);
% Angle step.
a = 2*pi/neighbors;
for i = 1:neighbors
    spoints(i,1) = -radius*sin((i-1)*a);
    spoints(i,2) = radius*cos((i-1)*a);
end
% Determine the dimensions of the input image.
[ysize xsize] = size(d_image);
Image_C=d_image(1+radius:ysize-radius,1+radius:xsize-radius);

miny=min(spoints(:,1));
maxy=max(spoints(:,1));
minx=min(spoints(:,2));
maxx=max(spoints(:,2));

% Block size, each LBP code is computed within a block of size bsizey*bsizex
bsizey=ceil(max(maxy,0))-floor(min(miny,0))+1;
bsizex=ceil(max(maxx,0))-floor(min(minx,0))+1;

% Coordinates of origin (0,0) in the block
origy=1-floor(min(miny,0));
origx=1-floor(min(minx,0));

% Minimum allowed size for the input image depends
% on the radius of the used LBP operator.
if(xsize < bsizex || ysize < bsizey)
  error('Too small input image. Should be at least (2*radius+1) x (2*radius+1)');
end

% Calculate dx and dy;
dx = xsize - bsizex;
dy = ysize - bsizey;

bins = 2^neighbors;

Image_mean=zeros(dy+1,dx+1);
Image_num_U=zeros(dy+1,dx+1);
Image_num_D=zeros(dy+1,dx+1);

for i = 1:neighbors
    y = spoints(i,1)+origy;
    x = spoints(i,2)+origx;
    % Calculate floors, ceils and rounds for the x and y.
    fy = floor(y); cy = ceil(y); ry = round(y);
    fx = floor(x); cx = ceil(x); rx = round(x);
    % Check if interpolation is needed.
    if (abs(x - rx) < 1e-6) && (abs(y - ry) < 1e-6)
        % Interpolation is not needed, use original datatypes
        N(:,:,i) = d_image(ry:ry+dy,rx:rx+dx);
        num_U(:,:,i)=(N(:,:,i)+Image_C)>=0;
        num_D(:,:,i)=(N(:,:,i)-Image_C)>=0;
    else
        % Interpolation needed, use double type images 
        ty = y - fy;
        tx = x - fx;

        % Calculate the interpolation weights.
        w1 = (1 - tx) * (1 - ty);
        w2 =      tx  * (1 - ty);
        w3 = (1 - tx) *      ty ;
        w4 =      tx  *      ty ;
        % Compute interpolated pixel values
        N(:,:,i) = w1*d_image(fy:fy+dy,fx:fx+dx) + w2*d_image(fy:fy+dy,cx:cx+dx) + ...
            w3*d_image(cy:cy+dy,fx:fx+dx) + w4*d_image(cy:cy+dy,cx:cx+dx);
        num_U(:,:,i)=(N(:,:,i)+Image_C)>=0;
        num_D(:,:,i)=(N(:,:,i)-Image_C)>=0;
    end
    Image_num_U=Image_num_U+num_U(:,:,i);
    Image_num_D=Image_num_D+num_D(:,:,i);
    Image_mean=Image_mean+N(:,:,i);
end  
Image_mean=Image_mean/neighbors;

end
