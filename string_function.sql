-- ada banyak sekali string function / memanipulasi data string di
-- dalam postgre jika penasaran kunjungi https://www.postgresql.org/docs/19/functions-string.html

-- contoh saja

select id, LOWER(name), LENGTH(description) from products;