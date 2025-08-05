# Input Biodata
nama    = input("Masukkan Nama Anda =")
umur    = input("Masukkan Umur Anda =")
Hobi    = input("Masukan Hobi Anda=")
alamat  = input("Masukan Alamat Anda =")

# Hasil Biodata
print("\n=== BIODATA ANDA ===")
print(f"Nama = {nama}")
print(f"Umur = {umur}")
print(f"Hobi = {Hobi}")
print(f"alamat = {alamat}")

# Data Disimpan 
with open("biodata.txt","a") as file :
    file.write("\n=== BIODATA ANDA ===\n")
    file.write(f"Nama = {nama}\n")
    file.write(f"Umur = {umur}\n")
    file.write(f"Hobi = {Hobi}\n")
    file.write(f"alamat = {alamat}\n")