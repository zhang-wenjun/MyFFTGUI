% function RunGUI()
% ����һ����ѧ�ռ��˲�ʵ�����ʾ����
% ���ߣ����ľ���1600012756@pku.edu.cn��������ѧ��Ϣ��ѧ����ѧԺ����ѧϵ
% 
% GUI�����У�����м�����ť���ֱ��ǣ�
% ��ȫͨ�����˲�������ȫ�贴���˲������Ӿ������˲���
% ǰ�����൱����Ƶ����ʲô�������Լ���Ƶ����ȫ���ڵ�
% �����Ӿ������˲��������ڳ���ʼ���к��������д��ڶ������
% Ȼ���ڸð�ť���Ҳ����������������֣��ٵ���ð�ť
%
% �ڴ������˲���֮�󣬿��Զ�������޸ģ�
% ֻ�����ú������������ͣ��ٵ�����������򡱼���
% ��������һ��Բ�εĿ�͸������
% ����Բ�Σ���Ҫ��ѡ�������㣬��һ�ε����Բ�ģ��ڶ��ε����Բ������һ�㡣
% ���ڷ��Σ�Ҫ����ǰ���ú��������ˮƽ˳ʱ����ת�ĽǶ�
% Ȼ��ͬ��Ҫ��ѡ�������㣬��һ�ε���Ƿ���δ����תʱ�����Ͻǣ��ڶ��������½�
% 
% ��ʾ/�ر� ԭͼƬ/ԭƵ��ʱ������ص��GUI����İ�ť�������ǵ����������Ͻǵġ�����
% 
% �����˳����Թر����н���
% 
% GUI�����Ҳ�����������ͼƬ
% ������Ǿ����˲�֮���Ƶ���棬Ʒ��ɫ�����Ѿ����ڵ��Ĳ��֣�
% ������ɫ�������͸���Ĳ���
% ��������˲�֮�����ɵ�ͼ��
% ��лʹ�ã�
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
filename=input('�����������ͼƬ���ļ�·����\n','s');
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
