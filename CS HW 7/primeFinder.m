function [prime] = primeFinder(num)
%Determines if number is prime or not.
vec = 1:floor(sqrt(num));
numdivis = 0;
for ind = 1:length(vec)
    if mod(num, vec(ind)) == 0
        numdivis = numdivis + 1;
    end
end
if numdivis == 1
    prime = true;
else
    prime = false;
end
if num == 1
    prime = false;
end
end