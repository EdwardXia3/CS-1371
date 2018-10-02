%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : hw11/original
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files to submit:
%	ABCs_numericalMethods.m
%	ABCs_plotting.m
%	clockFaces.m
%	dragRace.m
%	hw11.m
%	metaData.m
%	newtonsMethod.m
%	plotSnake.m
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
% Part of this homework are m-files called "ABCs_plotting.m" and "ABCs_numericalMethods.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_plotting.m
%	ABCs_numericalMethods.m
%
% ABCs File Testing:
%	ABCs_hw11_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW11_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Plotting
%	Numerical Methods
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
%% Function Name: plotSnake
%
% Setup:
%	load plotSnake_studentCases.mat
%
% Test Cases:
% plotSnake(board1)
% 		Output plot(s) should be identical to that produced by solution file
% 
% plotSnake(board2)
% 		Output plot(s) should be identical to that produced by solution file
% 
% plotSnake(board3)
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: metaData
%
% Test Cases:
% metaData('test_1.xlsx');
% 		Output plot(s) should be identical to that produced by solution file
% 
% metaData('test_2.xlsx');
% 		Output plot(s) should be identical to that produced by solution file
% 
% metaData('test_3.xlsx');
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: newtonsMethod
%
% Test Cases:
% [root1 count1] = newtonsMethod([0 1], [0 1], 0)
% 	root1 =>      0
% 	count1 =>      0
% 
% [root2 count2] = newtonsMethod([-1 0 1], [0 1 0], 500)
% 	root2 =>      1
% 	count2 =>     12
% 
% [root3 count3] = newtonsMethod([-10 -2 12 20], [9 0 4 -35], -23)
% 	root3 =>    -5.2257
% 	count3 =>      7
% 
% [root4 count4] = newtonsMethod([-20 -2 34 56 79 80], [9 53 34 1 98 20], 34)
% 	root4 =>    35.6899
% 	count4 =>      3
%
%--------------------------------------------------------------------------------
%% Function Name: dragRace
%
% Setup:
%	load studentRaceCases.mat
%
% Test Cases:
% stOut1 = dragRace(stTimes1,stVelocities1,carsST1,330)
% 	stOut1 => The PHANTOM won the 330 meter race in 8.6 seconds! The CLK GTR had the fastest acceleration at 76.9 m/s^2!
% 
% stOut2 = dragRace(stTimes2,stVelocities2,carsST2,245)
% 	stOut2 => The IMPALA won the 245 meter race in 6.9 seconds! The IMPALA had the fastest acceleration at 230.8 m/s^2!
% 
% stOut3 = dragRace(stTimes3,stVelocities3,carsST3,397)
% 	stOut3 => The TVP 50/51 won the 397 meter race in 9.8 seconds! The T1 CUNNINGHAM had the fastest acceleration at 230.8 m/s^2!
%
%--------------------------------------------------------------------------------
%% Function Name: clockFaces
%
% Test Cases:
% clockFaces('3:15', '+5')
% 		Output plot(s) should be identical to that produced by solution file
% 
% clockFaces('12:00', '+0')
% 		Output plot(s) should be identical to that produced by solution file
% 
% clockFaces('6:11', '-7')
% 		Output plot(s) should be identical to that produced by solution file
%
