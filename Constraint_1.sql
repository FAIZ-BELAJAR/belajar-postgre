-- di dalam postgre kita bisa menambahkan constraint untuk menjaga data di tabel tetap baik sesuai aturan yang kita mau

-- unique constraint adalah constraint yang memastikan bahawa data kita tetap unique

-- Jika kita mencoba memasukan data yang diuplikat maka postgre sql akan menolah data tersebut

create table consumer(
    id serial not null,
    email varchar(100) not null,
    first_name text,
    last_name text,

    primary key (id),

    constraint email_unik unique (email) -- ini adalah contoh menjaga contraint dengan unique jadi tak akan ada bisa 2 email sama
);

insert into consumer (email, first_name, last_name) values ('ananlol@gmail.com', 'Faiz', 'Anan')
