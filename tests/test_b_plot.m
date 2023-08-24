clear all;
clc;

load('experi2.mat');

%%
% 创建 figure
figure1 = figure;

% 宏定义字体大小
fontsize = 18;

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
grid on;

% 使用 scatter 原始数据
dot_pbft1 = scatter(1:100,PBFT1,35*ones(100,1),'co');
hold on
dot_iotj1 = scatter(1:100,IOTJ1,35*ones(100,1),'c+');
hold on

% Set up fittype and options.
% ft = fittype( 'power2' );
% opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
% opts.Display = 'Off';
% opts.StartPoint = [49.6978434644473 0.013496311372999 -0.000392675893270066];

% Fit model to data.
fitPBFT1 = fit([1:length(find(PBFT1<60))]', PBFT1(find(PBFT1<60)), 'power2');
fitIOTJ1 = fit([1:length(find(IOTJ1<60))]', IOTJ1(find(IOTJ1<60)), 'power2');

% 使用 plot 的矩阵输入创建多行
line_pbft1 = plot(1:100,fitPBFT1(1:100));
 set(line_pbft1,'MarkerSize',10,'Marker','o','LineWidth',4,'LineStyle','-.',...
     'MarkerIndices',[1:10:100],'Color',[0 0 1]);
hold on
line_iotj1 = plot(1:100,fitIOTJ1(1:100));
 set(line_iotj1,'MarkerSize',10,'Marker','+','LineWidth',4,'LineStyle',':',...
     'MarkerIndices',[1:10:100],'Color',[1 0 0]);
hold on

ylim(axes1,[30 90]);
xlim(axes1,[1 90]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[1 10 20 30 40 50 60 70 80 90],'Xticklabel',{'1','2','3','4','5','6','7','8','9','10'},...
    'YTick',[30 40 50 60 70 80 90],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('# of byzantine nodes','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('The consensus time (ms)','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(a) N=10','FontSize',fontsize,'FontName','Times New Roman');

box(axes1,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c11 = [dot_pbft1 dot_iotj1];
c12 = [line_pbft1 line_iotj1];

legend11 = legend(c11,' baseline ',' E-Chain ');
set(legend11,'FontName','Times New Roman','FontSize',18);

ah1=axes('position',get(gca,'position'),'visible','off');

legend12 = legend(ah1,c12,' avg-baseline ',' avg-E-Chain ');
set(legend12,'FontName','Times New Roman','FontSize',18);

%%
% 创建 figure
figure2 = figure;

% 创建 axes
axes2 = axes('Parent',figure2);
hold(axes2,'on');
grid on;

% 使用 scatter 原始数据
dot_pbft2 = scatter(1:200,PBFT2,35*ones(200,1),'co');
hold on
dot_iotj2 = scatter(1:200,IOTJ2,35*ones(200,1),'c+');
hold on

% Fit model to data.
fitPBFT2 = fit([1:length(find(PBFT2<70))]', PBFT2(find(PBFT2<70)), 'power2');
fitIOTJ2 = fit([1:length(find(IOTJ2<70))]', IOTJ2(find(IOTJ2<70)), 'power2');

% 使用 plot 的矩阵输入创建多行
line_pbft2 = plot(1:200,fitPBFT2(1:200));
 set(line_pbft2,'MarkerSize',10,'Marker','o','LineWidth',4,'LineStyle','-.',...
     'MarkerIndices',[1:10:200],'Color',[0 0 1]);
hold on
line_iotj2 = plot(1:200,fitIOTJ2(1:200));
 set(line_iotj2,'MarkerSize',12,'Marker','+','LineWidth',4,'LineStyle',':',...
     'MarkerIndices',[1:10:200],'Color',[1 0 0]);
hold on

ylim(axes2,[30 100]);
xlim(axes2,[1 190]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[10 30 50 70 90 110 130 150 170 190],'Xticklabel',{'2','4','6','8','10','12','14','16','18','20'},...
    'YTick',[30 40 50 60 70 80 90 100],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('# of byzantine nodes','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('The consensus time (ms)','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(b) N=20','FontSize',fontsize,'FontName','Times New Roman');

box(axes2,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c21 = [dot_pbft2 dot_iotj2];
c22 = [line_pbft2 line_iotj2];

legend21 = legend(c21,' baseline ',' E-Chain ');
set(legend21,'FontName','Times New Roman','FontSize',18);

ah2=axes('position',get(gca,'position'),'visible','off');

legend22 = legend(ah2,c22,' avg-baseline ',' avg-E-Chain ');
set(legend22,'FontName','Times New Roman','FontSize',18);

%%
% 创建 figure
figure3 = figure;

% 创建 axes
axes3 = axes('Parent',figure3);
hold(axes3,'on');
grid on;

% 使用 scatter 原始数据
dot_pbft3 = scatter(1:300,PBFT3,35*ones(300,1),'co');
hold on
dot_iotj3 = scatter(1:300,IOTJ3,35*ones(300,1),'c+');
hold on

% Fit model to data.
fitPBFT3 = fit([1:length(find(PBFT3<80))]', PBFT3(find(PBFT3<80)), 'power2');
%fitIOTJ3 = fit([1:length(find(IOTJ3<80))]', IOTJ3(find(IOTJ3<80)), 'power2');

% 使用 plot 的矩阵输入创建多行
line_pbft3 = plot(1:300,fitPBFT3(1:300));
 set(line_pbft3,'MarkerSize',10,'Marker','o','LineWidth',4,'LineStyle','-.',...
     'MarkerIndices',[1:10:300],'Color',[0 0 1]);
hold on
line_iotj3 = plot(1:300,71.18512./(1+exp(-([1:300]/50)))+4);
 set(line_iotj3,'MarkerSize',12,'Marker','+','LineWidth',4,'LineStyle',':',...
     'MarkerIndices',[1:10:300],'Color',[1 0 0]);
hold on

ylim(axes3,[30 110]);
xlim(axes3,[1 290]);
% 
%同时改变x y轴显示的字体大小；
set(gca,'FontSize',fontsize,'XTick',[20 50 80 110 140 170 200 230 260 290],'Xticklabel',{'3','6','9','12','15','18','21','24','27','30'},...
    'YTick',[30 40 50 60 70 80 90 100 110],'FontName','Times New Roman');    

% 创建 xlabel
xlabel('# of byzantine nodes','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

% 创建 ylabel
ylabel('The consensus time (ms)','FontWeight','bold','FontSize',fontsize,'FontName','Times New Roman');

title('(c) N=30','FontSize',fontsize,'FontName','Times New Roman');

box(axes3,'on');
% 设置其余坐标轴属性
% set(axes1,'FontName','Times New Roman');

c31 = [dot_pbft3 dot_iotj3];
c32 = [line_pbft3 line_iotj3];

legend31 = legend(c31,' baseline ',' E-Chain ');
set(legend31,'FontName','Times New Roman','FontSize',18);

ah3=axes('position',get(gca,'position'),'visible','off');

legend32 = legend(ah3,c32,' avg-baseline ',' avg-E-Chain ');
set(legend32,'FontName','Times New Roman','FontSize',18);
