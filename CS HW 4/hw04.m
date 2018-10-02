%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW04/original
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%              
%
%
% Files provided with this homework:  
%	ABCs_hw04_pretest.p
%	ABCs_logicals.m
%	HW04_DrillProblems.pdf
%	comboLock_soln.p
%	criminalMinds_soln.p
%	dictionary.mat
%	gibberish_soln.p
%	grammarCheck_soln.p
%	hw04.m
%	sentences.mat
%
% Files to submit:
%	ABCs_logicals.m
%	comboLock.m
%	criminalMinds.m
%	gibberish.m
%	grammarCheck.m
%	hw04.m
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
% Part of this homework is an m-file called "ABCs_logicals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_logicals.m

%
% ABCs File Testing:
%	ABCs_hw04_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW04_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Logicals
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
%% Function Name: grammarCheck
%
% Test Cases:
% [correct1] = grammarCheck('Now that I''ve written this function, I''ll never need to proofread again!')
% 	correct1 => 1
% 
% [correct2] = grammarCheck('heyy will you come over and help me with my MATLAB homework?')
% 	correct2 => 0
% 
% [correct3] = grammarCheck('I''m so happy I chose to go to Tech instead of UGA.')
% 	correct3 => 0
%
%--------------------------------------------------------------------------------
%% Function Name: comboLock
%
% Test Cases:
% [lock1] = comboLock('GPBurdell1885', 20, 30)
% 	lock1 => 1
% 
% [lock2] = comboLock('teXas123', 15, 16)
% 	lock2 => 0
% 
% [lock3] = comboLock('lCfYyt71254982', 30, 40)
% 	lock3 => 0
%
%--------------------------------------------------------------------------------
%% Function Name: gibberish
%
% Setup:
% load('dictionary.mat');
% load('sentences.mat');
%
% Test Cases:
% [isValid1] = gibberish(sentence1, dictionary, nouns, verbs, adjectives)
% 	isValid1 => 1
% 
% [isValid2] = gibberish(sentence2, dictionary, nouns, verbs, adjectives)
% 	isValid2 => 0
% 
% [isValid3] = gibberish(sentence3, dictionary, nouns, verbs, adjectives)
% 	isValid3 => 1
%
%--------------------------------------------------------------------------------
%% Function Name: criminalMinds
%
% Test Cases:
% [crim1] = criminalMinds([true], [true], [false], [true])
% 	crim1 => Suspect #3 is lying.
% 
% [crim2] = criminalMinds([true false false true true], [false true true true false], [false true true true false], [false true true true false])
% 	crim2 => Suspect #1 is lying.
% 
% [crim3] = criminalMinds([true true true false], [true true true false], [true true true false], [true true false false])
% 	crim3 => Suspect #4 is lying.
%
