% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
x(1..4).
y(1..4).
n(1..4).

{sudoku(X,Y,N): n(N)} =1 :- x(X) ,y(Y).
:- sudoku(X,Y,N), sudoku(X, Y1, N), Y != Y1.
:- sudoku(X,Y,N), sudoku(X1, Y, N), X != X1.
:- suduku(X1, Y1, N), sudoku(X2, Y2, N), (X1 - X2)^2 + (Y1 - Y2)^2 - 2.

#show sudoku/3.
