function out = cellCat(cell)
out = [];
for ind = 1:length(cell)
    if ischar(cell{ind})
        out = [out, cell{ind}];
    elseif iscell(cell{ind})
        for i = 1:length(cell(ind))
            out = [out, isnest(cell(i))];
        end
    end
end
end
function str1 = isnest(cell)
str = [];
for ind = 1:length(cell)
    str1 = [];
    if ischar(cell{ind})
        str1 = [str1, cell{ind}];
    elseif iscell(cell{ind})
        str1 = isnest(cell{ind});
    end
    str = [str, str1];
end
str1 = str;
end