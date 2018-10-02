function [valid] = gibberish(sent, dict, noun, verb, adj)
%The function finds if each word in the sentence is in the dictionary. Then
%it checks if the sentence follows a certain pattern of nouns, verbs, and
%adjectives and checks if the sentence is gramatically correct based on the
%grammarCheck_soln function. If all these conditions are met, the sentence
%is considered valid, or the output is true.

spaces = strfind(sent, ' ');
lsent = lower(sent);
word1 = lsent(1:spaces(1)-1);
word2 = lsent(spaces(1)+1:spaces(2)-1);
word3 = lsent(spaces(2)+1:end-1);
dict1 = strfind(dict, word1);
dict2 = strfind(dict, word2);
dict3 = strfind(dict, word3);
dictcheck = ~isempty(dict1) & ~isempty(dict2) & ~isempty(dict3);

noun1 = strfind(noun, word1);
adj1 = strfind(adj, word1);
verb1 = strfind(verb, word1);
verb2 = strfind(verb, word2);
noun2 = strfind(noun, word2);
noun3 = strfind(noun, word3);
adj3 = strfind(adj, word3);
verb3 = strfind(verb, word3);
arr1 = ~isempty(noun1) & ~isempty(verb2) & (~isempty(noun3) | ~isempty(adj3));
arr2 = (~isempty(adj1) | ~isempty(verb1)) & ~isempty(noun2) & (~isempty(verb3) | ~isempty(noun3));
arrcheck = arr1 | arr2;

valid = dictcheck & arrcheck & grammarCheck_soln(sent);
end
