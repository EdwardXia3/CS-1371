function modcell = sortBy(xlfile, header)
%Sorts XL file by a header either alphabetically or numerically.
[~,~,file] = xlsread(xlfile);
[r, c] = size(file);
if isequal(class(file{1,1}(1:end)), class(file{1,end}(1:end)))
    [~, col] = max(strcmp(file(1,:), header));
    sortind = [];
    if isnumeric([file{2,col}])
        sorted = sort([file{2:end,col}]);
        for ind = 1:r-1
            sortloc = find([file{2:end,col}]== sorted(ind))+1;
            sortind = [sortind, sortloc];  
        end
    elseif ischar([file{2,col}])
        sorted = sort({file{2:end,col}});
        for ind = 1:r-1
            [~, sortloc] = max(strcmp({file{2:end,col}},sorted(ind)));
            sortind = [sortind, sortloc];
        end
    end
    sortind = unique(sortind, 'stable');
    modcell = {file{1,1:end}};
    for ind = 1:r-1
        modcell = [modcell; {file{sortind(ind),1:end}}];
    end
elseif isequal(class(file{1,1}(1:end)), class(file{end,1}(1:end)))
    [~, row] = max(strcmp(file(:,1), header));
    sortind = [];
    if isnumeric([file{row,2}])
        sorted = sort([file{row,2:end}]);
        for ind = 1:c-1
            sortloc = find([file{row,2:end}]== sorted(ind))+1;
            sortind = [sortind, sortloc];  
        end
    elseif ischar([file{row,2}])
        sorted = sort({file{row,2:end}});
        for ind = 1:c-1
            [~, sortloc] = max(strcmp({file{row,2:end}},sorted(ind)));
            sortind = [sortind, sortloc+1];
        end
    end
    sortind = unique(sortind, 'stable');
    modcell = {file{1:end,1}};
    for ind = 1:c-1
        modcell = [modcell; {file{1:end,sortind(ind)}}];
    end
    modcell = modcell';
end
end