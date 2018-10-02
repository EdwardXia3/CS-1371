function theGreatPortraitExhibition(r, c, file)
im = imread(file);
port = [];
for ind = 1:50
    port = [port; im(r(ind),c(ind):c(ind)+49,:)];
end
r = port(:,:,3);
g = port(:,:,2);
port = imrotate(port,180);
b = port(:,:,1);
r = 255 - r;
r = transpose(r);
g1 = g(1:25,1:25);
g2 = g(26:50, 1:25);
g3 = g(1:25, 26:50);
g4 = g(26:50, 26:50);
g = [g4,g2;g3,g1];
newimg = cat(3, r, g, b);
filename = [file(1:end-11) '_decoded.png'];
imwrite(newimg, filename);
end
