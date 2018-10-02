function [outstring] = varInfo(variable)
%The function determines the class or type and value of the input variable.
%
type = class(variable);
value = num2str(variable);
outstring = sprintf('This variable is of class %s and has a value of ''%s''.', type, value);
end
