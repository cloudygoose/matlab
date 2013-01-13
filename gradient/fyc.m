%fd是函数本身

graddescbt('fd', 'dfd', [1 1], 0.1, 0.01, 0.1, 0.7)

[X,Y] = meshgrid(10:.2:15,10:.2:15);
Z = exp(X+3.*Y-0.1)+exp(X-3.*Y-0.1)+exp(-X-0.1);
[C,h] = contour(X,Y,Z);
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2)
colormap cool