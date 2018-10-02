function memeGenerator(top, bottom, imgfile, color)
%
img = imread(imgfile);
toptext = str2img(top, color);
bottomtext = str2img(bottom, color);
[~,c,~] = size(img);
[rt, ct, ~] = size(toptext);
[rb, cb, ~] = size(bottomtext);
newrowt = round(c./ ct .* rt);
newrowb = round(c./ cb .* rb);
toptext = imresize(toptext, [newrowt, c], 'nearest');
[rt, ~, ~] = size(toptext);
bottext = imresize(bottomtext, [newrowb, c], 'nearest');
[rb, ~, ~] = size(bottext);
topmask = toptext(:,:,1) == 0 & toptext(:,:,2) == 0 & toptext(:,:,3) == 0;
topmask = cat(3, ~topmask, ~topmask, ~topmask);
botmask = bottext(:,:,1) == 0 & bottext(:,:,2) == 0 & bottext(:,:,3) == 0;
botmask = cat(3, ~botmask, ~botmask, ~botmask);
ttloc = img(1:rt,:,:);
ttloc(topmask) = toptext(topmask);
img(1:rt,:,:) = ttloc;
btloc = img(end-rb+1:end,:,:);
btloc(botmask) = bottext(botmask);
img(end-ct+1:end,:,:) = btloc;
outfile = [imgfile(1:end-4), '_meme.png'];
imwrite(img, outfile);
end
