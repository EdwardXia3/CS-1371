%% timeDiff calculates the difference in time between the two inputs
%       diff_hrs = timeDiff(t1, t2)
%
%   Both t1 and t2 must be in the form 'HH:MM AM/PM'
%
%   Output is the absolute value of the difference in time, in hours
function diff_hrs = timeDiff(t1, t2)
t1 = datevec(t1, 'HH:MM pm');
t2 = datevec(t2, 'HH:MM pm');
diff_hrs = abs(etime(t1, t2)) / 3600;
end