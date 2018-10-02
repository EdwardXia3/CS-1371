function clockFaces(time, timedif)
% Plots clocks before and after time change.
if length(time) == 4
    hour = str2double(time(1));
else
    hour = str2double(time(1:2));
end
minutes = str2double(time(end-1:end));
subplot(1,2,1)
the = linspace(-180,180);
plot(cosd(the),sind(the),'k-')
hold on
plot(0,0,'ko')
axis square
axis off
numint = linspace(60, -270 ,12);
hourhanda = 90 - hour .* 30;
hourhand = [0, 0; .5 .* cosd(hourhanda), .5 .* sind(hourhanda)];
minutehanda = 90 - minutes .* 6;
minutehand = [0, .7 .* cosd(minutehanda); 0, .7 .* sind(minutehanda)];
plot(minutehand(1,:), minutehand(2,:), 'r-')
plot(hourhand(:,1), hourhand(:,2), 'b-')
title('Current Time')
for ind = 1:12
    text(0.9 .* cosd(numint(ind)),0.9 .* sind(numint(ind)),num2str(ind),...
        'HorizontalAlignment', 'Center')
end

rota = 30 .* str2double(timedif(2:end));
if timedif(1) == '+'
    rota = rota .* -1;
end
hourhand = hourhand * [cosd(rota), sind(rota); -sind(rota), cosd(rota)];
subplot(1,2,2)
the = linspace(-180,180);
plot(cosd(the),sind(the),'k-')
hold on
plot(0,0,'ko')
axis square
axis off
for ind = 1:12
    text(0.9 .* cosd(numint(ind)),0.9 .* sind(numint(ind)),num2str(ind),...
        'HorizontalAlignment', 'Center')
end
plot(minutehand(1,:), minutehand(2,:), 'r-')
plot(hourhand(:,1), hourhand(:,2), 'b-')
title('Destination Time')
end