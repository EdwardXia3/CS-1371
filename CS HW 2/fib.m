function [nFib] = fib(number)
%The function finds the specified Fibonacci number based on the which term
%in  the Fibonacci sequence.
%
phi = (1 + sqrt(5)) ./ 2;
negphi = phi .* -1;
negnumber = number .* -1;
nFib = (phi .^ number - negphi .^ negnumber) ./ sqrt(5);
end