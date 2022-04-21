%环境初始化
function [W,Q,I,C] =MapInit(map)
W=G2D(map);                                   %得到环境地图的邻接矩阵
W(W==0)=Inf;                                  %邻接矩阵数值处理
W=OPW(map,W);                                 %优化邻接矩阵
W(W==Inf)=999;                                %邻接矩阵数值处理
C=[1 0 0;0 1 0;0 0 1; 0 0 0;1 0 1;0 1 1;1 0 0.5;0.5 0 1;0.5 0 0.5;0 1 0.5;0 0.5 0.5;1 0.5 0.2;]; %颜色矩阵
Q = 1;
I = 1;
end
