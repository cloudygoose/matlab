clear;
n = 30;
n2 = floor(n / 3);
A = randn(n2, n) %a guassian matrix
x = randn(1, n)
for i=1:n
    if (abs(x(1,i)) <= 1.6)
        x(1,i) = 0;
    else
        x(1,i) = 1;
    end
end
figure;
bar(1:n, x)
%prepare for linear program
b = A * x';
f = zeros(2 * n, 1)
f = f + 1
Aeq = zeros(n2, 2 * n)
Aeq(1:n2, 1:n) = A;
Aeq(1:n2, n+1:2 * n) = -A;
Beq = b;
A1 = eye(2 * n) * (-1)
B1 = zeros(2 * n, 1)
xx = linprog(f, A1, B1, Aeq, Beq) 
ans = xx(1 : n) - xx(n + 1 : 2 * n)
figure;
bar(1:n, ans)