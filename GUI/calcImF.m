function [] = calcImF
global Im ImF
global MAX MIN
ImF=fft2(double(Im));%����Ҷ�任  
ImF=fftshift(ImF);%���任��ԭ���Ƶ�Ƶ�ʾ��ε�����
ImFshow=abs(ImF);
MAX=max(max(ImFshow)); MIN=min(min(ImFshow));