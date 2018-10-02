clc
clear
% Test Cases:
%clockFaces('3:15', '+5')
% 		Output plot(s) should be identical to that produced by solution file
% 
%clockFaces('12:00', '+0')
% 		Output plot(s) should be identical to that produced by solution file
% 
%clockFaces_soln('6:11', '-7')
% 		Output plot(s) should be identical to that produced by solution file
[same, details] = plotCheck('clockFaces', '12:00', '+10')