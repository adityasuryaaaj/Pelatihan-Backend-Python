from buku import Buku

class Majalah(Buku):  # Jika mewarisi dari Buku
    def __init__(self, judul, penulis, tahun, edisi):
        super().__init__(judul, penulis, tahun)
        self.edisi = edisi

    def info(self):
        return f"{self.judul} oleh {self.penulis} ({self.tahun}) - Edisi {self.edisi}"
