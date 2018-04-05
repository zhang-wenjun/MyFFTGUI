function [] = importFilter
global Filt
global Button_addarea
global Type_circle Type_square Type_addpass Type_addnotpass 
global Text_matname
matname=get(Text_matname,'String');
Filt = eval(matname);
set(Type_circle,'Enable','On');
set(Type_square,'Enable','On');
set(Type_addpass,'Enable','On');
set(Type_addnotpass,'Enable','On');
set(Button_addarea,'Enable','On');
calcFFT;
draw;