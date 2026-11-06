-- terkadang saat kita melakukan aggregate, kita ingin datanya di grouping berdasarkan kriteria tertentu
-- misal kita ingin melihat rata rata harga product, tapi ingin per category
-- atau kita ingin melihat total semua product, tapi per category
-- hal ini bisa dilakukan di postgre dengan menggunakan GROUP BY clase
-- GROUP BY clause ini hanya bisa digunakan jika kita menggunakan aggregate function

select category, avg(price) as "rata rata product", sum(price) as "total harga produk" from products group by category;

select id, count(id) as "total barang" from products group by category, id;
-- aggregate function tidak bisa digabungkan dengan query biasa

-- HAVING clause
-- Kadang kia ingin melakukan filter terhadap data yang sudah kita grouping
-- Misal kita ingin menampilkan ratarata harga per kategori, tapi yang harganya diatas 10.000 misalnya
-- jika menggunakan where di select, hal ini tidak bisa dilakukan
-- untuk memfilter hasil aggregate funciton kita harus menggunakan having clause

-- Contoh having clause
select category, count(id) as total from products group by category having count(id) > 1;