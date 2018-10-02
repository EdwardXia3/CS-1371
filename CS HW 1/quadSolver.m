function [pos,neg] = quadSolver(A, B, C)
%Uses the quadratic formula to find the roots with the coefficients of the
%quadratic equation.
%det finds the determinant or B^2-4AC. detsqrt finds the square root of the
%determinant. negB multiplies B by -1 and doubleA multiplies B by 2. sum
%and diff find the sum or difference of negB and detsqrt. posexact and
%negexact divides the sum or diff by doubleA. pos and neg round the
%posexact and negexact to the hundrendth place.
    det = B .^2 - 4 .* A .* C;
    detsqrt = sqrt(det);
    negB = -1 .* B;
    doubleA = 2 .* A;
    sum = negB + detsqrt;
    diff = negB - detsqrt;
    posexact = sum ./ doubleA;
    negexact = diff ./ doubleA;
    pos = round(posexact, 2);
    neg = round(negexact, 2);
end
    
    
    