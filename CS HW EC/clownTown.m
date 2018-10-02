function [pass1, pass2] = clownTown(str)
%
fields = fieldnames(str);
fields = sort(fields);
numbers = [];
wordcount = [];
for ind = 1:length(fields)
    words = 0;
    phrase = str(1).(fields{ind});
    if ischar(phrase)
        spaces = find(phrase == ' ');
        words = words + length(spaces) + 1;
    elseif isnumeric(phrase)
        numbers = [numbers, phrase];
    elseif iscell(phrase)
        for i = 1:length(phrase)
            if ischar(phrase{i})
                spaces = find(phrase{i} == ' ');
                words = words + length(spaces);
            elseif isnumeric(phrase{i})
                numbers = [numbers, phrase{i}];
            end
        end
    end
    wordcount = [wordcount words];
end
for ind = 2:length(str)
    for i = 1:length(fields)
        words = 0;
        phrase = str(ind).(fields{i});
        if ischar(phrase)
            spaces = find(phrase == ' ');
            words = words + length(spaces) + 1;
        elseif isnumeric(phrase)
            numbers = [numbers, phrase];
        elseif iscell(phrase)
            for indx = 1:length(phrase)
                if ischar(phrase{indx})
                    spaces = find(phrase{indx} == ' ');
                    words = words + length(spaces) + 1;
                elseif isnumeric(phrase{indx})
                    numbers = [numbers, phrase{indx}];
                end
            end
        end
        wordcount(i) = wordcount(i) + words;
    end
end
pass1 = [];
for ind = 1:length(fields)
        l = length(fields{ind});
        pos = mod(wordcount(ind),l);
        if pos == 0
            pos = l;
        end
        if wordcount(ind) == 0
            pass1 = [pass1, ' '];
        else
            pass1 = [pass1, fields{ind}(pos)];
        end
end
if isempty(numbers)
    pass2 = 0;
else
    pass2 = round(mean(numbers));
end
end