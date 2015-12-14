function [xx,tt] = note(f,dur) %xx ve tt de�erlerini d�nd�recek note fonksiyonu olu�turdum.

ff=2*pi*f
tt=0:1/(ff*1000):dur; % grafi�i �izdirece�im tt aral���n� tan�mlad�m.
xx=sin(tt) %xx de�i�kenini bir sin�s sinyaline atad�m.
 end %note fonksiyonunun sonu

%note fonksiyonunun �a��r�lmas�

[x,y]=note(3,5)
plot(y,x)