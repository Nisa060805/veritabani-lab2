DROP TABLE IF EXISTS kayitlar CASCADE;
DROP TABLE IF EXISTS dersler CASCADE;
DROP TABLE IF EXISTS uyeler CASCADE;
DROP TABLE IF EXISTS egitmenler CASCADE;

CREATE TABLE egitmenler (
    egitmen_id INT PRIMARY KEY,
    ad VARCHAR(100) NOT NULL,
    brans VARCHAR(100)
);

CREATE TABLE uyeler (
    uye_id INT PRIMARY KEY,
    ad VARCHAR(100) NOT NULL,
    dogum_yili INT
);

CREATE TABLE dersler (
    ders_id INT PRIMARY KEY,
    ad VARCHAR(100) NOT NULL,
    egitmen_id INT REFERENCES egitmenler(egitmen_id),
    kontenjan INT
);

CREATE TABLE kayitlar (
    kayit_id INT PRIMARY KEY,
    uye_id INT REFERENCES uyeler(uye_id),
    ders_id INT REFERENCES dersler(ders_id),
    tarih DATE NOT NULL
);
