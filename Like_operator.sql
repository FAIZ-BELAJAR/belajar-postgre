/* LIKE dan ILIKE operator adalah operator yang bisa kita gunakan untuk mencari sebagian data dalam String

   Ini cocok sekali ketika kita hanya ingin mencari sebagian kata dalam string

   namun perlu diingat operasi LIKE itu sangat amat "Lambat" oleh karena itu, tidak disarankan jika datanya sudah terlalu besar di tabel

   LIKE itu case sensitive, jadi huruf besar dan kecil juga dianggap berbeda dan berpengaruh, jika kita tidak ingin case sensitive, maka bisa menggunakan ILIKE

   ILIKE tidak case sensitive, jadi huruf besar dan kecil dianggap sama saja, jika kita ingin case sensitive gunakan LIKE
*/

-- Operasi                  Hasil
--
-- LIKE 'b%' (Mengambil String dengan awalan b)
-- LIKE '%a' (Mengambil String dengan akhiran a)
-- LIKE '%FAIZ%' (Mengambil string yang ada isi 'Faiz' nya dimanapun)
-- NOT LIKE (berarti kebalikan dari like)
-- Penggunaan ILIKE juga sama saja namun bedanya ILIKE tidak case sensitive

-- Contoh

select * from products;
select * from products where name ILIKE '%Super%';

select * from products where name LIKE 'Mie%';