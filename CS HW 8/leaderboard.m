function [standing] = leaderboard(leadtext, tag, score)
%Determines your rank on the snake leaderboard
fh = fopen(leadtext, 'r');
line = fgetl(fh);
comma = strfind(line, ',');
tags = line(1:comma-1);
scores = str2double(line(comma+1:end));
newfile = [leadtext(1:end-4), '_updated.txt'];
fh1 = fopen(newfile, 'w');
currentscore = scores;
highscore = score;
prefix = '';
replay = false;
if isequal(tag,tags)
    if score > currentscore
        fprintf(fh1, '%s,%d', tags, score);
        prefix = 'You beat your own highscore!'; 
    elseif score < currentscore
        fprintf(fh1, '%s,%d', tags, score);
        prefix = 'You did worse than last time!';
        highscore = currentscore;
    else
        fprintf(fh1,'%s,%d', tags, scores);
        prefix = '';
    end
else
    fprintf(fh1, '%s,%d', tags, scores);
end


while ischar(line)
    line = fgetl(fh);
    if line ~= -1
        comma = strfind(line, ',');
        tags = line(1:comma-1);
        currentscore = str2double(line(comma+1:end));
        if isequal(tag,tags)
            replay = true;
            if score > currentscore
                fprintf(fh1, '\n%s,%d', tags, score);
                prefix = 'You beat your own highscore! ';
                scores = [scores, score];
            elseif score < currentscore
                fprintf(fh1,'\n%s,%d', tags, currentscore);
                prefix = 'You did worse than last time! ';
                highscore = currentscore;
                scores = [scores, currentscore];
            else
                fprintf(fh1,'\n%s,%d', tags, currentscore);
                prefix = '';
                scores = [scores, currentscore];
            end
        else
            fprintf(fh1, '\n%s,%d', tags, currentscore);
            scores = [scores, currentscore];
        end
    end
end

if replay ~= true && score == highscore
    fprintf(fh1, '\n%s,%d', tag, score);
    scores = [scores, highscore];
end
scores = sort(scores);
tied = 0;
for ind = 1:length(scores)
    if highscore == scores(ind)
        tied = tied + 1;
    end
end
index = find(scores==highscore);
rank = length(scores) - index(end) + 1;
if tied == 1
    standing = sprintf('%sYour rank is %d.', prefix, rank);
else
    standing = sprintf('%sYou are tied with %d other player(s) for a rank of %d.', prefix, tied-1, rank);
end
fclose(fh);
fclose(fh1);
end
    
