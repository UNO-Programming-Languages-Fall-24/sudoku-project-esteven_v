% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
cell(1..4, 1..4).
n(1..4).
1 {sudoku(X,Y,N): n(N) } 1 :- cell(X,Y).
:- sudoku(X1,Y1,N), sudoku(X2,Y2,N), X1 != X2, Y1 != Y2, (X1 - 1) / 2 == (X2 - 1) / 2, (Y1 - 1) / 2 == (Y2 - 1) / 2.
:- n(N), cell(X, Y1), cell(X, Y2), Y1 != Y2, sudoku(X, Y1, N), sudoku(X, Y2, N).
:- n(N), cell(X1, Y), cell(X2, Y), X1 != X2, sudoku(X1, Y, N), sudoku(X2, Y, N).

#show sudoku/3.
