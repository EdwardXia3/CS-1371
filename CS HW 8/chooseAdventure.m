function chooseAdventure(text)
%Rewrites textfiles.
fh = fopen(text, 'r');
line = '';
linenum = 0;
fh1 = fopen([text(1:end-4), '_chAdv.txt'], 'w');
while ischar(line)
    line = fgetl(fh);
    if ischar(line) == 1
        linenum = linenum + 1;
        openangle = strfind(line,'<');
        if ~isempty(openangle)
            fprintf(fh1, [line(1:openangle-1), '\n']);
            closeangle = strfind(line,'>');
            filejump = line(openangle(1):end);
            while isempty(closeangle)
                newline = fgetl(fh);
                filejump = [filejump, newline];
                linenum = linenum + 1;
                closeangle = strfind(newline,'>');
            end
            dividers = strfind(filejump, '|');
            newfile = filejump(2:dividers(1)-1);
            newline = str2double(filejump(dividers(1)+1:dividers(2)-1));
            closed = strfind(filejump, '>');
            newlinestart = str2double(filejump(dividers(2)+1:closed-1));
            if isequal(text, newfile)
                for ind = 1:newline-linenum
                    line = fgetl(fh);
                end
                fprintf(fh1, [line(newlinestart:end), '\n']);
            else
                text = newfile;
                fclose(fh);
                fh = fopen(text, 'r');
                linenum = 0;
                for ind = 1:newline
                    line = fgetl(fh);
                end
                fprintf(fh1, [line(newlinestart:end), '\n']);
            end


        else
            fprintf(fh1, [line, '\n']);
        end
    end
end
fclose(fh);
end
    