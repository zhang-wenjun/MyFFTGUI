function Filt = FiltGen_Circle(Imsize, r, cx, cy, pass)
Filt=zeros(Imsize);
M=Imsize(1); N=Imsize(2);
for i=1:M
    for j=1:N
        if(sqrt(((i-cx)^2+(j-cy)^2))<r)  
            Filt(i,j)=1;  
        end  
    end  
end
if pass == 0
    Filt = 1-Filt;
end