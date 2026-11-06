/* BETWEEN Operator

 Kadang kita ingin mencari data yang >= dan <= sekaligus atau 2 kondisi sekaligus

  Misal kita ingin mencari products yang harganya antara 10000 sampe 20000
  Untuk melakukan ini, kita bisa menggunakan WHERE price >= 10000 AND price <= 20000
  Namun itu cukup pemborosan kata

  Maka diadakan operator BETWEEN yang bisa digunakan untuk case seperti itu agar lebih sederhana

  Untuk kebalikan BETWEEN adalah NOT BETWEEN
*/

-- Contoh

select * from products where price BETWEEN 10000 AND 30000;
-- Artinya ambil semua data dari produk dimana harga diantara 10 ribu sampai 30 ribu


select * from products where price NOT BETWEEN 10000 AND 30000;
-- Artinya ambil semua data dari produk dimana harga dibawah sama dengan 10 ribu dan diatas sama dengan 30 ribu

