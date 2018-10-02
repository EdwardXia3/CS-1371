function [exist, sub] = subsetSum(vec, target)
%
global l
global sub
sub = [];
vec3 = vec;
for ind = 1:length(vec)    
    helper(vec, target)
    vec2 = vec;
    for i = 1:length(vec)
        vec(i) = [];
        helper(vec, target);
        vec = vec2;
    end
    vec = [vec(end), vec(1:length(vec)-1)];
end
if isempty(sub)
    exist = 0;
else
    exist = 1;
    sub = sub(1:l);
    a = [];
    for i = 1:length(sub);
        a = [a, find(sub(i) == vec3)];
    end
    [~, b] = sort(a);
    sub = sub(b);
end
end

function helper(vec, target)
global l
global sub
n = length(vec) - 1;
if sum(vec) == target
    l = length(vec);
    sub = [sub, vec];
elseif isempty(vec);
    sub = [sub, vec];
else
    helper(vec(1:n), target);
end
end