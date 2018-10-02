clc
clear
[a, b] = clownTown_soln(aliBabaAndTheFortyThieves_soln('soExtra.xlsx'));
[x, y] = theNastyNasties(onceUponAPage_soln(a, b), 400);
theGreatPortraitExhibition(x, y, 'theGPE_hidden.png');
imshow('theGPE_decoded.png');