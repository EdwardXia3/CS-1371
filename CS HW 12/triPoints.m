%% triPoints generate points of equilateral triangle for use in Koch Snowflake fractal
%
%   tri = triPoints(a, b)
%
%   Inputs:
%       (double) a: 1x2 or 2x1 vector of a Cartesian point a
%       (double) b: 1x2 or 2x1 vector of a Cartesian point b
%
%   Outputs:
%       (double) tri: A 2x3 array representing 3 Cartesian points x, y, and z.
%           The first row of the output is the x coordinates of the points and
%           the second row is the y coordinates.
%
%           Line segments ax, xy, yz, and zb all have the same magnitude.
%           Additionally, triangle xyz is equilateral.

%%
function tri = triPoints(a, b)
slope = (b(2) - a(2)) / (b(1) - a(1));
scale = sqrt((a(1) - b(1))^2 + (a(2) - b(2))^2) / 2;
mid_point = [mean([a(1), b(1)]); mean([a(2), b(2)])];
th = atan(slope);
rot_mat = [cos(th), -sin(th); sin(th), cos(th)];
top_init = [0; sqrt(3)/3];
base1_init = [-1/3; 0];
base2_init = [1/3; 0];
if b(1) < a(1)
    top_init = -top_init;
    base1_init = -base1_init;
    base2_init = -base2_init;
end
top = rot_mat * top_init * scale + mid_point;
base1 = rot_mat * base1_init * scale + mid_point;
base2 = rot_mat * base2_init * scale + mid_point;
tri = [base1, top, base2];
end