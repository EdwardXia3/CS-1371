function outcome = checkCollision(board, dir)
%Simulates collision of the traditional snake game.

[boardrow, boardcol] = size(board);
[~, rowvec] = max(board);
row = max(rowvec);
[~, col] = max(max(board));
blankboard = zeros(boardrow + 1, boardcol + 1);
blankboard(1:end-1, 1:end-1) = board(1:end, 1:end);
board = blankboard;
board(boardrow + 1,:) = -2;
board(:, boardrow + 1) = -2;


if dir == 'N'
    row = row - 1;
elseif dir == 'S'
    row = row + 1;
elseif dir == 'E'
    col = col + 1;
else
    col = col - 1;
end

block = board(row, col);

if block == 0 
    outcome = 'continue';
elseif block == -1
    outcome = 'Cookie! Have a byte!';
elseif block > 0
    outcome = 'You hit yourself. Stack overflow.';
else
    outcome = 'Oh no! Firewall!';
end
    
end