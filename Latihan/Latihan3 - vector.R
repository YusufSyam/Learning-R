# Vector, dibuat dengan fungsi c(), kepanjangan c adalah combine
v1 <- c(1, 2, 3, 4) 
v2 <- c(4, 3, 2, 1)
v3 <- 5:20
v4 <- c(v1,v2)

names(v1) <- c('satu', 'dua', 'tiga', 'empat') 
# ^ Menamai kolom vektor, nama setiap vektor bisa kita jadikan sebagai key, contoh: v1['satu']

# Operasi pada vektor
penambahan.vektor <- v1+v2; penambahan.vektor2 <- v1+2 # <- Menjumlahkan berdasarkan urutan (seperty numpy di python)
v1 > 2; v1 >= v2 # <- Akan menghasilkann vektor baru yang berisi TRUE atau FALSE berdasarkan kondisinya


# Slicing & indexing vektor
v1[1:3]
v1['satu']
v1[c(1,3,4)]
slicing <- v1>2
v2[slicing] # Karena value slicing hanya mempunyai TRUE pada indeks 3 dan 4, maka v2[slicing] hanya akan memuculkan v2 dengan indeks 3 dan 4

# Fungsi-fungsi vektor yang lain
sum(v1) # <- Menjumlahkan semua data numerikal dalam vektor
max(v1) # <- Max data
min(v1) # <- Min data
length(v1) # <- Menunjukkan ada berapa data dalam vektor
mean(v1); median(v1) # <- Memunculkan mean dan median

# Mengkategorikan data matriks, dengan factor()
jenis.kelamin <- c('L', 'L', 'P', 'U', 'L', 'P', 'P', 'L')
suhu <- c('panas', 'hangat', 'normal', 'sejuk', 'dingin', 'hangat', 'dingin')

# Untuk nominal: tidak mempunyai nilai yang bisa diukur dengan angka, seperti kategori jenis kelamin
kategori.jenis.kelamin <- factor(jenis.kelamin)

# Untuk ordinal: memiliki tingkat, seperti suhu atau rasa makanan dll
# Caranya cukup menambahkan ordered=T sebagai parameter factor(), dan parameter level, caranya seperti ini
kategori.suhu <- factor(suhu, ordered=T, levels=c('panas', 'hangat', 'normal', 'sejuk', 'dingin'))








