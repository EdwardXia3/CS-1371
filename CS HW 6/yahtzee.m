function [points, combo] = yahtzee(dice)
%
ones = sum(dice==1);
twos = sum(dice==2);
threes = sum(dice==3);
fours = sum(dice==4);
fives = sum(dice==5);
sixes = sum(dice==6);
numvec = [ones, twos, threes, fours, fives, sixes];
sortvec = sort(dice);
dif = diff(sortvec);
dif = dif==1;
% 1234 2345 3456
if any(numvec == 3)
    if any(numvec==2) && sum(dice) <= 25
        combo = 'Full House';
        points = 25;
    else
        combo = '3 of a Kind';
        points = sum(dice);
    end
elseif any(numvec == 4)
    combo = '4 of a Kind';
    points = sum(dice);
elseif any(numvec == 5)
    combo = 'Yahtzee';
    points = 50;
elseif sum(dif) == 3
    combo = 'Small Straight';
    points = 30;
elseif sum(dif) == 4
    combo = 'Large Straight';
    points = 40;
else
    combo = 'Chance';
    points = sum(dice);
end


end