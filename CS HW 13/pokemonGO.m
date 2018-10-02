function pokemonGO(file1, file2, dex)
%
impoke = imread(file1);
img = imread(file2);
pokeball = imread('pokeball.png');
greatball = imread('greatball.png');
ultraball = imread('ultraball.png');
masterball = imread('masterball.png');
[r, c, ~] = size(impoke);
captured = [];
for ind = 1:5
    for i = 1:5
        square = impoke(1 + (ind-1) .* r / 5:ind .* r / 5, 1 + (i-1) .* c / 5:i .* c / 5, :);
        pokecheck = pokedex(square, dex);
        if strcmp(pokecheck,'No pokemon detected.') == 0
            pokemon = strtok(pokecheck, ',');
            dexind = find(strcmp({dex.pokemon}, pokemon)==1);
            captured = [captured, imresize(dex(dexind).image, [100, 100])];
            rarity = dex(dexind).rarity;
            if strcmp(rarity, 'common')
                ball = pokeball;
            elseif strcmp(rarity, 'uncommon')
                ball = greatball;
            elseif strcmp(rarity, 'rare')
                ball = ultraball;
            elseif strcmp(rarity, 'legendary')
                ball = masterball;
            end
            [sr, sc, ~] = size(square);
            ball = imresize(ball, [sr, sc]);
            mask = ball(:,:,1) == 0 & ball(:,:,2) == 255 & ball(:,:,3) == 0;
            ogsquare = img(1 + (ind-1) .* r / 5:ind .* r / 5, 1 + (i-1) .* c / 5:i .* c / 5, :);
            mask = cat(3, mask, mask, mask);
            ogsquare(~mask) = ball(~mask);
            img(1 + (ind-1) .* r / 5:ind .* r / 5, 1 + (i-1) .* c / 5:i .* c / 5, :) = ogsquare;
        end
    end
end
imwrite(captured, [file2(1:end-4), '_pokedex.png']);
imwrite(img, [file2(1:end-4), '_captured.png']);
end