%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW09
% Course       : CS1371
% Section      : A2
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                 
%
% Files to submit:
%	ABCs_cellArrays.m
%	ABCs_highLevelFileIO.m
%	carShopping.m
%	cellSum.m
%	hw09.m
%	partyPlanner.m
%	pawnShop.m
%	sortBy.m
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
% Part of this homework are m-files called "ABCs_cellArrays.m" and "ABCs_highLevelFileIO.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_cellArrays.m
%	ABCs_highLevelFileIO.m
%
% ABCs File Testing:
%	ABCs_hw09_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW09_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Cell Arrays
%	High Level File I/O
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
%% Function Name: cellSum
%
% Test Cases:
% [tot1] = cellSum({{2}, [3, 4], 5});
% 	tot1 => 14
% 
% [tot2] = cellSum({{{{[1, 2, 3, 4]}}}, {'string'}, 'char', 3, {2}});
% 	tot2 => 15
% 
% [tot3] = cellSum({{3}, [2, 1, 9], 'a', {5}});
% 	tot3 => 20
%
%--------------------------------------------------------------------------------
%% Function Name: pawnShop
%
% Test Cases:
% [log1, cash1] = pawnShop('shopInventory.xlsx','pawnShopLog1.xlsx');
% 	log1 =>  
% 'Bike'                         [   200]
% 'Old coin'                     [   250]
% 'Fountain pen'                 [   160]
% 'Comic books'                  [    50]
% 'Sword'                        [    70]
% 'Leopard 1'                    [125000]
% 'GT40'                         [400000]
% 'Crystal frog statue'          [   300]
% 'Beanie baby'                  [    10]
% 'Morgan silver dollar'         [    40]
% 'Flintlock pistol'             [  2000]
% 'Motorcycle'                   [  8500]
% '1867 Lincoln Stamp'           [200000]
% 'Button Gwinnett Signature'    [800000]
% 'Television'                   [   180]
% 'Chess board'                  [    25]
% 	cash1 => 6502
% 
% [log2, cash2] = pawnShop('shopInventory.xlsx','pawnShopLog2.xlsx');
% 	log2 =>  
% 'Bike'                         [   200]
% 'Sapphire ring'                [  1000]
% 'Old coin'                     [   250]
% 'Fountain pen'                 [   160]
% 'Comic books'                  [    50]
% 'Sword'                        [    70]
% 'Leopard 1'                    [125000]
% 'Crystal frog statue'          [   300]
% 'Beanie baby'                  [    10]
% 'Moon rock'                    [   900]
% 'Morgan silver dollar'         [    40]
% 'Flintlock pistol'             [  2000]
% 'Motorcycle'                   [  8500]
% '1867 Lincoln Stamp'           [200000]
% 'Button Gwinnett Signature'    [800000]
% 'Television'                   [   180]
% 'Chess board'                  [    25]
% 	cash2 => 600000
% 
% [log3, cash3] = pawnShop('shopInventory.xlsx','pawnShopLog3.xlsx');
% 	log3 =>  
% 'Bike'                         [   200]
% 'Sapphire ring'                [  1000]
% 'Old coin'                     [   250]
% 'Fountain pen'                 [   160]
% 'Comic books'                  [    50]
% 'Leopard 1'                    [125000]
% 'GT40'                         [400000]
% 'Crystal frog statue'          [   300]
% 'Beanie baby'                  [    10]
% 'Moon rock'                    [   900]
% 'Morgan silver dollar'         [    40]
% 'Flintlock pistol'             [  2000]
% 'Motorcycle'                   [  8500]
% '1867 Lincoln Stamp'           [200000]
% 'Button Gwinnett Signature'    [800000]
% 'Television'                   [   180]
% 	cash3 => 150130
%
%--------------------------------------------------------------------------------
%% Function Name: sortBy
%
% Test Cases:
% [raw1] = sortBy('sheet1.xlsx', 'id');
% 	raw1 => Value too large to display. Value should match that of the solution function.
% 
% [raw2] = sortBy('sheet2.xlsx', 'email');
% 	raw2 => Value too large to display. Value should match that of the solution function.
% 
% [raw3] = sortBy('sheet3.xlsx', 'quant');
% 	raw3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: partyPlanner
%
% Test Cases:
% item1 = partyPlanner('Survey1.txt')
% 	item1 => salad
% 
% item2 = partyPlanner('Survey2.txt')
% 	item2 => meat platter
% 
% item3 = partyPlanner('Survey3.txt')
% 	item3 => pizza
%
%--------------------------------------------------------------------------------
%% Function Name: carShopping
%
% Test Cases:
% cars1 = carShopping('carstats1.xlsx','Fuel Tank','Horsepower')
% 	cars1 =>  
% 'Make'        'Model'             'Year'    'Engine Size'    'Horsepower'    'Fuel Tank'    'RAC Rating'
% 'Cadillac'    'Escalade'          [2016]    [     6.2000]    [       420]    [       26]    [   52.9000]
% 'Jeep'        'Grand Cherokee'    [2012]    [     6.4000]    [       470]    [  24.6000]    [   53.5000]
% 'Lexus'       'LS 600h'           [2012]    [          5]    [       389]    [  22.2000]    [   43.8000]
% 
% cars2 = carShopping('carstats2.xlsx','Engine Size','Year')
% 	cars2 =>  
% 'Make'      'Model'     'Year'    'Engine Size'    'Horsepower'    'MPG'    'Fuel Tank'    'RAC Rating'
% 'Subaru'    'Legacy'    [2013]    [     3.6000]    [       256]    [ 25]    [  18.5000]    [   31.5000]
% 'Acura'     'RDX'       [2017]    [     3.5000]    [       279]    [ 29]    [       16]    [   29.5000]
% 'Nissan'    'Maxima'    [2016]    [     3.5000]    [       300]    [ 30]    [       18]    [   33.9000]
% 
% cars3 = carShopping('carstats3.xlsx','MPG','RAC Rating')
% 	cars3 =>  
% 'Make'      'Model'     'Year'    'Engine Size'    'RAC Rating'    'Fuel Tank'    'MPG'    'Horsepower'
% 'Ford'      'Focus'     [2016]    [          1]    [    9.6000]    [  12.4000]    [ 42]    [       123]
% 'Nissan'    'Sentra'    [2016]    [     1.8000]    [   15.8000]    [  13.2000]    [ 38]    [       130]
% 'Subaru'    'Legacy'    [2016]    [     2.5000]    [   21.9000]    [  18.5000]    [ 36]    [       175]
%
