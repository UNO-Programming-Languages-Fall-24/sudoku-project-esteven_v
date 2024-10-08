% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
X(1..4).
Y(1..4).
N(1..4).
1 {sudoku(X,Y,N) : n(N} } 1 :- x(X) ,y(Y).
:- sudoku(X,Y1,N), sudoku(X,Y2, N), Y1 != Y2. 
:- sudoku(X1,Y,N), sudoku(X2,Y, N), X1 != X2. 
:- sudoku(X1, Y1, N), suduko(X2, Y2, N), X1 != X2, Y1 != Y2, (X1-1)/2 == (X2-1), (Y1-1)/2 == (Y2-1)/2.
#show sudoku/3.
