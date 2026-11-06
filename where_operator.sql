/*Sebelumnya di materi where clause kita sudah menggunakan operator "=" (sama dengan)

  Sebenarnya sangat banyak sekali operator yang bisa kita gunakan ketika menggunakan where clause

  Sekarang kita akan bahas satu per satu*/

--  = (Sama dengan)
-- <> atau != (tidak sama dengan)
-- < (lebih kecil dari)
-- <= (lebih kecil dari sama dengan)
-- > (lebih besar dari)
-- >= (lebih besar dari sama dengan)

-- contoh

select l.name, l.description from products as l where l.price >= 30000;

select l.name, l.description from products as l where l.price > 30000;

select l.name, l.description from products as l where l.price <= 30000;

select l.name, l.description from products as l where l.price < 30000;

select l.name, l.description from products as l where l.price != 30000;

select l.name, l.description from products as l where l.price <> 30000;

select l.name, l.description from products as l where l.price = 30000;