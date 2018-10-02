function percentMatch = roommateMatch_slow(r1, r2)
%starting out, accessing files, getting lines
fh1=fopen(r1);
fh2=fopen(r2);
line1 = fgetl(fh1);
line2 = fgetl(fh2);

%get names for output.  no comparison on these
[~, name1] = strtok(line1, ':');
[~, name2] = strtok(line2, ':');
name1 = name1(3:end);  %because strtok keeps token and space
name2 = name2(3:end);

%times of first class
line1 = fgetl(fh1);
line2 = fgetl(fh2);
[~, t1] = strtok(line1, ':');
[~, t2] = strtok(line2, ':');

timescore = round((1 - timeDiff(t1(2:end), t2(2:end)) / 12) * 20);

% figuring out what time roommates go to bed
% pull out in which line the "X" is, indicating early, late, or really late.
fgetl(fh1); % skip over category title
fgetl(fh2);
logX = [];
for x = 1:3
    line1 = fgetl(fh1);
    line2 = fgetl(fh2);
    logX = [logX, [line1(1) == 'X'; line2(1) == 'X']]; %#ok<AGROW>
end
late_pattern = sum(logX);
latescore = 20*(max(late_pattern)==2) + 10*(~isempty(strfind(late_pattern, [1 1])));

% talkativity calculations
fgetl(fh1); % skip food pref lines
fgetl(fh2);
fgetl(fh1); % skip over section title
fgetl(fh2);

% concat bios
about1 = [];
about2 = [];
line1 = fgetl(fh1);
line2 = fgetl(fh2);
while ischar(line1) % get roommate 1 bio
    about1 = [about1, line1]; %#ok<AGROW>
    line1 = fgetl(fh1);
end

while ischar(line2) % get roommate 2 bio
    about2 = [about2, line2]; %#ok<AGROW>
    line2 = fgetl(fh2);
end
% close files now that we're done with them.
fclose(fh1);
fclose(fh2);

% remove leading/trailing whitespace
about1 = strtrim(about1);
about2 = strtrim(about2);

% calculate score
lens = sort([length(about1), length(about2)]);
talkativescore = round((lens(1)./lens(2))*20);

% add up everything
compatability = round((timescore + latescore + talkativescore) / 60 * 100); %  + foodscore + grammarscore

% print result
percentMatch = sprintf('%s and %s have a %d%% roommate compatibility score.', name1, name2, compatability);

end