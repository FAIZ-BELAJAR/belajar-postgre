/*Operator IN adalah operator untuk melakukan pencarian sebuah kolom dengan beberapa nilai

  Misal kita ingin mencari product dengan category makanan sekaligus Minuman, maka kita bisa menggunakan Operator IN

  Untuk kebalikan nya, kita bisa menggunakan NOT IN*/

--   Contoh
select * from products where category IN('Makanan', 'Minuman');

insert into products(id, name, description, price, quantity,  category)
values ( 'M001', 'jus mangga', 'Jus mangga enak', 7000, 20, 'Minuman');

                                                                                          )