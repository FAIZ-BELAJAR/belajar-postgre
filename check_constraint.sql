-- check constraint adalah consyraint yang bisa kita tambahkan kondisi pengecekan nya
-- ini cocok untuk mengecek data sebeleum dimasukan ke dalam database
-- mial kita ingin memastikan bahwa harga harus diatas 10000 misal
-- maka kita bisa menggunakan check constraint

alter table products drop constraint harga_check;
alter table products add constraint harga_check CHECK(price >= 1000 or price >=2000);


insert into products (id, name, price, quantity, category) values ('1', 'ayam ijo', 200, 12, 'Makanan')