clc
clear
% Setup:
	load nationalPokedex.mat
%
% Test Cases:
 pokemonGO('timessquare_pokemon.png', 'timessquare.png', nationalPokedex)
% 		Output image(s) should be identical to that produced by solution file
% 
pokemonGO_soln('GTCampanile_pokemon.png', 'GTCampanile.png', nationalPokedex)
% 		Output image(s) should be identical to that produced by solution file
% 
pokemonGO_soln('ceruleanCave_pokemon.png', 'ceruleanCave.png', nationalPokedex)
% 		Output image(s) should be identical to that produced by solution file
%