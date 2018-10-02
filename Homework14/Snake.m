function Snake
clc
clear all
fh = fopen('Leaderboard.txt', 'r');
line = '';
scores = [];
players = {};
global key
global lastkey
global answer
global head
global fig
global textswitch
global scale
global cookiecheck
cookiecheck = false;
textswitch = true;
head = 1;
lastkey = [];
prompt={'GamerTag', 'Length', 'Width'};
name = 'Snake Game';
defaultans = {'Player','10','10'};
answer = inputdlg(prompt,name,[1 50],defaultans);
if fh ~= -1
    fgetl(fh);
    while ischar(line)
        line = fgetl(fh);
        [player, score] = strtok(line);
        players = [players, player];
        scores = [scores, str2double(score(2:end))];
    end
    scores = scores(1:end-1);
    players = players(1:end-1);
end
fig = figure('KeyPressFcn', @KeyPress);
set(fig, 'Position', [100 100 560 425])
boardr = str2double(answer{2});
boardc = str2double(answer{3});
[snake, cookie, board] = setboard(boardr, boardc);
a = true;
while a
    if ~isempty(key)
        textswitch = false;
        [head, c] = max(max(board));
        r = mod(find(board == head),(boardr+2));
        switch key
            case 'uparrow'
                if strcmp(lastkey, 'downarrow') && head > 1
                    key = lastkey;
                    r = r+1;
                else
                    r = r-1;
                end
            case 'downarrow'
                if strcmp(lastkey, 'uparrow') && head > 1
                    key = lastkey;
                    r = r-1;
                else                
                    r = r+1;
                end
            case 'rightarrow'
                if strcmp(lastkey, 'leftarrow') && head > 1
                    key = lastkey;
                    c = c-1;
                else
                    c = c+1;
                end
            case 'leftarrow'
                if strcmp(lastkey, 'rightarrow') && head > 1
                    key = lastkey;
                    c = c+1;
                else
                    c = c-1;
                end
        end
        if board(r,c)>= 1
            a = false;
            plot(c,-r,'rs','MarkerSize',.95*scale,'MarkerFaceColor','r')
            pause(0.1)
            plot(c,-r,'ys','MarkerSize',.95*scale,'MarkerFaceColor','y')
            pause(0.1)
            plot(c,-r,'rs','MarkerSize',.95*scale,'MarkerFaceColor','r')
            pause(0.1)
            plot(c,-r,'ys','MarkerSize',.95*scale,'MarkerFaceColor','y')
            pause(0.1)
            plot(c,-r,'rs','MarkerSize',.95*scale,'MarkerFaceColor','r')
            pause(0.1)            
        elseif board(r,c) == -1
            a = false;
        elseif board(r,c) == -2
            cookiecheck = true;
            board(r,c) = head + 1;
            snake = [snake [c; r]];
            cr = randi(boardr)+ 1;
            cc = randi(boardc) + 1;
            while board(cr, cc) > 0 && ~isequal([cookie(2) cookie(1)],[cr cc])
                cr = randi(boardr) + 1;
                cc = randi(boardc) + 1;
                if all(board(2:end-1, 2:end-1))
                    break
                end
            end
            text(c, -r+0.25, '+1', 'Color', 'y');
            cookie = [cc;cr];
            board(cr, cc) = -2;
            pause(0.2)
        elseif board(r,c) == 0
            board(board>0) = board(board>0) - 1;
            board(r,c) = head;
            snake = [snake [c; r]];
            snake(:,1) = [];
        end
    end
    plotsnake(snake(1,:), snake(2,:), cookie(1,:), cookie(2,:), boardr, boardc);
    lastkey = key;
    pause(0.1);

end
score = head*10;
scores = [scores, score];
players = [players, answer{1}];
[scores, index] = sort(scores,'descend');
players = players(index);
if length(players) > 10
    players = players(1:10);
    scores = scores(1:10);
end
fh2 = fopen('Leaderboard.txt', 'w');
fprintf(fh2,'Top 10 Leaderboard:\n');
for ind = 1:length(players)
    fprintf(fh2, '%s %d\n', players{ind}, scores(ind));
end
if fh ~= -1
    fclose(fh);
end
fclose(fh2);
hold off
text(0,0.1, 'Game Over', 'HorizontalAlignment', 'Center');
hold on
scoretext = sprintf('Score: %d', score);
text(0,0, scoretext, 'HorizontalAlignment', 'Center');
hstext = sprintf('Current Highscorer: %s - %d', players{1}, scores(1));
text(0,-0.1, hstext, 'HorizontalAlignment', 'Center');
axis([-0.5, 0.5, -0.5, 0.5])
axis off
uicontrol(fig,'Style','pushbutton','String','Restart Game',...
                'Position',[180 100 100 40], 'Callback', @restart);
uicontrol(fig,'Style','pushbutton','String','Exit Game',...
                'Position',[300 100 100 40], 'Callback', @closegame);
end
function [] = KeyPress(~, event)
global key
key = event.Key;
end
function [snake, cookie, board] = setboard(r, c)
board = ones(r+2,c+2);
board = board .* -1;
board(2:end-1,2:end-1) = 0;
sc = randi(c)+1;
sr = randi(r)+1;
cc = randi(c)+1;
cr = randi(r)+1;
while sc == cc && sr == cr
    cc = randi(c)+1;
    cr = randi(r)+1;
end
snake = [sc;sr];
cookie = [cc;cr];
board(sr,sc) = 1;
board(cr,cc) = -2;
plotsnake(sc,sr,cc,cr,r,c);
end

function plotsnake(sc, sr, cc ,cr, r, c)
global answer
global head
global fig
global textswitch
global scale
global cookiecheck
scale = ((1./sqrt(str2double(answer{2}) .* str2double(answer{3}))).*650)^0.8;
bs = (8./scale).^.35;
hold off
plot([2-bs,c+1+bs,c+1+bs,2-bs,2-bs],...
    [-2+bs,-2+bs,-r-1-bs,-r-1-bs,-2+bs],'w-');
hold on
title('Snake');
plot(sc(end),-sr(end),'ks','MarkerSize',.95*scale,'MarkerFaceColor','k')
if length(sc) > 1
    plot(sc(1:end-1),-sr(1:end-1),'ys','MarkerSize',.95*scale,'MarkerFaceColor','y')
end
plot(cc,-cr, 'rs','MarkerSize',.75 * scale,'MarkerFaceColor','r')
axis([1-bs, c+2+bs, -r-2-bs, -1+bs])
sizedis = sprintf('Snake Size: %d', head);
text((1-bs+c+2+bs)./2, -r-2-bs, sizedis,'HorizontalAlignment', 'Center')
if cookiecheck == true
    text((1-bs+c+2+bs)./2 + 1.7, -r-2-bs+.3, '+1',...
        'HorizontalAlignment', 'Center','Color','g')    
    cookiecheck = false;
    
end
if textswitch == true
    text((c+3)./2, (-r-3)./2, 'Press Any Arrow Key To Start', ...
        'HorizontalAlignment', 'Center', 'FontSize', 24);
end
axis equal
axis off
whitebg(fig, [0,0,0])
end
%UI Functions
function restart(~,~)
close all
Snake
end
function closegame(~,~)
close all
end