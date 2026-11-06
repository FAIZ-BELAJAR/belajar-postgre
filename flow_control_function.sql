-- postgre sql memiliki fitur flow control function
-- mirip seperti IF ELSE di bahasa pemrograman
-- tapi fitur ini tetap tidak se kompleks yang dimiliki bahasa pemrograman
-- https://www.postgresql.org/docs/current/functions-conditional.html

-- Contoh:
SELECT id,
       CASE category
            WHEN 'Makanan' THEN 'ENAK'
            WHEN 'Minuman' THEN 'Seger'
            WHEN 'Lain-Lain' THEN 'Audah'
            ELSE 'Apa itu?'
            END as category
FROM products;


WITH konstanta AS (
    SELECT 20000 AS patokan_harga
)
SELECT p.*,
    CASE
        When p.price > k.patokan_harga THEN 'MAHAL'
        WHEn p.price< k.patokan_harga THEN 'MURAH'
        ELSE 'Gatau'
        END as price
from products p
cross join konstanta k;
