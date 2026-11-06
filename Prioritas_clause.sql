/*Jadi kadang kadang kita mau kombinasikan beberapa oeprator and dan or, nah pertanyaan nya bagaiamana jika salah satu ingin di dahulukan
  jika kita ingin kita tinggal mengguhnakan tanda kurung setelah where clause
*/

-- contoh
    select * from products where (quantity > 80 OR category = 'Makanan') /*yang ada di dalam kurung ini akan di prioritaskan dulu*/
    AND  price > 12000;
-- artinya kita mencari produk dengan prioritas quantitas lebih dari 80 atau kategorinya makanan, setelah mendapatkan datanya, kita sorting lagi data dengan price diatas 12000