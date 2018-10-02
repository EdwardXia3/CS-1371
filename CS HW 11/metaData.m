function metaData(xlfile)
%Plots data
[num,txt,file] = xlsread(xlfile);
[~,c] = size(file);
numsub = c - 1;
N = ceil(numsub ./ 2);
x = num(:,1);
for ind = 1:numsub
    
    subplot(2,N,ind)
    plot(x,num(:,ind+1),'k-')
    hold on
    xlabel(txt{1})
    ylabel(txt{ind+1})
    plot(x(1:end-1), diff(num(:,ind+1))./diff(x), 'b-')
    hold on
    plot(x, cumtrapz(x',num(:,ind+1)'), 'g-')
end
end