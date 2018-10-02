% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F] = ABCs_iteration(vec, num)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs: Iteration
%
%
% Part I: Coding
%
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses.
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT.
%
% Given Input Variables:
%   1. vec - a vector of numbers
%   2. num - an integer greater than 1
%
% 1. for loops. Fix the following for loop so that A is the vector vec in
% reverse order. Replace every ? with the necessary code. You must utilize
% the for loop to receive credit. (A)
%
% If vec is [3 2 6 8 2], then A should look like this after each iteration:
% [3]
% [2 3]
% [6 2 3]
% [8 6 2 3]
% [2 8 6 2 3]

A=[];

for ind= 1:length(vec)                  % ind are the indices of vec
    A=[vec( ind ), A ];       % Puts the next element from vec before
end                         % everything in A


% 2. while loops. Use the following while loop to count the number of
% perfect squares between 1 and num inclusive. Store your answer in the
% variable B. Replace every ? with the necessary code. You must utilize
% this while loop to receive any credit. (B)
i = 1;                      % Start from 1
B = 0;                      % Initializes a counting variable
while i <= num                     % When i is less than or equal to num
    if mod(sqrt( i ),1)==0  % Checks to see if sqrt(i) is an integer root
        B=B+1;              % Increment the counter if an integer is found
    end
    i = i + 1;              % Moves to the next index position
end


% Part II: Tracing
%
% The following code is run in the Command Window. What is stored in the
% Workspace for the variables rna and errCount after running the code?
% (Note that you could copy and paste this code into MATLAB to determine
% the solution, but tracing questions are one type of question you will
% see on the test and you will not have the luxury of running the code then).

% 1     dna = 'ATGTa';
% 2     rna = '';
% 3     errCount = 0;
% 4     for n = dna
% 5         switch n
% 6             case {'A','a'}
% 7                 rna = [rna 'U'];
% 8             case {'T','t'}
% 9                 rna = [rna 'A'];
% 10            otherwise
% 11                errCount = errCount + 1;
% 12        end
% 13    end

% The value stored in 'rna' after the code has run is (C):
C = 'UAAU';

% The value stored in 'errCount' after the code has run is (D):
D = 1;

% The following code is run in the Command Window. List the value of
% 'tot' at the end of each iteration as a separate element in a vector.
%
% For example, if 'tot' is 3 at the end of the first iteration,
% 5 on the second and 10 on the third, then your answer should
% be E = [3, 5, 10];

% 1     vec = [2, 10, -8, 2, 0, 0, 5];
% 2     idx = 1;
% 3     prev = NaN;
% 4     curr = vec(idx);
% 5     tot = 0;
% 6     while prev ~= curr
% 7         idx = idx + 1;
% 8         prev = curr;
% 9         curr = vec(idx);
% 10        if prev < curr
% 11            tot = tot + curr;
% 12        end
% 13    end
E = [10,10,12,12,12];

% Why could the terminating condition for the while loop above be a problem?
%
% Assign variable F to the letter of your selection (should be a char).
%
% A. prev and curr will always be the same value, therefore idx will go out of bounds.
% B. prev and curr may not ever be the same value, therefore the loop will run forever.
% C. prev and curr will never be the same value, therefore the loop will run forever.
% D. prev and curr may not ever be the same value, therefore idx will go out of bounds.
F = 'D';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
