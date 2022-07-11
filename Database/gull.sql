-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Okt 2021 pada 10.37
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gull`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_kode` varchar(20) DEFAULT NULL,
  `client_nama` varchar(150) DEFAULT NULL,
  `client_website` varchar(200) DEFAULT NULL,
  `client_no_telp` varchar(20) DEFAULT NULL,
  `client_no_wa` varchar(20) DEFAULT NULL,
  `client_email` varchar(150) DEFAULT NULL,
  `client_keterangan` text,
  `client_tgl_daftar` date DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`client_id`, `client_kode`, `client_nama`, `client_website`, `client_no_telp`, `client_no_wa`, `client_email`, `client_keterangan`, `client_tgl_daftar`, `created_time`, `created_by`, `updated_time`, `updated_by`, `status`) VALUES
(1, 'h2so4', 'faturrahman', 'rahmanfaur.com', '085155234294', '085155234294', 'rahmanfaturaja@gmail.com', 'client1', '2021-09-19', '2021-08-24 09:07:25', 2, '2021-08-24 09:08:04', 2, 1),
(2, 'h2so41', 'faturrahman1', 'rahmanfau1r.com', '085155231294', '085155231294', 'rahmanfaturaj1a@gmail.com', 'client1', '2021-08-05', '2021-08-24 15:22:22', 2, '2021-08-24 15:22:22', NULL, 0),
(3, 'cbktm', 'ariel', 'ariel.com', '1029384', '1029348', 'ariel@gmail', 'klient2', '2022-05-06', '2021-08-24 15:23:44', 2, '2021-10-01 14:18:54', 13, 1),
(4, 'soap', 'lsdka', 'sidoa.com', '09821', '09883', 'ariel1@gmail', 'asd', '2021-07-18', '2021-08-25 09:43:38', 2, '2021-08-25 09:43:38', NULL, 1),
(5, 'ujicoba', 'try', 'try.com', '0982765162', '0927192030', 'try@gmail.com', 'transaksi uji coba', '2021-01-13', '2021-10-01 14:01:26', 13, '2021-10-01 14:01:26', NULL, 1),
(6, 'dumy', 'dumy', 'barox.com', '0298390', '0293890', 'dumygmail.com', 'dumy data', '2019-09-12', '2021-10-01 14:17:17', 13, '2021-10-01 14:17:17', NULL, 1),
(7, 'dumy1', 'dumy1', 'dumy1.com', '09239', '09239', 'dumy1@gmail.com', 'dumy data', '2022-06-08', '2021-10-01 14:18:23', 13, '2021-10-01 14:18:23', NULL, 1),
(8, 'dumydata', 'dummy', 'dummy.com', '0928192312', '092102930', 'dumy@gmail.com', 'transaksi dummy data', '2021-11-19', '2021-10-02 13:55:57', 1, '2021-10-02 13:55:57', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `client_transaksi`
--

CREATE TABLE `client_transaksi` (
  `client_transaksi_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `client_transaksi_date_start` date DEFAULT NULL,
  `client_transaksi_date_finish` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `client_transaksi`
--

INSERT INTO `client_transaksi` (`client_transaksi_id`, `client_id`, `client_transaksi_date_start`, `client_transaksi_date_finish`, `created_time`, `created_by`, `updated_time`, `updated_by`, `status`) VALUES
(1, 1, '2021-10-01', 1, '2021-10-01 13:47:35', NULL, '2021-10-01 13:47:35', 13, 1),
(2, 2, '2021-09-15', 1, '2021-10-01 13:52:26', NULL, '2021-10-01 13:52:26', 13, 0),
(3, 5, '2021-09-30', 1, '2021-10-01 14:02:05', NULL, '2021-10-01 14:02:05', 13, 1),
(4, 6, '2020-09-09', 1, '2021-10-01 14:19:19', NULL, '2021-10-01 14:19:19', 13, 1),
(5, 7, '2021-01-06', 1, '2021-10-02 09:23:58', NULL, '2021-10-02 09:23:58', 1, 1),
(6, 3, '2021-10-01', 1, '2021-10-02 09:30:00', NULL, '2021-10-02 09:30:00', 1, 1),
(7, 4, '2021-10-05', 1, '2021-10-02 09:40:02', 1, '2021-10-02 09:40:02', NULL, 1),
(8, 8, '2021-11-19', 1, '2021-10-02 13:56:19', 1, '2021-10-02 13:56:19', NULL, 1),
(9, 1, '2021-10-01', 1, '2021-10-02 15:25:57', 1, '2021-10-02 15:25:57', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `set_invoice_cooldown` int(255) DEFAULT NULL,
  `id` int(255) NOT NULL,
  `set_email` varchar(150) DEFAULT NULL,
  `set_wa` varchar(20) DEFAULT NULL,
  `set_keterangan_perpanjangan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`set_invoice_cooldown`, `id`, `set_email`, `set_wa`, `set_keterangan_perpanjangan`) VALUES
(364, 1, 'rahmanfaturaja@gmail.com', '6285155234294', 'client1'),
(348, 2, 'rahmanfaturaj1a@gmail.com', '085155231294', 'client1'),
(363, 3, 'try@gmail.com', '0927192030', 'transaksi uji coba'),
(-17, 4, 'dumygmail.com', '0293890', 'dumy data'),
(99, 5, 'dumy1@gmail.com', '09239', 'dumy data'),
(364, 6, 'ariel@gmail', '1029348', 'klient2'),
(368, 7, 'ariel1@gmail', '09883', 'asd'),
(412, 8, 'dumy@gmail.com', '092102930', 'transaksi dummy data'),
(364, 9, 'rahmanfaturaja@gmail.com', '085155234294', 'client1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sidebar`
--

CREATE TABLE `sidebar` (
  `sidebar_id` int(11) NOT NULL,
  `sidebar_parent` int(11) DEFAULT '0',
  `sidebar_nama` varchar(150) DEFAULT NULL,
  `sidebar_kode` varchar(100) DEFAULT NULL,
  `sidebar_icon` varchar(20) DEFAULT NULL,
  `sidebar_href` text,
  `sidebar_position` int(1) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `sidebar`
--

INSERT INTO `sidebar` (`sidebar_id`, `sidebar_parent`, `sidebar_nama`, `sidebar_kode`, `sidebar_icon`, `sidebar_href`, `sidebar_position`, `created_time`, `updated_time`, `status`) VALUES
(1, 0, 'System', 'system', 'fa fa-cogs', NULL, 99, '2021-03-22 07:54:31', NULL, 1),
(2, 1, 'Users', 'users', 'fa fa-user', 'sistem/users', 1, '2021-03-22 08:27:13', NULL, 0),
(3, 1, 'User', 'user', 'fa fa-users', '/user', 2, '2021-03-22 08:27:34', NULL, 1),
(4, 1, 'Sidebar', 'sidebar', 'fa fa-bars', 'sistem/sidebar', 3, '2021-03-22 08:42:59', NULL, 0),
(6, 0, 'Master Data', 'masterdata', 'fa fa-book', NULL, 2, '2021-03-25 16:17:28', NULL, 1),
(7, 6, 'layanan', 'toko', 'fa fa-home', '/clienttransaksi', 1, '2021-03-25 16:18:25', NULL, 1),
(8, 6, 'Customers', 'pengguna', 'fa fa-user', '/client', 2, '2021-03-25 16:18:25', NULL, 1),
(9, 1, 'setting', NULL, 'fas fa-wrench', '/setting', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(150) DEFAULT NULL,
  `user_no_hp` varchar(20) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `created_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_no_hp`, `user_email`, `username`, `password`, `created_time`, `created_by`, `updated_time`, `updated_by`, `status`) VALUES
(1, 'fatur', '6285155234294', 'rahmanfaturaja@gmail.com', 'developer', '$2y$10$5wiE2wwRXT35T9QHhlHvW.8fD3Ltkcx0SPXEwXMktIFkikIeuD/t6', '2021-10-01 13:36:27', NULL, '2021-10-01 13:36:27', NULL, NULL),
(4, 'dumy', '0928320', 'dumy@gmail.com', 'admin1', '$2y$10$058dHUrUUPBjhJCh4Fusou/TZHUoUnrbQnFIZ8/WrQLL7cnkkMnj6', '2021-10-02 09:13:17', 1, '2021-10-02 10:32:43', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`) USING BTREE;

--
-- Indeks untuk tabel `client_transaksi`
--
ALTER TABLE `client_transaksi`
  ADD PRIMARY KEY (`client_transaksi_id`) USING BTREE;

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sidebar`
--
ALTER TABLE `sidebar`
  ADD PRIMARY KEY (`sidebar_id`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `client_transaksi`
--
ALTER TABLE `client_transaksi`
  MODIFY `client_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sidebar`
--
ALTER TABLE `sidebar`
  MODIFY `sidebar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
