% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
sudoku(1..4,1..4, 1..4).
1 {val(X,Y,N) : N = 1..4 } 1 :- sudoku(X,Y,V).
:- val(X,Y,N), val(X, Y1, N), Y != Y1.
:- val(X,Y,N), val(X1, Y, N), X != X1.
:- val(X1, Y1, N), val(X2, Y2, N), (X1 - X2)^2 + (Y1 - Y2)^2 - 2.

#show sudoku/3.
