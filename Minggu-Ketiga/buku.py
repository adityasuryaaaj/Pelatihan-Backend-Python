class Buku:
    def __init__(self, judul,penulis,tahun):
        self.judul = judul
        self.penulis = penulis
        self.tahun = tahun
    
    def info(self):
        return f"{self.judul} oleh {self.penulis} ({self.tahun})"

