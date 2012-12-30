clear,clc
clf

cm = [0 1 0 0;1 0 1 1;1 0 0 1;0 0 0 0];        %邻接矩阵
bg = biograph(cm,'','NodeAutoSize','off','ShowTextInNodes','none','ArrowSize',6);

pos = [0,100;0,0;100,0;100,100];               %节点位置坐标，pos的每一行对应cm里每一行的点

dolayout(bg);
set(bg.nodes,'Shape','circle','Color',[0 0 1],...
    'LineColor',[0 0 0],'Linewidth',2,...
    {'Position'},mat2cell(pos,[1,1,1,1],2));
set(bg.edges,'LineColor',[0 0 0])
dolayout(bg,'Pathsonly',1)

view(bg)