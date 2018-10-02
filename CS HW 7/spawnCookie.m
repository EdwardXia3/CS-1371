%% spawnCookie Generate a new cookie (-1) on an array representing a game of snake
%
%   newBoard = spawnCookie(currBoard)
%
%   Input:  currBoard - an NxM array representing the current state of the board
%   Output: newBoard  - an NxM array with an updated cookie
%
%   If the input board already has a cookie on it, the output board will be
%   identical to the input. Also, if the input board does not have any empty
%   space (zeros) the output will be identical to the input.
%
%   If the input board has empty space and does not have a cookie, then a cookie
%   will be generated in a "random" empty space on the board.
%