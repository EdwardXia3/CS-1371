function grammar = grammarCheck(sent)
%The function tests the string input to see if it has a capital letter as
%the first word, ends with proper punctuation, and doesn't ever spell out
%UGA. If all the conditions are met, the output is true.

sentvec = double(sent);
firstcheck = sentvec(1) <= 90 & sentvec(1) >= 65;
punct = isequal(sentvec(end), 33)|isequal(sentvec(end), 46)|isequal(sentvec(end), 63);
UGAcheck = strfind(sent, 'UGA');
uga = isempty(UGAcheck);
grammar = firstcheck==1 & punct==1 & uga==1;
end