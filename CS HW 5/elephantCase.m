function [out] = elephantCase(origstr)
%Uses special rules to change a sentence.

str = lower(origstr);
num = double(str);
elephant = strfind(str, 'elephant');
if ~isempty(elephant)
    str(elephant:elephant+7) = char(double('ELEPHANT'));
end
spaces = [find(num == 32), length(str) + 1];
let3 = spaces(diff(spaces) == 4);
if num(4) == 32
    str(1) = upper(str(1));
    str(3) = upper(str(3));
end
str(let3+1) = upper(str(let3+1));
str(let3+3) = upper(str(let3+3));
mask = (num >= 33 & num <= 64)|(num >= 91 & num <= 96)|(num >= 123 & num <= 126);
str(mask) = [];
out = zeros(1,length(str)+1);
out(1:length(str)) = str(1:end);
out = char(out);
out(end) = '!';

end