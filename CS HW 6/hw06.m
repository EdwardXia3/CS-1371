%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW06 original
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%	ABCs_conditionals.m
%	ABCs_hw06_pretest.p
%	ERS_soln.p
%	HW06_DrillProblems.pdf
%	HW06_DrillProblems.pdf
%	checkCollision_soln.p
%	desktop.ini
%	hw06.m
%	rpsls_soln.p
%	student.mat
%	yahtzee_soln.p
%
% Files to submit:
%	ABCs_conditionals.m
%	ERS.m
%	checkCollision.m
%	hw06.m
%	rpsls.m
%	yahtzee.m
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
% Part of this homework is an m-file called "ABCs_conditionals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_conditionals.m

%
% ABCs File Testing:
%	ABCs_hw06_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW06_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Conditionals
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
%% Function Name: ERS
%
% Test Cases:
% slap1 = ERS([5, 2, 13, 12]);
% 	slap1 => There is a marriage, so quickly slap!
% 
% slap2 = ERS([6, 1, 9, 11, 9]);
% 	slap2 => There is a sandwich, so quickly slap!
% 
% slap3 = ERS([10, 2, 5, 3, 7, 5]);
% 	slap3 => Do not slap, it is a trap!
%
%--------------------------------------------------------------------------------
%% Function Name: yahtzee
%
% Test Cases:
% [score1, combo1] = yahtzee([1 6 6 4 6]);
% 	score1 => 23
% 	combo1 => I have a 3 of a Kind!
% 
% [score2, combo2] = yahtzee([4 2 5 3 6]);
% 	score2 => 40
% 	combo2 => I have a Large Straight!
% 
% [score3, combo3] = yahtzee([2 2 2 2 2]);
% 	score3 => 50
% 	combo3 => YAHTZEE!
% 
% [score4, combo4] = yahtzee([5 5 6 6 6]);
% 	score4 => 28
% 	combo4 => I have a 3 of a Kind!
%
%--------------------------------------------------------------------------------
%% Function Name: rpsls
%
% Test Cases:
% game1 = rpsls('spock', 'rock');
% 	game1 => Player 1 wins!
% 
% game2 = rpsls('lizard', 'scissors');
% 	game2 => Player 2 wins!
% 
% game3 = rpsls('paper', 'paper');
% 	game3 => It's a tie!
%
%--------------------------------------------------------------------------------
%% Function Name: checkCollision
%
% Setup:
%	load student.mat
%
% Test Cases:
% [outcome1] = checkCollision(board_small, 'E');
% 	outcome1 => Cookie! Have a byte!
% 
% [outcome2] = checkCollision(board_large, 'S');
% 	outcome2 => continue
% 
% [outcome3] = checkCollision(board_large, 'W');
% 	outcome3 => You hit yourself. Stack overflow.
%
