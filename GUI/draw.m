function [] = draw
global h_fig
global ImOut Imsize Filt ImF
global MAX MIN scrsz
rx=scrsz(4)*0.44/Imsize(1)*Imsize(2)/scrsz(3);
subplot('position',[0.4,0.55,rx,0.44]);hold off;
ImFFiltshow=abs(ImF);
ImFFiltshow=(ImFFiltshow-MIN)/(MAX-MIN)*255;
ImFFiltshow(:,:,1)=ImFFiltshow;
ImFFiltshow(:,:,2)=ImFFiltshow(:,:,1);
ImFFiltshow(:,:,3)=ImFFiltshow(:,:,1);
ImFFiltshow(:,:,2)=ImFFiltshow(:,:,2).*Filt;
imshow(ImFFiltshow);hold on;

subplot('position',[0.4,0.05,rx,0.44]);hold off;
imshow(uint8(ImOut));hold on;