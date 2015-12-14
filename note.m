function [xx,tt] = note(f,dur) %xx ve tt deðerlerini döndürecek note fonksiyonu oluþturdum.

ff=2*pi*f
tt=0:1/(ff*1000):dur; % grafiði çizdireceðim tt aralýðýný tanýmladým.
xx=sin(tt) %xx deðiþkenini bir sinüs sinyaline atadým.
 end %note fonksiyonunun sonu

%note fonksiyonunun çaðýrýlmasý

[x,y]=note(3,5)
plot(y,x)