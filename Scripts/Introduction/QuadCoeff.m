% The quadratic coefficients

function QuadCoeff(x1, y1, x2, y2, x3, y3)

A = [x1^2 x1 1; x2^2 x2 1; x3^2 x3 1];
B = [y1 y2 y3].';
X = inv(A)*B;
a = X(1), b = X(2), c = X(3)

return