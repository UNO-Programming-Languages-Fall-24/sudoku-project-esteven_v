% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
n(1..4).
1 {cell(X,Y,N): n(N) } 1 :- n(X), n(Y).
:- n(N), n(Y), 2 {cell(X,Y,N): n(Y) }
:- n(N), n(X), 2 {cell(X,Y,N): n(X) }


#show sudoku/3.
