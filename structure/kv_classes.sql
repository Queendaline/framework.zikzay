-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2021 at 12:29 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kidview`
--

-- --------------------------------------------------------

--
-- Table structure for table `kv_classes`
--

CREATE TABLE `kv_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(8) NOT NULL,
  `level` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kv_classes`
--

INSERT INTO `kv_classes` (`id`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'JSS 1', 'Junior Secondary', '2021-09-19 13:51:40', '2021-09-19 13:51:40'),
(2, 'JSS 2', 'Junior Secondary', '2021-09-19 13:51:58', '2021-09-19 13:51:58'),
(3, 'JSS 3', 'Junior Secondary', '2021-09-19 13:52:10', '2021-09-19 13:52:10'),
(5, 'SSS 1', 'Junior Secondary', '2021-09-19 13:53:30', '2021-10-12 10:37:03'),
(8, 'SSS 2', 'Senior Secondary', '2021-09-19 13:54:31', '2021-10-12 10:37:42'),
(11, 'SSS 3', 'Senior Secondary', '2021-09-19 13:55:07', '2021-10-12 10:37:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kv_classes`
--
ALTER TABLE `kv_classes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kv_classes`
--
ALTER TABLE `kv_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
