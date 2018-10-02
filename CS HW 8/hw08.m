%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW08
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."

%
% Files to submit:
%	ABCs_lowLevelFileIO.m
%	banFinder.m
%	chooseAdventure.m
%	fileShift.m
%	hw08.m
%	leaderboard.m
%	reviewReviewer.m
%	roommateMatch.m
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
% Part of this homework is an m-file called "ABCs_lowLevelFileIO.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_lowLevelFileIO.m

%
% ABCs File Testing:
%	ABCs_hw08_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW08_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Low Level File I/O
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
%% Function Name: banFinder
%
% Test Cases:
% banFinder('candy.txt', 'floor')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% banFinder('marbles.txt', 'ceil')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% banFinder('tooManyFinds.txt', 'find')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: roommateMatch
%
% Test Cases:
% match1 = roommateMatch('BH.txt', 'CS.txt')
% 	match1 => Bob Henderson and Cindy Silverman have a 32% roommate compatibility score.
% 
% match2 = roommateMatch('BH.txt', 'JB.txt')
% 	match2 => Bob Henderson and Jeremy Bones have a 70% roommate compatibility score.
% 
% match3 = roommateMatch('CS.txt', 'JB.txt')
% 	match3 => Cindy Silverman and Jeremy Bones have a 32% roommate compatibility score.
%
%--------------------------------------------------------------------------------
%% Function Name: leaderboard
%
% Test Cases:
% rank1 = leaderboard('scoreboard1.txt', 'snakeMaster', 40)
% 	rank1 => Your rank is 1.
% 		Output text file(s) should be identical to that produced by the solution file
% 
% rank2 = leaderboard('scoreboard2.txt', 'thePunisher', 55)
% 	rank2 => You beat your own highscore! You are tied with 1 other player(s) for a rank of 3.
% 		Output text file(s) should be identical to that produced by the solution file
% 
% rank3 = leaderboard('scoreboard3.txt', 'otis', 8)
% 	rank3 => You did worse than last time! Your rank is 8.
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: chooseAdventure
%
% Test Cases:
% chooseAdventure('giveAMouseACookie.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% chooseAdventure('rudolph.txt')
% 		Output text file(s) should be identical to that produced by the solution file
% 
% chooseAdventure('georgePBurdell.txt')
% 		Output text file(s) should be identical to that produced by the solution file
%
%--------------------------------------------------------------------------------
%% Function Name: reviewReviewer
%
% Setup:
%	load reviewReviewer_studentCases.mat
%
% Test Cases:
% [out1] = reviewReviewer('review1.txt', goodKeywords1, badKeywords1)
% 	out1 => The reviewer gave a 4 star review of the iPhone 7.
% 
% [out2] = reviewReviewer('review2.txt', goodKeywords2, badKeywords2)
% 	out2 => The reviewer gave a 3 star review of the How to Avoid Huge Ships Book.
% 
% [out3] = reviewReviewer('review3.txt', goodKeywords3, badKeywords3)
% 	out3 => The reviewer gave a 1 star review of the Ice Recipe.
% 
% [out4] = reviewReviewer('review4.txt', goodKeywords1, badKeywords1)
% 	out4 => The reviewer gave a 5 star review of the Glitter.
%
%--------------------------------------------------------------------------------
%% Function Name: fileShift
%
% Test Cases:
% fileShift('smallTest.txt', 2);
% 		Output text file(s) should be identical to that produced by the solution file
% 
% fileShift('multiline.txt', -20);
% 		Output text file(s) should be identical to that produced by the solution file
% 
% fileShift('leviathan_excerpt.txt', 300);
% 		Output text file(s) should be identical to that produced by the solution file
%
