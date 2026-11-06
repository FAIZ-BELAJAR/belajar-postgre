/*Kadang kita butuh angka yang berurut untuk membuat primary key, misal 1,2, 3, dan seterusnya
  Untuk melakukan hal ini secara manual bukan lah hal bijak karna akan sangat boros round trip ke db apalagi jika aplikasinya diakses banyak sekali orang

  Postgre memiliki tipe data number bernama SERIAL, fitur ini bisa kita gunakan untuk membuat function yang akan otomatis mengembalikan nilai yang selalu naik ketika dipanggil

  dengan menggunakan SERIAL, kita tidak perlu lalu memasukan data primary key secara manual, karna secara otomatis nilai primary key akan naik
*/

create table admin
(
    id serial primary key ,
    nama text default 'anancuy' not null,
    kerjaan varchar(100)
);

insert into admin(nama, kerjaan) values
(
 'Budi', ' ngopi'
);

insert into admin(nama, kerjaan) values ('Angga', 'Hilman');

select * from admin;


-- Melihat ID terakhir

SELECT currval(pg_get_serial_sequence('admin', 'id'));

select currval('admin_id_seq');