# Komen begini

# Assign variabel, bisa menulis 2 perintah dalam 1 baris dengan titik koma
tinggi.yusuf <- 168; tinggi.aan<-150

# Untuk cuma mendeclare variabel dan tidak memberinya nilai awal, cukup isi dengan null
tinggi.null <- NULL

# Print tinggi yusuf
print(tinggi.yusuf)
# Print tanpa spasi, cat()
cat(tinggi.yusuf); cat('asdasdadas')
# Print tinggi yusuf tapi dengan tambahan kata-kata
print(paste('Tinggi yusuf adalah',tinggi.yusuf))


# Hapus variabel
rm(tinggi.aan)

# Membuat distribusi normal = rnorm(banyak, rata2, standar deviasi)
# Kita bisa memakai beberapa fungsi seperti mean() atau median()
data.tinggi.badan.remaja <- rnorm(1000, 170, 1)

# Memasukkan tinggi badan yusuf ke dalam value data.tinggi.badan.remaja
data.tinggi.badan.remaja <- append(data.tinggi.badan.remaja, tinggi.yusuf)

# Menampilkan data dalam bentuk histogram
hist(data.tinggi.badan.remaja)

# Ctrl+l untuk membersihkan console
# Untuk membersihkan semua variabel/environment di sebelah kanan, klik gambar sapu