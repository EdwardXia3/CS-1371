function result = moveSnake(board, moves)
%Moves snake on Snake game.
head = max(max(board));
for ind = 1:length(moves)
    [blockrow, blockcol, outcome] = checkCollision(board, moves(ind));
    if strcmp(outcome, 'You hit yourself. Stack overflow.') || strcmp(outcome, 'Oh no! Firewall!') == 0
        if strcmp(outcome, 'Cookie! Have a byte!') == 1
            head = head + 1;
            board(blockrow, blockcol) = head;
            board = spawnCookie(board);
        else
            board(board>0) = board(board>0) - 1;
            board(blockrow, blockcol) = head;
        end
        result = board;
    else
        result = 'Game Over!';
    end

    if all(board > 0)
        result = 'You Win!';
    end
end    
end
function [blockrow, blockcol, outcome] = checkCollision(board, dir)
%Simulates collision of the traditional snake game.

[boardrow, boardcol] = size(board);
[~, row] = max(max(board'));
[~, col] = max(max(board));
blankboard = zeros(boardrow + 2, boardcol + 2);
blankboard(2:end-1, 2:end-1) = board(1:end, 1:end);
board = blankboard;
board(boardrow + 2,:) = -2;
board(:, boardrow + 2) = -2;
board(1,:) = -2;
board(:,1) = -2;


if dir == 'N'
    row = row - 1;
elseif dir == 'S'
    row = row + 1;
elseif dir == 'E'
    col = col + 1;
else
    col = col - 1;
end
blockrow = row;
blockcol = col;
block = board(row+1, col+1);

if block == 0 || block == 1
    outcome = 'continue';
elseif block == -1
    outcome = 'Cookie! Have a byte!';
elseif block > 1
    outcome = 'You hit yourself. Stack overflow.';
else
    outcome = 'Oh no! Firewall!';
end
board = board(2:end-1, 2:end-1);    
end