-- Nama : Hamdan Gazali
-- Nim : 22241071
-- Prodi : Pendidikan Teknologi Informasi

-- Menggunakan database undikma_mart
use undikma_mart;

-- Mengambil 1 data nama_produk dari tabel ms_produk
SELECT nama_produk FROM ms_produk_dqlab;

-- Mengambil lebih dari satu kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- Mengambil seluruh kolom tabel
SELECT * FROM ms_produk_dqlab;

-- 1. Mengambil kolom kode_produk, nama_produk dari tabel ms_produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;

-- 2. Mengambil seluruh kolom dari tabel tr_penjualan
SELECT * FROM tr_penjualan_dqlab;


-- ALIAS & PREFIX
-- contoh PREFIX
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

SELECT undikma_mart.ms_produk_dqlab.nama_produk_dqlab;

-- contoh ALIAS
SELECT nama_produk as np FROM ms_produk_dqlab;
SELECT nama_produk np FROM ms_produk_dqlab;

-- contoh ALIAS didalam tabel
SELECT nama_produk FROM ms_produk_dqlab as mpl;

-- contoh penggunaan ALIAS di PREFIX

-- CASE 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;
-- CASE 2
SELECT nama_produk, harga FROM ms_produk_dqlab;
