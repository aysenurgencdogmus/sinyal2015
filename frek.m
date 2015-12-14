function ff=frek(nota,oktav) %ff deðerini döndürecek frek fonksiyonu oluþturdum.
notalar=['A' 'a' 'B' 'b' 'C' 'c' 'D' 'd' 'E' 'e' 'F' 'f' 'G' 'g' 'H' 'h'] %notalarý harf kullanarak tanýmladým.
referans=16.35; %referansý Do notasýnýn 0. oktavdaki deðeri olarak belirledim.
p=length(notalar); %p deðiþkenine notalar matrisinin uzunluðunu atadým.

for okt=0:8  %oktav deðeri 0dan 8e kadar 1er 1er artacak
  if okt==oktav %girilen oktav deðeri 0 ile 8 arasýnda bir deðere eþitse
    for j=1:p %j deðeri 1den baþlayýp matrisin boyutuna kadar 1er 1er artacak
      if nota==char(notalar(j)) %girilen nota notalar matrisindeki bir elemana eþitse
	 ff==2^okt*(2^((j-1)/12)*referans; %ff frekans deðerini hesaplayan formül
	end %if notanýn sonu
	end %for j'nin sonu
	end %if okt'un sonu
	end %for okt'un sonu
	end %function'ýn sonu

%Frek fonksiyonunun çaðýrýlmasý

f=frek('C',2)