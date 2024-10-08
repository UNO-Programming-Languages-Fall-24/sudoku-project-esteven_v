% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
% n(1..4).
cell(X, Y) :- X= 1..4, Y= 1..4.

{ sudoku (X,Y,N): N=1..4 } = 1 :- cell(X,Y).
N1=N2 :- sudoku(X1, Y1, N1), initial(X2, Y2, N2), X1=X2, Y1= Y2.

:- sudoku(X1,Y1,N1), sudoku(X2,Y2,N2), X1=X2, N1=N2, Y1 != Y2.
:- sudoku(X1,Y1,N1), sudoku(X2,Y2,N2), Y1=Y2, N1=N2, X1 != X2.

#show sudoku/3.
