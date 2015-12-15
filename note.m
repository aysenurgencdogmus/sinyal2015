function [x,t] = note(f,dur) %xx ve tt de�erlerini d�nd�recek note fonksiyonu olu�turdum.

t=0:1/(f*100):dur; % grafi�i �izdirece�im tt aral���n� tan�mlad�m.
x=sin(2*pi*f*t) %xx de�i�kenini bir sin�s sinyaline atad�m.
 end %note fonksiyonunun sonu

%note fonksiyonunun �a��r�lmas�

[x,y]=note(3,5)
plot(y,x)