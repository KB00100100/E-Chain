clear all;
clc;

%%
% 创建 figure
figure1 = figure;

% 宏定义字体大小
fontsize = 18;

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
%grid on;

% 数据
data_pbft = 10*ones(1,10);
data_iotj = [3 5 7 9 10 10 10 10 10 10];

% 使用 plot 的矩阵输入创建多行
line_pbft = stairs(1:10,data_pbft);
set(line_pbft,'MarkerSize',8,'Marker','o','LineWidth',3,'LineStyle',':',...
    'Color',[1 0 0]);
hold on
line_iotj = stairs(1:10,data_iotj);
set(line_iotj,'LineWidth',3,'LineStyle','-.','Color',[0 0 1]);
hold on

% 设置填充色
save = fill([1 2 2 3 3 4 4 5 5 1], [3 3 5 5 7 7 9 9 10 10], 'g' );
set(save,'edgealpha',0,'facealpha',0.3);
% back1 = fill([5 5 10 10], [0 10 10 0], 'c');
% set(back1,'edgealpha',0,'facealpha',0.3);
% back2 = fill([5 5 10 10], [10 12 12 10], 'c');
% set(back2,'edgealpha',0,'facealpha',0.3);
% % back3 = fill([5 5 10 10], [0 10 10 0], 'c');
% % set(back3,'edgealpha',0,'facealpha',0.3);
% back4 = fill([1 1 5 5], [10 12 12 10], 'y');
% set(back4,'edgealpha',0,'facealpha',0.3);


