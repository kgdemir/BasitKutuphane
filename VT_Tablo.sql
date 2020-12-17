CREATE DATABASE Kutuphane;

CREATE TABLE Ogrenci(
	Id int IDENTITY(1,1) NOT NULL,
	AdSoyad nvarchar(255) NOT NULL,
	KimlikNo bigint NOT NULL,
	OgrenciNo varchar(16) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Kitap(
	Id int IDENTITY(1,1) NOT NULL,
	Adi nvarchar(255) NOT NULL,
	Yayinevi int NOT NULL,
	Yazar int NOT NULL,
	Basimyili smallint NOT NULL,
	Tur int NOT NULL,
	ISBN nvarchar(255) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Turler(
	Id int IDENTITY(1,1) NOT NULL,
	Yazar nvarchar(50) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Yayinevi(
	Id int IDENTITY(1,1) NOT NULL,
	Yayinevi nvarchar(255) NOT NULL,
	Adres nvarchar(max) NULL,
	Ilgili nvarchar(50) NULL,
	Telefon varchar(15) NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Yazar(
	Id int IDENTITY(1,1) NOT NULL,
	Yazar nvarchar(50) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE Islem(
	Id int IDENTITY(1,1) NOT NULL,
	KitapId int NOT NULL,
	OgrenciId int NOT NULL,
	BaslangicTarih date NOT NULL,
	BitisTarih date NOT NULL,
	PRIMARY KEY(Id)
);
