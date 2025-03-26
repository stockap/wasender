-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 12:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wasender`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `level` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 = ADMIN\r\n2 = CS',
  `chunk` int(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `api_key`, `level`, `chunk`) VALUES
(95, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'a14c42276007a4bb4583397cf6677a471541faaf', '1', 100),
(96, 'demo', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'demoh', '1', 100);

-- --------------------------------------------------------

--
-- Table structure for table `all_contacts`
--

CREATE TABLE `all_contacts` (
  `id` int(11) NOT NULL,
  `sender` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `type` enum('Personal','Group') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_contacts`
--

INSERT INTO `all_contacts` (`id`, `sender`, `number`, `name`, `type`) VALUES
(6996, '6281572885606', '6285720862408', 'Ahyar', 'Personal'),
(6997, '6281572885606', '628156008269', 'Wa Dikiw', 'Personal'),
(6998, '6281572885606', '6285863153213', 'Th Ineu', 'Personal'),
(6999, '6281572885606', '6287821610872', 'Bpak', 'Personal'),
(7000, '6281572885606', '6281280852138', 'A Cepi', 'Personal'),
(7001, '6281572885606', '6285825116395', 'Heker', 'Personal'),
(7002, '6281572885606', '6283847650469-1635947990@g.us', 'Codingkuy', 'Group'),
(7003, '6281572885606', '6285838762728-1616412359@g.us', 'Coding House', 'Group'),
(7004, '6281572885606', '6282386455408-1611746544@g.us', 'Pemrograman Python Dasar', 'Group'),
(7005, '6281572885606', '6283829422632', 'Arip', 'Personal'),
(7006, '6281572885606', '6281224839103', 'Teh Sinta', 'Personal'),
(7007, '6281572885606', '6283822723591', 'Mifta', 'Personal'),
(7008, '6281572885606', '6283807124177', 'Dita', 'Personal'),
(7009, '6281572885606', '6289670373521', 'Puput', 'Personal'),
(7010, '6281572885606', '6281288670767', 'Nisa', 'Personal'),
(7011, '6281572885606', '120363021221848143@g.us', 'ReShare', 'Group'),
(7012, '6281572885606', '6281224140898-1634047763@g.us', 'White RascalsðŸ¤', 'Group'),
(7013, '6281572885606', '6283807124177-1632985323@g.us', 'ðŸ£', 'Group'),
(7014, '6281572885606', '6285863067945', 'My WifeðŸ˜˜', 'Personal'),
(7015, '6281572885606', '6289506023167-1634394255@g.us', 'IT SE INDONESIA !!', 'Group'),
(7016, '6281572885606', '6283104700638', 'Faujiah', 'Personal'),
(7017, '6281572885606', '6285723271704', 'Teh Vira', 'Personal'),
(7018, '6281572885606', '6285766947082-1635877574@g.us', 'Ngobar Forum', 'Group'),
(7019, '6281572885606', '6283112989197', 'Teh Tiya', 'Personal'),
(7020, '6281572885606', '6281460984435', 'Bngek', 'Personal'),
(7021, '6281572885606', '6285624038779', 'Jhhh', 'Personal'),
(7022, '6281572885606', '6282216805412-1622983800@g.us', 'ðŸ¹âœ¯â„³á´Ê™ÉªÊŸá´‡ ÊŸá´‡É¢á´‡É´á´…sá´®áµƒâ¿áµá´®áµƒâ¿áµ', 'Group'),
(7023, '6281572885606', '6281280014961', 'A Iman', 'Personal'),
(7024, '6281572885606', '120363020795022901@g.us', 'Test', 'Group'),
(7025, '6281572885606', '6285624321241', 'Teh Santi', 'Personal'),
(7026, '6281572885606', '6281572885606-1635120679@g.us', 'P', 'Group'),
(7027, '6281572885606', '6283135026072-1635680063@g.us', 'KODINGERSðŸª |', 'Group'),
(7028, '6281572885606', '6285745876650-1626741903@g.us', 'Kampung Coding', 'Group'),
(7029, '6281572885606', '6282122661470-1636033670@g.us', 'Beban Negara', 'Group'),
(7030, '6281572885606', '120363040673448654@g.us', 'IT INDONESIA', 'Group');

-- --------------------------------------------------------

--
-- Table structure for table `autoreply`
--

CREATE TABLE `autoreply` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  `response` varchar(255) CHARACTER SET utf8 NOT NULL,
  `media` text NOT NULL,
  `nomor` varchar(15) NOT NULL DEFAULT '0',
  `make_by` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autoreply`
--

INSERT INTO `autoreply` (`id`, `keyword`, `response`, `media`, `nomor`, `make_by`) VALUES
(13, 'info', 'Minta Info Apa', '', '62853702635311', 'hendra'),
(18, 'rindu', 'iyolah', 'https://whangsaf.kydah.my.id/pages/uploads/16381569701926232135.jpg', '62853702635311', 'hendra'),
(21, 'aaaa', 'ff', '', '6281572885606', 'anji');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `sender` varchar(111) NOT NULL,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('Personal','Group','','') NOT NULL,
  `make_by` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `pemilik` varchar(111) NOT NULL,
  `nomor` varchar(14) NOT NULL,
  `link_webhook` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id`, `pemilik`, `nomor`, `link_webhook`) VALUES
