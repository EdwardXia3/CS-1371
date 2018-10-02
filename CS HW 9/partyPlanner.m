function popularfood = partyPlanner(textfile)
%Determines most popular food.
fh = fopen(textfile, 'r');
food = '';
line = '';
votes = 0;
while ischar(line)
    line = fgets(fh);
    if ischar(line)
        food = [food line];
        if length(strfind(food, line)) > votes
            votes = length(strfind(food,line));
            popularfood = line;
        elseif length(strfind(food, line)) == votes
            a = strfind(food, line);
            b = strfind(food, popularfood);
            if a(1) < b(1)
                popularfood = line;
            end
        end
    end
end
fclose(fh);
end
    