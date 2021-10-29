# Matrix

a <- 1:10

# Membuat matriks dari data a
# Kita bisa menampilkan tabel matriks dengan mengklik nama matriks di environment
matriks.a <- matrix(a)

# Untuk menentukan nilai kolom, maka kita bisa memakai parameter kedua dari matrix
# Namun jumlah kolom harus modulo 0 dengan jumlah data
matriks2.a <- matrix(a, 5)

# Untuk mengisi bagian kolom duluan pada matriks, berikan byrow= TRUE pada parameter matrix()
matriks3.a <- matrix(a, nrow=2, byrow=T)

# Mengganti nama baris dan kolom
colnames(matriks2.a) <- c('kolom 1', 'kolom 2')
rownames(matriks2.a) <- c('baris 1', 'baris 2', 'baris 3', 'baris 4', 'baris 5')

# Menambahkan baris baru pada matriks, rbind(matriks.lama, matriks.baru)
baris6.baru <- c(25, 23)
matriks2.a <- rbind(matriks2.a, baris6.baru)

# Menghitung jumlah kolom/baris, sum nya pake s jadi Sums, bisa juga mean
colSums(matriks2.a); rowSums(matriks2.a)

# Menghitung mean baris lalu menambahkannya pada kolom
rataan.baris <- rowMeans(matriks2.a)
matriks2.a <- cbind(matriks2.a, rataan.baris)

# Transpose
matriks2.a.transposed <- t(matriks2.a)

# Slicing & Indexing
matriks2.a[1,]
matriks2.a[1:3,]
matriks2.a[3,3]
matriks2.a[c(1,3,4),]

# --------------- operasi aritmatika matriks --------------- #

# Untuk operasi biasa kita bisa langsung
matriks4.a <- matrix(1:12, byrow=T, ncol=3)
matriks4.a+matriks4.a
matriks4.a-matriks4.a
matriks4.a/matriks4.a
matriks4.a*matriks4.a
matriks4.a-3
1/matriks4.a
matriks4.a^2

# Untuk perkalian seperti aljabar linear, pakai %*%, namun ordonya harus sama
matriks4.a %*% t(matriks4.a)




