-- postgre sql menudukung query select langsung ke beberapa tabel sekaligus
-- namun untuk melakukan itu kita perl melakukan join di sql select yang kita buat untuk melakukan join
-- kita perlu menentukan tabel mana yang merupakan referensi ke tabel lain


select * from wishlist join products on products.id = wishlist.id_products;

select products.price as harga, products.name as nama, wishlist.id as id_wishlist from wishlist join products on products.id = wishlist.id_products