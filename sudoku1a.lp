% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
x(1..4).
y(1..4).
n(1..4).
{sudoku(X,Y,N) : n(N)}=1 :- x(X) ,y(Y)
#show sudoku/3.
