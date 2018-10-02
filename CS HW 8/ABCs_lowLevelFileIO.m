% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D] = ABCs_lowLevelFileIO(f1, f2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Lower-Level File I/O
%
%
% Directions:
% Write the code to satisfy the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 
%
% Given Input Variables:
%   1. f1 - A file name (including the extension .txt) of a given text file
%           (char)
%   2. f2 - A file name (including the extension .txt) of a text file that 
%           should be written (char)

% 1. fopen(). Open f1 for read access and store the file handle in (fh1)
fh1 = fopen(f1);

% 2. fgets(). Read in the first line of fh1 using fgets(). (A)
A = fgets(fh1);

% 3. fgetl(). Read in second line of f1 using fgetl(). (B)
B = fgetl(fh1);

% 4. What is the new line character in MatLab? Express answer as a string.
% (C)
C = '\n';

% 5. true or false. When applicable, fgets() will return the new line
% character at the end of the string whereas fgetl() will NOT return the
% new line character. Answer should be the class logical. (D)
D = true;

% 5. fprintf(). Write line 2 (stored in variable B) to a file with a filename
% specified by the variable f2. You will first need to open the file with
% write access.
fh2 = fopen(f2,'w');
fprintf(fh2,B);

% 6. fclose(). Use fclose() to close the files given in f1 and f2.
% Do NOT use fclose all.

fclose(fh1);
fclose(fh2);

% Note that the pretest will not check your output file for correctness.

end
