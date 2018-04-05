function [] = calcFFT
global ImF Filt ImFFilt ImOut
ImFFilt=ImF.*Filt;  
ImFFilt=ifftshift(ImFFilt);  
ImOut=abs(ifft2(ImFFilt));  
ImFFilt=fftshift(ImFFilt);  