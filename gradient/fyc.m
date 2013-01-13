%This is a gradient descent for Figure 9.3
function fyc()
graddescbt('fd', 'dfd', [1 1], 0.1, 0.01, 0.1, 0.7)
%[X,Y] = meshgrid(-2:.2:2,-2:.2:3);
%Z = exp(X+3.*Y-0.1)+exp(X-3.*Y-0.1)+exp(-X-0.1);
%[C,h] = contour(X,Y,Z);
[X,Y] = meshgrid(-0.8:0.01:0.2,-0.2:0.01:0.2);
Z = exp(X+3.*Y-0.1)+exp(X-3.*Y-0.1)+exp(-X-0.1);
%Z = 1 / 2 * (X .* X + 5 .* Y .* Y);
%[C,h] = contour(X,Y,Z, 20);
%Z = X.*exp(-X.^2-Y.^2);
%[C,h] = contour(X,Y,Z, 50);
contour(X, Y, Z, 10)
%set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2)
%colormap cool
end

function soln = graddescbt(f, g, i, e, t, alpha, beta)
% gradient descent
% f -- function
% g -- gradient
% i -- initial guess
% e -- initial step size
% t -- tolerance
gi = feval(g,i) ;
while(norm(gi)>t)  % crude termination condition
  step = e .* alpha;
  while(feval(f,i - step .* feval(g,i)) > feval(f,i - step .* feval(g,i) .* beta))
      step = step .* beta;
  end
  i = i - step .* feval(g,i) ;
  i
 gi = feval(g,i) 
end
soln = i ;
end

function rtn= fd(c)
x=c(1) ;
y=c(2) ;
rtn = exp(x+3.*y-0.1)+exp(x-3.*y-0.1)+exp(-x-0.1) ;
end

function rtn= dfd(c)
x=c(1) ;
y=c(2) ;
rtn = [exp(x+3.*y-0.1)+exp(x-3.*y-0.1)-exp(-x-0.1) 3.*exp(x+3.*y-0.1)-3.*exp(x-3.*y-0.1)] ;
end
