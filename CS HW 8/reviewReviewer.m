function review = reviewReviewer(text, pos, neg)
%
fh = fopen(text, 'r');
line = '';
poswords = 0;
negwords = 0;
reviewline = fgetl(fh);
product = reviewline(1:end - 7);
while ischar(line)
    line = fgetl(fh);
    line = lower(line);
    while ~isempty(line)
        [word, line] = strtok(line, ' ,.:''";?!');
        if length(word) > 1
            ifpos = strfind([' ', pos, ' '], [' ', word,' ']);
            ifneg = strfind([' ', neg, ' '], [' ', word,' ']);
            if ~isempty(ifpos)
                poswords = poswords + 1;
            end
            if ~isempty(ifneg)
                negwords = negwords + 1;
            end
        end
    end
end
if poswords > (2 * negwords)
    stars = 5;
elseif negwords > (2 * poswords)
    stars = 1;
elseif poswords > negwords
    stars = 4;
elseif negwords > poswords
    stars = 2;
else
    stars = 3;
end
review = sprintf('The reviewer gave a %d star review of the %s.', stars, product);
fclose(fh);
end
        