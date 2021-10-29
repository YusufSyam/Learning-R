df.titanic <- as.data.frame(Titanic)

a <- NULL
a <- cbind(a, rep(df.titanic,df.hewan.peliharaan$warna))
for(i in df.titanic$Freq){
  print(i)
}

titanic.raw <- NULL

tes <- NULL

for(j in 1:31){
  tes <- append(tes,1)
}

tes <- append(tes, 5)
df.titanic.baru <- cbind(df.titanic, tes)

for(i in 1:4){
  titanic.raw <- cbind(titanic.raw, rep(as.character(df.titanic[,i]), df.titanic.baru$tes))
  print(rep(as.character(df.titanic[,i]), df.titanic.baru$tes))
  print(i)
}

for(i in 1:4){
  titanic.raw <- cbind(titanic.raw, rep(as.character(df.titanic[,i]), df.titanic.baru$Freq))
  print(rep(as.character(df.titanic[,i]), df.titanic.baru$Freq))
  print(i)
}

length(df.titanic)
length(df.titanic.baru)

df.titanic.baru$tes



#------------------------------------------------------------------#

df.asd <- data.frame(huruf=c('a', 'b', 'c'))

n <- c(0,1,2)
print(rep(as.character(df.asd[,]),n))


