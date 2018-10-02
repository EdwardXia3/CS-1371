function [reqmet] = comboLock(combo, minV, maxV)
%The function checks if the combination meets three requirements; it must
%have more letters than numbers, have an uppercase letter, and the sum of
%the numeric digits must be between the min and max intervals.

combovec = double(combo);
CapReq = any(combovec >= 65 & combovec <= 90);
letters = (combovec >= 65 & combovec <= 90) | (combovec >= 97 & combovec <= 122);
numbers = ~letters;
letReq = sum(letters) > sum(numbers);
sumnum = sum(combo(numbers)-48);
sumReq = sumnum >= minV & sumnum <= maxV;
reqmet = CapReq == 1 & letReq == 1 & sumReq ==1;
end
