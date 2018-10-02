function [] = banFinder(file, banfunct)
%Finds banned functions.
fh = fopen(file, 'r');
newfile = [file(1:end-4), 'Result.txt'];
fh1 = fopen(newfile, 'w'); 
banuse = 0;
line = '';
while ischar(line)
    line = fgetl(fh);
    if line(1) ~= '%'
        banuse = banuse + length(strfind(line, banfunct));
    end
end

if banuse > 0
    fprintf(fh1,'The %s function was used %d time(s).\nFail.', banfunct, banuse);
else
    fprintf(fh1,'The %s function was not used.\nPass.', banfunct);
end
fclose(fh);
fclose(fh1);
end
       
    
    
    

