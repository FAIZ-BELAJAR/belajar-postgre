/* Saat kita melakukan query dengan SELECT, kadang kita mendapatkan data yang duplikat
   Misal kita ingin melihat semua kategori di tabel products, maka otomatis hasil query SELECT akan duplikat, karena banyak sekali produk dengan kategori yang sama
   Jika kita ingin menghilangkan data data duplikat tersebut, kita bisa menggunakan SELECT dengan tambahan DISTINCT sebelum nama kolom nya
*/

-- Contoh:
SELECT DISTINCT category from products;

Select category from products;

-- Biasanya DISTINC digunakan untuk melihat suatu kolom yang tipe datanya ENUM khusus gitu