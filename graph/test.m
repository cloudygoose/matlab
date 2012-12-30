clear,clc
clf

cm = [0 1 0 0;1 0 1 1;1 0 0 1;0 0 0 0];        %�ڽӾ���
bg = biograph(cm,'','NodeAutoSize','off','ShowTextInNodes','none','ArrowSize',6);

pos = [0,100;0,0;100,0;100,100];               %�ڵ�λ�����꣬pos��ÿһ�ж�Ӧcm��ÿһ�еĵ�

dolayout(bg);
set(bg.nodes,'Shape','circle','Color',[0 0 1],...
    'LineColor',[0 0 0],'Linewidth',2,...
    {'Position'},mat2cell(pos,[1,1,1,1],2));
set(bg.edges,'LineColor',[0 0 0])
dolayout(bg,'Pathsonly',1)

view(bg)