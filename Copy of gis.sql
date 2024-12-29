-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 04:17 AM
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
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-6.5994752'),
('default_lng', '110.6706432'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(16, 'Taman Tugu Perjuangan', '2292screenshot-2024-09-25-162144.png', -6.593242899563766, 110.65986721034243, 'Taman Tugu Perjuangan Jepara, CM45+VM6, Jl. Ringin Raya, Kauman, Bulu, Jepara, Jepara Regency, Central Java 59418', '<ul>\r\n<li>Tempat parkir yang dapat diakses kursi roda</li>\r\n<li>Pintu masuk yang dapat diakses kursi roda</li>\r\n<li>Baik untuk anak &ndash; anak</li>\r\n<li>Free htm</li>\r\n</ul>'),
(17, 'Taman P2KH Ronggomulyo', '7746screenshot-2024-09-25-162254.png', -6.5845148129831825, 110.6677094558004, 'Taman P2KH Ronggomulyo, Jl. Kyai Ronggo Mulyo, Ujungbatu IV, Ujungbatu, Kec. Jepara. Kabupaten Jepara, Jawa Tengah 59416', '<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"198\">\r\n<ul>\r\n<li>Perosotan</li>\r\n<li>Ayunan</li>\r\n<li>Tempat perkir yang dapat diakses kursi roda</li>\r\n<li>Free htm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(18, 'Taman Kerang', '5780screenshot-2024-09-25-162449.png', -6.588792547788374, 110.67575472599077, 'Taman Kerang, Jl. Shima No.Kel, Pengkol VII, Pengkol, Jepara, Jepara Regency,Central Java 59415', '<ul>\r\n<li>Toilet umum</li>\r\n<li>Perosotan</li>\r\n<li>Ayunan</li>\r\n<li>Tempat parkir yang dapat diakses kursi roda</li>\r\n<li>Pintu masuk yang dapat diakses kursi roda</li>\r\n<li>Baik untuk anak &ndash; anak</li>\r\n<li>Taman bermain</li>\r\n<li>Free htm</li>\r\n</ul>'),
(19, 'Taman Ruang Bermain Ramah Anak', '7676screenshot-2024-09-25-162602.png', -6.590671668331409, 110.66689151598797, 'Taman Ruang Bermain Ramah Anak, CM58+PQ6, Panggang I, Kauman, Kec. Jepara, Kabupaten Jepara, Jawa Tengah 59417', '<ul>\r\n<li>Toilet umum</li>\r\n<li>Perosotan</li>\r\n<li>Ayunan</li>\r\n<li>Baik untuk anak &ndash; anak</li>\r\n<li>Taman bermain</li>\r\n<li>Free htm</li>\r\n</ul>'),
(20, 'Taman Kepiting', '8931screenshot-2024-09-25-162703.png', -6.587880674254754, 110.66173067055864, 'Taman Kepiting, Jl. M.T. Haryono, Jobokuto III, Jobokuto, Kec. JepaÐ³a, Kabupaten Jepara, Jawa Tengah 59416', '<ul>\r\n<li>Tempat parkir yang dapat diakses kursi roda</li>\r\n<li>Pintu masuk yang dapat diakses kursi roda</li>\r\n<li>Toilet</li>\r\n<li>Baik untuk anak &ndash; anak</li>\r\n<li>Free htm</li>\r\n</ul>'),
(21, 'Taman Revolusi Bumi Kartini', '2454screenshot-2024-09-25-162744.png', -6.582202828288195, 110.66179900000058, 'Taman Revolusi Bumi Kartini, Ujungbatu II, Ujungbatu, Kec. Jepara. Kabupaten Jepara, Jawa Tengah 59416', '<ul>\r\n<li>Baik untuk anak &ndash; anak</li>\r\n<li>Free htm</li>\r\n</ul>'),
(22, 'Taman Buah Takamas', '1459screenshot-2024-09-25-162906.png', -6.556652760480171, 110.67861113192023, 'Taman Buah Takamas. Rw. III, Kedungcino, Kec. Jepara, Kabupaten Jepara. Jawa Tengah 59432', '<ul>\r\n<li>Kolam renang (10.000 anak-anak maupun dewasa)</li>\r\n<li>Kebun buah jambu air dan belimbing</li>\r\n<li>Mini zoo</li>\r\n<li>Htm 15.000 (hanya tiket masuk dan boleh ambil buah untuk dimakan ditempat. Jika ambil buah banyak dan dibawa pulang dikenakan harga per-kg)</li>\r\n<li>Buka senin &ndash; minggu jam 08.00 &ndash; 16.00</li>\r\n</ul>'),
(23, 'Taman buah fort jepara', '4526screenshot-2024-10-12-112951.png', -6.586130035803021, 110.66697333375501, 'Jl. Pahlawan, Ujungbatu V, Ujungbatu, Kec. Jepara, Kabupaten Jepara, Jawa Tengah 59416', '<ul>\r\n<li>Baik untuk anak &ndash; anak</li>\r\n<li>cocok untuk berfoto-foto</li>\r\n<li>Free htm</li>\r\n</ul>'),
(24, 'Taman Kalinyamat', '7905screenshot-2024-12-08-075517.png', -6.600014297935038, 110.6647944028633, '9MX7+XWF, Demaan VI, Demaan, Jepara, Jepara Regency, Central Java 59419', '<ul>\r\n<li>Tempat parkir yang dapat diakses kursi roda</li>\r\n<li>Pintu masuk yang dapat diakses kursi roda</li>\r\n<li>udara sejuk dengan tanaman hijau</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
