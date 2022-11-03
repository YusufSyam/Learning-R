# Buat direktori
dir.create ("direktori baru")

# Buat file
file.create ("new_text_file.txt")
file.create ("new_word_file.docx")
file.create ("new_csv_file.csv")

# Copy file
file.copy ("new_text_file.txt" , "direktori baru")

# Hapus file
unlink("new_text_file.txt")
unlink("new_word_file.docx")
unlink("new_csv_file.csv")