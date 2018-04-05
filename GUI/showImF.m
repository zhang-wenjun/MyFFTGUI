function [] = showImF
global needshowImF f3 Button_showImF ImF MAX MIN
if needshowImF == 1
    ImFshow=abs(ImF);
    MAX=max(max(ImFshow)); MIN=min(min(ImFshow));
    ImFshow=(ImFshow-MIN)/(MAX-MIN)*255;
    f3=figure(3);imshow(ImFshow);title('原频谱');
    %f3=figure(3); imshow(ImF); title('原频谱');
    needshowImF = 0;
    set(Button_showImF,'string','关闭原频谱');
elseif needshowImF == 0
    close(f3);
    needshowImF = 1;
    set(Button_showImF,'string','显示原频谱');
end