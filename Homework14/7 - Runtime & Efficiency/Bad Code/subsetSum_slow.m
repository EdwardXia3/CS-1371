function bool = subsetSum_slow(vec, targ)
if targ == 0
    bool = true;
elseif isempty(vec)
    bool = false;
else
    bool = subsetSum_slow(vec(2:end), targ - vec(1)); % try the first number
    if ~bool
        bool = subsetSum_slow(vec(2:end), targ); % try without the first number
    end
end
end