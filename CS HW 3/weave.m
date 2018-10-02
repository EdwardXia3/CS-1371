function [weavecomb] = weave(vec1, vec2)
%The function takes two vectors and combines them by alternating values
%between the two vectors. The shorter vector has consecutive numbers of the 
%last number added to the end of the vector.
%
lvec1 = length(vec1);
lvec2 = length(vec2);
maxl = max(lvec1,lvec2);
end1 = vec1(end);
end2 = vec2(end);
v1 = [vec1(1:lvec1),(end1+1:end1+maxl-lvec1)];
v2 = [vec2(1:lvec2),(end2+1:end2+maxl-lvec2)];
weavecomb = zeros(1,maxl*2);
weavecomb(1:2:maxl*2) = v1;
weavecomb(2:2:maxl*2) = v2;
end
