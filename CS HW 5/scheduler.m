function sch = scheduler(avail, event)
%The function marks times of events on the schedule as unavailable.

vec = double(event);
openbrac = strfind(event, '[');
closebrac = strfind(event, ']');
days1 = event(openbrac(1) + 1:closebrac(1) - 1);
days2 = event(openbrac(2) + 1:closebrac(2) - 1);
dayvec1 = double(days1);
dayvec2 = double(days2);
dayvec1(dayvec1 == 32) = [];
dayvec2(dayvec2 == 32) = [];
dayvec1 = dayvec1 - 48;
dayvec2 = dayvec2 - 48;

dash = strfind(event, '-');
if vec(dash(1) - 5) == 49
    hour1 = 10;
else
    hour1 = 0;
end
hour1 = hour1 + vec(dash(1) - 4) - 48;
if vec(dash(1) - 2) == 51
    hour1 = hour1 + .5;
end
hour1 = 2 .* hour1;
if vec(dash(2) - 5) == 49
    hour2 = 10;
else
    hour2 = 0;
end
hour2 = hour2 + vec(dash(2) - 4) - 48;
if vec(dash(2) - 2) == 51
    hour2 = hour2 + .5;
end
hour2 = 2 .* hour2;
if vec(dash(1) + 2) ~= 58
    hour1end = 2 .* (vec(dash(1) + 2) - 38);
else
    hour1end = 2 .* (vec(dash(1) + 1) - 48);
end
if vec(dash(2) + 2) ~= 58
    hour2end = 2 .* (vec(dash(2) + 2) - 38);
else
    hour2end = 2 .* (vec(dash(2) + 1) - 48);
end
avail(hour1 + 1:hour1end, dayvec1) = 0;
avail(hour2 + 1:hour2end, dayvec2) = 0;
sch = avail;




end