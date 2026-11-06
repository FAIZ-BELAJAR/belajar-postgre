--Untuk mengubh data di tabel kita bisa menggunakan perintah sql "UPDATE"
--Saat menggunakan SQL UPDATE, kita harus memberi tahu data mana yang akan di update dengan cara menggunakan "WHERE" clause
--Hati-hati ketika mengupdate data di table, jika sampai where clause nya salah, bisa bisa kita malah mengupdate seluruh data di tabel atau data yang sebenarnya tak ingin kita update
-- untuk update, kita harus beritahu, kolom mana yang akan di update

UPDATE products
SET category='Makanan'
WHERE id='P002';