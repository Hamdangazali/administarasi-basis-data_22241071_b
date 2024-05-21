-- Nama : Hamdan Gazali
-- Nim : 22241071
-- Modul 2

-- Menggunakan data base
use undikma_mart;

-- Nilai Literal Angka
SELECT 77;
SELECT 77 as angka;

-- menampilkan beberapa nilai literal dengan tipe data berbeda
SELECT 77 as angka,
true as nilai_logika,
'UNDIKMA' as teks;

-- NULL
-- Menampilkan NULL
SELECT NULL as kosong;

-- OPERATOR MATEMATIKA
-- kalkulasi ekspresi matematika
SELECT 5%2 as Sisa_bagi,
5/2 as hasil_bagi_1,
5 DIV 2 as hasil_bagi2;

-- LATIHAN MANDIRI
SELECT 4*2 as hasil_kali,
(4*8)%7 Hasil_Perkalian_Sisa_Bagi,
(4*8) MOD 7;

-- Menampilkan total belanja
SELECT qty*harga AS total_belanja
FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN
-- melakukan operator perbandingan
SELECT 5 = 5, 5<> 5 <> 4, 5 != 5, 5 != 4, 5 > 4;

-- LATIHAN MANDIRI 2
SELECT 1 = 1, 1 = 2, 5 >= 5, 5.2 = 5.20000, NULL = 1, NULL = NULL;

-- FUNGSI
SELECT pow(3,2),
round(3.14), round(3.54),
round(3.155, 1), round(3.155, 2),
floor(4.28), floor(4.78),
ceiling(4.39), ceiling(4.55);

SELECT now(), year(now()),
datediff(now(), '2003-12-14'), day('2003-12-14');

-- LATIHAN MANDIRI 3
SELECT datediff('2004-12-14', NOW()),
YEAR('2003-12-14'),
MONTH('2003-12-14'),
DAY('2003-12-14'),
YEAR(now());

-- selisih hari antara tgl penjualan terakhir dengan hari ini
SELECT datediff(now(), tgl_transaksi) FROM tr_penjualan_dqlab;

-- Filtering with WHERE
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE qty > 3;




