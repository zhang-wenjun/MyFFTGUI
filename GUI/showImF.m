function [] = showImF
global needshowImF f3 Button_showImF ImF MAX MIN
if needshowImF == 1
    ImFshow=abs(ImF);
    MAX=max(max(ImFshow)); MIN=min(min(ImFshow));
    ImFshow=(ImFshow-MIN)/(MAX-MIN)*255;
    f3=figure(3);imshow(ImFshow);title('ԭƵ��');
    %f3=figure(3); imshow(ImF); title('ԭƵ��');
    needshowImF = 0;
    set(Button_showImF,'string','�ر�ԭƵ��');
elseif needshowImF == 0
    close(f3);
    needshowImF = 1;
    set(Button_showImF,'string','��ʾԭƵ��');
end