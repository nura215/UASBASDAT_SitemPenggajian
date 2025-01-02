-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2025 at 10:49 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian_dmc`
--

-- --------------------------------------------------------

--
-- Table structure for table `honor`
--

CREATE TABLE `honor` (
  `ID_Honor` int NOT NULL,
  `Nilai_Per_Jam` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `honor`
--

INSERT INTO `honor` (`ID_Honor`, `Nilai_Per_Jam`) VALUES
(1, '17500.00'),
(2, '18000.00'),
(3, '19000.00'),
(4, '20000.00'),
(5, '21000.00'),
(6, '22000.00'),
(7, '23000.00'),
(8, '24000.00'),
(9, '25000.00'),
(10, '26000.00'),
(11, '27000.00'),
(12, '28000.00'),
(13, '29000.00'),
(14, '30000.00'),
(15, '31000.00'),
(16, '32000.00'),
(17, '33000.00'),
(18, '34000.00'),
(19, '35000.00'),
(20, '36000.00');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `ID_Jabatan` int NOT NULL,
  `Nama_Jabatan` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Jumlah_Honor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`ID_Jabatan`, `Nama_Jabatan`, `Jumlah_Honor`) VALUES
(1, 'Wali Kelas IX C', '100000.00'),
(2, 'Wali Kelas VIII D', '100000.00'),
(3, 'Waka Kurikulum', '400000.00'),
(4, 'Wali Kelas IX A', '100000.00'),
(5, 'Wali Kelas VIII A', '100000.00'),
(6, 'Asisten Kesiswaan', '300000.00'),
(7, 'Wali Kelas IX B', '100000.00'),
(8, 'Pembina OSIS', '150000.00'),
(9, 'Waka Kesiswaan', '400000.00'),
(10, 'Wali Kelas VII D', '100000.00'),
(11, 'Wali Kelas VII B', '100000.00'),
(12, 'Wali Kelas VIII C', '100000.00'),
(13, 'Wali Kelas VIII B', '100000.00'),
(14, 'Wali Kelas IX D', '100000.00'),
(15, 'Wali Kelas VII C', '100000.00'),
(16, 'Kepala Sekolah', '500000.00'),
(17, 'Wali Kelas VII A', '100000.00'),
(18, 'Guru Mata Pelajaran Matematika', '300000.00'),
(19, 'Guru Mata Pelajaran Bahasa Indonesia', '300000.00'),
(20, 'Guru Mata Pelajaran IPA', '300000.00');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `ID_Karyawan` int NOT NULL,
  `Nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `NUPTK` char(16) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`ID_Karyawan`, `Nama`, `NUPTK`) VALUES
(1, 'Budi Pathurohman, S.Pd., Gr.', '1023456789012345'),
(2, 'Yanti Susanti, S.Pd.', '2023456789012345'),
(3, 'Muhamad Salim', '3023456789012345'),
(4, 'Dede Hamdani, S.Pd.I.', '4023456789012345'),
(5, 'Usep Supriatna, S.Pd.', '5023456789012345'),
(6, 'Iyul Yulinar, S.Pd.', '6023456789012345'),
(7, 'Hadi Pamungkas, S.Pd.', '7023456789012345'),
(8, 'Rani Dwi Rahayu, S.Pd.', '8023456789012345'),
(9, 'Ajat Munajat, S.Pd.', '9023456789012345'),
(10, 'Widy Mauliddina, S.Sn.', '1002345678901234'),
(11, 'Ria Elviana, M.Pd.', '1102345678901234'),
(12, 'Mohammad Tohirin, S.Pd.', '1202345678901234'),
(13, 'Dini Aprilia Ghasani H, S.Pd.', '1302345678901234'),
(14, 'Wahyu Rustan Diyatman, S.Pd.', '1402345678901234'),
(15, 'Dzaky Jundullah Nur El Haq, S.Pd., M.Pd.', '1502345678901234'),
(16, 'Mulyana Chandra, S.Pd.', '1602345678901234'),
(17, 'Susan Susana Widiana, S.Pd.', '1702345678901234'),
(18, 'Fadhalna Yuniarti Maulid, S.Pd.', '1802345678901234'),
(19, 'Embi Lilis, S.Si., Gr.', '1902345678901234'),
(20, 'Muhamad Sulton Yasir, S.Pd.', '2002345678901234');

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `ID_Gaji` int NOT NULL,
  `ID_Karyawan` int NOT NULL,
  `ID_Honor` int NOT NULL,
  `Jumlah_Jam` int NOT NULL,
  `ID_Transport` int NOT NULL,
  `Kehadiran` int NOT NULL,
  `ID_Jabatan` int DEFAULT NULL,
  `Tanggal_Penggajian` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `ID_Transport` int NOT NULL,
  `Nilai_Per_Hari` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`ID_Transport`, `Nilai_Per_Hari`) VALUES
(2, '35000.00'),
(3, '40000.00'),
(6, '32000.00'),
(7, '31000.00'),
(8, '33000.00'),
(9, '34000.00'),
(10, '36000.00'),
(11, '37000.00'),
(13, '38000.00'),
(14, '39000.00'),
(15, '41000.00'),
(16, '42000.00'),
(17, '43000.00'),
(18, '44000.00'),
(19, '45000.00'),
(20, '46000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `honor`
--
ALTER TABLE `honor`
  ADD PRIMARY KEY (`ID_Honor`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`ID_Jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`ID_Karyawan`),
  ADD UNIQUE KEY `NUPTK` (`NUPTK`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`ID_Gaji`),
  ADD KEY `ID_Karyawan` (`ID_Karyawan`),
  ADD KEY `ID_Honor` (`ID_Honor`),
  ADD KEY `ID_Transport` (`ID_Transport`),
  ADD KEY `ID_Jabatan` (`ID_Jabatan`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`ID_Transport`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `honor`
--
ALTER TABLE `honor`
  MODIFY `ID_Honor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `ID_Jabatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `ID_Karyawan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `ID_Gaji` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `ID_Transport` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD CONSTRAINT `penggajian_ibfk_1` FOREIGN KEY (`ID_Karyawan`) REFERENCES `karyawan` (`ID_Karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penggajian_ibfk_2` FOREIGN KEY (`ID_Honor`) REFERENCES `honor` (`ID_Honor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penggajian_ibfk_3` FOREIGN KEY (`ID_Transport`) REFERENCES `transport` (`ID_Transport`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penggajian_ibfk_4` FOREIGN KEY (`ID_Jabatan`) REFERENCES `jabatan` (`ID_Jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
