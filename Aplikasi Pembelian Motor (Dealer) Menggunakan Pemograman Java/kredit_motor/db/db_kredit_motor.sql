-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 06:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kredit_motor`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar_cicilan`
--

CREATE TABLE `bayar_cicilan` (
  `nomor_bayar` varchar(7) DEFAULT NULL,
  `tgl_bayar` date NOT NULL,
  `kd_kredit` varchar(7) NOT NULL,
  `bayar` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `angsuran_ke` int(2) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beli_cash`
--

CREATE TABLE `beli_cash` (
  `kd_cash` varchar(7) DEFAULT NULL,
  `tgl_cash` date NOT NULL,
  `kd_pembeli` varchar(7) NOT NULL,
  `kd_motor` varchar(7) NOT NULL,
  `harga` int(11) NOT NULL,
  `bayar` int(9) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beli_kredit`
--

CREATE TABLE `beli_kredit` (
  `kd_kredit` varchar(7) DEFAULT NULL,
  `tgl_kredit` date NOT NULL,
  `kd_pembeli` varchar(7) NOT NULL,
  `kd_motor` varchar(7) NOT NULL,
  `uang_muka` int(11) NOT NULL,
  `lama_cicilan` int(2) NOT NULL,
  `cicilan_per_bulan` int(2) NOT NULL,
  `sisa` int(9) NOT NULL,
  `keterangan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `kd_motor` varchar(7) DEFAULT NULL,
  `no_mesin` int(11) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tahun_pembuatan` int(4) NOT NULL,
  `warna` varchar(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motor`
--

INSERT INTO `motor` (`kd_motor`, `no_mesin`, `merk`, `jenis`, `nama`, `tahun_pembuatan`, `warna`, `harga`) VALUES
('M12', 888, 'Yamaha', 'Matic', 'Mio', 2011, 'Hitam', 12000000),
('M2', 909, 'Yamaha', 'Matic', 'Mio', 2011, 'Merah', 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `kd_pembeli` varchar(7) DEFAULT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `no_ktp` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`kd_pembeli`, `nama`, `jenis_kelamin`, `alamat`, `no_ktp`) VALUES
('P1', 'Fadil', 'Laki-laki', 'Cilacap', '7889'),
('P2', 'Wita', 'Perempuan', 'Bogor', '888');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
