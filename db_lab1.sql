-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 02:23 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lab1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_admin`
--

CREATE TABLE `tab_admin` (
  `id_admin` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jabatan_admin` varchar(100) NOT NULL,
  `level` enum('1','2') NOT NULL,
  `foto_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_kunjungan`
--

CREATE TABLE `tab_kunjungan` (
  `id_kunjungan` int(11) NOT NULL,
  `number` int(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `nip` int(200) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `tanda_tangan` varchar(200) NOT NULL,
  `tujuan_kunjungan` int(200) NOT NULL,
  `saran` varchar(200) NOT NULL,
  `foto_kegiatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_admin`
--
ALTER TABLE `tab_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tab_kunjungan`
--
ALTER TABLE `tab_kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tab_admin`
--
ALTER TABLE `tab_admin`
  ADD CONSTRAINT `tab_admin_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tab_kunjungan` (`id_kunjungan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
