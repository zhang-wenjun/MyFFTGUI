function [] = saveIm
global Text_outfilename ImF MAX MIN Filt ImOut
outfilename=get(Text_outfilename,'String'); 

ImFFiltshow=abs(ImF);
ImFFiltshow=(ImFFiltshow-MIN)/(MAX-MIN)*255;
ImFFiltshow(:,:,1)=ImFFiltshow;
ImFFiltshow(:,:,2)=ImFFiltshow(:,:,1);
ImFFiltshow(:,:,3)=ImFFiltshow(:,:,1);
ImFFiltshow(:,:,2)=ImFFiltshow(:,:,2).*Filt;

imwrite(ImFFiltshow,['.\OUTFILES\' outfilename 'F.jpg']);
imwrite(uint8(ImOut),['.\OUTFILES\' outfilename 'Out.jpg']);
end