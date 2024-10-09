% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n = 9.
%cell(X, Y) :- X= 1..9, Y= 1..9.
subgrid (X, Y, G) :- X=1..3, Y=1..3, G=1.
subgrid (X, Y, G) :- X=1..3, Y=4..6, G=2.
subgrid (X, Y, G) :- X=1..3, Y=7..9, G=3.
subgrid (X, Y, G) :- X=4..6, Y=1..3, G=4.
subgrid (X, Y, G) :- X=4..6, Y=4..6, G=5.
subgrid (X, Y, G) :- X=4..6, Y=7..9, G=6.
subgrid (X, Y, G) :- X=7..9, Y=1..3, G=7.
subgrid (X, Y, G) :- X=7..9, Y=4..6, G=8.
subgrid (X, Y, G) :- X=7..9, Y=7..9, G=9.

{ sudoku (X,Y,N): N=1..n } = 1 :- subgrid(X,Y, G).
N1=N2 :- sudoku(X1, Y1, N1), initial(X2, Y2, N2), X1=X2, Y1= Y2.


:- sudoku(X1,Y1,N1), sudoku(X2,Y2,N2), X1=X2, N1=N2, Y1 != Y2.
:- sudoku(X1,Y1,N1), sudoku(X2,Y2,N2), Y1=Y2, N1=N2, X1 != X2.

#show subgrid/3.
#show sudoku/3.
