-- di postgre sql kita bisa menambahkan contraint untuk menjaga data d tabel tetap baik
-- contraint sangat bagus di tambahkan untuk menjaga terjadi validasi yang salah dalam program kita, sehingga data yang masuk ke database akan tetap terjaga
-- sehingga data yang rusak tak akan masuk ke database

-- constraint ada banyak jenis
-- unique constrain adalah constraint yang memastikan bahwa data kira tetap unique

select nextval('contoh_sequence');
create sequence customer_id;

CREATE TABLE customer
(
    id SERIAL NOT NULL,
    email varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100),
    primary key (id),
    constraint unique_sumn unique (email, first_name)

);

-- menambah /menghapus constraint
alter table customer drop constraint unique_sumn;

alter table customer add constraint  unique_sumn unique (email, first_name);