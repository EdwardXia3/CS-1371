function [sound] = hiddenSound(imfile)
%
img = imread(imfile);
red = double(img(:,:,1));
green = double(img(:,:,2));
blue = double(img(:,:,3));
mask = blue == 0;
blue(mask) = [];
red(mask) = [];
green(mask) = [];
sf = blue ./ 256;
red = (red - 128)./128 .* sf;
green = (green - 128)./128 .* sf;
sound = [round(red(:),4), round(green(:),4)];
end