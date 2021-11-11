-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2021 pada 18.53
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pilketos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_paslon`
--

CREATE TABLE `data_paslon` (
  `id` int(11) NOT NULL,
  `nim_ketua` varchar(9) NOT NULL,
  `nm_paslon_ketua` varchar(50) NOT NULL,
  `gambar1` varchar(100) NOT NULL,
  `nim_wakil` varchar(9) NOT NULL,
  `nm_paslon_wakil` varchar(50) NOT NULL,
  `gambar2` varchar(100) NOT NULL,
  `no_urut` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `nim` varchar(10) NOT NULL,
  `kode_akses` varchar(8) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_akses`
--

INSERT INTO `tbl_akses` (`nim`, `kode_akses`, `level`) VALUES
('ADMIN', 'ADMIN', 'admin'),
('DENI123', 'DENI', 'admin'),
('F1A416026', 'RTYUI', 'admin'),
('RIAN123', 'RIAN', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dpt`
--

CREATE TABLE `tbl_dpt` (
  `nim` varchar(9) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `waktu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dpt`
--

INSERT INTO `tbl_dpt` (`nim`, `nama_mhs`, `status`, `waktu`) VALUES
('ADMIN', 'ADMIN', 'Belum memilih', 'Belum memilih'),
('DENI123', 'DENI', 'Belum memilih', 'Belum memilih'),
('F1A416026', 'jevi', 'Belum memilih', '-'),
('RIAN123', 'RIAN', 'Belum memilih', 'Belum memilih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_paslon`
--

CREATE TABLE `tbl_paslon` (
  `kode_akses` varchar(6) NOT NULL,
  `nomor_paslon` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_paslon`
--

INSERT INTO `tbl_paslon` (`kode_akses`, `nomor_paslon`) VALUES
('E', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_paslon`
--
ALTER TABLE `data_paslon`
  ADD PRIMARY KEY (`id`,`nim_ketua`);

--
-- Indeks untuk tabel `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_dpt`
--
ALTER TABLE `tbl_dpt`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_paslon`
--
ALTER TABLE `tbl_paslon`
  ADD PRIMARY KEY (`kode_akses`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_paslon`
--
ALTER TABLE `data_paslon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
