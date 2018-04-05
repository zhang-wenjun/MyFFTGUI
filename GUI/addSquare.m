function [] = addSquare(pass, theta)
global Imsize Filt
[ly,lx]=ginput(1); % вСио
[ry,rx]=ginput(1); % сроб
cx=(lx+rx)/2;
cy=(ly+ry)/2;
dx=abs(lx-rx);
dy=abs(ly-ry);
tfilt=FiltGen_Square(Imsize,cx,cy,dx,dy,theta,pass);
if pass == 1
    Filt = Filt | tfilt;
elseif pass == 0
    Filt = ~(~Filt | ~tfilt);
end