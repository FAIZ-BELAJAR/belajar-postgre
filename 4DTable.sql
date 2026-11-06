-- Table
-- Data itu biasanya disimpn di dalam tabel di PostgreSQL
-- Tiap tabel biasanya menyimpan satu jenis data, misal ketika kita membuataplikasi toko online, kita akan membuat tabel barang, tabel pelanggan, tabel penjual dan lain lain
-- Sebelum kita bisa memasukan data ke tabel, kita wajib terlebih dahulu membuat tabelnya terlebih dahulu
-- Dan tiap tabel yang kita buat, wajib ditentukan kolom kolom nya, tipe data tiap kolom nya dll
-- Kita juga bisa mengubah tabel nantinya seperti menambah kolom baru, mengubah nama kolom yang sudah ada dan lain semacam nya

-- Membuat Table
-- CREATE TABLE NAMA_TABLE (KOLOM1 TIPE_DATA, KOLOM2 TIPE_DATA, KOLOMN TIPE_DATA);
CREATE TABLE NAMA_TABLE
            (
                KOLOM1 INT NOT NULL , -- Jika Isi dari suatu kolom tak boleh kosong
                KOLOM2 TEXT DEFAULT 'Kosong', -- Jika ingin mengubah default bukan null melainkan sesuatu yang kita mau
                KOLOMN bool
            );

-- Mengubah Table
-- ALTER TABLE NAMA_TABLE ADD COLUMN NAMA_COLUMN TIPE_DATA, DROP COLUMN NAMA_COLUMN, RENAME COLUMN NAMA_COLUMN_LAMA TO NAMA_COLUMN_BARU
ALTER TABLE NAMA_TABLE ADD COLUMN NAMA_COLUMN VARCHAR(100);
ALTER TABLE NAMA_TABLE DROP COLUMN KOLOM1;
ALTER TABLE NAMA_TABLE RENAME COLUMN KOLOM2 TO NAMA_COLUMN_BARU;

-- Null Value
-- Null adalah nilai ketika kita tidak mengisi data ke dalam column
-- Secara default saat kita membuat kolom, kolom tersebut bisa bernilai NULL, jika kita tidak ingin menerima nilai NULL, kita bisa menambahkan NOT NULL ketika pembuatan Kolom nya
ALTER TABLE NAMA_TABLE ADD COLUMN USERNAME TEXT NOT NULL;

-- Default Value saatkita menyimpan data ke dalam tabel, lalu kita hanya menyimpan beberapa kolom (tidak semuanya), kolom yang tidak kita beri niai secara default isinya null
-- namun jika kita ingin mengubah default value nya, kita bisa menambahkan perintah DEFAULT NILAI ketika pembuatan kolom nya
-- Khusus tipe data DATETIME atau TIMESTAMP, jika kita ingin menggunakan default value dengan nilai waktu saa ini, kita bisa gunakan kata kunci CURRENT_TIMESTAMP
ALTER TABLE NAMA_TABLE ADD COLUMN USIA INT DEFAULT(0);


-- Membuat ulang Table
-- Misal kita sudah memasukan data banyak namun kita ingin menghapus nya dan membuat ulang
-- Kita bisa menggunakan command:
-- TRUNCATE NAMA TABLE
TRUNCATE NAMA_TABLE;

SELECT * FROM NAMA_TABLE