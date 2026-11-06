/*postgre sql memiliki fitur untuk melakukan alias untuk kolom dan tabel

  Alias berguna jika kia ingin mengubah nama kolom, atau nama tabel ketika melakukan select data

  Mungkin saat ini alias untuk tabel tidak terlalu terlihat gunanya, tapi nanti ketika kita telah mempelajari tentang JOIN, maka fitur alias untuk tabel sangat berguna sekali*/

--   Alias untuk kolom
    Select id as /* ini aliasnya ->*/ Kode,
           price as Harga,
           description as Deskripsi
    From products;

-- Alias untuk tabel
    select
        p.id,
        p.description,
        p.name
    from products as p;