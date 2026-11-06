-- Saat kira menggunakan tipe data serial sebenernya dibelakangnya postgre sql menggunakan sequence
-- sequence adalah fitur dimana kita bisa membuat function auto increment
-- saat menggunakan tipe data serial pada primary key secara otomatis postgre sql akan memuat sequence dan memanggil function sequence nya sebagai default value untuk primaty key nya

-- Contoh membuat sequence

CREATE SEQUENCE contoh_sequence;


-- Menaikan nilai sequence nya / increment
Select nextval('contoh_sequence');

-- jika ingin tau saat ini sequence nya angak terakhir berapa
select currval('contoh_sequence');

-- Contoh sequence dari serial

CREATE SEQUENCE id_pengguna;

CREATE TABLE pengguna
(
    id INT NOT NULL DEFAULT nextval('id_pengguna'),
    first_name varchar(100),
    last_name varchar(100),
    PRIMARY KEY (id)
)

-- command untuk melihat seluruh sequence:
\ds