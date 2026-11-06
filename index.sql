-- secara default, postgre sql akan menyimpan data di dalam disk seperti tabel biasanya, hal ini menyebabkan ketikaa kita mencari data maka postgre akan melakukan pencarian dari baris pertama sampai terakhir, yang artinya semakin banyak datanya semakin lambat proses pencarian nya


-- kita bisa mengubah cara postgre menyimpan data pada kolom agar lebih mudah dicari yaitu menggunakan index

-- saat kita menmbuat index, postgre akan menyimpan data dalam struktur data b-tree:
-- https://en.wikipedia.org/wiki/B-tree

-- tidak hanya mempermudah kita saat melakukan pencarian index juga akan mempermuda ketika kita melakukan pengurutan ORDER BY

-- kita bisa membuatlebih dari satu inddex di table, dan detiap kita membuat index kita bisa membuatindex untuk beberapa kolom sekaligus

-- misal kita membuat index

-- (col1, col2, col3)

-- artinya kita punya kemampuan untuk mencari lebih cepat menggunakan index untuk combinasi query di

-- efek samping membuat index adalah memperlambat proses manipulasi data (inset, updatedan delete)

-- oleh karna itu kita harus bisa saat membuat index

-- simple nya index membuat proses membaca data lebih cepat tapi memperlambat proses manipulasi data

-- pada saat kita membuat primary key atau unique constrain kita tidak perlu lagi menambahkan index

create table sellers(
    id serial not null,
    nama varchar(100) not null,
    email varchar(100) not null,

    primary key (id),
    constraint email_unique unique (email)
);

insert into sellers (id, nama, email) values (1, 'faiz', 'anjay');

SELECT * FROM sellers WHERE email = 'anjay';
-- Sangat optimal karena kolom email sudah memiliki indeks UNIQUE.