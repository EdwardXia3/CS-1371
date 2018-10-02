function tot = cellSum_slow(ca)
tot = 0;
for i = 1:numel(ca)
    curr = ca{i};
    while iscell(curr)
        curr = curr{1};
    end
    if isnumeric(curr)
        tot = tot + sum(sum(curr));
    end
end
end