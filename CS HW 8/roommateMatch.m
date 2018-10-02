function compat = roommateMatch(surv1, surv2)
%Tests roommate compatability
fh = fopen(surv1, 'r');
fh1 = fopen(surv2, 'r');
name1 = fgetl(fh);
time1 = fgetl(fh);
fgetl(fh);
early1 = fgetl(fh);
late1 = fgetl(fh);
reallylate1 = fgetl(fh);
fgetl(fh);
fgetl(fh);
response1 = '';
line = '';
while ischar(line)
    line = fgetl(fh);
    response1 = [response1, line];
end

name2 = fgetl(fh1);
time2 = fgetl(fh1);
fgetl(fh1);
early2 = fgetl(fh1);
late2 = fgetl(fh1);
reallylate2 = fgetl(fh1);
fgetl(fh1);
fgetl(fh1);
response2 = '';
line = '';
while ischar(line)
    line = fgetl(fh1);
    response2 = [response2, line];
end    
timedif = timeDiff(time1(17:end), time2(17:end));
firstclass = round(abs((1 - timedif ./ 12)) * 20);

if early1(1) == 'X'
    sleep1 = 1;
elseif late1(1) == 'X'
    sleep1 = 2;
else
    sleep1 = 3;
end
if early2(1) == 'X'
    sleep2 = 1;
elseif late2(1) == 'X'
    sleep2 = 2;
else
    sleep2 = 3;
end
stayuplate = 20 - 10 .* abs(sleep1 - sleep2);

resvec = [length(response1), length(response2)];
talkcomp = round(min(resvec) ./ max(resvec) .* 20);
compperc = round((firstclass + stayuplate + talkcomp) ./ .6);
compat = sprintf('%s and %s have a %d%% roommate compatibility score.',...
    name1(7:end), name2(7:end), compperc);
fclose(fh);
fclose(fh1);
end