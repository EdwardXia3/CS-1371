function snowflake(depth)
%
global points
points = [-1, 1, 0, -1; 0, 0, -sqrt(3), 0];
helper(depth);
end

function helper(depth)
global points
global plotpoints
if depth == 0
    plot(plotpoints(1,:), plotpoints(2,:), 'k-');
    axis equal
    axis off
else
    l = length(points);
    plotpoints = [];
    for ind = 1:l-1
        plotpoints = [plotpoints, points(:,ind), triPoints(points(:,ind), points(:,ind+1)), points(:,ind+1)];
    end
    
    points = plotpoints;
    helper(depth-1);
end
end
