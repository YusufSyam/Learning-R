# Pengkondisian If else
x <- 5

if(x==5){
  print("x=5")
} else {
  print("x!=5")
}

if(x!=5 | x>=6){
  print("x!=5 atau x>=6")
}else if(x==5 & class(x)=='numeric'){
  print("x==5 dan x numeric")
}

# Perulangan

# For

for(i in 1:10){
  cat(paste(i,' '))
}

v1 <- c(12,56,4,39, 77)
jumlah.v1 <- 0
for(i in v1){
  jumlah.v1 <- jumlah.v1+i
  print(i)
}

print(paste('Jumlah v1 adalah', jumlah.v1))

list1 <- list(v1,iris)
for(i in list1){
  print(i)
}

# While

n <- 0
while(n<=10){
  print(n)
  n <- n+1
}

# Break dan next

# Break jika i=4
for(i in 1:5){
  if(i==4) break
  print(i)
}

# Next (melanjutkan iterasi) bila mendapatkan angka genap
for(i in 1:20){
  if(i%%2==0){
    next
  }else{
    print(i)
  }
}
