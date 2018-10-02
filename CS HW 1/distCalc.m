function [ dist ] = distCalc( Ax, Ay, Bx, By )
%Finds the distance of 2 points based on the coordinates of A(x,y) and B
%(x,y)
%   Dx and Dy describes the difference of the x and y coordinates between
%   the 2 points. sq takes the sum of the squares of dx and dy. distexact
%   finds the exact distance by square rooting sq. dist rounds the
%   distexact to the nearest thousandth. 
    dx = Ax - Bx;
    dy = By - Ay;
    sq = dx .^2 + dy .^2;
    distexact = sq .^ (1./2);
    dist = round(distexact,3);

end

