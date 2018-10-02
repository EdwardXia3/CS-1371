%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : hw13/original
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."

%
% Files to submit:
%	ABCs_images.m
%	hiddenSound.m
%	hw13.m
%	maskingTape.m
%	memeGenerator.m
%	microscope.m
%	pokemonGO.m
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
% Part of this homework is an m-file called "ABCs_images.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_images.m

%
% ABCs File Testing:
%	ABCs_hw13_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW13_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Images
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
%% Function Name: maskingTape
%
% Test Cases:
% maskingTape('brick_1_orig.png', 'brick_1_paint.png', [252 247 221])
% 		Output image(s) should be identical to that produced by solution file
% 
% maskingTape('brick_2_orig.png', 'brick_2_paint.png', [50 115 225])
% 		Output image(s) should be identical to that produced by solution file
% 
% maskingTape('canvas_1_orig.png', 'canvas_1_paint.png', [70 125 215])
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: hiddenSound
%
% Test Cases:
% hidSound1 = hiddenSound('hidden_sound1.png');
% 	hidSound1 => Value too large to display. Value should match that of the solution function.
% 
% hidSound2 = hiddenSound('hidden_sound2.png');
% 	hidSound2 => Value too large to display. Value should match that of the solution function.
% 
% hidSound3 = hiddenSound('hidden_sound3.png');
% 	hidSound3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: memeGenerator
%
% Setup:
%	load font.mat
%
% Test Cases:
% memeGenerator('WHEN YOUR FRIENDS DECIDE TO', '"HELP YOU WITH YOUR RESUME"', 'writingHelp.jpg', [255, 255, 255])
% 		Output image(s) should be identical to that produced by solution file
% 
% memeGenerator('RUNS MATLAB CODE', 'NO ERROR', 'noError.jpg', [100, 200, 150])
% 		Output image(s) should be identical to that produced by solution file
% 
% memeGenerator('WHO IS MATLAB?', 'AND WHY DO YOU SPEND ALL OF YOUR TIME WITH HER?', 'whoIsMATLAB.jpg', [1, 1, 1])
% 		Output image(s) should be identical to that produced by solution file
% 
% memeGenerator('CODING FLOWCHART:', 'I AM A GOD --> wut', '2stages.jpg', [100, 100, 100])
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: microscope
%
% Test Cases:
% [dim1] = microscope('microscope1.png', 45)
% 	dim1 =>    271   369
% 
% [dim2] = microscope('microscope2.png', 100)
% 	dim2 =>    557   690
% 
% [dim3] = microscope('microscope3.png', 30)
% 	dim3 =>    110   155
%
%--------------------------------------------------------------------------------
%% Function Name: pokemonGO
%
% Setup:
%	load nationalPokedex.mat
%
% Test Cases:
% pokemonGO('timessquare_pokemon.png', 'timessquare.png', nationalPokedex)
% 		Output image(s) should be identical to that produced by solution file
% 
% pokemonGO('GTCampanile_pokemon.png', 'GTCampanile.png', nationalPokedex)
% 		Output image(s) should be identical to that produced by solution file
% 
% pokemonGO('ceruleanCave_pokemon.png', 'ceruleanCave.png', nationalPokedex)
% 		Output image(s) should be identical to that produced by solution file
%
