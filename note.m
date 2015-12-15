function [x,t] = note(f,dur) %xx ve tt deðerlerini döndürecek note fonksiyonu oluþturdum.

t=0:1/(f*100):dur; % grafiði çizdireceðim tt aralýðýný tanýmladým.
x=sin(2*pi*f*t) %xx deðiþkenini bir sinüs sinyaline atadým.
 end %note fonksiyonunun sonu

%note fonksiyonunun çaðýrýlmasý

[x,y]=note(3,5)
plot(y,x)