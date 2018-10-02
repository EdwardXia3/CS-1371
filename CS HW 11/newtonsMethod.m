function [root, it] = newtonsMethod(x, y, startx)
% Uses Newtons method to find roots.
power = length(x)-1;
poly = polyfit(x,y,power);
it = 0;
fx = 0;
fdx = 0;
for ind = 1:length(poly)
    fx = fx + poly(ind) .* startx .^ (power + 1 - ind);
end
for ind = 1:length(poly) - 1
    dcoef = poly(ind) .* (power + 1 - ind);
    fdx = fdx + dcoef .* startx .^ (power - ind);
end
newx = startx - fx ./ fdx;
while abs(startx - newx) > 0.0001
    fx = 0;
    fdx = 0;
    for ind = 1:length(poly)
        fx = fx + poly(ind) .* newx .^ (power + 1 - ind);
    end
    for ind = 1:length(poly) - 1
        dcoef = poly(ind) .* (power + 1 - ind);
        fdx = fdx + dcoef .* newx .^ (power - ind);
    end
    startx = newx;
    newx = startx - fx ./ fdx;
    it = it + 1;
end
root = round(newx,4);
end