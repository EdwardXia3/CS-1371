function [results] = dragRace(time, v, cars, dist)
%Determines the car which won the race and the car with the fastest
%acceleration.
cardist = [];
fintime = [];
maxa = [];
for ind = 1:length(cars)
    dists = cumtrapz(time(ind,:), v(ind,:));
    cardist = [cardist; dists];
    fintime = [fintime, interp1(dists,time(ind,:),dist)];
    accel = diff(v(ind,:))./diff(time(ind,:));
    maxa = [maxa, max(accel)];
end
[fintime,winind] = min(fintime);
[maxaccel, aind] = max(maxa);
racewinner = cars{winind};
fastaccel = cars{aind};
results = sprintf('The %s won the %d meter race in %0.1f seconds! The %s had the fastest acceleration at %0.1f m/s^2!', ...
racewinner, dist, fintime, fastaccel, maxaccel);
end