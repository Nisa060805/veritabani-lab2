import sys
import random

ogrenci_no = sys.argv[1] if len(sys.argv) > 1 else "12345"
random.seed(int(ogrenci_no) if ogrenci_no.isdigit() else 12345)

# 1. Egitmenler
with open("veri/egitmenler.csv", "w", encoding="utf-8") as f:
    f.write("egitmen_id,ad,brans\n")
    f.write("1,Ahmet Yilmaz,Veritabani\n")
    f.write("2,Ayse Kaya,Yazilim Engineering\n")
    f.write("3,Mehmet Demir,Yapay Zeka\n")

# 2. Uyeler
with open("veri/uyeler.csv", "w", encoding="utf-8") as f:
    f.write("uye_id,ad,dogum_yili\n")
    for i in range(1, 11):
        f.write(f"{i},Uye_{i},{1995 + i}\n")

# 3. Dersler
with open("veri/dersler.csv", "w", encoding="utf-8") as f:
    f.write("ders_id,ad,egitmen_id,kontenjan\n")
    f.write("101,Veritabani Sistemleri,1,30\n")
    f.write("102,Yazilim Mimarisi,2,25\n")
    f.write("103,Yapay Zekaya Giris,3,20\n")
    f.write("104,Web Gelistirme,1,15\n")

# 4. Kayitlar
with open("veri/kayitlar.csv", "w", encoding="utf-8") as f:
    f.write("kayit_id,uye_id,ders_id,tarih\n")
    kayit_id = 1
    for uye_id in range(1, 9):
        ders_id = random.choice([101, 102, 103])
        f.write(f"{kayit_id},{uye_id},{ders_id},2026-10-01\n")
        kayit_id += 1

print("CSV verileri basariyla olusturuldu!")
