function [app, sel] = careerFair(filestr, num)
%
GPAvec = [];
for ind = 1:num
    matlab = 0;
    if ind >= 10
        filename = sprintf('%s%d.txt', filestr, ind);
    else
        filename = sprintf('%s0%d.txt', filestr, ind);
    end
    fh = fopen(filename, 'r');
    line = '';
    app(ind).Name = 'Not found';
    app(ind).GPA = 'Not found';
    app(ind).Education = 'Not found';
    app(ind).Skills = 'Not found';
    app(ind).MATLAB = 0;
    line = fgetl(fh);
    while ischar(line)
        matlab = matlab + length(strfind(line, 'MATLAB'));
        [word, rest] = strtok(line, ': ');
        if strcmp(word,'Name')
            [word, rest] = strtok(rest, ': ');
            phrase = word;
                while ~isempty(rest)
                    [word, rest] = strtok(rest, ': ');
                    if ~isempty(word)
                        phrase = [phrase, ' ', word];
                    end
                end
            app(ind).Name = phrase;
        elseif strcmp(word,'Skills')
                [word, rest] = strtok(rest, ':,');
                [word, rest2] = strtok(word, ' ');
                phrase = word;
                if ~all(rest2 == ' ')
                    while ~isempty(rest2)
                        [word, rest2] = strtok(rest2, ' ');
                        if ~isempty(word)
                            phrase = [phrase, ' ', word];
                        end
                    end
                end
                app(ind).Skills = {phrase};
            while ~isempty(rest)
                [word, rest] = strtok(rest, ',');
                [word, rest2] = strtok(word, ' ');
                phrase = word;
                while ~isempty(rest2)
                    [word, rest2] = strtok(rest2, ' ');
                    if ~isempty(word)
                        phrase = [phrase, ' ', word];
                    end
                end
                app(ind).Skills = [app(ind).Skills, {phrase}];
            end;
        elseif strcmp(word,'GPA')
            app(ind).GPA = str2double(strtok(rest, ': '));
            GPAvec = [GPAvec, app(ind).GPA];
        elseif strcmp(word,'Education')
            [word, rest] = strtok(rest, ': ');
            phrase = word;
                while ~isempty(rest)
                    [word, rest] = strtok(rest, ': ');
                    if ~isempty(word)
                        phrase = [phrase, ' ', word];
                    end
                end
            app(ind).Education = phrase;
        end
        line = fgetl(fh);
    end
    app(ind).MATLAB = matlab;
    fclose(fh);
end
for ind = 1:num
    if strcmp(app(ind).Education, 'Georgia Tech') || strcmp(app(ind).Education, 'Georgia Institute of Technology')
        GPAvec(ind) = GPAvec(ind) .* 1.5;
    elseif strcmp(app(ind).Education, 'UGA') || strcmp(app(ind).Education, 'University of Georgia')
        GPAvec(ind) = GPAvec(ind) .* .75;
    end
    GPAvec(ind) = GPAvec(ind) + app(ind).MATLAB;
    
end
med = median(GPAvec);
mask = GPAvec >= med;
[~, ind] = sort(GPAvec(mask), 'descend');
sel = app(mask);
sel = sel(ind);
end