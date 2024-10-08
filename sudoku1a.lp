% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
num(1..4).
sudoku(1..4, 1..4).
1 {sudoku(X,Y,N) : num(N} } 1 :- sudoku(X,Y).
:- num(N), sudoku(X,Y1), sudoku(X,Y2), Y1 != Y2, fill(X, Y1, N), fill(X, Y2, N). 
:- num(N), sudoku(X1,Y), sudoku(X2,Y), X1 != X2, fill(X1, Y, N), fill(X2, Y, N). 
#show sudoku/3.
