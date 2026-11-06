-- postgre sql mendukung function funtion untuk melakukan aggregate
-- misal kita ingin melihat harga paling mahal di tabel product, atau gharga termurah, atau rata rata harga product, atau jumlah total data di dalam tabel, dan lain lain
-- https://www.postgresql.org/docs/current/functions-aggregate.html

SELECT Avg(price) as "total PRODUCT" from products limit 3