function [filter] = filterData(vec)
%The function filters out outliers in a vector and replaces those  values
%with the vector's median.

l = length(vec);
vec1 = sort(vec);
med = median(vec);
if mod(l, 2) == 1
    halfl = length(1:(l / 2 - .5));
else 
    halfl = length(1:(l / 2));
end
half1st = vec1(1:halfl);
half2nd = vec1(end-halfl+1:end);
Q1 = median(half1st);
Q3 = median(half2nd);
IQR = Q3 - Q1;
outlow = Q1 - 1.5 .* IQR;
outhigh = Q3 + 1.5 .* IQR;
vec(vec < outlow |vec > outhigh) = med;
vec = round(vec, 2);
filter = vec;

end