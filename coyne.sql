-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2021 pada 09.08
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coyne`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `accountadmin`
--

CREATE TABLE `accountadmin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `idAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `accountadmin`
--

INSERT INTO `accountadmin` (`username`, `password`, `idAdmin`) VALUES
('adminsatu', 'adminsatu', 1),
('admindua', 'admindua', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `accountcustomer`
--

CREATE TABLE `accountcustomer` (
  `idCustomer` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `accountcustomer`
--

INSERT INTO `accountcustomer` (`idCustomer`, `username`, `password`, `email`) VALUES
(48, 'harjono', 'harjono', 'harjono@gmail.com'),
(53, 'sefin', 'sefinsefin', 'sefin@gmail.com'),
(54, 'cindy', 'cindycindy', 'cindy@gmail.com'),
(55, 'rian', 'rianrian', 'rian@gmail.com'),
(56, 'iwan', 'iwaniwan', 'iwan@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `namaProduk` varchar(50) NOT NULL,
  `kategoriProduk` varchar(20) NOT NULL,
  `beratProduk` int(10) NOT NULL,
  `stokProduk` int(10) NOT NULL,
  `hargaProduk` int(20) NOT NULL,
  `gambarProduk` varchar(50) NOT NULL,
  `idProduk` int(20) NOT NULL,
  `usernameCustomer` varchar(50) NOT NULL,
  `qty` int(20) NOT NULL,
  `totalHarga` int(20) NOT NULL,
  `idKeranjang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idProduk` int(100) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `kategoriProduk` varchar(100) NOT NULL,
  `beratProduk` int(20) NOT NULL,
  `stokProduk` int(20) NOT NULL,
  `deskripsiProduk` varchar(100) NOT NULL,
  `hargaProduk` int(20) NOT NULL,
  `gambarProduk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idProduk`, `namaProduk`, `kategoriProduk`, `beratProduk`, `stokProduk`, `deskripsiProduk`, `hargaProduk`, `gambarProduk`) VALUES
(1, 'Mangga', 'Buah', 1, 8, 'Mangga segar menyehatkan', 10000, 'mangga.jpeg'),
(2, 'Alpukat', 'Buah', 1, 8, 'Alpukat manis', 8000, 'alpukat.jpeg'),
(3, 'Bayam', 'Sayur', 1, 4, 'Bayam seger', 7000, 'bayam.jpeg'),
(7, 'Terong', 'Sayur', 1, 8, 'Terong menyehatkan', 7000, 'terong.jpeg'),
(8, 'Wortel', 'Sayur', 1, 5, 'Wortel seger', 5000, 'wortel.jpeg'),
(9, 'Apel', 'Buah', 1, 10, 'Apel segar dan manis', 8000, 'apel.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idPesanan` int(20) NOT NULL,
  `noHP` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `pilihPembayaran` varchar(20) NOT NULL,
  `totalHarga` int(20) NOT NULL,
  `tanggalPembelian` date NOT NULL,
  `namaProduk` varchar(50) NOT NULL,
  `qty` int(20) NOT NULL,
  `namaPembeli` varchar(100) NOT NULL,
  `buktiTransfer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idPesanan`, `noHP`, `alamat`, `pilihPembayaran`, `totalHarga`, `tanggalPembelian`, `namaProduk`, `qty`, `namaPembeli`, `buktiTransfer`) VALUES
(17, '08675463', 'Paingan', 'BRI', 16000, '2021-12-18', 'Alpukat', 2, 'Harjono', 'BRI.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `accountadmin`
--
ALTER TABLE `accountadmin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indeks untuk tabel `accountcustomer`
--
ALTER TABLE `accountcustomer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idKeranjang`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idPesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `accountadmin`
--
ALTER TABLE `accountadmin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `accountcustomer`
--
ALTER TABLE `accountcustomer`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idKeranjang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idProduk` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idPesanan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
