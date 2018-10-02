clc
clear
% Setup:
	load map.mat
%
% Test Cases:
[adventure1] = lostAbroad(map1, [1, 1, 3, 3, 4; 4, 5, 5, 6, 6])
% 	adventure1 => THWg!
% 
[adventure2] = lostAbroad(map1, [1, 4, 4; 1, 1, 6])
% 	adventure2 => No record of this person exists. -Government
% 
 [adventure3] = lostAbroad(map2, [1, 2, 2, 7, 7, 9, 9, 7, 7; 7, 7, 12, 12, 10, 10, 9, 9, 6])
% 	adventure3 => What's the good word?
% 
 [adventure4] = lostAbroad(map2, [12, 8, 8, 8, 8, 6, 6, 6, 15; 6, 6, 10, 5, 3, 3, 4, 11, 11])
% 	adventure4 => I am lostAbroad and can't find my friends.