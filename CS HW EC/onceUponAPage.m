function [out] = onceUponAPage(str, lines)
%
out = [0 0 0 0 0];
str= lower(str);
str = str(str>='a'&str<='z');
mask =str=='a'|str=='e'|str=='i'|str=='o'|str=='u';
str(mask) = [];
str(str=='w') = 'W';
str = [str, '.txt'];
fh = fopen(str, 'r');
letters = 'ODLAW';
for ind = 1:lines-1
    line = upper(fgetl(fh));
    for i = 1:5
        out(i) = out(i) + length(find(line == letters(i)));
    end
end
fclose(fh);
end