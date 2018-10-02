clc
clear
%load('sentences.mat')
%load('dictionary.mat')
% Test Cases:
[crim1] = criminalMinds([true], [true], [false], [true])
% 	crim1 => Suspect #3 is lying.
% 
[crim2] = criminalMinds([true false false true true], [false true true true false], [false true true true false], [false true true true false])
% 	crim2 => Suspect #1 is lying.
% 
[crim3] = criminalMinds([true true true false], [true true true false], [true true true false], [true true false false])
% 	crim3 => Suspect #4 is lying.