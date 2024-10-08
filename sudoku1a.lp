% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
cell(1..4, 1..4).
n(1..4).
{Value(X,Y,N): n(N) } =1 :- cell(X, Y).
:- n(N), cell(X, Y1), cell(X, Y2), Y1 != Y2, value(X, Y1, N), value(X, Y2, N).
:- n(N), cell(X1, Y), cell(X2, Y), X1 != X2, value(X1, Y, N), value(X2, Y1, N).


#show sudoku/3.
