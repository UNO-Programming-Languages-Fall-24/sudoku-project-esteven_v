% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
x(1..4).
y(1..4).
n(1..4).
{sudoku(X,Y,N): n(N) } =1 :- x(X), y(Y).
subgrid(X,Y,A,B) :- x(X), x(A), y(Y), y(B), (X - 1) / 2 == (A - 1) / 2, (Y - 1) / 2 == (B - 1) / 2.
:- sudoku(X,Y,N), sudoku(A,Y,N), X!=A.
:- sudoku(X,Y,N), sudoku(X,B,N), Y!=B.
:- sudoku(X,Y,V), sudoku(A,B,V), subgrid(X,Y,A,B), X != A, Y != B.

#show sudoku/3.
