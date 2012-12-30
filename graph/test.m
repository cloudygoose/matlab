cm = [0 1 1 0 0;1 0 0 1 1;1 0 0 0 0;0 0 0 0 1;1 0 1 0 0];
ids = {'1','2','3','4','5'};
bg2 = biograph(cm,ids)
set(bg2.nodes, 'Shape', 'circle');
set(bg2.edges, 'LineColor', [0, 0, 0]);
set(bg2, 'ArrowSize', 4);
view(bg2)