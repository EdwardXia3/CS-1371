function [unweighted, weighted] = multTable(table)
%The function compares a input multiplication table to the actual table and
%gives a weighted and unweighted score.

[r, c] = size(table);
perftable = (1:r)' * (1:c);
total = sum(sum(perftable));
correct = table == perftable;
table(correct == 0) = 0;
weightedtot = sum(sum(table));
weighted = round(weightedtot ./ total .* 100, 4);
totalcor = sum(sum(correct));
unweighted = round(totalcor ./ (r .* c) .* 100, 4);
end