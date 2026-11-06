--Ketika kita mengambil data menggunakan perintah sql "SELECT", kadang kita ingin melakukan pencaarian data berdasarkan kolom tertentu dan parameter tertenru
--Misal kita ingin mengambil data barang yang harganya 1jt, atau mengambil data barang yang quantity nya 0(stok nya kosong)
--Hal ini bisa kita lakukan dengan "WHERE" clause setelah perintah select from

SELECT id, name, description, price
FROM products
WHERE id='P004' ;