function [micsize] = microscope(file, scale)
%
img = imread(file);
[r, c, ~] = size(img);
mask = img(:,:,1) == 0 & img(:,:,2) == 0 & img(:,:,3) == 0;
num = find(mask == 1);
barl = 1 + floor(num ./ r);
barlength = max(barl) - min(barl) + 1;
barh = mod(num, r);
barheight = max(barh) - min(barh) + 1;
scaler = scale ./ max([barlength, barheight]);
micsize = [round(r .* scaler), round(c .* scaler)];
end