-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 01:13 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psb`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `Id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_admin` varchar(255) DEFAULT NULL,
  `role_user` varchar(255) DEFAULT NULL,
  `id_user` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`Id`, `email`, `password`, `nama_admin`, `role_user`, `id_user`) VALUES
(2, 'admin@gmail.com', '$2y$10$AIxith3klXwMIMT/t3CpHOasClDF8l1JWV66U1zob78mXT4wksaJq', 'Haidar', '0', NULL),
(25, 'haidar@admin', '$2y$10$AIxith3klXwMIMT/t3CpHOasClDF8l1JWV66U1zob78mXT4wksaJq', 'admin ', '0', NULL),
(32, 'idar@gmail.com', '$2y$10$voySFnO1uXl6EYQAKQgpg.yflRzkimI6K2AzfCy63HByb47c.LZJa', '', '1', 20),
(33, 'jojo@gmail.com', '$2y$10$mHOzC/jlsT4mADatR6mIheNjGiMH.8MM7KpP3hDicJ9nnHE4JjZrq', '', '1', 21),
(34, 'ginting@gmail.com', '$2y$10$mkOkdP./f//yxrwNLdmbf.AXn4Eqcw7Mu2blm.Hq69v4iSRsc0BVq', '', '1', 22),
(35, 'gregoria@gmail.com', '$2y$10$/GqxELD4uX2uT7FD2JHVNudm1eJVsjtiSdgKdXWKBR0wt4RyRCcNm', '', '1', 23),
(36, 'kevinsanjaya@gmail.com', '$2y$10$TUdrvwtFzFSIX8VaSm4Yxuwswu2i4Yj7ET9WFyMpATzLP2ZZ0eNW.', '', '1', 24),
(37, 'haidarsulistyo@gmail.com', '$2y$10$J.1UCLab2nTPJYK24Nh4p.9SI3bj0/wMtrPSf2kn6Y7iXLZnzBqPm', '', '1', 25);

-- --------------------------------------------------------

--
-- Table structure for table `cicilan_pendaftaran`
--

CREATE TABLE `cicilan_pendaftaran` (
  `Id` int(11) NOT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `id_detail_pendaftaran` int(11) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `tanggal_pembayaran` varchar(255) DEFAULT NULL,
  `status_cicilan` int(11) NOT NULL,
  `cicilan_ke` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cicilan_pendaftaran`
--

INSERT INTO `cicilan_pendaftaran` (`Id`, `bukti_pembayaran`, `id_detail_pendaftaran`, `nominal`, `tanggal_pembayaran`, `status_cicilan`, `cicilan_ke`) VALUES
(21, '12-11-54kwitansi tayo.pdf', 24, 880000, '2018-11-16', 1, 1),
(22, '12-11-26kwitansi tayo.pdf', 20, 440000, '2018-11-16', 1, 1),
(23, '12-11-01kwitansi tayo.pdf', 21, 440000, '2018-11-16', 1, 1),
(24, '12-11-34kwitansi tayo.pdf', 22, 440000, '2018-11-16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pendaftaran`
--

CREATE TABLE `detail_pendaftaran` (
  `Id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `metode_pembayaran_pendaftaran` varchar(255) DEFAULT NULL COMMENT 'metode_pembayaran',
  `kelas` varchar(255) DEFAULT NULL,
  `usia` varchar(255) DEFAULT NULL,
  `status_pendaftaran` varchar(255) DEFAULT NULL,
  `status_kegiatan` int(11) NOT NULL DEFAULT '0',
  `biaya_kegiatan` int(11) DEFAULT '0',
  `tanggal_kegiatan` date DEFAULT NULL,
  `bukti_konfirmasi_pembayaran_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pendaftaran`
--

INSERT INTO `detail_pendaftaran` (`Id`, `id_user`, `id_admin`, `tanggal_daftar`, `metode_pembayaran_pendaftaran`, `kelas`, `usia`, `status_pendaftaran`, `status_kegiatan`, `biaya_kegiatan`, `tanggal_kegiatan`, `bukti_konfirmasi_pembayaran_kegiatan`) VALUES
(19, 20, 25, '2018-11-15', NULL, 'B', '7 tahun 10 bulan', '1', 0, 0, NULL, NULL),
(20, 21, 25, '2018-11-15', 'C', 'A', '6 tahun 10 bulan', '3', 0, 0, NULL, NULL),
(21, 22, 25, '2018-11-16', NULL, 'A', '6 tahun 10 bulan', '3', 0, 0, NULL, NULL),
(22, 23, 25, '2018-11-16', NULL, 'A', '6 tahun 0 bulan', '3', 0, 0, NULL, NULL),
(23, 24, 25, '2018-11-16', NULL, 'A', '5 tahun 11 bulan', '1', 0, 0, NULL, NULL),
(24, 25, 25, '2018-11-16', 'L', 'A', '5 tahun 11 bulan', '4', 1, 500000, '2018-11-16', '12-11-56kwitansi tayo.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `Id` int(11) NOT NULL,
  `nip` char(7) DEFAULT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`Id`, `nip`, `nama_guru`, `alamat`, `telp`) VALUES
(4, '1170004', 'cibe', 'gapunya', 'dsadasd'),
(5, '1170005', 'budi', 'doremi', '+62844245423'),
(6, '1170006', 'tambah', 'ini tambah', '082223131'),
(7, '1170007', 'dsa', 'da', '23');

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `Id` int(11) NOT NULL,
  `nama_hari` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`Id`, `nama_hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'PR');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_hari` int(11) DEFAULT NULL,
  `id_mapel` varchar(255) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_hari`, `id_mapel`, `kelas`) VALUES
