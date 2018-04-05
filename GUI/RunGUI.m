% function RunGUI()
% 这是一个光学空间滤波实验的演示程序
% 作者：张文军，1600012756@pku.edu.cn，北京大学信息科学技术学院电子学系
% 
% GUI界面中，左侧有几个按钮，分别是：
% 从全通创建滤波器、从全阻创建滤波器、从矩阵导入滤波器
% 前两个相当于在频谱面什么都不加以及把频谱面全部遮挡
% 如果想从矩阵导入滤波器，请在程序开始运行后，在命令行窗口定义矩阵，
% 然后在该按钮的右侧输入这个矩阵的名字，再点击该按钮
%
% 在创建好滤波器之后，可以对其进行修改，
% 只需设置好添加区域的类型，再单击“添加区域”即可
% 例如增加一块圆形的可透过区域
% 对于圆形，会要求选择两个点，第一次点击是圆心，第二次点击是圆上任意一点。
% 对于方形，要求提前设置好它相对于水平顺时针旋转的角度
% 然后同样要求选择两个点，第一次点击是方形未经旋转时的左上角，第二次是右下角
% 
% 显示/关闭 原图片/原频谱时，请务必点击GUI界面的按钮，而不是弹出窗口右上角的“×”
% 
% 单击退出可以关闭所有界面
% 
% GUI界面右侧是上下两张图片
% 上面的是经过滤波之后的频谱面，品红色代表已经被遮挡的部分，
% 正常颜色代表可以透过的部分
% 下面的是滤波之后生成的图像
% 感谢使用！
clc; close all;
clear;
global h_fig 
global Button_addarea Button_addpassfilter Button_addnopassfilter Button_importfilter Button_exit Button_showIm Button_showImF
global Type_circle Type_square Type_addpass Type_addnotpass 
global Text_theta Text_matname
global appearance % 1 for circle, 2 for square
global pass % 1 for pass, 0 for not pass
global theta
global needshowIm needshowImF scrsz
global Imsize ImF ImFFilt ImOut Im Filt
global f2 f3 MAX MIN 
global filename
filename=input('请输入待处理图片的文件路径：\n','s');
filename=['.\INFILES\' filename];
Im = imread(filename);
Imsize = size(Im);
ss = size(Imsize);
if ss(2) == 3
    Im = rgb2gray(Im);
    Imsize = size(Im);
end
Filt=ones(Imsize);
calcImF;
makeGUI;
ImFFilt = ImF;
ImOut = Im;
draw;
