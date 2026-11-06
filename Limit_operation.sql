/*LIMIT DAN OFFSET

  Mengambil seluruh data ditabel bukanlah pilihan bijak, apalagi jika data sudah banyak sekali

  Kita bisa membatasi data yang diambil dalam sql select dengan LIMIT clause

  Selain membatasi jumlah data, kita juga bisa meng skip sejumlah data yang tidak ingin kita lihat / dapat

  LIMIT biasanya digunakan saat melakukan paging di aplikasi kita, dengan kombinasi OFFSET

  OFFSET akan mengskip data*/

--   Contoh:

select * from products where price > 10000 ORDER BY price ASC LIMIT 2;
-- Artinya ambil data produk dimana price lebih besar dari 10000 diurutkan ke yang terbesar berdasarkan price, sebanyak 2 data

select * from products where price > 10000 ORDER BY price ASC LIMIT 2 OFFSET 1;
-- Artinya ambil data produk dimana price lebih besar dari 10000 diurutkan ke yang terbesar berdasarkan price, sebanyak 2 data lalu skip 1 data pertama ditemukan
