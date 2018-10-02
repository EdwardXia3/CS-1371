function [msg] = secretMessage(str)
%Deciphers secret message.
phrbegin = strfind(str, '(');
phrend = strfind(str, ')');
msg = '';
for ind = 1:length(phrbegin)
    phrase = str((phrbegin(ind) + 1):(phrend(ind) - 1));
    msg = [msg, phrase];   
end
end