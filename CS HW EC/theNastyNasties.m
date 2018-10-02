function [xval, yval] = theNastyNasties(poly, xbound)
%
der = (4:-1:1).*poly(1:end-1);
f = @(x) sqrt(1+ (polyval(der, x)).^2);
arcl = integral(f, 0, xbound);
avg = arcl ./ xbound;
xval = 0;
for ind = 0:0.25:xbound
   arc = integral(f, xval(end), ind);
   if arc>avg
        xval = [xval round(ind)];
   end
end
xval = xval(2:51);
y = abs(polyval(poly, xval));
yval = round(y./max(y).*xbound);

end