--Türler
SELECT * FROM Turler

--Yayınevleri
SELECT * FROM Yayinevi

--Yazarlar
SELECT * FROM Yazar

--Kitaplar
SELECT * FROM Kitap

--JOINlenmiş halleri
SELECT K.Id, K.Adi, YE.Yayinevi, Y.Yazar, K.Basimyili, T.Tur, K.ISBN FROM Kitap K
LEFT JOIN Yayinevi YE ON K.Yayinevi=YE.Id
LEFT JOIN Yazar Y ON K.Yazar=Y.Id
LEFT JOIN Turler T ON K.Tur=T.Id

