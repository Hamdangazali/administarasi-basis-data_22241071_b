-- Nama  : Hamdan Gazali
-- Nim   : 22241071

-- No 1
-- Tampilkan hanya 5 nama produk yang memiliki pendapatan(revenue) penjualan terkecil

SELECT nama_produk, sum(qty*harga-(diskon_persen/100)*harga)
AS total_bayar
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_bayar ASC
Limit 5;





SELECT kode_pelanggan, COUNT(kode_transaksi) AS total_order, SUM(qty) AS total_quantity, SUM(harga * qty) AS revenue,
CASE 
WHEN SUM(harga * qty) >= 900000 THEN 'follow update'
ELSE 'follow update'
END AS remark
FROM tr_penjualan_dqlab
GROUP BY kode_pelanggan
limit 3;






-- NO 3
-- Tampilkan semua nama pelanggan, alamat pelanggan yang tidak pernah belanja wajib menggunakan join
SELECT mpd.nama_pelanggan, mpd.alamat
FROM ms_pelanggan_dqlab AS mpd LEFT JOIN tr_penjualan_dqlab AS tp
ON mpd.nama_pelanggan = mpd.alamat
WHERE tp.qty IS NULL;
