function bestcars = carShopping(xlfile, prio1, prio2)
%Sorts cars for priorities.
[~, ~, file] = xlsread(xlfile);
sorted1 = sortCar(file, prio1);
[~, ind] = max(max(strcmp(sorted1, prio1)));
otheroptions = find([sorted1{5:end,ind}] == sorted1{4,ind}(1));
bestcars = sorted1(1:4,:);
if ~isempty(otheroptions)
    for indx = 2:length(otheroptions)
        bestcars = [bestcars; {sorted1{otheroptions(indx), :}}];
    end
end
c = [bestcars{2:end,ind}];
carsfilter = file(1,1:end);
b = 0;
for indx = 1:length(c)
    a = find(c==c(indx));
    cars = sortCar([file(1,1:end); bestcars(a+1, :)], prio2);
    if a ~= b
        carsfilter = [carsfilter; cars(2:end,:)];
    end
    b = a; 
end
bestcars = carsfilter(1:4,:);
end










function modcell = sortCar(file, header)
%Sorts XL file by a header either alphabetically or numerically.
[r, c] = size(file);
if isequal(class(file{1,1}(1:end)), class(file{1,end}(1:end)))
    [~, col] = max(strcmp(file(1,:), header));
    sortind = [];
    sorted = sort([file{2:end,col}]);
    for ind = 1:r-1
        sortloc = find([file{2:end,col}]== sorted(ind))+1;
        sortind = [sortind, sortloc];  
    end

    sortind = unique(sortind, 'stable');
    modcell = {file{1,1:end}};
    for ind = 1:r-1
        modcell = [modcell; {file{sortind(r-ind),1:end}}];
    end
elseif isequal(class(file{1,1}(1:end)), class(file{end,1}(1:end)))
    [~, row] = max(strcmp(file(:,1), header));
    sortind = [];
    sorted = sort([file{row,2:end}]);
    for ind = 1:c-1
        sortloc = find([file{row,2:end}]== sorted(ind))+1;
        sortind = [sortind, sortloc];  
    end

    sortind = unique(sortind, 'stable');
    modcell = {file{1:end,1}};
    for ind = 1:c-1
        modcell = [modcell; {file{1:end,sortind(r-ind)}}];
    end
    modcell = modcell';
end
end
