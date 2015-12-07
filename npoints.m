function res = npoints(mat, no_rows, type)
% npoints(mat, no, type)
%
% Normalizes the matrix to have no_rows no of rows.
% The routine used the internal matplot function interp1.
% See help for furhter details with respect to interpolation
% types.
%
% INPUT:
% mat = matrix e R^mxn, signals are assumed columnwise
% no = number to be normalized to 
% type = of interpolation routine, default is spline.
% OUTPUT:
% SIDEEFFECTS:
% None.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if nargin==2
    type = 'spline';
end

[m,n] = size(mat);
transposed = false;

if m == 1
    mat = mat';
    transposed = true;
    m = n;
    n = 1;
end

x = 0:m-1;   
xx = linspace(0,m-1,no_rows);
res = zeros(no_rows,n);
for i=1:n
    res(:,i) = interp1(x,mat(:,i),xx,type)';
end

if transposed
    res = res';
end
