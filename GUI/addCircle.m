function [] = addCircle(pass)
global Imsize Filt
[cy,cx]=ginput(1);
[ry,rx]=ginput(1);
r=sqrt((cx-rx)^2+(cy-ry)^2);
tfilt=FiltGen_Circle(Imsize,r,cx,cy,pass);
imshow(tfilt);
if pass == 1
    Filt = Filt | tfilt;
elseif pass == 0
    Filt = ~(~Filt | ~tfilt);
end