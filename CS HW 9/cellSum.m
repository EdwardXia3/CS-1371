function cellsum = cellSum(cell)
%Finds the sum within cells.
cellsum = 0;
for ind = 1:length(cell)
    if iscell(cell{ind})
        innercell = cell{ind};
        while iscell(innercell)          
            innercell = [innercell{1}];
            if isnumeric(innercell) == 1
                cellsum = cellsum + sum(innercell);
            end           
        end

    elseif isnumeric(cell{ind})
        cellsum = cellsum + sum(cell{ind});
    end
end


        