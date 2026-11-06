-- foreign key adalah kunci yang merelasikan suatu data dari suatu tabel ke tabel lain yang dijadikan sebagai foreign key nya

CREATE TABLE wishlist
(
    id SERIAL  NOT NULL,
    id_products VARCHAR(100) NOT NULL,
    nama_produk varchar(100) NOT NULL,
    primary key (id),
    constraint fk_wishlist_produk foreign key (id_products) references products (id)
)


insert into wishlist(id_products, nama_produk)
values ('P001', 'Mi ayam my guweh')