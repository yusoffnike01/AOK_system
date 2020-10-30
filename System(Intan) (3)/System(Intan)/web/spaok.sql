-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 09:48 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spaok`
--

-- --------------------------------------------------------

--
-- Table structure for table `lokasipakej`
--

CREATE TABLE `lokasipakej` (
  `idpakej` varchar(10) NOT NULL,
  `lokasiPakej` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membuatpembayaran`
--

CREATE TABLE `membuatpembayaran` (
  `idpembelian` varchar(10) NOT NULL,
  `id` varchar(100) NOT NULL,
  `tarikhPembayaran` date NOT NULL,
  `masaPembayaran` time NOT NULL,
  `jumlahPembayaran` float NOT NULL,
  `buktiPembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mengurusjadual`
--

CREATE TABLE `mengurusjadual` (
  `id` varchar(100) NOT NULL,
  `tarikh` date NOT NULL,
  `masa` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menguruspermohonansukarelawan`
--

CREATE TABLE `menguruspermohonansukarelawan` (
  `idPermohonan` varchar(20) NOT NULL,
  `statusPengguna` varchar(50) NOT NULL,
  `butiranpermohonan` varchar(100) NOT NULL,
  `tarikhPermohonan` date NOT NULL,
  `penerimaanPermohonan` varchar(5) NOT NULL,
  `terimatolak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mengurussukarelawan`
--

CREATE TABLE `mengurussukarelawan` (
  `idPermohonan` varchar(10) NOT NULL,
  `id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pakej`
--

CREATE TABLE `pakej` (
  `idPakej` varchar(100) NOT NULL,
  `hargaPakej` float NOT NULL,
  `butiranPakej` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelianpakej`
--

CREATE TABLE `pembelianpakej` (
  `idpembelian` varchar(10) NOT NULL,
  `id` varchar(100) NOT NULL,
  `idpakej` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaranpengguna`
--

CREATE TABLE `pendaftaranpengguna` (
  `id` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `noTel` int(13) DEFAULT NULL,
  `statusPengguna` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaranpengguna`
--

INSERT INTO `pendaftaranpengguna` (`id`, `nama`, `alamat`, `email`, `noTel`, `statusPengguna`) VALUES
('980206035521', 'Tengku', 'Kota Bharu', 'ronaldoyusoff@gmail.com', 133287094, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lokasipakej`
--
ALTER TABLE `lokasipakej`
  ADD KEY `idpakej` (`idpakej`);

--
-- Indexes for table `membuatpembayaran`
--
ALTER TABLE `membuatpembayaran`
  ADD KEY `idpembelian` (`idpembelian`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mengurusjadual`
--
ALTER TABLE `mengurusjadual`
  ADD KEY `id` (`id`);

--
-- Indexes for table `menguruspermohonansukarelawan`
--
ALTER TABLE `menguruspermohonansukarelawan`
  ADD KEY `idPermohonan` (`idPermohonan`);

--
-- Indexes for table `mengurussukarelawan`
--
ALTER TABLE `mengurussukarelawan`
  ADD PRIMARY KEY (`idPermohonan`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pakej`
--
ALTER TABLE `pakej`
  ADD PRIMARY KEY (`idPakej`);

--
-- Indexes for table `pembelianpakej`
--
ALTER TABLE `pembelianpakej`
  ADD PRIMARY KEY (`idpembelian`),
  ADD KEY `id` (`id`),
  ADD KEY `idpakej` (`idpakej`);

--
-- Indexes for table `pendaftaranpengguna`
--
ALTER TABLE `pendaftaranpengguna`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lokasipakej`
--
ALTER TABLE `lokasipakej`
  ADD CONSTRAINT `lokasipakej_ibfk_1` FOREIGN KEY (`idpakej`) REFERENCES `pakej` (`idPakej`) ON UPDATE CASCADE;

--
-- Constraints for table `membuatpembayaran`
--
ALTER TABLE `membuatpembayaran`
  ADD CONSTRAINT `membuatpembayaran_ibfk_1` FOREIGN KEY (`idpembelian`) REFERENCES `pembelianpakej` (`idpembelian`) ON UPDATE CASCADE,
  ADD CONSTRAINT `membuatpembayaran_ibfk_2` FOREIGN KEY (`id`) REFERENCES `pendaftaranpengguna` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `mengurusjadual`
--
ALTER TABLE `mengurusjadual`
  ADD CONSTRAINT `mengurusjadual_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pendaftaranpengguna` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `menguruspermohonansukarelawan`
--
ALTER TABLE `menguruspermohonansukarelawan`
  ADD CONSTRAINT `menguruspermohonansukarelawan_ibfk_1` FOREIGN KEY (`idPermohonan`) REFERENCES `mengurussukarelawan` (`idPermohonan`) ON UPDATE CASCADE;

--
-- Constraints for table `mengurussukarelawan`
--
ALTER TABLE `mengurussukarelawan`
  ADD CONSTRAINT `mengurussukarelawan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pendaftaranpengguna` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pembelianpakej`
--
ALTER TABLE `pembelianpakej`
  ADD CONSTRAINT `pembelianpakej_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pendaftaranpengguna` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelianpakej_ibfk_2` FOREIGN KEY (`idpakej`) REFERENCES `pakej` (`idPakej`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
