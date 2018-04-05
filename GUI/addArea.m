function [] = addArea
global appearance pass Text_theta
if appearance == 1
    addCircle(pass);
elseif appearance == 2
    theta=str2double(get(Text_theta,'String'));
    addSquare(pass, theta);
end
calcFFT;
draw;