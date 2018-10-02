function plotSnake(board)
%Plots Snake Board
[r, c] = size(board);
snakelength = max(max(board));
snake = find(board>0 & board~=snakelength);
head = find(board==snakelength);
snake = snake';
headx = floor(head./r)+1;
heady = -1.*mod(head,r);
xcord = floor(snake./r)+1;
ycord = -1.*mod(snake,r);
cookie = find(board==-1);
cokx = floor(cookie./r)+1;
coky = -1.*mod(cookie,r);
xcord(ycord==0) = xcord(ycord==0)-1;
ycord(ycord==0) = -r;
headx(heady==0) = headx(heady==0)-1;
heady(heady==0) = -r;
cokx(coky==0) = cokx(coky==0)-1;
coky(coky==0) = -r;
hold on
plot([1,c,c,1,1],[-1,-1,-r,-r,-1],'k-')
plot(xcord,ycord,'bs','MarkerSize',8,'MarkerFaceColor','b')
plot(headx,heady,'gs','MarkerSize',8,'MarkerFaceColor','g')
plot(cokx,coky, 'rs','MarkerSize',8,'MarkerFaceColor','r')
axis([0, c+1, -r-1, 0])
axis equal
axis off
title('snek')
end
