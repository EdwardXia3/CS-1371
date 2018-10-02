function [out] = whereIsMySuperSuit(cell, names)
%Marks supers as terminated.
out = {};
for ind = 1:length(cell)
    str = cell{ind};
    outstr = [];
    outstr.Name = str.Name;
    if any(strcmp(names, str.Name))
        outstr.Status = 'Terminated';
    else
        outstr = str;
    end
    out = [out, outstr];
end
end