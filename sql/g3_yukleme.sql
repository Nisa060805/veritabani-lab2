COPY egitmenler(egitmen_id, ad, brans)
FROM '/veri/egitmenler.csv' WITH (FORMAT csv, HEADER true);

COPY uyeler(uye_id, ad, dogum_yili)
FROM '/veri/uyeler.csv' WITH (FORMAT csv, HEADER true);

COPY dersler(ders_id, ad, egitmen_id, kontenjan)
FROM '/veri/dersler.csv' WITH (FORMAT csv, HEADER true);

COPY kayitlar(kayit_id, uye_id, ders_id, tarih)
FROM '/veri/kayitlar.csv' WITH (FORMAT csv, HEADER true);

SELECT (SELECT COUNT(*) FROM egitmenler) AS egitmen,
       (SELECT COUNT(*) FROM uyeler) AS uye;

SELECT (SELECT COUNT(*) FROM dersler) AS ders,
       (SELECT COUNT(*) FROM kayitlar) AS kayit;
