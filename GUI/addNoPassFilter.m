function [] = addNoPassFilter
global Filt
global Imsize
global Button_addarea
global Type_circle Type_square Type_addpass Type_addnotpass pass
Filt = zeros(Imsize);
set(Type_circle,'Enable','On');
set(Type_square,'Enable','On');
set(Type_addpass,'Enable','On');
set(Type_addnotpass,'Enable','On');
set(Button_addarea,'Enable','On');
set(Type_addpass,'value',1); set(Type_addnotpass,'value',0);
pass=1;
calcFFT;
draw;