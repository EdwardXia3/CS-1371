%{
    newMaze = makeMaze(rows, cols)

    makeMaze function creates a new random maze of the dimmensions passed
    in (rows by cols).  The maze has an 'O' and an 'X' marking the start
    and finish of the maze. The walls of the maze are denoted by '#' and
    the possible paths are a space character (' ', ascii 32). The maze has
    one valid solution from start to finish.

    Because 2 rows are 2 columns are dedicated to the 4 borders, there is
    no valid maze that has 2 or less rows or columns.
}%