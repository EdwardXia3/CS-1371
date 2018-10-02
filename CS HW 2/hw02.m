%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW02/original
% Course       : CS1371
% Section      : A2
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%	ABCs_hw02_pretest.p
%	ABCs_moreFunctions.m
%	Homework02_DrillProblems.pdf
%	badApples_soln.p
%	clockHands_soln.p
%	fib_soln.p
%	hw02.m
%	spherePacking_soln.p
%
% Files to submit:
%	ABCs_moreFunctions.m
%	badApples.m
%	clockHands.m
%	fib.m
%	hw02.m
%	spherePacking.m
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
% Part of this homework is an m-file called "ABCs_moreFunctions.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_moreFunctions.m
%
% ABCs File Testing:
%	ABCs_hw02_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "Homework02_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Functions
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
%% Function Name: badApples
%
% Test Cases:
% [red1, grn1] = badApples(10, 10, 8, 8);
% 	red1 => 10
% 	grn1 => 10
% 
% [red2, grn2] = badApples(20, 30, 18, 22);
% 	red2 => 4
% 	grn2 => 16
% 
% [red3, grn3] = badApples(40, 10, 10, 10);
% 	red3 => 60
% 	grn3 => 0
%
%--------------------------------------------------------------------------------
%% Function Name: fib
%
% Test Cases:
% nFib1 = fib(3);
%   nFib1 => 2
% 
% nFib2 = fib(10);
%   nFib2 => 55
% 
% nFib3 = fib(39);
%   nFib3 => 63245986
%
%--------------------------------------------------------------------------------
%% Function Name: spherePacking
%
% Test Cases:
% num1 = spherePacking(5, 10);
%   num1 => 1 
% 
% num2 = spherePacking(6, 10);
%   num3 => 0
% 
% num3 = spherePacking(1.5, 12);
%   num3 => 90
%
%--------------------------------------------------------------------------------
%% Function Name: clockHands
%
% Test Cases:
% [hr1, min1] = clockHands(3, 15, 10);
% 	hr1 => 3
% 	min1 => 25
% 
% [hr2, min2] = clockHands(4, 45, -30);
% 	hr2 => 4
% 	min2 => 15
% 
% [hr3, min3] = clockHands(1, 10, -134);
% 	hr3 => 10
% 	min3 => 56
%
