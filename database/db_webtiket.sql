-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2024 at 06:37 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webtiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(10, 'admin', '$2y$10$8u5r/aJundMiolM5NUpvcubV7vQCOSxFGrIGbJQ6xpyxI7U.fTDOm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `no_wa` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `no_wa`, `email`, `password`) VALUES
(9, 'user', '086681928172', 'user@gmail.com', '$2y$10$oMx9dlc3y9iSgK9mo8IdF.rDs6ybV3LILt2pelox/0Ziq2/8abA5K'),
(10, 'hafidza', '087777314680', 'hafidza4310@gmail.com', '$2y$10$W7/kKqg9Ic5iqo51TZPdzuL6H5l5qK9IZVxh9QF5KDhFHtNpZEnwW'),
(11, 'iqbal', '0882021337475', 'iqbalanandarnst@gmail.com', '$2y$10$RMQIDxpE/eJouUqb0nZ1JucieBjdW4B.4OS59BVK3BTrER3a173N6'),
(12, 'silvi', '082352188368', 'silviayuni475@gmail.com', '$2y$10$rJLVgg1BtIZ2tOxZlRFpCeBtBOSuwxSfywDRWf02EwpWb52GnWX5u'),
(13, 'emi', '0895609624172', 'emiulandaripon11@gmail.com', '$2y$10$006gvyaKgI1vtslzJRTbRupxVkR9iaJCpegulq4t.lttGcgnfjGzq'),
(14, 'putri', '081234567890', 'putriaghnia@gmial.com', '$2y$10$OyP4VKLPbvbKdpGtHDxAC.sV0TL31TuYW9hFkL.Wq/ibLDn9qkj42'),
(15, 'dinda', '081234567890', 'dindazahra@gmail.com', '$2y$10$JrwMxDyUjwXOjAL9WigSgu6mBFZ05sgdSFoq5q4hyEiXVgahOfKay');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `id` int(11) NOT NULL,
  `id_tiket` varchar(15) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `catatan` varchar(200) NOT NULL,
  `rek_pengirim` varchar(50) NOT NULL,
  `namarek_pengirim` varchar(100) NOT NULL,
  `bank_pengirim` varchar(20) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `bank_penerima` varchar(150) NOT NULL,
  `total_pembayaran` varchar(50) NOT NULL,
  `waktu_pesanan` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `link_status` varchar(50) NOT NULL,
  `warna_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`id`, `id_tiket`, `order_id`, `email`, `catatan`, `rek_pengirim`, `namarek_pengirim`, `bank_pengirim`, `nama_event`, `bank_penerima`, `total_pembayaran`, `waktu_pesanan`, `bukti_pembayaran`, `status`, `link_status`, `warna_status`) VALUES
(31, 'user|40595', 'user', '086681928172 / user@gmail.com', 'beli tiket 1', '7253964191', 'Wadzifa', 'BCA', 'tiket konser amal', 'MANDIRI 8910782211 A/N RAHMA AULIA', '100000', 'Friday, 28-06-2024 | 07:57:39 am', '667e515a4bd3d.jpg', 'Telah Digunakan', '#', 'primary'),
(34, 'hafidza|64955', 'hafidza', '087777314680 / hafidza4310@gmail.com', 'mohon diproses', '901012345678', 'Hafidza', 'SEABANK', 'SkyAvenue 2024', 'BSI 7253964191 A/N WADZIFA', '500000', 'Saturday, 29-06-2024 | 00:06:16 am', '667ef2692fa1f.png', 'Telah Digunakan', '#', 'primary'),
(35, 'iqbal|66084', 'iqbal', '0882021337475 / iqbalanandarnst@gmail.com', 'mohon diproses secepatnya', '1451060649', 'IQBAL ANANDA RIZQY NASUTION', 'BNI', 'SkyAvenue 2024', 'BSI 7253964191 A/N WADZIFA', '750000', 'Saturday, 29-06-2024 | 00:41:33 am', '667ef8cef0e0e.jpg', 'Telah Digunakan', '#', 'primary'),
(36, 'silvi|8298', 'silvi', '082352188368 / silviayuni475@gmail.com', 'mohon diproses secepatnya', '629204775269530', 'SILVI AYUNI', 'BRI', 'SkyAvenue 2024', 'BSI 7253964191 A/N WADZIFA', '250000', 'Saturday, 29-06-2024 | 14:28:56 pm', '667fb8d2454d3.jpg', 'Telah Digunakan', '#', 'primary'),
(37, 'user|40006', 'user', '086681928172 / user@gmail.com', 'mohon diproses', '009801022919520', 'DWI', 'BRI', 'SkyAvenue 2024', 'BSI 7253964191 A/N WADZIFA', '250000', 'Sunday, 30-06-2024 | 08:21:23 am', '6680b38e30637.jpg', 'Cetak Tiket', 'cetaktiket.php', 'success'),
(38, 'putri|32377', 'putri', '081234567890 / putriaghnia@gmial.com', 'mohon diproses secepatnya', '009801022919520', 'PUTRI AGHNIA', 'BRI', 'SkyAvenue 2024', 'BSI 7253964191 A/N WADZIFA', '500000', 'Sunday, 30-06-2024 | 08:32:52 am', '6680b602c7c99.jpg', 'Cetak Tiket', 'cetaktiket.php', 'success'),
(39, 'dinda|52669', 'dinda', '081234567890 / dindazahra@gmail.com', 'mohon diproses secepatnya', '009801022919520', 'DINDA ZAHRA', 'BRI', 'SkyAvenue 2024', 'BSI 7253964191 A/N WADZIFA', '1000000', 'Minggu, 30-06-2024 | 09:25:37', '6680c257441ef.jpg', 'Cetak Tiket', 'cetaktiket.php', 'success');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
