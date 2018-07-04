function [ filenames, classIDs ] = ReadTxt( txtfile )
%READTXT 此处显示函数摘要
%   此处显示详细说明

fid = fopen(txtfile,'r');
tline = fgetl(fid); % get the number of image samples
i = 0;
while 1
    tline = fgetl(fid);
    if ~ischar(tline)
        break;
    end
    index = findstr(tline,' ');
    i = i+1;
    filenames(i) = str2num(tline(1:index-1)); % the picture ID starts from 0, but the index of Matlab array starts from 1
    classIDs(i) = str2num(tline(index+1:end)); 
end
fclose(fid);


end
