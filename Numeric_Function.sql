/*Postgre sql memiliki banyak sekali fitur untuk manipulasi data angka
  Hal ini memudahkan kita untuk memanipulasi data angka
  secara garis besar, fitur ini dibagi menjadi dua, arithmetic Operator dan mathematical function
*/

-- (+ - * / %): {tambah kurang kali bagi habis_dibagi} *Arithmethical function

select id, price / 1000 as price_in_k from products;

/*Selain arithmetic function, ada juga mathematical function
  ini adalah kumpulan function yang terdapat di postgre sql yang bisa kita gunakan sebagai fungsi fungsi matematika
  ada banyak sekali, dan sulit dibahas smeua

  https://www.postgresql.org/docs/ <- lebih lengkap disitu

  */

-- Contoh
 SELECT PI();
 SELECT POWER(10,2);
 SELECT cos(50);