function [mostpaid, amntpaid, avgrat] = movieStar(str)
%Determines the most paid movie star, the amount he/she is paid, and
%his/her average rating from a list of movies.
castlist = {};
for ind = 1:length(str)
    profit = str(ind).Revenue - str(ind).Budget;
    nickcheck = any(strcmp(str(ind).Cast, 'Nicolas Cage'));
    for ind2 = 1:length(str(ind).Cast)
        castcheck = strcmp(castlist, str(ind).Cast{ind2});
        if ~any(castcheck)
            [r, ~] = size(castlist);
            castlist(r+1, 1) = str(ind).Cast(ind2);
            if nickcheck == 0
                castlist(r+1, 3) = {str(ind).Bad_Vegetable_Score};
            end
            if profit > 0
                castlist(r+1, 2) = {profit ./ length(str(ind).Cast)};
            else
                castlist(r+1, 2) = {0};
            end
        else 
            [~, castloc] = max(castcheck);
            if nickcheck == 0
                castlist(castloc(1), 3) = {[castlist{castloc(1), 3}, str(ind).Bad_Vegetable_Score]};
            end
            if profit > 0
                castlist{castloc(1), 2} = castlist{castloc(1), 2} + profit ./ length(str(ind).Cast);
            end
        end
    end
end
[castlist(:,1), ind3] = sort(castlist(:,1));
castlist(:,2:end) = castlist(ind3,2:end);
[amntpaid, ind4] = max([castlist{:,2}]);
mostpaid = castlist{ind4,1};
if isequal(mostpaid, 'Nicolas Cage')
    [~, ind5] = max(strcmp(castlist, 'Nicolas Cage'));
    castlist(ind5(1),:) = [];
    [amntpaid, ind4] = max([castlist{:,2}]);
    mostpaid = castlist{ind4,1};
end
avgrat = round(mean(castlist{ind4,3}), 2);
amntpaid = round(amntpaid, 2);
end