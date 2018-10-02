function [hrHand, minHand] = clockHands(startHr, startMin, minutes)
%The function takes account the inital position of the hour hand and minute
%hand and determines the final position of the hour and minute hand based
%on the change in minutes.
totalMins = startMin + minutes;
hrChange = startHr + floor((totalMins) ./ 60);
hrHand = mod(hrChange, 12);
minHand = mod(totalMins, 60);
end