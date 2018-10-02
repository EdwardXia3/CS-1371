%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW07
% Course       : CS1371
% Sectionh      : A2
% Collaboration: "I worked on this homework with Kartik Sundaram"
%
% Files to submit:
%	ABCs_iteration.m
%	hw07.m
%	lostAbroad.m
%	moveSnake.m
%	primeFinder.m
%	secretMessage.m
%	whenIsGood.m
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
% Part of this homework is an m-file called "ABCs_iteration.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_iteration.m

%
% ABCs File Testing:
%	ABCs_hw07_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW07_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Iteration
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
%% Function Name: primeFinder
%
% Test Cases:
% [out1] = primeFinder(1)
% 	out1 => 0
% 
% [out2] = primeFinder(2)
% 	out2 => 1
% 
% [out3] = primeFinder(17)
% 	out3 => 1
% 
% [out4] = primeFinder(18)
% 	out4 => 0
%
%--------------------------------------------------------------------------------
%% Function Name: secretMessage
%
% Test Cases:
% message1 = secretMessage('Ite(rat)ion i(s) the most (c)r(a)zy thi(n)g we''ve (learn)ed (to) u(s)e (in) this class, so (g)ood!')
% 	message1 => ratscanlearntosing
% 
% message2 = secretMessage('T(he) semester (is) going by so (fa)st, whe(r)e did (the) time disappea(r)?')
% 	message2 => heisfarther
% 
% message3 = secretMessage('I t(hi)nk cake is (de)licious, but I (al)so (l)ike to eat cauli(flower) (s)alad')
% 	message3 => hideallflowers
%
%--------------------------------------------------------------------------------
%% Function Name: moveSnake
%
% Setup:
%	load moveSnake_studentCases.mat
%
% Test Cases:
% newboard1 = moveSnake(board1, seq1)
% 	newboard1 =>  
% 0     0     0     1     2     3     4     5     6     0
% 0     0     0     0     0     0     0     0     7     0
% 0     0     0     0     0     0     0     0     8     0
% 0     0     0     0     0     0     0     0     9     0
% 0     0     0     0     0     0     0     0     0     0
% 0     0     0     0     0     0     0     0     0     0
% 0     0     0     0     0     0     0     0     0     0
% 0     0     0     0     0     0     0     0     0     0
% 0     0     0     0     0    -1     0     0     0     0
% 0     0     0     0     0     0     0     0     0     0
% 
% newboard2 = moveSnake(board2, seq2)
% 	newboard2 =>  
% 0     7     0     0     0
% 0     6     0     0     0
% 0     5     0     1     0
% 0     4     3     2    -1
% 0     0     0     0     0
% 
% newboard3 = moveSnake(board3, seq3)
% 	newboard3 =>  
%  7     6    -1     0
%  8     5     0     0
%  9     4     0     0
% 10     3     0     0
% 11     2     0     0
% 12     1     0     0
% 13     0     0     0
% 14     0     0     0
% 15     0     0     0
% 16     0     0     0
%
%--------------------------------------------------------------------------------
%% Function Name: lostAbroad
%
% Setup:
%	load map.mat
%
% Test Cases:
% [adventure1] = lostAbroad(map1, [1, 1, 3, 3, 4; 4, 5, 5, 6, 6])
% 	adventure1 => THWg!
% 
% [adventure2] = lostAbroad(map1, [1, 4, 4; 1, 1, 6])
% 	adventure2 => No record of this person exists. -Government
% 
% [adventure3] = lostAbroad(map2, [1, 2, 2, 7, 7, 9, 9, 7, 7; 7, 7, 12, 12, 10, 10, 9, 9, 6])
% 	adventure3 => What's the good word?
% 
% [adventure4] = lostAbroad(map2, [12, 8, 8, 8, 8, 6, 6, 6, 15; 6, 6, 10, 5, 3, 3, 4, 11, 11])
% 	adventure4 => I am lostAbroad and can't find my friends.
%
%--------------------------------------------------------------------------------
%% Function Name: whenIsGood
%
% Setup:
%	load testcases.mat
%
% Test Cases:
% [newschedule1, outstr1] = whenIsGood(schedule1,meetings1)
% 	newschedule1 => Value too large to display. Value should match that of the solution function.
% 	outstr1 => 3 meetings could not be scheduled!
% 
% [newschedule2, outstr2] = whenIsGood(schedule2,meetings2)
% 	newschedule2 => Value too large to display. Value should match that of the solution function.
% 	outstr2 => All meetings scheduled!
% 
% [newschedule3, outstr3] = whenIsGood(schedule3,meetings3)
% 	newschedule3 => Value too large to display. Value should match that of the solution function.
% 	outstr3 => 6 meetings could not be scheduled!
%
