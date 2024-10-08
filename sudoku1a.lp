% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
x(1..4).
y(1..4).
n(1..4).

1 {sudoku(X,Y,N): n(N) } 1 :- x(X) ,y(Y).
:- x(X), n(N), 2 { sudoku(X, Y, N) : y(Y) }.
:- y(Y), n(N), 2 { sudoku(X, Y, N) : y(Y) }.
:- n(N), 2{ sudoku(X, Y, N) : x(X1..X2), y(Y1..Y2), X1 = X2, Y1 = Y2}.

#show sudoku/3.
