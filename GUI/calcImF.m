function [] = calcImF
global Im ImF
global MAX MIN
ImF=fft2(double(Im));%傅里叶变换  
ImF=fftshift(ImF);%将变换的原点移到频率矩形的中心
ImFshow=abs(ImF);
MAX=max(max(ImFshow)); MIN=min(min(ImFshow));