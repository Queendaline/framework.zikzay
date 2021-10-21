-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 01:56 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mabro`
--

-- --------------------------------------------------------

--
-- Table structure for table `mbr_tv`
--

CREATE TABLE `mbr_tv` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `wallet` varchar(32) NOT NULL,
  `service` varchar(16) NOT NULL,
  `bill_code` varchar(32) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `smart_card_number` varchar(16) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_tv`
--

INSERT INTO `mbr_tv` (`id`, `user`, `wallet`, `service`, `bill_code`, `price`, `smart_card_number`, `phone_number`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 'NGN', 'dstv', 'dstv-padi', 0, '1212121212', '09138807871', 'tv016423132743', 'SUCCESS', '2021-03-06 10:04:14', '2021-03-06 10:04:14'),
(2, 10, 'NGN', 'dstv', 'dstv-padi', 0, '1212121212', '09138807871', 'tv016423287516', 'SUCCESS', '2021-03-06 10:06:48', '2021-03-06 10:06:48'),
(3, 10, 'NGN', 'dstv', 'dstv-padi', 0, '1212121212', '09138807871', 'tv016423351873', 'SUCCESS', '2021-03-06 10:07:52', '2021-03-06 10:07:52'),
(4, 10, 'NGN', 'dstv', 'dstv-padi', 1850, '1212121212', '09138807871', 'tv016423625242', 'SUCCESS', '2021-03-06 10:12:26', '2021-03-06 10:12:26'),
(5, 10, 'NGN', 'dstv', 'dstv-padi', 1850, '1212121212', '09138807871', 'tv016423671769', 'SUCCESS', '2021-03-06 10:13:12', '2021-03-06 10:13:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mbr_tv`
--
ALTER TABLE `mbr_tv`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mbr_tv`
--
ALTER TABLE `mbr_tv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
