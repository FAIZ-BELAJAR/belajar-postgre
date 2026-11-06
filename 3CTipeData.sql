-- Tipe Data
-- saat kita membuat table di excel, kita bisa menentukan tipe data apa yang bisa kita masukan ke tiap kolom di excel
-- Di PostgreSQL, kita juga bisa menentukan tipe data tiap kolom yang kita buat di sebuah tabel
-- Ada banyak sekali tipe data yang tersedia di PostgreSQL, dari yang sedergana, sampai yang kompleks
-- Biasanay kita akan menggunakan tipe data sesuai dengan kebutuhan kolom yang perlu kita buat

-- Tipe data Number: https://www.postgresql.org/docs/current/datatype-numeric.html

-- Decimal/Numeric
-- Selain integer dan Floating Point, di PostgreSQL terdapat tipe data DECIMAL / NUMERIC
-- Ini tipe data number khusus yang bsia ditentukan jumlah precision dan scale nya
-- NUMERIC(5, 2) Min = -999.99 | Max = 999.99
-- NUMERIC(5, 0) Min = -99999 | Max = 99999

--     ======================================================================================================================

-- Tipe Data String
-- Selain number, biasanya kita sering menyimpan data di dalam tabel dalam bentuk karakter / tulisan
-- Tipe data ini namanya tipe data string atau text
-- Ada banyak tipe data string di PostgreSQL

-- Char
-- CHAR(n) adalah tipe data string dengan panjang tetap (fixed-length).
-- Jika teks yang dimasukkan lebih pendek dari ukuran 'n' yang ditentukan, PostgreSQL akan menambahkan spasi di belakangnya.
-- Contoh: CHAR(10) jika diisi "A", maka ukurannya tetap memakan 10 karakter di disk.

-- VARCHAR
-- VARCHAR(n) adalah tipe data string dengan panjang variabel (variable-length) dengan batas maksimum 'n'.
-- Berbeda dengan CHAR, VARCHAR hanya akan memakan penyimpanan sesuai dengan panjang karakter aktual yang diinputkan.
-- Contoh: VARCHAR(100) jika diisi "PostgreSQL", hanya akan memakan ruang sebanyak 10 karakter saja.

-- TEXT
-- TEXT adalah tipe data string dengan panjang variabel tanpa batas maksimum yang ditentukan (bisa menampung teks yang sangat panjang, hingga 1 GB).
-- Sangat cocok digunakan untuk menyimpan artikel, deskripsi panjang, atau catatan yang ukuran karakternya tidak bisa dipastikan di awal.

--     ======================================================================================================================

-- Tipe Data Date dan Time
-- Selain tipe data Number dan String, biasanya kadang kita sering menyimpan data waktu atau tanggal
-- Sebenarnya bisa kita gunakan String untuk menyimpan data waktu atau tanggal,
-- Namun itu tidak direkomendasikan karena akan menyulitkan kita ketika nanti butuh melakukan manipulasi waktu atau tanggal di PostgreSQL

-- timestamp
-- TIMESTAMP adalah tipe data yang menyimpan kombinasi tanggal dan waktu (format: YYYY-MM-DD HH:MI:SS).
-- PostgreSQL juga mendukung TIMESTAMPTZ (timestamp with time zone) untuk menyimpan informasi zona waktu secara otomatis.

-- date
-- DATE adalah tipe data yang hanya menyimpan tanggal saja tanpa informasi waktu (format: YYYY-MM-DD).
-- Sangat cocok digunakan untuk data seperti tanggal lahir, tanggal registrasi, atau tanggal transaksi.

-- time
-- TIME adalah tipe data yang hanya menyimpan waktu saja tanpa informasi tanggal (format: HH:MI:SS).
-- Cocok digunakan untuk data seperti jam operasional, jam mulai acara, atau waktu harian tertentu.

-- interval
-- INTERVAL adalah tipe data yang digunakan untuk menyimpan selisih waktu, durasi, atau rentang waktu (misalnya: "2 hari", "3 jam 30 menit", atau "1 tahun").
-- Sangat berguna untuk operasi aritmatika tanggal, seperti menambahkan 5 hari dari tanggal sekarang.

--     ======================================================================================================================

-- Tipe Data Boolean
-- BOOLEAN adalah tipe data kebenaran yang artinya datanya hanya ada dua jenis, benar atau salah
-- Benar direpresentasikan dengan data TRUE, sedangkan salah direpresentasikan dengan data FALSE

-- bool
-- BOOLEAN (atau sering juga disingkat BOOL) adalah tipe data yang menyimpan nilai kebenaran: TRUE, FALSE, atau NULL (jika nilainya belum diketahui atau kosong).
-- Di PostgreSQL, kata kunci BOOLEAN dan BOOL adalah sinonim (artinya persis sama dan bisa digunakan secara bergantian).
-- Sangat berguna untuk menyimpan status dengan dua kemungkinan, seperti status aktif (true/false), status pembayaran (lunas/belum), atau hak akses admin.

--     ======================================================================================================================

-- Tipe Data ENUM
-- Saat membuat kolom, kadang ada jenis tipe data Text, namun isi datanya sudah fix, misal jenis kelamin, atau kategori dll sejenisnya
-- Kasus seperti itu bisa menggunakan tipe data enum
-- Tipe data enum harus dibuat terlebih dahulu, dan ditentukan value yang diperbolehkan nya

-- Membuat enum
-- Untuk membuat enum kita bisa menggunakan command:
-- CREATE TYPE NAMA_ENUM AS ENUM('nilai1', 'nilai2', 'nilain');
CREATE TYPE JENIS_KELAMIN AS ENUM ('Laki-Laki', 'Perempuan');


--     ======================================================================================================================

-- Tipe data lain
-- Sebenernya masih banyak tipe data yang lain di postgre sql, namun itu bisa dipelajari jika memang ada case atau kebutuhan khusus diluar tipe data dasar yang pasti akan sering kita pakai
-- Seperti misal tipe databinary, json, xml, dan lain lain
-- https://www.postgresql.org/docs/current/datatype.html