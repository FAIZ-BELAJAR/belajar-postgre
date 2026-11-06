 select * from pg_tables where schemaname='public';

alter table barang
add column barang_legal bool not null default true;

truncate barang;

CREATE TABLE products
(
    id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);


 create type product_category as enum ('Makanan', 'Minuman', 'Lain-Lain');

 alter Table products
     drop column categoru,
 Add column category product_category default 'Lain-Lain';