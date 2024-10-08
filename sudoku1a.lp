% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
clingo sudoku1a.lp instances/4x4/ex00.lp 0
size(4).
cell(Row,Col,Val) :- 
  size(N), Row = 1..N, Col = 1..N, Value 1..N.
1 {cell(Row,Col,Val) : Val = 1..4 } 1 :- Row = 1..4, Col = 1..4.

:- Row = 1..4, Val = 1..4,
  2 { cell(Row, Col, Value) : Col = 1..4}.

:- Col = 1..4, Val = 1..4,
  2 { cell(Row, Col, Value) : Row = 1..4}.

#show sudoku/3.
