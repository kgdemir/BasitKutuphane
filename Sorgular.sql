--Türler
SELECT * FROM Turler

--Yayınevleri
SELECT * FROM Yayinevi

--Yazarlar
SELECT * FROM Yazar

--Kitaplar
SELECT * FROM Kitap

--Öğrenciler
SELECT * FROM Ogrenci

--İşlemler
SELECT * FROM Islem

--Kitap Detayları
SELECT K.Id, K.Adi, YE.Yayinevi, Y.Yazar, K.Basimyili, T.Tur, K.ISBN FROM Kitap K
LEFT JOIN Yayinevi YE ON K.Yayinevi=YE.Id
LEFT JOIN Yazar Y ON K.Yazar=Y.Id
LEFT JOIN Turler T ON K.Tur=T.Id

--İşlem Detayları
SELECT I.Id, I.BaslangicTarih, I.BitisTarih, O.AdSoyad, O.KimlikNo, O.OgrenciNo, K.Adi, YE.Yayinevi, Y.Yazar, K.Basimyili, T.Tur, K.ISBN FROM Islem I
LEFT JOIN Kitap K ON I.KitapId=K.Id
LEFT JOIN Yayinevi YE ON K.Yayinevi=YE.Id
LEFT JOIN Yazar Y ON K.Yazar=Y.Id
LEFT JOIN Turler T ON K.Tur=T.Id
LEFT JOIN Ogrenci O ON I.OgrenciId=O.Id
