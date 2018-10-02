function [sent] = ERS(cards)
%Egyptian rap slap check.

if cards(end) == cards(end-2)
    type = 'sandwich';
elseif cards(end) == cards(end-1)
    type = 'double';
elseif (cards(end) == 13 && cards(end-1) == 12) || (cards(end) == 12 && cards(end-1) == 13)
    type = 'marriage';
elseif cards(end) == 7
	type = 'seven';
else
    type = true;
end
if type == 1;
    sent = 'Do not slap, it is a trap!';
else
    sent = sprintf('There is a %s, so quickly slap!', type);
end
end