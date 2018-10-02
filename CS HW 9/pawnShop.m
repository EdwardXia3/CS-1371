function [inv, netcash] = pawnShop(invtxt, logtxt)
%Updates pawnshop inventory.
[invnum,~,inv] = xlsread(invtxt);
[lognum,~,log] = xlsread(logtxt);
[logrow, ~] = size(log);
moneyspent = 0;
moneygained = 0;
for ind = 2:logrow
    if strcmp(log(ind, 3), 'Sell')
        moneyspent = moneyspent + lognum(ind-1)./2;
        inv = [inv; log(ind, 2) lognum(ind-1)];
        invnum = [invnum; lognum(ind-1)];
    elseif strcmp(log(ind, 3), 'Buy')
        if any(strcmp(inv(:,1), log(ind, 2))) == 1;
            [~, invrowindex] = max(strcmp(inv, log(ind, 2)));
            if cell2mat(log(ind, 4)) >= invnum(invrowindex(1)-1)
                inv(invrowindex(1),:) = [];
                invnum(invrowindex(1)-1,:) = [];
                moneygained = moneygained + lognum(ind-1);
            end
        end
    end
    netcash = moneygained - moneyspent;
end
inv = inv(2:end,:);
end