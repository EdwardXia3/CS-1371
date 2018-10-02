%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW12
% Course       : CS1371
% Section      : A2
% Collaboration:
%                 "I referred to https://en.wikipedia.org/wiki/Tower_of_Hanoi"
%
% Files to submit:
%	ABCs_recursion.m
%	cellCat.m
%	cornMaze.m
%	hw12.m
%	snowflake.m
%	subsetSum.m
%	towersOfHaynoi.m
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
% Part of this homework is an m-file called "ABCs_recursion.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_recursion.m

%
% ABCs File Testing:
%	ABCs_hw12_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW12_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Recursion
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
%% Function Name: cellCat
%
% Test Cases:
% str1 = cellCat({'this ', 'one', 5, ' is ', true, {'pretty '}, 'simple'})
% 	str1 => this one is pretty simple
% 
% str2 = cellCat({{{{'this ', [4, 3, 2], {'is '}, 'a'}, ' little'}, [true false], {{' more '}}}, 'complex'})
% 	str2 => this is a little more complex
%
%--------------------------------------------------------------------------------
%% Function Name: towersOfHaynoi
%
% Test Cases:
% towersOfHaynoi(3, 'A', 'B', 'C');
% 		Output text file(s) should be identical to that produced by the solution file
% 
% towersOfHaynoi(5, 'C', 'A', 'B');
% 		Output text file(s) should be identical to that produced by the solution file
% 
% towersOfHaynoi(4, 'Truck 1', 'Truck 2', 'Truck 3')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% towersOfHaynoi(9, '1', '3', '2')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: subsetSum
%
% Test Cases:
% [log1, sub1] = subsetSum([3, 4, 1, 7], 10)
% 	log1 =>      1
% 	sub1 =>      3     7
% 
% [log2, sub2] = subsetSum([1, 8, -5, -2], 4)
% 	log2 =>      1
% 	sub2 =>      1     8    -5
% 
% [log3, sub3] = subsetSum([10, 6, 1, 5, 8], 26)
% 	log3 =>      0
% 	sub3 => []
%
%--------------------------------------------------------------------------------
%% Function Name: snowflake
%
% Test Cases:
% snowflake(0)
% 		Output plot(s) should be identical to that produced by solution file
% 
% snowflake(2)
% 		Output plot(s) should be identical to that produced by solution file
% 
% snowflake(7)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: cornMaze
%
% Setup:
%	load testMazes.mat
%
% Test Cases:
% solved1 = cornMaze(maze1);
% 	solved1 =>  
% ###O#
% #ooo#
% #o# #
% Xo# #
% #####
% 
% solved2 = cornMaze(maze2);
% 	solved2 =>  
% ##############################
% # ##  ## # #                 #
% #  ## #    ## ## ##### ### #oO
% ## #    # ### #  # # ### ###o#
% #  #### ### ######        #oo#
% ##   #    # # ## ######## #o##
% #  ##### ##ooooooooo## ooooo #
% ##   ##ooooo### # #oo##o## # #
% #  # ooo# #  #  # ##oooo#  # #
% #####X########################
% 
% solved3 = cornMaze(maze3);
% 	solved3 => Value too large to display. Value should match that of the solution function.
% 
% solved4 = cornMaze(maze4);
% 	solved4 => Value too large to display. Value should match that of the solution function.
%
