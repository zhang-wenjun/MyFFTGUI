function Filt = FiltGen_Square(Imsize, cx, cy, dx, dy, theta, pass)
Filt=zeros(Imsize);
M=Imsize(1); N=Imsize(2);
for i=1:M
    for j=1:N
        if ((-dy/2 <= ((j-cy)*cosd(theta) + (i-cx)*sind(theta))) &&...
            (((j-cy)*cosd(theta) + (i-cx)*sind(theta)) <= dy/2) &&...
            (-dx/2 <= ((j-cy)*sind(theta) - (i-cx)*cosd(theta))) &&...
            (((j-cy)*sind(theta) - (i-cx)*cosd(theta)) <= dx/2))
            Filt(i,j)=1;  
        end  
    end  
end
if pass == 0
    Filt = 1-Filt;
end