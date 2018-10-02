function [log] = checkContour(v1,v2)
%The function compares the contour of two vectors. Contour is defined as
%the pattern of increasing and decreasing.
%
vdiff1 = diff(v1);
vdiff2 = diff(v2);
posdiff1 = vdiff1 > 0;
posdiff2 = vdiff2 > 0;
log = isequal(posdiff1, posdiff2);
end