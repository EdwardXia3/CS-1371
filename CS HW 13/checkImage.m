% checkImage compares two images for equality
%
%       out = checkImage(img1, img2)
%
% Inputs:
%   (char) img1: an image filename (char) img2: another image filename
%
% Outputs:
%   (char) diffs: A string describing the differences between the images, if any
%       Additionally, if the images are the same size, but contain different
%       pixels, a figure will open showing white pixels where the images are
%       different and black pixels where the two images are the same. This can
%       help you identify where your images differ from the solution.