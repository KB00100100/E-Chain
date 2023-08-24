clear all;
clc;

load('experi4.mat');

%%
% 创建 figure
figure1 = figure;

% 宏定义字体大小
fontsize = 18;

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
grid on;

% 使用 plot 的矩阵输入创建多行
line_pbft11 = plot(1:100,zeros(100,1));
 set(line_pbft11,'MarkerSize',10,'Marker','o','LineWidth',2,'LineStyle','-.',...
     'MarkerIndices',[1:10:100],'Color',[0 0 1]);
hold on
line_iotj11 = plot(1:100,N10(:,1));
 set(line_iotj11,'MarkerSize',10,'Marker','+','LineWidth',2,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on
line_iotj12 = plot(1:100,N10(:,2));
 set(line_iotj12,'MarkerSize',10,'Marker','v','LineWidth',2,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on
% line_iotj13 = plot(1:100,N10(:,3));
%  set(line_iotj13,'MarkerSize',10,'Marker','*','LineWidth',2,'LineStyle',':',...
%      'MarkerIndices',[1:10:100],'Color',[1 0 0]);
% hold on

ylim(axes1,[0 12]);
xlim(axes1,[1 100]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[1 10 20 30 40 50 60 70 80 90 100],...
    'YTick',[0 2 4 6 8 10 12],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('Time (s)','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('The size of MNT','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(a) N=10','FontSize',fontsize,'FontName','Times New Roman');

box(axes1,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c11 = [line_pbft11 line_iotj11 line_iotj12];

legend11 = legend(c11,' baseline ',' E-Chain,f=2 ', ' E-Chain,f=4 ');
set(legend11,'FontName','Times New Roman','Position',[0.604166666666667 0.598412698412699 0.27797619047619 0.291666666666668],'FontSize',18);

% 创建 ellipse
annotation(figure1,'ellipse',...
    [0.207547619047619 0.458730158730159 0.0335238095238096 0.0301587301587296],...
    'LineWidth',4);

% 创建 textbox
annotation(figure1,'textbox',...
    [0.184333333333333 0.565079365079383 0.332333333333332 0.133333333333334],...
    'String',{'the false positive','       happens'},...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 ellipse
annotation(figure1,'ellipse',...
    [0.143261904761904 0.382539682539684 0.0335238095238095 0.0301587301587296],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure1,'ellipse',...
    [0.543261904761904 0.330158730158732 0.0335238095238095 0.0301587301587296],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure1,'ellipse',...
    [0.778976190476189 0.325396825396828 0.0335238095238095 0.0301587301587296],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure1,'ellipse',...
    [0.753976190476188 0.392063492063497 0.0335238095238095 0.0301587301587296],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure1,'ellipse',...
    [0.840285714285711 0.458730158730161 0.0335238095238097 0.0301587301587296],...
    'LineWidth',4);

% 创建 arrow
annotation(figure1,'arrow',[0.239285714285714 0.273809523809524],...
    [0.500587301587302 0.547619047619048],'LineWidth',4);

%%
% 创建 figure
figure2 = figure;

% 宏定义字体大小
fontsize = 18;

% 创建 axes
axes2 = axes('Parent',figure2);
hold(axes2,'on');
grid on;

% 使用 plot 的矩阵输入创建多行
line_pbft21 = plot(1:100,zeros(100,1));
 set(line_pbft21,'MarkerSize',10,'Marker','o','LineWidth',2,'LineStyle','-.',...
     'MarkerIndices',[1:10:100],'Color',[0 0 1]);
hold on
line_iotj21 = plot(1:100,N20(:,1));
 set(line_iotj21,'MarkerSize',10,'Marker','+','LineWidth',2,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on
line_iotj22 = plot(1:100,N20(:,2));
 set(line_iotj22,'MarkerSize',10,'Marker','v','LineWidth',2,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on

ylim(axes2,[0 12]);
xlim(axes2,[1 100]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[1 10 20 30 40 50 60 70 80 90 100],...
    'YTick',[0 2 4 6 8 10 12],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('Time (s)','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('The size of MNT','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(b) N=20','FontSize',fontsize,'FontName','Times New Roman');

box(axes2,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c21 = [line_pbft21 line_iotj21 line_iotj22];

legend21 = legend(c21,' baseline ',' E-Chain,f=2 ',' E-Chain,f=4 ');
set(legend21,'FontName','Times New Roman','Position',[0.604166666666667 0.598412698412699 0.27797619047619 0.291666666666668],'FontSize',18);

% 创建 textbox
annotation(figure2,'textbox',...
    [0.175999999999999 0.638095238095251 0.332333333333333 0.133333333333333],...
    'String',{'the false positive','       happens'},...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.215880952380952 0.455555555555556 0.0323333333333334 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.255166666666667 0.455555555555556 0.0323333333333334 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.35695238095238 0.519841269841271 0.0323333333333334 0.026984126984128],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.480761904761904 0.453968253968256 0.0323333333333334 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.561119047619047 0.587301587301591 0.0323333333333333 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.79445238095238 0.580952380952383 0.0323333333333333 0.026984126984128],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.83492857142857 0.580952380952384 0.0323333333333333 0.0269841269841281],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.849809523809522 0.455555555555558 0.0323333333333334 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.15397619047619 0.331746031746033 0.0323333333333333 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.451595238095238 0.330158730158732 0.0323333333333334 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.70040476190476 0.326984126984128 0.0323333333333333 0.0269841269841282],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure2,'ellipse',...
    [0.842666666666665 0.325396825396827 0.0323333333333333 0.0269841269841282],...
    'LineWidth',4);

% 创建 arrow
annotation(figure2,'arrow',[0.360119047619048 0.343452380952381],...
    [0.569634920634921 0.61984126984127],'LineWidth',4);

%%
% 创建 figure
figure3 = figure;

% 宏定义字体大小
fontsize = 18;

% 创建 axes
axes3 = axes('Parent',figure3);
hold(axes3,'on');
grid on;

% 使用 plot 的矩阵输入创建多行
line_pbft31 = plot(1:100,zeros(100,1));
 set(line_pbft31,'MarkerSize',10,'Marker','o','LineWidth',2,'LineStyle','-.',...
     'MarkerIndices',[1:10:100],'Color',[0 0 1]);
hold on
line_iotj31 = plot(1:100,N30(:,1));
 set(line_iotj31,'MarkerSize',10,'Marker','+','LineWidth',2,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on
line_iotj32 = plot(1:100,N30(:,2));
 set(line_iotj32,'MarkerSize',10,'Marker','v','LineWidth',2,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on

ylim(axes3,[0 12]);
xlim(axes3,[1 100]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[1 10 20 30 40 50 60 70 80 90 100],...
    'YTick',[0 2 4 6 8 10 12],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('Time (s)','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('The size of MNT','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(c) N=30','FontSize',fontsize,'FontName','Times New Roman');

box(axes3,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c31 = [line_pbft31 line_iotj31 line_iotj32];

legend31 = legend(c31,' baseline ',' E-Chain,f=2 ',' E-Chain,f=4 ');
set(legend31,'FontName','Times New Roman','Position',[0.604166666666667 0.598412698412699 0.27797619047619 0.291666666666668],'FontSize',18);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.230952380952381 0.455555555555556 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.270238095238095 0.457936507936512 0.0333333333333334 0.0261904761904768],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.300595238095238 0.519841269841271 0.0333333333333334 0.0261904761904768],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.332142857142857 0.650793650793653 0.0333333333333334 0.0261904761904767],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.127380952380952 0.323809523809526 0.0333333333333333 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.177380952380952 0.333333333333335 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.245238095238095 0.331746031746033 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.426785714285713 0.329365079365081 0.0333333333333335 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.599404761904761 0.460317460317462 0.0333333333333333 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.65238095238095 0.333333333333335 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.713095238095237 0.460317460317464 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.778571428571427 0.461904761904764 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 ellipse
annotation(figure3,'ellipse',...
    [0.869047619047617 0.461904761904763 0.0333333333333334 0.0261904761904766],...
    'LineWidth',4);

% 创建 arrow
annotation(figure3,'arrow',[0.344642857142857 0.338690476190476],...
    [0.695825396825397 0.755555555555556],'LineWidth',4);

% 创建 textbox
annotation(figure3,'textbox',...
    [0.187309523809523 0.774603174603188 0.332333333333332 0.133333333333333],...
    'String',{'the false positive','       happens'},...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');

