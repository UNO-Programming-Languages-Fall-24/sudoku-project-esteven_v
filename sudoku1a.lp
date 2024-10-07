% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
initial(1,1,4). initial(1,2,2). initial(1,3,3). initial(1,4,1).
initial(1,1,1). initial(1,2,3). initial(1,3,2). initial(1,4,4).
initial(1,1,2). initial(1,2,1). initial(1,3,1). initial(1,4,3).
initial(1,1,3). initial(1,2,4). initial(1,3,4). initial(1,4,2).
#show sudoku/3.
