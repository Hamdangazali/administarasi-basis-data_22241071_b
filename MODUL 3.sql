-- Nama : Hamdan Gazali
-- NIM : 22241071
-- Modul 3

-- Menggunakan Database
use undikma_mart;

-- ORDER BY
-- Menggambil kolom nama produk dan qty dari penjualan urutkan berdasarkan qty
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty;

-- Menggambil kolom nama produk dan qty dari penjualan urutkan berdasarkan qtty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty, nama_produk;


-- Latihan dengan berbagai pengurutan dengan ORDER BY dengan kriteria berikut
SELECT * FROM tr_penjualan_dqlab qty ORDER BY qty, tgl_transaksi;
SELECT * FROM ms_pelanggan_dqlab qty ORDER BY nama_pelanggan;
SELECT * FROM ms_pelanggan_dqlab qty ORDER BY alamat;

-- Menggambil kolom nama produk dan qty dari penjualan urutkan berdasarkan qtty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan_dqlab
ORDER BY qty DESC;

-- Latihan 3
SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty DESC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

-- Latihan Mandiri 4
-- No 1
SELECT * FROM tr_penjualan_dqlab WHERE diskon_persen > 0 ORDER BY harga DESC;
-- No 2
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab WHERE harga >= 100000 ORDER BY harga DESC;
-- No 3
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab WHERE harga >= 100000 OR nama_produk like't%' ORDER BY diskon_persen DESC;
 
 -- FUNGSI AGREGASI 
 -- Hitung total qty dari tabel penjualan 
 SELECT  sum(qty) FROM tr_penjualan_dqlab;
 
 -- Hitung seluruh row dari tabel penjualan 
 SELECT count(*) FROM tr_penjualan_dqlab;
 
 -- Menghitung jumlah qty dan jumlah row dari tabel penjualan 
 SELECT sum(qty) as Total_qty, count(*) as Total_row FROM tr_penjaualan_dqlab;
 
 -- Hitung rata-rata, nilai maksimum dan nilai maksimum dari qty tabel penjualan
 SELECT avg(qty), max(qty), min(qty) FROM tr_penjualan_dqlab;

-- Hitung jumlah nama unik dari nama produk dari tabel penjualan
SELECT count(distinct nama_produk) FROM tr_penjualan_dqlab;

-- menampilan seluruh row dan jumlah unik dari nama produk di tabel penjualan 
SELECT count(*), count(distinct nama_produk) FROM tr_penjualan_dqlab;
-- SELECT count(*), count(distinct nama_produk), nama_produk FROM tr_penjulan_dqlab;

-- GROUP BY
-- grub by 
-- kelompokkan nilai dari nama produk di tabel penjualan
select nama_pruduk From tr_penjualan_dqlab GROUP BY nama_produk;

-- Kelompokkan nilai dari nama produk dan quantity dari di tabel penjualan
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk, qty;

-- Group by + fungsi agregasi
-- ambil jumlah quantity dari hasil pengelompokan nama_produk di tabel penjualan
SELECT nama_produk, sum(qty) 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk
ORDER BY nama_produk DESC;

-- HAVING
-- mengambil jumlah qty > 2 dari hasil pengelompokan nama produk
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk 
HAVING sum(qty) > 2 order by sum(qty) DESC;

-- tugas mandiri 
-- no 1
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk 
HAVING sum(qty) > 4 order by sum(qty) DESC;
-- no 2
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk 
HAVING sum(qty) >  order by sum(qty) DESC

--  no 3 
SELECT nama_produk, qty*(harga-(diskon_persen/100*harga)
AS toral_bayar
GROUP by nama_produk
order by sum(qty) DESC
