library(tidyverse)
library(lubridate)

# Mendapatkan tanggal hari ini
today()

# datetime
now()

# str to date yyyy-mm-dd
ymd("2021-01-20")

# str to date mm dd yyyy tinggal diganti urutanna
mdy("January 20th, 2021")

dmy("20-Jan-2021")

# Bisa flexibel
ymd(20210120)

# Membuat komponen tanggal-waktu
# Fungsi ymd() dan variasinya membuat tanggal. Untuk membuat tanggal-waktu dari tanggal, tambahkan garis bawah dan satu atau beberapa huruf h, m, dan s (jam, menit, detik) ke nama fungsi:
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")

# Mendapatkan waktu sekarang dalam bentuk objet date
as_date(now())














