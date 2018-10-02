%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : xia.edward@gmail.com
% Homework     : hw01 original
% Course       : CS1371
% Section      : A2
% Collaboration:"I worked on the homework assignment alone, using
%                  only course materials."
%                 
%
%
% Files provided with this homework:  
%	ABCs_functions.m
%	ABCs_homeworkOverview.m
%	ABCs_hw01_pretest.p
%	ASA_soln.p
%	Homework01_DrillProblems.pdf
%	candy_soln.p
%	distCalc_soln.p
%	hw01.m
%	quadSolver_soln.p
%
% Files to submit:
%	ABCs_functions.m
%	ABCs_homeworkOverview.m
%	ASA.m
%	candy.m
%	distCalc.m
%	hw01.m
%	quadSolver.m
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
% Part of this homework are m-files called "ABCs_homeworkOverview.m" and "ABCs_functions.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_homeworkOverview.m
%	ABCs_functions.m
%
% ABCs File Testing:
%	ABCs_hw01_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "Homework01_DrillProblems.pdf",
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
%% Function Name: distCalc
%
% Test Cases:
% [dist1] = distCalc(-2, 5, 3, -4);
% 	dist1 => 10.296
% 
% [dist2] = distCalc(21, 21, 3, 21);
% 	dist2 => 18
%
%--------------------------------------------------------------------------------
%% Function Name: quadSolver
%
% Test Cases:
% [pos1, neg1] = quadSolver(25, 0, -25);
% 	pos1 => 1
% 	neg1 => -1
% 
% [pos2, neg2] = quadSolver(1, -5, 6);
% 	pos2 => 3
% 	neg2 => 2
%
%--------------------------------------------------------------------------------
%% Function Name: ASA
%
% Test Cases:
% [b1, c1] = ASA(23, 4, 45);
% 	b1 => 1.69
% 	c1 => 3.05
% 
% [b2, c2] = ASA(108, 10, 45);
% 	b2 => 20.95
% 	c2 => 15.58
% 
% [b3, c3] = ASA(90, 1, 45);
% 	b3 => 1.41
% 	c3 => 1
%
%--------------------------------------------------------------------------------
%% Function Name: candy
%
% Test Cases:
% [perKid1, wasted1] = candy(300, 12);
% 	perKid1 => 25
% 	wasted1 => 0
% 
% [perKid2, wasted2] = candy(34, 13);
% 	perKid2 => 2
% 	wasted2 => 8
% 
% [perKid3, wasted3] = candy(100, 10);
% 	perKid3 => 10
% 	wasted3 => 0
%
