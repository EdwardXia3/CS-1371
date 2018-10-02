%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW14/original
% Course       : CS1371
% Section      : A02
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."

% Files to submit:
%	aliBabaAndTheFortyThieves.m
%	clownTown.m
%	hw14.m
%	onceUponAPage.m
%	theGreatPortraitExhibition.m
%	theNastyNasties.m
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
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW14_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Extra Credit
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
%% Function Name: aliBabaAndTheFortyThieves
%
% Test Cases:
% [struct1] = aliBabaAndTheFortyThieves('dolyl.xlsx')
% 	struct1 => Structure array should be identical to that produced by solution file
% 
% [struct2] = aliBabaAndTheFortyThieves('cm.xlsx')
% 	struct2 => Structure array should be identical to that produced by solution file
% 
% [struct3] = aliBabaAndTheFortyThieves('jnyqb.xlsx')
% 	struct3 => Structure array should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: clownTown
%
% Setup:
%	load clownTownCases.mat
%
% Test Cases:
% [str1,num1] = clownTown(townData1)
% 	str1 => AC hN
% 	num1 =>     38
% 
% [str2,num2] = clownTown(townData2)
% 	str2 => im eo s
% 	num2 =>      2
% 
% [str3,num3] = clownTown(townData3)
% 	str3 => vErwato
% 	num3 =>     10
%
%--------------------------------------------------------------------------------
%% Function Name: onceUponAPage
%
% Test Cases:
% vec1 = onceUponAPage('Twinkle, Twinkle, Little Star', 5)
% 	vec1 =>      7     4     6     6     6
% 
% vec2 = onceUponAPage('The Lion, The Witch, and the Wardrobe', 14)
% 	vec2 =>     84    33    27    55    20
%
%--------------------------------------------------------------------------------
%% Function Name: theNastyNasties
%
% Test Cases:
% [xvals1, yvals1] = theNastyNasties([0 -3 2 1 0], 100)
% 	xvals1 => Value too large to display. Value should match that of the solution function.
% 	yvals1 => Value too large to display. Value should match that of the solution function.
% 
% [xvals2, yvals2] =  theNastyNasties([8 2 7 0 5], 500)
% 	xvals2 => Value too large to display. Value should match that of the solution function.
% 	yvals2 => Value too large to display. Value should match that of the solution function.
% 
% [xvals3, yvals3] = theNastyNasties([1 2 1 1 0], 400)
% 	xvals3 => Value too large to display. Value should match that of the solution function.
% 	yvals3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: theGreatPortraitExhibition
%
% Setup:
%	load greatPortrait_studentCases.mat
%
% Test Cases:
% theGreatPortraitExhibition(vecR2, vecC2, 'pirate_hidden.png');
% 		Output image(s) should be identical to that produced by solution file
% 
% theGreatPortraitExhibition(vecR3, vecC3, 'GT_hidden.png');
% 		Output image(s) should be identical to that produced by solution file
% 
% theGreatPortraitExhibition(vecR4, vecC4, 'WWE_hidden.png');
% 		Output image(s) should be identical to that produced by solution file
%
