%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW03/original
% Course       : CS1371
% Section      : A2
% Collaboration:"I used solutions or partial solutions provided by 
%  https://www.mathworks.com/matlabcentral/answers/59709#answer_72329
%
%
% Files provided with this homework:  
%	ABCs_hw03_pretest.p
%	ABCs_strings.m
%	ABCs_vectors.m
%	HW03_DrillProblems.pdf
%	checkContour_soln.p
%	hw03.m
%	shortCat_soln.p
%	varInfo_soln.p
%	weave_soln.p
%	word2int_soln.p
%
% Files to submit:
%	ABCs_strings.m
%	ABCs_vectors.m
%	checkContour.m
%	hw03.m
%	shortCat.m
%	varInfo.m
%	weave.m
%	word2int.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%==========================================================================
%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are m-files called "ABCs_vectors.m" and "ABCs_strings.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_vectors.m
%	ABCs_strings.m
%
% ABCs File Testing:
%	ABCs_hw03_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW03_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Vectors
%	Strings
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: varInfo
%
% Test Cases:
% [info1] = varInfo('I love MATLAB!')
% 	info1 => This variable is of class char and has a value of 'I love MATLAB!'.
% 
% [info2] = varInfo(34)
% 	info2 => This variable is of class double and has a value of '34'.
% 
% [info3] = varInfo(1:4)
% 	info3 => This variable is of class double and has a value of '1  2  3  4'.
%
%--------------------------------------------------------------------------------
%% Function Name: word2int
%
% Test Cases:
% [int1] = word2int('Hello')
% 	int1 => 32934151750
% 
% [int2] = word2int('z')
% 	int2 => 122
% 
% [int3] = word2int('test')
% 	int3 => 262765418
%
%--------------------------------------------------------------------------------
%% Function Name: shortCat
%
% Test Cases:
% [str1] = shortCat('Hello', 'MATLAB')
% 	str1 => HelloATLAB
% 
% [str2] = shortCat('race', 'car')
% 	str2 => acecar
% 
% [str3] = shortCat('cart', 'esian')
% 	str3 => cartsian
% 
% [str4] = shortCat('A$', 'AP')
% 	str4 => A$AP
%
%--------------------------------------------------------------------------------
%% Function Name: weave
%
% Test Cases:
% [vec1] = weave([72 87 32], [84 101 97])
% 	vec1 => 72    84    87   101    32    97
% 
% [vec2] = weave([109 32 62 62 32], [84 101 115])
% 	vec2 => 109    84    32   101    62   115    62   116    32   117
% 
% [vec3] = weave([116 32], [84 101 97 109 33])
% 	vec3 => 116    84    32   101    33    97    34   109    35    33
%
%--------------------------------------------------------------------------------
%% Function Name: checkContour
%
% Test Cases:
% [log1] = checkContour([1, 2, 3], [2, 3, 4])
% 	log1 => 1
% 
% [log2] = checkContour([-3, 0, -10], [0, 2, 3])
% 	log2 => 0
% 
% [log3] = checkContour([3, 0, 3], [10, -10, 10])
% 	log3 => 1
%
