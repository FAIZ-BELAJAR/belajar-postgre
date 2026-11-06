--Saat kita membuat tabel, idealnya tiap tabel memiliki Primary Key
--Primary key adalah sebuah kolom yang kita tunjuk sebagai id dari table tersebut
--Primary key adalah identitas untuk tiap baris data di dalam tabel
--Primary key harus unik, tidak boleh ada data dengan primary key yang sama
--Kita bisa menunjuk kolom yang akan kita jadikan primary key

--Kita bisa membuat primary key dengan kombinasi beberapa kolom
--Namun disarankan untuk tetap menggunakan satu kolom ketika membuat primary key
--Kecuali ada kasus khusus seperti membuat tabel yang berelasi MANY TO MANY(yang nanti akan kita bahas)

ALTER TABLE products
Add primary key (id);