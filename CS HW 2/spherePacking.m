function [spheres] = spherePacking(r, l)
%The function finds the maximum amount of spheres that can be packed into a
%cube assuming the maximum packing density is  74.048% using the radius of
%the sphere and the length of one side of the cube.
volCube = l .^3;
volSphere = 4 .* pi ./ 3 .* r.^3;
maxPack = .74048 .* volCube;
numSpheres = maxPack ./ volSphere;
spheres = floor(numSpheres);
end