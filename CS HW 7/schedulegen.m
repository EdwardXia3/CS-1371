%% Test case generator for whenisGood
% Input:   1) Double containing the number of rows for the schedule array (number of people)
%
% Outputs: 1) Mx24 array generated with availabilities and busy time
%             blocks. M is the input.
%          2) A char array containing information about the meetings to be
%             scheduled
%
function [sched,mtgstr] = schedulegen(nump)
sched = zeros(nump,24); %preallocate the schedule array
mtgcell = {};   %initialize a cell and string to generate meeting array
for i=1:nump
    ind = [];
    rand1 = randi(5,1);
    rand2 = randi(24,1,rand1);
    for j = 1:rand1
         ind = [ind rand2(j):rand2(j)+randi(8,1)];  %random number logic to create sequential unavailabilities
    end
    ind = unique(ind);
    ind(ind>24)=[]; %set out of bounds or repeated indices to be null
    sched(i,ind) = inf;
    rand1 = randi(nump,1,randi(nump,1));    %generate random participants list for meeting array
    rand1 = unique(rand1);
    while length(rand1)==1      %regenerate if only 1 participant is generated
        rand1 = randi(nump,1,randi(nump,1));
        rand1 = unique(rand1);
    end
    pstr = ['[' strjoin(cellfun(@(x) num2str(x), num2cell(rand1), 'UniformOutput', false), ' '), ']'];
    dura = randi(8,1);
    dura = num2str(dura.*30);
    str = [pstr, ', ' dura];
    mtgcell = [mtgcell;str];
end
mtgstr = char(mtgcell);
% Get rid of some meetings. It generates too many...
rand5 = randi(randi(round(nump/2),1),1,randi(round(nump/2),1));
rand5 = unique(rand5);
mtgstr(rand5,:) = [];
end