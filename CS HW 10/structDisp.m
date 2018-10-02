function out = structDisp(str)
%Displays a Structure
[row, col] = size(str);
out = '';
for ind = 1:row
    catstruct = '';
    for ind3 = 1:col
        arr = struct2charArr(str(ind,ind3));
        [r,~] = size(arr);
        struct = '';
        for ind2 = 1:r
            line = arr(ind2,:);
            if length(arr(ind2,:)) < 50
                while length(line) < 50
                    line = [line, ' '];
                end
            elseif length(line) > 50
                line = line(1:50);
            end
            struct = [struct; line];
        end
        catstruct = [catstruct, struct];
    end
    out = [out; catstruct];
end
end