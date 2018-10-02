%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW10 Original
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files to submit:
%	ABCs_structureArrays.m
%	ABCs_structures.m
%	careerFair.m
%	hw10.m
%	movieStar.m
%	structDisp.m
%	structSort.m
%	whereIsMySuperSuit.m
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
% Part of this homework are m-files called "ABCs_structures.m" and "ABCs_structureArrays.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete:
%	ABCs_structures.m
%	ABCs_structureArrays.m
%
% ABCs File Testing:
%	ABCs_hw10_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW10_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Structures
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
%% Function Name: structDisp
%
% Setup:
%	load disps.mat
%
% Test Cases:
% [disp1] = structDisp(bestOfTAIndex)
% 	disp1 =>
%         favHashtag: '#hashbrowns'
%           bestJoke: 'Test team, best team #lolz'
%            MacOrPC: 'PC'
%     cryWhenGrading: '==true'
%    when5growUpToBe: 'CS 1371 TA'
%             bestAt: 'zoning out'
%      favMATLABfunc: 'help'
%           favQuote: 'You can never be overdressed
%
%
% [disp2] = structDisp(halogens)
% 	disp2 =>
%        symbol: 'F'
%     atomicNum: 9
%    atomicMass: 18.998
%
%        symbol: 'Cl'
%     atomicNum: 17
%    atomicMass: 35.453
%
%        symbol: 'Br'
%     atomicNum: 35
%    atomicMass: 79.904
%
%        symbol: 'I'
%     atomicNum: 53
%    atomicMass: 126.904
%
%        symbol: 'At'
%     atomicNum: 85
%    atomicMass: 210
%
%
% [disp3] = structDisp(cars)
% 	disp3 =>
%         movie: 'Goldfinger'                               movie: 'Miami Vice'
%          year: 1963                                        year: 1972
%          make: 'Aston Martin'                              make: 'Ferrari'
%         model: 'DB5'                                      model: 'Testarossa'
%    aesthetics: [1x1 struct]                          aesthetics: [1x1 struct]
%
%         movie: 'The A-Team'                               movie: 'Back to the Future'
%          year: 1983                                        year: 1982
%          make: 'GMC'                                       make: 'Delorean'
%         model: 'G-15'                                     model: 'DMC-12'
%    aesthetics: [1x1 struct]                          aesthetics: [1x1 struct]
%
%         movie: 'Jurassic Park'                            movie: 'The Love Bug'
%          year: 1993                                        year: 1963
%          make: 'Ford'                                      make: 'Volkswagen'
%         model: 'Explorer XLT'                             model: '117'
%    aesthetics: [1x1 struct]                          aesthetics: [1x1 struct]
%
%--------------------------------------------------------------------------------
%% Function Name: structSort
%
% Setup:
%	load studentStructs.mat
%
% Test Cases:
% [str1] = structSort(simpleStruct);
% 	str1 => Structure/Structure array should match that of the solution function
%
% [str2] = structSort(taStruct1);
% 	str2 => Structure/Structure array should match that of the solution function
%
% [str3] = structSort(taStruct2);
% 	str3 => Structure/Structure array should match that of the solution function
%
%--------------------------------------------------------------------------------
%% Function Name: movieStar
%
% Setup:
%	load movieStarStudentCases.mat
%
% Test Cases:
% [cast1, money1, avg1] = movieStar(movieStruc1)
% 	cast1 => Adam Silverman
% 	money1 => 5
% 	avg1 => 0.7400
%
% [cast2, money2, avg2] = movieStar(movieStruc2)
% 	cast2 => Jessica Chastain
% 	money2 => 1.2814e+08
% 	avg2 => 0.8600
%
% [cast3, money3, avg3] = movieStar(movieStruc3)
% 	cast3 => Zoe Saldana
% 	money3 => 7.5015e+08
% 	avg3 => 0.9100
%
% [cast4, money4, avg4] = movieStar(movieStruc4)
% 	cast4 => Zoe Saldana
% 	money4 => 7.9062e+08
% 	avg4 => 0.7800
%
%--------------------------------------------------------------------------------
%% Function Name: whereIsMySuperSuit
%
% Setup:
%	load superList.mat
%
% Test Cases:
% out1 = whereIsMySuperSuit(struct1,names1)
% 	out1 => [1x1 struct]    [1x1 struct]    [1x1 struct]
%
% out2 = whereIsMySuperSuit(struct2, names2)
% 	out2 => [1x1 struct]    [1x1 struct]    [1x1 struct]    [1x1 struct]
%
% out3 = whereIsMySuperSuit(struct3, names3)
% 	out3 => [1x1 struct]    [1x1 struct]    [1x1 struct]    [1x1 struct]    [1x1 struct]    [1x1 struct]
%
%--------------------------------------------------------------------------------
%% Function Name: careerFair
%
% Test Cases:
% [overall1, best1] = careerFair('CFBResume',5)
% 	overall1 => Structure/Structure array should match that of the solution function
% 	best1 => Structure/Structure array should match that of the solution function
%
% [overall2, best2] = careerFair('TAResume',10)
% 	overall2 => Structure/Structure array should match that of the solution function
% 	best2 => Structure/Structure array should match that of the solution function
%
% [overall3, best3] = careerFair('NBAResume',14)
% 	overall3 => Structure/Structure array should match that of the solution function
% 	best3 => Structure/Structure array should match that of the solution function
%
