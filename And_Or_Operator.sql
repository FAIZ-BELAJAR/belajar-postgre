/*And dan Or operator

  Kadang kadang kita ingin mencari data dengan beberapa gabungan kondisi, kita bisa menggunakan operator AND dan OR

  AND dan OR digunakan untuk menggabungkan beberapa dua operator*/

--   O1       02
--  True AND True == True
--  True AND False == False
--  False AND True == False
--  False AND False == False

--  01      02
-- True OR True == True
-- True OR False == True
-- False OR True == True
-- False OR False == False

-- Contoh mendari data Produk
Select * from products where price >= 15000 AND category = 'Makanan';
-- Artinya mencari data dengan 2 kondisi yakni harga diatas atau sama dengan 15 ribu, dan kategori adalah makanan dan keduanya harus terpenuhi

    select * from products;
-- Contoh mencari data Produk
Select * from products where price >= 15000 OR category = 'Makanan';
-- Artinya mencari data dengan 2 kondisi yakni harga diatas atau sama dengan 15 ribu, dan kategori adalah makanan dan bebas salah satunya yang terpnuhi tak harus keduanya terpenuhi