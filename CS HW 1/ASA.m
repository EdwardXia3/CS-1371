function [b,c] = ASA( B, a, C)
%Using the law of cosine, the length of side b and c is determined using
%the angle of 2 angles (B and C) and 1 side (a).
%A is the angle A which is determined by finding the difference of B and C
%from 180. sinA/B/C finds the sine in degrees of each angle. ex_b and ex_c
%finds the exact length of sides b and c using the law of sines. b and c is
%the estimate rounded to the nearest hundredth of ex_b and ex_c.
    A = 180 - B - C;
    sinB = sind(B);
    sinA = sind(A);
    sinC = sind(C);
    ex_b = sinB .*a ./ sinA;
    ex_c = sinC .*a ./ sinA;
    b = round(ex_b,2);
    c = round(ex_c,2); 
end