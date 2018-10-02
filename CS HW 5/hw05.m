%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Edward Xia
% T-square ID  : exia3
% GT Email     : exia3@gatech.edu
% Homework     : HW05 resubmission
% Course       : CS1371
% Section      : A2
% Collaboration:"I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%	ABCs_arrays.m
%	ABCs_hw05_pretest.p
%	ABCs_masking.m
%	HW05_DrillProblems.pdf
%	desktop.ini
%	elephantCase_soln.p
%	filterData_soln.p
%	hw05.m
%	jumbledRowsCols.mat
%	multTable_soln.p
%	multTable_testCases.mat
%	puzzleBox_soln.p
%	scheduler_soln.p
%	scheduler_testCases.mat
%
% Files to submit:
%	ABCs_arrays.m
%	ABCs_masking.m
%	elephantCase.m
%	filterData.m
%	hw05.m
%	multTable.m
%	puzzleBox.m
%	scheduler.m
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
% Part of this homework are m-files called "ABCs_arrays.m" and "ABCs_masking.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_arrays.m
%	ABCs_masking.m
%
% ABCs File Testing:
%	ABCs_hw05_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW05_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Arrays
%	Masking
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
%% Function Name: filterData
%
% Test Cases:
% [newData1] = filterData([7,3,4,5,6,1,900000])
% 	newData1 => [7, 3, 4, 5, 6, 1, 5]
% 
% [newData2] = filterData([0,0,1,0,0,0,0,0,0])
% 	newData2 => [0, 0, 0, 0, 0, 0, 0, 0, 0]
% 
% [newData3] = filterData([1,2,3,4,9000])
% 	newData3 => [1, 2, 3, 4, 9000]
%
%--------------------------------------------------------------------------------
%% Function Name: elephantCase
%
% Test Cases:
% [eCase1] = elephantCase('Elephants are the best')
% 	eCase1 => ELEPHANTs ArE ThE best!
% 
% [eCase2] = elephantCase('One ear from a bull African elephant weighs more than 100 pounds!')
% 	eCase2 => OnE EaR from a bull african ELEPHANT weighs more than  pounds!
% 
% [eCase3] = elephantCase('Panthers are cool too')
% 	eCase3 => panthers ArE cool ToO!
%
%--------------------------------------------------------------------------------
%% Function Name: multTable
%
% Setup:
% load('multTable_testCases.mat');
%
% Test Cases:
% [unweighted1, weighted1] = multTable(sampleMultTable1)
% 	unweighted1 => 60.4167
% 	weighted1 => 49.0741
% 
% [unweighted2, weighted2] = multTable(sampleMultTable2)
% 	unweighted2 => 60.6061
% 	weighted2 => 50.9091
% 
% [unweighted3, weighted3] = multTable(sampleMultTable3)
% 	unweighted3 => 72.3810
% 	weighted3 => 69.0774
%
%--------------------------------------------------------------------------------
%% Function Name: scheduler
%
% Setup:
% load('scheduler_testCases.mat');
%
% Test Cases:
% [newSchedule1] = scheduler(schedule1, events1)
% 	newSchedule1 =>  
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 
% [newSchedule2] = scheduler(schedule2, events2)
% 	newSchedule2 =>  
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     0     1     0     1     1
% 1     1     0     1     0     1     1
% 1     1     1     1     0     0     0
% 1     1     1     1     0     0     0
% 1     1     1     1     0     0     0
% 1     1     1     1     0     0     0
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 1     1     1     1     1     1     1
% 
% [newSchedule3] = scheduler(schedule3, events3)
% 	newSchedule3 =>  
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     1     0     1     0     1     0
% 0     1     0     1     0     1     0
% 0     1     0     1     0     1     0
% 0     1     0     1     0     1     0
% 0     1     0     1     0     1     0
% 0     0     0     1     0     1     0
% 0     0     0     1     0     1     0
% 0     0     0     1     0     1     0
% 0     0     0     1     0     1     1
% 0     0     0     1     0     1     1
% 0     0     0     1     0     1     1
% 1     1     0     1     0     1     1
% 1     1     0     1     0     1     1
% 1     1     0     1     0     1     1
% 1     1     0     1     0     1     1
% 1     0     0     0     0     0     1
% 1     0     0     0     0     0     1
% 1     0     0     0     0     0     1
% 1     0     0     0     0     0     0
% 1     0     0     0     0     0     0
% 1     0     0     0     0     0     0
% 1     0     0     0     0     0     0
% 1     0     0     0     0     0     0
% 1     0     0     0     0     0     1
% 1     0     0     0     0     0     1
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
% 0     0     0     0     0     0     0
%
%--------------------------------------------------------------------------------
%% Function Name: puzzleBox
%
% Setup:
% load('jumbledRowsCols');
%
% Test Cases:
% [solved1] = puzzleBox(jumbled1, rows1, cols1)
% 	solved1 =>  
%                                               .r3M
%                                            :SG#@@@
%                                        ,s9M@@@@@@@
%                                     ;2H@@@@@@@@@@@
%                                 :SG@@@@@@@@@@@@@@@
%                             ,s9M@@@@@@@@@@@@@@@@@@
%                          ;2H@@@@@@@@@@@@@@@@@@@@@@
%                      :SG@@@@@@@@@@@@@@@@@@@#Gir@@@
%                  ,s9M@@@@@@@@@@@@@@@@@@@A2;   .@@@
%                :B@@@@@@@@@@@@@@@@@@@M3r.      ,@@@
%                r@@@@@@@@@@@@@@@@#Gi:          .@@@
%                r@@@@@@@@@@@@@A2;              .@@@
%                r@@@@@@@@@M3r.                 .@@@
%                r@@@@@#Gi:                     .@@@
%                r@@#2;                         .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           .@@@
%                r@@h                           ,@@@
%                r@@h                 :ShAHAh2; .@@@
%                r@@h               rH@@@@@@@@@B2@@@
%                r@@h              3@@@@@@@@@@@@@@@@
%                r@@h             3@@@@@@@@@@@@@@@@@
%                r@@h            ;@@@@@@@@@@@@@@@@@@
%                r@@h            3@@@@@@@@@@@@@@@@@@
%                r@@h            h@@@@@@@@@@@@@@@@@@
%                r@@h            2@@@@@@@@@@@@@@@@@B
%                r@@h            ,@@@@@@@@@@@@@@@@@i
%       ,riiir,  r@@h             i@@@@@@@@@@@@@@@9 
%    ,2M@@@@@@@Hrs@@h              s@@@@@@@@@@@@@X  
%   S@@@@@@@@@@@@@@@h               .X#@@@@@@@@h:   
%  2@@@@@@@@@@@@@@@@h                  ;i2X2S;.     
% s@@@@@@@@@@@@@@@@@h                               
% H@@@@@@@@@@@@@@@@@h                               
% @@@@@@@@@@@@@@@@@@h                               
% #@@@@@@@@@@@@@@@@@3                               
% 3@@@@@@@@@@@@@@@@@r                               
% .M@@@@@@@@@@@@@@@G                                
%  ,#@@@@@@@@@@@@@&                                 
%    X@@@@@@@@@@Mi                                  
%     .iGM@@@B9r                                    
% 
% 
% [solved2] = puzzleBox(jumbled2, rows2, cols2)
% 	solved2 =>  
%           ,s239932s,                     :rS52Ss:           
%         :5hhhhhhhhhh5:                .s3hhhhhhhh3s.        
%        Shhh99hhhh99hhh5.             shhh99999999hh9r       
%      .Xh99hhhhhhhhhh99h9:          ,Xhh9hhhhhhhhhh9hh2      
%     .3h9hhhhhhhhhhhhhh9hh;        :9h9hhhhhhhhhhhhhh9hX     
%     Xh9hhhhhhhhhhhhhhhh99h:      :hh9hhhhhhhhhhhhhhhh9h2    
%    ih9hhhhhhhhhhhhhhhhhh999.    .999hhhhhhhhhhhhhhhhhh9hi   
%   ,h9hhhhhhhhhhhhhhhhhhhh9h2    2h9hhhhhhhhhhhhhhhhhhhh9h,  
%   2h9hhhhhhhhhhhhhhhhhhhhh9hr  rh9hhhhhhhhhhhhhhhhhhhhh9h2  
%  ,h9hhhhhhhhhhhhhhhhhhhhhhh99  99hhhhhhhhhhhhhhhhhhhhhhh9h, 
%  ih9hhhhhhhhhhhhhhhhhhhhhhh9hrrh9hhhhhhhhhhhhhhhhhhhhhhh9hi 
%  3hhhhhhhhhhhhhhhhhhhhhhhhhhh99hhhhhhhhhhhhhhhhhhhhhhhhhhh3 
% ,hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h:
% rh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hr
% Sh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hS
% XhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhX
% 3hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh3
% 9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9
% hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
% 9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9
% 3hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh3
% 2h9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h5
% sh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hr
% ,hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh,
%  Xh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h2 
%  ;h9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h: 
%   Xh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h5  
%   ,h9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh999.  
%    rh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h:   
%     ih9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh99h;    
%      ih9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hh;     
%       rhh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9h3:      
%        ;9h9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hh2.       
%         .5hh9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hhr         
%           r9h9hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh9hh2,          
%            .Shh9hhhhhhhhhhhhhhhhhhhhhhhhhhhh9h9r            
%              :Xhh9hhhhhhhhhhhhhhhhhhhhhhhh9hhS.             
%                r9h9hhhhhhhhhhhhhhhhhhhhhh9h3:               
%                 .5hh9hhhhhhhhhhhhhhhhhh9hhi                 
%                   r9h9hhhhhhhhhhhhhhhh9h9;                  
%                    ,Xh9hhhhhhhhhhhhhh9hX,                   
%                      Sh9hhhhhhhhhhhh9h5                     
%                       sh9hhhhhhhhhh9hi                      
%                        rh9hhhhhhhh9hs                       
%                         rh9hhhhhh9hs                        
%                          rh9hhhh9hs                         
%                           sh9hh9hS                          
%                            Sh99h2                           
%                             Xh93                            
%                             ,hh:                            
%                              S5                             
%                              .,                             
% 
% [solved3] = puzzleBox(jumbled3, rows3, cols3)
% 	solved3 =>  
%                                                            
%                                                            
%                                                            
%                            :rsisr:                         
%                         :59hhhhhhh9S:                      
%                       ,2Ghh99999999hh5.                    
%                      rGh99h999999999393;                   
%                     sG99hhhhh9h99999999hr                  
%                    rG9hhhhhhhhhhhh999993h;                 
%                   :Ghhhhhhhhhhhh9hh999999h,                
%                   XGhhhhhhhhhhhh99hh99999h2                
%                  ;GhhhhhhhhhGh9hGh99h99999G;               
%                  XGhhhhhhhG3r. ,r3h9999999h2               
%                 ,Ghhhhhhhh2       5G9999999h.              
%                 ;G99hhh9h9. :532:  3h999999G;              
%                 i&GGGGGhGr ;GhhGG: ;GhGGGGhGi              
%                 :rrr;;;;;  Xh9h9G2  ::::::::.              
%                            9hhhhh3                         
%                            Xh9h9hX    ......               
%                 SG9999933, ;GhhhG; ;G9999hhGi              
%                 sGhhhhGhG5  r393;  2Ghhhh99Gr              
%                 :GhhhhhhhGr       sGhhhh999h,              
%                  9GhhhhhhhGs    .iGhhhhhhhh3               
%                  iGhhhhhhhhG9222hGhhhhhhhhGs               
%                  .hhhhhhhhhhhGGGhhhhhhhhhh9                
%                   rG9hhhhhhhhhhhhhhhhhhh9Gr                
%                    5G9hhhhhhhhhhhhhhhhh9GS                 
%                     XG9hhhhhhhhhhhhhhh9G2                  
%                      2GhhhhhhhhhhhhhhhG5                   
%                       sGGhhhhhhhhhhhGhr                    
%                        ,5hGGGGGGGGG9i.                     
%                          .rSX3332i;                        
%                                                            
%                                                            
%                                                            
%                                                            
%                                                            
%