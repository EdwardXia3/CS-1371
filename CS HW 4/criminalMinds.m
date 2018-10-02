function [lie] = criminalMinds(sus1, sus2, sus3, sus4)
%The function compares each response to the other 3 responses. If the
%response is different from the other 3, that response is considered the liar.

mask = ~(sus1 == sus2 == sus3 == sus4);
sus11 = sus1(mask);
sus22 = sus2(mask);
sus33 = sus3(mask);
sus44 = sus4(mask);
lie1 = (sus22 == sus33) & (sus33 == sus44);
lie2 = (sus11 == sus33) & (sus33 == sus44);
lie3 = (sus11 == sus22) & (sus22 == sus44);
lie4 = (sus11 == sus22) & (sus22 == sus33);
liecat = [lie1, lie2, lie3, lie4];
liar = ceil(find(liecat,1) ./ length(lie1));
lie = sprintf('Suspect #%d is lying.', liar);
end