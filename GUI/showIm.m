function [] = showIm
global needshowIm f2 Button_showIm Im
if needshowIm == 1
    f2=figure(2); imshow(Im); title('ԭͼƬ');
    needshowIm = 0;
    set(Button_showIm,'string','�ر�ԭͼƬ');
elseif needshowIm == 0
    close(f2);
    needshowIm = 1;
    set(Button_showIm,'string','��ʾԭͼƬ');
end