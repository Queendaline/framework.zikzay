-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 01:47 PM
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
-- Table structure for table `mbr_electricity`
--

CREATE TABLE `mbr_electricity` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `name` varchar(16) NOT NULL,
  `type` varchar(32) NOT NULL,
  `service` varchar(16) NOT NULL,
  `bill_code` varchar(32) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `meter_number` varchar(16) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `wallet` varchar(16) NOT NULL,
  `status` varchar(16) NOT NULL,
  `token` varchar(32) NOT NULL,
  `units` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_electricity`
--

INSERT INTO `mbr_electricity` (`id`, `user`, `name`, `type`, `service`, `bill_code`, `amount`, `meter_number`, `phone_number`, `reference`, `wallet`, `status`, `token`, `units`, `created_at`, `updated_at`) VALUES
(1, 10, '', 'prepaid', 'ikeja-electric', '', 1000, '1111111111111', '09138807871', 'ele016531081847', 'NGN', 'SUCCESS', '', '', '2021-03-07 16:03:23', '2021-03-07 16:03:23'),
(2, 10, '', 'prepaid', 'ikeja-electric', '', 1000, '1111111111111', '09138807871', '', 'NGN', 'SUCCESS', '', '', '2021-03-07 16:07:53', '2021-03-07 16:07:53'),
(3, 10, '', 'prepaid', 'ikeja-electric', '', 1000, '1111111111111', '09138807871', 'ele016531392385', 'NGN', 'SUCCESS', '40364652026905256691', '500 kWh', '2021-03-07 16:08:33', '2021-03-07 16:08:33'),
(4, 10, '', 'prepaid', 'ikeja-electric', '', 3000, '1111111111111', '09138807871', 'ele016531426858', 'NGN', 'SUCCESS', '40364652026905256691', '500 kWh', '2021-03-07 16:09:08', '2021-03-07 16:09:08'),
(5, 10, '', 'prepaid', 'ikeja-electric', 'ikeja-electric', 4200, '1111111111111', '09138807871', 'ele016531496323', 'NGN', 'SUCCESS', '40364652026905256691', '500 kWh', '2021-03-07 16:10:17', '2021-03-07 16:10:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mbr_electricity`
--
ALTER TABLE `mbr_electricity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mbr_electricity`
--
ALTER TABLE `mbr_electricity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
