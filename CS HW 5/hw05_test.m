clc
clear
phrase = 'Please go to the Store and Buy milk.';
firstlet = find(phrase == 32) + 1;
phrase(firstlet) = upper(phrase(firstlet));
[firstword, rest] = strtok(phrase, ' ');
[secondword, rest] = strtok(rest, ' ');
firstword = upper(firstword);
secondword = upper(secondword);
phrase_first = [firstword, ' ', secondword];
phrase_last = rest(2:end);

