function towersOfHaynoi(hay, a, b, c)
%
filename = sprintf('Instructions_%sto%s.txt', a, b);
global lines
global text
text = {};
lines = 0;
fh = fopen(filename, 'w');
fprintf(fh, 'Instructions for moving %d bales of hay from %s to %s:\n\n', hay, a, b);
helper(hay, a, b, c);
for ind = 1:lines-1
    fprintf(fh, text{ind});
end
fprintf(fh, text{end}(1:end-1));
fclose(fh);
end
function helper(n, start, fin, help)
global lines
global text
if n == 1
    newtext = sprintf('Move top bale from %s to %s.\n', start, fin);
    text = [text, newtext];
    lines = lines + 1;
else
    helper(n-1, start, help, fin);
    helper(1, start, fin, help);
    helper(n-1, help, fin, start);
end

end