(25, 3, 'P0013', 'B'),
(54, 1, 'P0013', 'A'),
(55, 1, 'P0001', 'A'),
(56, 2, 'P0015', 'A'),
(57, 2, 'P0017', 'A'),
(58, 3, 'P0018', 'A'),
(59, 3, 'P0016', 'A'),
(60, 1, 'P0014', 'B'),
(61, 2, 'P0013', 'B'),
(62, 4, 'P0013', 'B'),
(63, 5, 'P0018', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel_kegiatan` char(5) NOT NULL DEFAULT '',
  `nama_mapel_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`kode_mapel_kegiatan`, `nama_mapel_kegiatan`) VALUES
('P0001', 'Matematika'),
('P0013', 'Bhs Inggris'),
('P0014', 'Ipa'),
('P0015', 'ips'),
('P0016', 'Bahasa Jawa'),
('P0017', 'PKN'),
('P0018', 'Seni Budaya');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_spp`
--

CREATE TABLE `pembayaran_spp` (
  `Id` int(11) NOT NULL,
  `tanggal_pembayaran_spp` date DEFAULT NULL,
  `cicilan_ke` int(11) NOT NULL,
  `status_spp` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran_spp`
--

INSERT INTO `pembayaran_spp` (`Id`, `tanggal_pembayaran_spp`, `cicilan_ke`, `status_spp`, `user_id`) VALUES
(33, '2018-11-14', 1, 1, '14'),
(34, '2018-11-14', 2, 1, '14'),
(35, '2018-11-15', 1, 1, '18'),
(36, '2018-11-16', 1, 1, '25'),
(37, '2018-11-16', 1, 1, '21'),
(38, '2018-11-16', 1, 1, '22'),
(39, '2018-11-16', 1, 1, '23'),
(40, '2018-11-16', 2, 1, '25');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `Id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nama_panggilan` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `jumlah_saudara` int(11) DEFAULT NULL,
  `di_jakarta_ikut` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `agama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `agama_ibu` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `upload_akte` varchar(255) DEFAULT NULL,
  `upload_kartu_keluarga` varchar(255) DEFAULT NULL,
  `foto_anak` varchar(255) DEFAULT NULL,
  `foto_keluarga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`Id`, `nama`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `anak_ke`, `jumlah_saudara`, `di_jakarta_ikut`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `pendidikan_terakhir_ayah`, `pekerjaan_ayah`, `agama_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `pendidikan_terakhir_ibu`, `pekerjaan_ibu`, `agama_ibu`, `telp`, `upload_akte`, `upload_kartu_keluarga`, `foto_anak`, `foto_keluarga`) VALUES
(20, 'idar hai edit', 'dar', 'banyuwangi', '2011-01-01', 'L', 1, 1, 'Orangtua', 'Sulistyo', 'Banyuwangi', '1977-01-01', 'SMA', 'Wiraswasta', 'Islam', 'Sunarmi', 'banyuwangi', '1980-01-01', 'S1', 'PNS', 'islam', '0832324241', '10-11-14akta.jpg', '10-11-14kk.jpg', '10-11-04formal.jpg', '10-11-04kk.jpg'),
(21, 'Jojo sugandi', 'jojo', 'Banyumas', '2012-01-11', 'L', 1, 1, 'Orangtua', 'sugandi', 'bandung', '1980-01-01', 'sma', 'swasta', 'islam', 'irni', 'bandung', '1980-01-01', 's1', 'pns', 'islam', '0232131', '12-11-26akta.jpg', '12-11-26kk.jpg', '12-11-12Haidar.pdf', '12-11-12kk.jpg'),
(22, 'anthony ginting', 'ginting', 'cimahi', '2012-01-09', 'L', 2, 3, 'ibu', 'joni', 'pematangsiantar', '1980-01-01', 'sma', 'TNI', 'kristen', 'gunting', 'medan', '1980-01-01', 's1', 'perawat', 'kristen', '082323131', '12-11-08akta.jpg', '12-11-08kk.jpg', '12-11-25akta.jpg', '12-11-25kk.jpg'),
(23, 'gregoria mariska', 'jorji', 'wonogiri', '2012-11-11', 'P', 1, 2, 'paman', 'wariman', 'wonogiri', '1988-01-01', 'S1', 'Polisi', 'Katolik', 'Wardi', 'Jogja', '1990-01-01', 's2', 'Dokter', 'Katolik', '089932931231', '12-11-48akta.jpg', '12-11-48kk.jpg', '12-11-16akta.jpg', '12-11-16kk.jpg'),
(24, 'Kevin Sanjaya', 'Minions', 'banyuwangi', '2012-12-12', 'L', 2, 3, 'Om', 'Sunarto', 'Banyuwangi', '1990-01-01', 'S1', 'Atlet', 'Hindu', 'Rinami', 'Jepang', '1980-01-01', 'S3', 'Arsitek', 'Hindu', '08989898989', '12-11-46akta.jpg', '12-11-46kk.jpg', '12-11-10akta.jpg', '12-11-10kk.jpg'),
(25, 'haidar alvinanda sulistyo', 'haidar ', 'banyuwangi', '2012-12-12', 'L', 2, 2, 'Orang Tua', 'Sulistyo Wahyudi', 'Banyuwangi', '1960-02-11', 'S1', 'swasta', 'Islam', 'Istin Sunarmi', 'banyuwangi', '1969-02-06', 's1', 'PNS', 'Islam', '081258088833', '12-11-40akta.jpg', '12-11-40kk.jpg', '12-11-07Haidar.pdf', '12-11-07kk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(6) NOT NULL DEFAULT '0',
  `kelas` varchar(255) DEFAULT NULL,
  `id_detail_pendaftaran` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `kelas`, `id_detail_pendaftaran`, `nama`) VALUES
('170001', 'B', 7, 'Anggit Prayogo'),
('170002', 'B', 8, 'test'),
('170003', 'B', 8, 'test'),
('170004', 'B', 9, 'test2'),
('180005', 'B', 13, 'haidar'),
('180006', 'B', 17, 'contoh'),
('180007', 'A', 24, 'haidar alvinanda sulistyo'),
('180008', 'A', 20, 'Jojo sugandi'),
('180009', 'A', 21, 'anthony ginting'),
('180010', 'A', 22, 'gregoria mariska');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`);

--
-- Indexes for table `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_detail_pendaftaran` (`id_detail_pendaftaran`);

--
-- Indexes for table `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_hari` (`id_hari`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel_kegiatan`);

--
-- Indexes for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  ADD CONSTRAINT `cicilan_pendaftaran_ibfk_1` FOREIGN KEY (`id_detail_pendaftaran`) REFERENCES `detail_pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  ADD CONSTRAINT `detail_pendaftaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pendaftaran_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `akun` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`kode_mapel_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_hari`) REFERENCES `hari` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
