function outcome = lostAbroad(map, directions)
%Finds outcome of adventure.
outcome = '';
for ind = 1:length(directions) - 1;
    row = directions(1, ind);
    col = directions(2, ind);
    point = [row, col];
    nextpoint = [directions(1, ind + 1), directions(2, ind + 1)];
    dir = nextpoint - point;
    
    while ~isequal(point, nextpoint)
        loc = map(row, col);
        if dir(1) > 0
            row = row + 1;
        elseif dir(1) < 0;
            row = row - 1;
        elseif dir(2) > 0;
            col = col + 1;
        else
            col = col - 1;
        end
        point = [row, col];
        outcome = [outcome, loc]; 
    end
end

outcome = [outcome, map(directions(1, end), directions(2, end))];
if ~isempty(strfind(outcome, '#'))
    outcome = 'No record of this person exists. ­Government';
elseif outcome(end) ~= '*'
    outcome = 'I am lostAbroad and can''t find my friends.';    
else
    outcome = outcome(1:end-1);
end
  
end