function ff=frek(nota,oktav) %ff de�erini d�nd�recek frek fonksiyonu olu�turdum.
notalar=['C' 'c' 'D' 'd' 'E' 'F' 'f' 'G' 'g' 'A' 'a' 'B']; %A=La,a(A#,Bb)=#La,B=Si, 
 %C=Do,c(C#,Db)=#Do,D=Re,d(D#,Eb)=#Re,E=Mi,F=Fa,f(F#,Gb)=#Fa,G=Sol,g(G#,Ab)=#Sol 

referans=16.35; %referans� Do notas�n�n 0. oktavdaki de�eri olarak belirledim.
p=length(notalar); %p de�i�kenine notalar matrisinin uzunlu�unu atad�m.

for okt=0:8  %oktav de�eri 0dan 8e kadar 1er 1er artacak
  if okt==oktav %girilen oktav de�eri 0 ile 8 aras�nda bir de�ere e�itse
    for j=1:p %j de�eri 1den ba�lay�p matrisin boyutuna kadar 1er 1er artacak
      if nota==char(notalar(j)) %girilen nota notalar matrisindeki bir elemana e�itse
	 ff==2^okt*(2^((j-1)/12)*referans; %ff frekans de�erini hesaplayan form�l
	end %if notan�n sonu
	end %for j'nin sonu
	end %if okt'un sonu
	end %for okt'un sonu
	end %function'�n sonu

%Frek fonksiyonunun �a��r�lmas�

f=frek('C',2)