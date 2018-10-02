function [red, green] = badApples(redA, greenA, gRedA, gGreenA)
%The  function determies  the probabilty of getting a bad apple of a
%certain color based on the amount of red and green good apples.
totalA = redA + greenA;
bRedA = redA - gRedA;
bGreenA = greenA - gGreenA;
red = round(bRedA ./ totalA .* 100, 2);
green = round(bGreenA ./ totalA .*100, 2);
end