ylim(axes1,[0 12]);
xlim(axes1,[1 10]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[1 2 3 4 5 6 7 8 9 10],'YTick',[0 2 4 6 8 10 12],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('# of byzantine nodes','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('# of voting tickets','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(a) N=10','FontSize',fontsize,'FontName','Times New Roman');

% 创建 title
%title('工作日','FontSize',fontsize,'FontName','STFangSong')

% 取消以下行的注释以保留坐标轴的 X 范围
%xlim(axes1,[0 20]);

box(axes1,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c1 = [line_pbft line_iotj];

legend1 = legend(c1,' baseline ',' E-Chain ');
set(legend1,'FontName','Times New Roman','FontSize',18);

% 创建 rectangle
annotation(figure1,'rectangle',...
    [0.4635 0.141269841269843 0.0239999999999999 0.0317460317460322],...
    'LineWidth',3);

% 创建 doublearrow
annotation(figure1,'doublearrow',[0.130952380952381 0.473809523809524],...
    [0.192650793650794 0.193650793650794],'LineStyle','-.');

% 创建 doublearrow
annotation(figure1,'doublearrow',[0.480357142857143 0.904166666666666],...
    [0.193650793650794 0.193650793650794],'LineStyle','-.');

% 创建 textbox
annotation(figure1,'textbox',...
    [0.14147619047619 0.217460317460318 0.349 0.0698412698412706],...
    'Color',[1 0 0],...
    'String','‘right’ consensuses',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 line
annotation(figure1,'line',[0.475 0.475],...
    [0.175190476190476 0.233333333333333],'LineWidth',3);

% 创建 textbox
annotation(figure1,'textbox',...
    [0.525999999999999 0.220634920634922 0.349 0.0698412698412708],...
    'Color',[1 0 0],...
    'String','‘wrong’ consensuses',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 textbox
annotation(figure1,'textbox',...
    [0.148619047619045 0.590476190476191 0.185904761904764 0.146031746031756],...
    'Color',[1 0 0],...
    'String',{' saved',' tickets'},...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

%%
% 创建 figure
figure2 = figure;

% 创建 axes
axes2 = axes('Parent',figure2);
hold(axes2,'on');
%grid on;

% 数据
data_pbft2 = 20*ones(1,20);
data_iotj2 = [3 5 7 9 11 13 15 17 19 20 20 20 20 20 20 20 20 20 20 20];

% 使用 plot 的矩阵输入创建多行
line_pbft2 = stairs(1:20,data_pbft2);
set(line_pbft2,'MarkerSize',8,'Marker','o','LineWidth',3,'LineStyle',':',...
    'Color',[1 0 0]);
hold on
line_iotj2 = stairs(1:20,data_iotj2);
set(line_iotj2,'LineWidth',3,'LineStyle','-.','Color',[0 0 1]);
hold on

% 设置填充色
save2 = fill([1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 1], [3 3 5 5 7 7 9 9 11 11 13 13 15 15 17 17 19 19 20 20], 'g' );
set(save2,'edgealpha',0,'facealpha',0.3);
% back1 = fill([5 5 10 10], [0 10 10 0], 'c');
% set(back1,'edgealpha',0,'facealpha',0.3);
% back2 = fill([5 5 10 10], [10 12 12 10], 'c');
% set(back2,'edgealpha',0,'facealpha',0.3);
% % back3 = fill([5 5 10 10], [0 10 10 0], 'c');
% % set(back3,'edgealpha',0,'facealpha',0.3);
% back4 = fill([1 1 5 5], [10 12 12 10], 'y');
% set(back4,'edgealpha',0,'facealpha',0.3);


ylim(axes2,[0 22]);
xlim(axes2,[1 20]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[2 4 6 8 10 12 14 16 18 20],'YTick',[0 4 8 12 16 20],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('# of byzantine nodes','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('# of voting tickets','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(b) N=20','FontSize',fontsize,'FontName','Times New Roman');

% 创建 title
%title('工作日','FontSize',fontsize,'FontName','STFangSong')

% 取消以下行的注释以保留坐标轴的 X 范围
%xlim(axes1,[0 20]);

box(axes2,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c2 = [line_pbft2 line_iotj2];

legend2 = legend(c2,' baseline ',' E-Chain ');
set(legend2,'FontName','Times New Roman','FontSize',18);

% 创建 rectangle
annotation(figure2,'rectangle',...
    [0.484928571428571 0.141269841269843 0.0239999999999999 0.0317460317460322],...
    'LineWidth',3);

% 创建 line
annotation(figure2,'line',[0.496428571428571 0.496428571428571],...
    [0.175190476190476 0.233333333333333],'LineWidth',3);

% 创建 doublearrow
annotation(figure2,'doublearrow',[0.132738095238095 0.493452380952381],...
    [0.192650793650794 0.192063492063492],'LineStyle','-.');

% 创建 doublearrow
annotation(figure2,'doublearrow',[0.501785714285714 0.902380952380952],...
    [0.192857142857143 0.196031746031746],'LineStyle','-.');

% 创建 textbox
annotation(figure2,'textbox',...
    [0.160523809523809 0.203174603174604 0.349 0.0698412698412706],...
    'Color',[1 0 0],...
    'String','‘right’ consensuses',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 textbox
annotation(figure2,'textbox',...
    [0.518857142857142 0.203174603174605 0.349 0.0698412698412708],...
    'Color',[1 0 0],...
    'String','‘wrong’ consensuses',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 textbox
annotation(figure2,'textbox',...
    [0.148619047619045 0.590476190476191 0.185904761904764 0.146031746031756],...
    'Color',[1 0 0],...
    'String',{' saved',' tickets'},...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

%%
% 创建 figure
figure3 = figure;

% 创建 axes
axes3 = axes('Parent',figure3);
hold(axes3,'on');
%grid on;

% 数据
data_pbft3 = 30*ones(1,30);
data_iotj3 = [3 5 7 9 11 13 15 17 19 21 23 25 27 29 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30];

% 使用 plot 的矩阵输入创建多行
line_pbft3 = stairs(1:30,data_pbft3);
set(line_pbft3,'MarkerSize',8,'Marker','o','LineWidth',3,'LineStyle',':',...
    'Color',[1 0 0]);
hold on
line_iotj3 = stairs(1:30,data_iotj3);
set(line_iotj3,'LineWidth',3,'LineStyle','-.','Color',[0 0 1]);
hold on

% 设置填充色
save3 = fill([1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 11 11 12 12 13 13 14 14 15 15 1], [3 3 5 5 7 7 9 9 11 11 13 13 15 15 17 17 19 19 21 21 23 23 25 25 27 27 29 29 30 30], 'g' );
set(save3,'edgealpha',0,'facealpha',0.3);
% back1 = fill([5 5 10 10], [0 10 10 0], 'c');
% set(back1,'edgealpha',0,'facealpha',0.3);
% back2 = fill([5 5 10 10], [10 12 12 10], 'c');
% set(back2,'edgealpha',0,'facealpha',0.3);
% % back3 = fill([5 5 10 10], [0 10 10 0], 'c');
% % set(back3,'edgealpha',0,'facealpha',0.3);
% back4 = fill([1 1 5 5], [10 12 12 10], 'y');
% set(back4,'edgealpha',0,'facealpha',0.3);


ylim(axes3,[0 32]);
xlim(axes3,[1 30]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[3 6 9 12 15 18 21 24 27 30],'YTick',[0 5 10 15 20 25 30],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('# of byzantine nodes','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('# of voting tickets','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(c) N=30','FontSize',fontsize,'FontName','Times New Roman');

% 创建 title
%title('工作日','FontSize',fontsize,'FontName','STFangSong')

% 取消以下行的注释以保留坐标轴的 X 范围
%xlim(axes1,[0 20]);

box(axes3,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c3 = [line_pbft3 line_iotj3];

legend3 = legend(c3,' baseline ',' E-Chain ');
set(legend3,'FontName','Times New Roman','FontSize',18);

% 创建 textbox
annotation(figure3,'textbox',...
    [0.518857142857142 0.203174603174605 0.349 0.0698412698412708],...
    'Color',[1 0 0],...
    'String','‘wrong’ consensuses',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 textbox
annotation(figure3,'textbox',...
    [0.148619047619045 0.590476190476191 0.185904761904764 0.146031746031756],...
    'Color',[1 0 0],...
    'String',{' saved',' tickets'},...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 rectangle
annotation(figure3,'rectangle',...
    [0.492071428571428 0.141269841269843 0.0239999999999999 0.0317460317460322],...
    'LineWidth',3);

% 创建 textbox
annotation(figure3,'textbox',...
    [0.160523809523809 0.203174603174604 0.349 0.0698412698412706],...
    'Color',[1 0 0],...
    'String','‘right’ consensuses',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 line
annotation(figure3,'line',[0.503571428571428 0.503571428571428],...
    [0.175190476190476 0.233333333333333],'LineWidth',3);

% 创建 doublearrow
annotation(figure3,'doublearrow',[0.132738095238095 0.5],...
    [0.192650793650794 0.193650793650794],'LineStyle','-.');

% 创建 doublearrow
annotation(figure3,'doublearrow',[0.507142857142857 0.902380952380952],...
    [0.193650793650794 0.196031746031746],'LineStyle','-.');
