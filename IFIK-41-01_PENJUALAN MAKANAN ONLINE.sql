-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 06:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(20) NOT NULL,
  `NAMA_ADMIN` varchar(100) DEFAULT NULL,
  `EMAIL_ADM` varchar(100) DEFAULT NULL,
  `NO_HP_ADM` int(20) DEFAULT NULL,
  `ALAMAT_ADM` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `NAMA_ADMIN`, `EMAIL_ADM`, `NO_HP_ADM`, `ALAMAT_ADM`) VALUES
('ADM001', 'DITA', 'dita@gmail.com', 2147483647, 'JALAN SUKABIRUS GANG DAHLIA NO 134'),
('ADM002', 'ANGEL', 'angel@gmail.com', 2147483647, 'JALAN SUKABIRUS GANG LYLY NO 34'),
('ADM003', 'HILMAN', 'hilman@gmail.com', 2147483647, 'JALAN SUKABIRUS GANG TULIP NO 49'),
('ADM004', 'AZRIL', 'azril@gmail.com', 2147483647, 'JALAN SUKABIRUS GANG ANYER NO 99'),
('ADM005', 'SARAH', 'sarah@gmail.com', 2147483647, 'JALAN SUKABIRUS GANG PANARUKAN NO 7');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `KODE_BARANG` varchar(20) NOT NULL,
  `NAMA_BARANG` varchar(100) DEFAULT NULL,
  `HARGA_BARANG` varchar(100) DEFAULT NULL,
  `JUMLAH_BARANG_TERSEDIA` int(100) DEFAULT NULL,
  `BERAT_BARANG` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`KODE_BARANG`, `NAMA_BARANG`, `HARGA_BARANG`, `JUMLAH_BARANG_TERSEDIA`, `BERAT_BARANG`) VALUES
('BRG001', 'GRANOLA', 'RP 25000', 25, '500 GRM'),
('BRG002', 'SEREAL', 'RP 15000', 30, '250 GRM'),
('BRG003', 'YOGURT', 'RP 15000', 50, '28 GRM'),
('BRG004', 'SALAD', 'RP 15000', 20, '30 GRM'),
('BRG005', 'HEALTHY PARFAIT', 'RP 35000', 50, '28 GRM');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID_CUSTOMER` varchar(50) NOT NULL,
  `NAMA_CUSTOMER` varchar(20) DEFAULT NULL,
  `ALAMAT_CUST` varchar(100) DEFAULT NULL,
  `NO_HP_CUST` int(20) DEFAULT NULL,
  `EMAIL_CUST` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID_CUSTOMER`, `NAMA_CUSTOMER`, `ALAMAT_CUST`, `NO_HP_CUST`, `EMAIL_CUST`) VALUES
