function maskingTape(img1, img2, maskcolor)
%
im1 = imread(img1);
red1 = im1(:,:,1);
green1 = im1(:,:,2);
blue1 = im1(:,:,3);
im2 = imread(img2);
red2 = im2(:,:,1);
green2 = im2(:,:,2);
blue2 = im2(:,:,3);
mask = red1 == red2 & green1 == green2 & blue1 == blue2;
red1(mask) = maskcolor(1);
green1(mask) = maskcolor(2);
blue1(mask) = maskcolor(3);
pic = cat(3, red1, green1, blue1);
outfile = [img1(1:end-4), '_tape.png'];
imwrite(pic, outfile);

end