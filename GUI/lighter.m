function [] = lighter
global imageMAX ImOut needlighter Button_lighter
if needlighter == 1
    imageMAX=max(max(ImOut));
    ImOut=ImOut/imageMAX*255;
    set(Button_lighter,'string','还原图像亮度');
    needlighter = 0;
elseif needlighter == 0
    ImOut=ImOut/255*imageMAX;
    set(Button_lighter,'string','增加图像亮度');
    needlighter = 1;
end
draw;