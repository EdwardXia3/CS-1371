function puzzle = puzzleBox(arr, rows, cols)
%The function shift the rows and columns of the array based on the last
%number of the rows and cols vector.

[r, c] = size(arr);
arr = double(arr);
rvec = 1:r;
cvec = 1:c;
rowpos = mod(cvec - rows(end), c);
rowpos(rowpos == 0) = c;
arr(rows(1:end-1), cvec) = arr(rows(1:end-1), rowpos);
colpos = mod(rvec - cols(end), r);
colpos(colpos == 0) = r;
b = sort(cols(1:end-1));
arr(rvec, b) = arr(colpos, b);
puzzle = char(arr);
end