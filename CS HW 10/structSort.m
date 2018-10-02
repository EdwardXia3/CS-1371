function [newstruct] = structSort(str)
%Sort structures based on field length.
fields = fieldnames(str);
fieldvec = [];
for ind = 1:length(fields)
    fieldvec = [fieldvec, length(fields{ind})];
end
[~,ind] = max(fieldvec);
fieldcontent = {str.(fields{ind})};
sublvec = [];
for ind = 1:length(fieldcontent)
    sublvec = [sublvec, length(fieldcontent{ind})];
end
[~, ind] = sort(sublvec, 'descend');
newstruct = str(ind);
end