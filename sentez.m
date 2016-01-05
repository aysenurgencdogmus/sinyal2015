%% Degerleri tanimladim, dosyadan deger okuttum.
Fs=3500; %ornekleme frekansini tanimladim
gecikme=round(Fs/10); %echonun gecikme suresi
notalar=[];% notalar matrisi icin ilk deger atadim.
duraklama=Fs/10000; %duraklama suresi
oktdegis=2; %oktav'a eklenmek istenen deger oktdegis degiskeniyle eklenecek[-2,+2].
dosya=fopen('notalar.txt','r'); %notalar.txt dosyas�n� ac,'r' ile okuma yap.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',','); %virgul ile ayr�lan degiskenleri okur.
fclose(dosya); %notalar.txt dosyasi kaptilir.
frekans=zeros(1,length(nota));

%% Oktav degisimi oldugunda gerceklesecekler;
if oktdegis~=0 %oktdegis degiskeni degistirlirse
    for j=1:length(oktav) %notalar.txt'ten okunan oktav degerlerini dongude degistir.
        oktav(j)=oktav(j)+oktdegis; 
    end
end

%% Notalar�n sinyalini olusturmak icin;
for i=1:length(nota)
    frekans(i)=frek(nota{i},oktav(i)); %frek fonsiyonunu cag�r�p frekans degerlerini hesapla
    [sindalga,t]=note(frekans(i),str2num(olcu{i})); %note fonksiyonu ile sin sinyallerini ciz.
    notalar=[notalar sindalga duraklama];%notalar�n sinyalleri aras�na bosluk eklenerek notalar matrisinde birlestirildi. 

end  

%% Echo eklemek icin;
for i=1:length(notalar)
    if (i+gecikme)<length(notalar)%gecikme notalar uzunlugunu asmad�g� surece islenecek sart.
        notalar(i+gecikme)=notalar(i+gecikme)+0.3*notalar(i); %Fs, 10'da biri s�resince geciktirilip(gecikme)
    end                                                      %++genli�i %30 oran�nda d���r�lerek kendisi ile topland�.
end

%% Sinyallerin tepe degerini normalize etmek icin;
notalar = notalar/max(abs(notalar));

%% Notalarin grafigini cizip, muzigi caldirmak icin;
plot(notalar)
sound(notalar,Fs);