('CTM111', 'FITRI', 'JALAN SUKAPURA GANG MELATI NO 11', 2147483647, 'fitri@gmail.com'),
('CTM112', 'NISA', 'JALAN SUKAPURA GANG MAWAR NO 6', 2147483647, 'nisa@gmail.com'),
('CTM113', 'KHOLIS', 'JALAN SUKAPURA GANG MATAHARI NO 9', 2147483647, 'kholis@gmail.com'),
('CTM114', 'HANA', 'JALAN SUKAPURA GANG ANGGREK NO 1', 2147483647, 'hana@gmail.com'),
('CTM115', 'LUTHFI', 'JALAN SUKAPURA GANG SEPATU NO 3', 2147483647, 'luthfi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `data_pembelian`
--

CREATE TABLE `data_pembelian` (
  `ID_PEMBELIAN` varchar(20) NOT NULL,
  `TGL_PEMBELIAN` date DEFAULT NULL,
  `ID_CUSTOMER` varchar(20) DEFAULT NULL,
  `KODE_BARANG` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pembelian`
--

INSERT INTO `data_pembelian` (`ID_PEMBELIAN`, `TGL_PEMBELIAN`, `ID_CUSTOMER`, `KODE_BARANG`) VALUES
('PBL235', '0000-00-00', 'CTM111', 'BRG003'),
('PBL236', '0000-00-00', 'CTM112', 'BRG005'),
('PBL237', '0000-00-00', 'CTM113', 'BRG001'),
('PBL238', '0000-00-00', 'CTM114', 'BRG002'),
('PBL239', '0000-00-00', 'CTM115', 'BRG004');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `KODE_LAPORAN` varchar(20) NOT NULL,
  `KODE_BRG_TERJUAL` varchar(20) DEFAULT NULL,
  `NAMA_BRG_TERJUAL` varchar(100) DEFAULT NULL,
  `JUM_BRG_TERJUAL` int(10) DEFAULT NULL,
  `PENGELUARAN` varchar(100) DEFAULT NULL,
  `OMZET` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`KODE_LAPORAN`, `KODE_BRG_TERJUAL`, `NAMA_BRG_TERJUAL`, `JUM_BRG_TERJUAL`, `PENGELUARAN`, `OMZET`) VALUES
('LPR001', 'BRG003', 'YOUGURT', 20, 'RP 5.000.000', 'RP 10.000.000'),
('LPR002', 'BRG005', 'HEALTHY PARFAIT', 35, 'RP 5.000.000', 'RP 10.000.000'),
('LPR003', 'BRG001', 'GRANOLA', 15, 'RP 5.000.000', 'RP 10.000.000'),
('LPR004', 'BRG002', 'SEREAL', 15, 'RP 5.000.000', 'RP 10.000.000'),
('LPR005', 'BRG004', 'SALAD', 20, 'RP 5.000.000', 'RP 10.000.000');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `ID_OWNER` varchar(20) NOT NULL,
  `NAMA_OWNER` varchar(100) DEFAULT NULL,
  `EMAIL_OWN` varchar(100) DEFAULT NULL,
  `NO_HP_OWN` int(20) DEFAULT NULL,
  `ALAMAT_OWN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`ID_OWNER`, `NAMA_OWNER`, `EMAIL_OWN`, `NO_HP_OWN`, `ALAMAT_OWN`) VALUES
('OWN001', 'HAMIDAN', 'hamidan@gmail.com', 2147483647, 'JALAN ASMARA GANG SEMAR NO 01'),
('OWN002', 'MUTI', 'muti@gmail.com', 2147483647, 'JALAN KOLAM CINTA GANG SERBAGUNA NO 199'),
('OWN003', 'DILA', 'dila@gmail.com', 2147483647, 'JALAN ASMARA GANG CINTA NO 14'),
('OWN004', 'ABI', 'abi@gmail.com', 2147483647, 'JALAN SEJAHTERA GANG BAHAGIA NO 144'),
('OWN005', 'HANS', 'hans@gmail.com', 2147483647, 'JALAN PELAMINAN GANG PERNIKAHAN NO 13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE_BARANG`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID_CUSTOMER`);

--
-- Indexes for table `data_pembelian`
--
ALTER TABLE `data_pembelian`
  ADD PRIMARY KEY (`ID_PEMBELIAN`),
  ADD KEY `DATA_PEMBELIAN_FK1` (`KODE_BARANG`),
  ADD KEY `DATA_PEMBELIAN_FK2` (`ID_CUSTOMER`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`KODE_LAPORAN`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`ID_OWNER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_pembelian`
--
ALTER TABLE `data_pembelian`
  ADD CONSTRAINT `DATA_PEMBELIAN_FK1` FOREIGN KEY (`KODE_BARANG`) REFERENCES `barang` (`KODE_BARANG`) ON DELETE CASCADE,
  ADD CONSTRAINT `DATA_PEMBELIAN_FK2` FOREIGN KEY (`ID_CUSTOMER`) REFERENCES `customer` (`ID_CUSTOMER`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
