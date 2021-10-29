# Data frame

# Membuat data frame
# Pertama kita membuat vektor yang nama variabelnya akan menjadi kolom
nama <- c('andy', 'riskul', 'tom', 'splashy', 'chirp')
spesies <- c('kucing', 'anjing', 'hamster', 'ikan', 'burung')
umur <- c(1,4,1,2,3)
warna <- factor(c('orange', 'coklat', 'putih', 'orange', 'biru'))

# Membuat data frame dengan menggabungkan beberapa kolom
df.hewan.peliharaan <- data.frame(nama, spesies, umur, warna)
# Atau bisa
df.a <- data.frame(First = c(1,2,3,4) , 
                   Second = c("a","ab","cv","dsd"),
                   Third=c(7:10))

# Fungsi yang membantu meringkas data frame
str(df.hewan.peliharaan)
summary(df.hewan.peliharaan)

# Slicing & indexing data frame hampir sama dengan matriks
df.hewan.peliharaan[3,]
df.hewan.peliharaan[2,'nama']
# Misal ingin mengambil baris 1,3 dan 5 dengan kolom 2 sampai 4
df.hewan.peliharaan[c(1,3,5),2:4]
# Menyeleksi dengan kondisi logikal
df.hewan.peliharaan[df.hewan.peliharaan$umur>1,]
df.hewan.peliharaan[df.hewan.peliharaan$umur>1 & df.hewan.peliharaan$spesies=='ikan',]

# Melihat data paling atas dan bawah
head(df.hewan.peliharaan)
tail(df.hewan.peliharaan, 4)

# Slicing dengan $
df.hewan.peliharaan$warna

# Menyeleksi berdasarkan nilai kolom, dengan fungsi subset()
# Misal mencari hewan berwarna orange atau berumur kurang dari 2
subset(df.hewan.peliharaan, warna=='orange')
subset(df.hewan.peliharaan, umur<2)

# Mengganti satu nama baris/kolom
names(df.hewan.peliharaan)[names(df.hewan.peliharaan)=='nama'] <- 'Namaaa'
rownames(df.hewan.peliharaan)[rownames(df.hewan.peliharaan)==1] <- 'Hewan 1'

# Mengganti nama baris/kolom
names(df.hewan.peliharaan) <- c('Name', 'Species', 'Age', 'Colour')
rownames(df.hewan.peliharaan) <- c('Hewan 111', 'Hewan 2', 'Hewan 3', 'Hewan 4', 'Hewan 5')

# -------------------------- Data frame dari data set ---------------------------#

# Untuk melihat dataset2 yang tersedia, bisa dengan fungsi data()
data()

# Misal ingin mengambil data set iris, cukup dengan
df.iris <- iris
# Untuk data set titanic yang bertipe table, dengan as.data.frame
library(arules)
library(arulesViz)

df.titanic <- as.data.frame(Titanic)

titanic.raw <- NULL

for(i in 1:4){
  titanic.raw <- cbind(titanic.raw, rep(as.character(df.titanic[,i]), df.titanic$Freq))
}

titanic.raw <- as.data.frame(titanic.raw)

names(titanic.raw) <- names(df.titanic)[1:4]
write.csv(titanic.raw, 'dataset_titanic_raw.csv', row.names = F)

for(i in 1:4){
  titanic.raw[,i] <- factor(titanic.raw[,i])
}

summary(titanic.raw)
rules <- apriori(titanic.raw)

inspect(rules)
plot(rules, 'graph')