(26, 'anji', '6281572885606', ''),
(32, 'anji', '628567442331', ''),
(43, 'anji', '6285863067945', ''),
(49, 'demo', '62857812351423', ''),
(51, 'demo', '62857828282812', 'https://example.com/filewebhook/webhook.php'),
(52, 'admin', '6285606799528', 'https://web.whatsapp.com/');

-- --------------------------------------------------------

--
-- Table structure for table `nomor`
--

CREATE TABLE `nomor` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `make_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nomor`
--

INSERT INTO `nomor` (`id`, `nama`, `nomor`, `pesan`, `make_by`) VALUES
(475, 'AA', '085606799528', 'Tes Oke', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `pesan` text CHARACTER SET utf8 NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `status` enum('MENUNGGU JADWAL','GAGAL','TERKIRIM') NOT NULL DEFAULT 'MENUNGGU JADWAL',
  `jadwal` datetime NOT NULL,
  `make_by` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `sender`, `nomor`, `pesan`, `media`, `status`, `jadwal`, `make_by`, `time`) VALUES
(11, '6285155168838', '085877722660', 'Oke', NULL, 'MENUNGGU JADWAL', '2021-11-15 11:55:00', 'Admin', '2021-11-15 03:54:42'),
(108, '62853702635311', '081263495354', '......', 'https://whangsaf.kydah.my.id/pages/uploads/16381493221405225078.jpg', 'GAGAL', '2021-11-29 08:29:00', 'hendra', '2021-11-29 01:29:04'),
(109, '62853702635311', '081263495354', 'hai', 'https://whangsaf.kydah.my.id/pages/uploads/1638150217616476000.jpg', 'GAGAL', '2021-11-29 08:44:00', 'hendra', '2021-11-29 01:44:04'),
(110, '62853702635311', '081263495354', 'wak rin', 'https://whangsaf.kydah.my.id/pages/uploads/16381508392036630560.jpg', 'GAGAL', '2021-11-29 08:54:00', 'hendra', '2021-11-29 01:54:04'),
(116, '62853702635311', '081263495354', 'hi..', 'https://whangsaf.kydah.my.id/pages/uploads/16381570681042863575.jpg', 'TERKIRIM', '2021-11-29 10:38:00', 'hendra', '2021-11-29 03:38:15'),
(120, '6281572885606', '6281572885606', 'aaa', 'https://whangsaf.kydah.my.id/pages/uploads/1638280517157651032.jpg', 'TERKIRIM', '2021-11-30 20:56:00', 'anji', '2021-11-30 13:56:06'),
(122, '6285606799528', '085606799528', 'Tes Oke', 'http://localhost/wasender/pages/uploads/1639003594176039426.jpg', 'MENUNGGU JADWAL', '2021-12-09 05:47:00', 'admin', '2021-12-08 22:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `receive_chat`
--

CREATE TABLE `receive_chat` (
  `id` int(11) NOT NULL,
  `id_pesan` varchar(200) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `from_me` enum('0','1') NOT NULL DEFAULT '0',
  `nomor_saya` varchar(255) DEFAULT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `required`
--

CREATE TABLE `required` (
  `id` int(11) NOT NULL,
  `versi_wa` varchar(255) NOT NULL,
  `serv_key` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `versi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `required`
--

INSERT INTO `required` (`id`, `versi_wa`, `serv_key`, `domain`, `versi`) VALUES
(1, '', 'serv_key', 'https://whangsaf.ridped.com/', '1.1');

-- --------------------------------------------------------

--
-- Table structure for table `r_admin`
--

CREATE TABLE `r_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_admin`
--

INSERT INTO `r_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_contacts`
--
ALTER TABLE `all_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoreply`
--
ALTER TABLE `autoreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nomor`
--
ALTER TABLE `nomor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_chat`
--
ALTER TABLE `receive_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `required`
--
ALTER TABLE `required`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_admin`
--
ALTER TABLE `r_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `all_contacts`
--
ALTER TABLE `all_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7031;

--
-- AUTO_INCREMENT for table `autoreply`
--
ALTER TABLE `autoreply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9370;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `nomor`
--
ALTER TABLE `nomor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `receive_chat`
--
ALTER TABLE `receive_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1973;

--
-- AUTO_INCREMENT for table `required`
--
ALTER TABLE `required`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `r_admin`
--
ALTER TABLE `r_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
