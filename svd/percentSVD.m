%g is the matrix to decompose
%percent from 1 to 100
function outt = percentSVD(g, percent)
[U,S,V] = svd(g);
b = floor(percent / 100 * size(S, 1)) + 1;
e = size(S, 2);
if (size(S, 1) < e) e = size(S, 1); end
if (b < 1) b = 1; end
disp(size(S));
for i = b : 1 : e
    S(i, i) = 0;
    disp(i);
end
g0 = U * S * V';
outt = g0;

