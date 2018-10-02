function [number] = word2int(word)
%The function takes the ACSII value of each letter in the word and
%multiplies  it by an exponent of 131 based on its position in the word.
%The number that results from the function represents part of the
%encrypting process for a word.
%
asciivec = double(word);
letters = length(word);
n = (1:letters);
expo = 131.^(n-1);
products = expo .* asciivec;
number = sum(products);
end