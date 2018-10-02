function [str] = aliBabaAndTheFortyThieves(xlfile)
%
[~, ~, raw] = xlsread(xlfile);
[r,c] = size(raw);
header = 0;
for ind = 1:c
   if ~isnan(raw{1,ind})
       header = ind;
       for i = 1:r-1
           if ~isnan(raw{i+1, ind})
               str(i).(raw{1,ind}) = raw{i+1, ind};
           end
       end
   else
       
       for i = 1:r-1
           if ~isempty(str(i).(raw{1,header}))
               str(i).(raw{1,header}) = cellstr(str(i).(raw{1,header}));
           else
               str(i).(raw{1,header}) = {};
           end
           if ~isnan(raw{i+1, ind})
               str(i).(raw{1,header}) = [str(i).(raw{1,header}), raw(i+1, ind)];
           end
       end
   end
end
end