function [statement] = shortCat(str1, str2)
%The function concatenates the two input strings, but if one of the strings
% is longer than the other, the last N characters of the longer string is
% concatenated where N is the length of the shorter string.
%
lstr1 = length(str1);
lstr2 = length(str2);
lengthvec = [lstr1, lstr2];
short1 = str1(lstr1 - min(lengthvec) + 1:end);
short2 = str2(lstr2 - min(lengthvec) + 1:end);
statement = strcat(short1, short2);
end

