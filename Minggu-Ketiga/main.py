from buku import Buku
from majalah import Majalah

try:
    judul = input("Judul: ").strip()
    if not judul:
        raise ValueError("judul tidak boleh kosong ya sobat")
    penulis = input("Penulis: ").strip()
    if not penulis:
        raise ValueError("penulis tidak boleh kosong ya sobat")
    tahun = int(input("Tahun: "))
    if not tahun:
        raise ValueError("tahun harus berupa angka ya sobat")
    tipe = input("Buku atau Majalah? ").strip()
    if not tipe:
        raise ValueError("tipe tidak boleh kosong ya sobat")

    if tipe.lower() == "majalah":
        edisi = input("Edisi: ").strip()
        if not edisi:
            raise ValueError("edisi tidak boleh kosong ya sobat")
    
        item = Majalah(judul, penulis, tahun, edisi)

    else:
        item = Buku(judul, penulis, tahun)

    print("=== Informasi ===")
    print(item.info())

    with open("koleksi.txt", "a") as file:
        file.write(item.info() + "\n")

except ValueError as ve:
    print (f"Error : {ve}")