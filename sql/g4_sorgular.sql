-- 1. Her dersin adı ve dersi veren eğitmenin adı
SELECT d.ad AS ders_adi, e.ad AS egitmen_adi
FROM dersler d
LEFT JOIN egitmenler e ON d.egitmen_id = e.egitmen_id;

-- 2. Her eğitmenin verdiği ders sayısı (çoktan aza)
SELECT e.ad AS egitmen_adi, COUNT(d.ders_id) AS ders_sayisi
FROM egitmenler e
LEFT JOIN dersler d ON e.egitmen_id = d.egitmen_id
GROUP BY e.egitmen_id, e.ad
ORDER BY ders_sayisi DESC;

-- 3. En çok kayıt alan 5 dersin adı ve kayıt sayısı
SELECT d.ad AS ders_adi, COUNT(k.kayit_id) AS kayit_sayisi
FROM dersler d
LEFT JOIN kayitlar k ON d.ders_id = k.ders_id
GROUP BY d.ders_id, d.ad
ORDER BY kayit_sayisi DESC
LIMIT 5;

-- 4. Hiç kaydı olmayan derslerin adı
SELECT d.ad AS ders_adi
FROM dersler d
LEFT JOIN kayitlar k ON d.ders_id = k.ders_id
WHERE k.kayit_id IS NULL;
