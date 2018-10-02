function [perKid, wasted] = candy (candysize, kids)
%The function divides the total amount of candy per kid to determine the
%amount of candy each kid gets. The remainder is considered wasted.
%perKid rounds down the division between candysize and kids. wasted
%determines the remainder after the division.
    perKid = floor(candysize ./ kids);
    wasted = mod(candysize, kids);
end
    