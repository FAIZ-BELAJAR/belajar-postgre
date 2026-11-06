/* Untuk mengurutkan data ketika kita menggunakan perintah SQL SELECT, kita bisa menambahkan ORDER BY clause

   ORDER BY clause digunakan untuk mengurutkan data berdasarkan kolom yang dipilih, dan jenis urutan(ASC atau DESC)

   Asc adalah ascending dimana data diurutkan menurut konstanta terbesar hingga yang terkecil

   Desc adalah descending dimana data diurutkan menurut konstanta terkecil hingga terbesar

   Kita juga bisa mengurutkan tidak hanya terhadap satu kolom melainkan beberapa kolom
*/

-- Contoh:
Select * from products  where price > 10000 ORDER BY price ASC, id DESC;