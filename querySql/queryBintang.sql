Query Database Toko Mainan (Bintang Reihandani Suryatin):

-- Membuat Database Toko Mainan
CREATE DATABASE TokoMainan

-- Membuat Tabel Kategori Barang
CREATE TABLE kategori_barang (id SERIAL PRIMARY KEY,nama_kategori VARCHAR(255) NOT NULL);

-- Membuat Tabel Barang
CREATE TABLE barang (
  id SERIAL PRIMARY KEY,
  nama_barang VARCHAR(255) NOT NULL,
  harga DECIMAL(10, 2) NOT NULL,
  stok INT NOT NULL,
  kategori_id INT,
  FOREIGN KEY (kategori_id) REFERENCES kategori_barang(id)
);


-- Insert, Update, Select Kategori Barang
-- INSERT kategori barang baru
INSERT INTO kategori_barang (nama_kategori) VALUES ('Mainan Anak-anak');

-- UPDATE kategori barang berdasarkan ID
UPDATE kategori_barang SET nama_kategori = 'Mainan Bayi' WHERE id = 1;

-- SELECT semua kategori barang
SELECT * FROM kategori_barang;

-- SELECT kategori barang berdasarkan ID(ID Menyesuaikan dapat diubah)
SELECT * FROM kategori_barang WHERE id = 1;


-- Insert, Update, Select Barang
-- Insert Barang Baru
INSERT INTO barang (nama_barang, harga, stok, kategori_id) VALUES ('Mainan Robot', 50.00, 20, 1);

-- Update barang berdasarkan ID
UPDATE barang SET harga = 55.00, stok = 25 WHERE id = 1;

-- SELECT semua barang
SELECT * FROM barang;

-- SELECT barang berdasarkan ID
SELECT * FROM barang WHERE id = 1;


--SELECT JOIN
-- SELECT nama_barang dan nama_kategori dari tabel Barang dan Kategori_Barang
SELECT barang.nama_barang, kategori_barang.nama_kategori
FROM barang
JOIN kategori_barang ON barang.kategori_id = kategori_barang.id;

-- SEELECT nama_barang dan nama_kategori dari tabel Barang dan Kategori_Barang berdasarkan ID Kategori_Barang
SELECT barang.nama_barang, kategori_barang.nama_kategori
FROM barang
JOIN kategori_barang ON barang.kategori_id = kategori_barang.id
WHERE kategori_barang.id = 1;






