-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2021 at 11:46 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `mb_admins`
--

CREATE TABLE `mb_admins` (
  `id` varchar(24) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `middle_name` varchar(64) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `email_address` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mb_bank_accounts`
--

CREATE TABLE `mb_bank_accounts` (
  `id` varchar(24) NOT NULL,
  `user` varchar(24) NOT NULL,
  `account_name` varchar(64) NOT NULL,
  `account_number` varchar(10) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_code` varchar(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mb_bvns`
--

CREATE TABLE `mb_bvns` (
  `id` varchar(24) NOT NULL,
  `user` varchar(24) NOT NULL,
  `bvn` varchar(256) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mb_email_otp`
--

CREATE TABLE `mb_email_otp` (
  `id` varchar(24) NOT NULL,
  `email_address` varchar(64) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mb_email_otp`
--

INSERT INTO `mb_email_otp` (`id`, `email_address`, `otp`, `verified`, `created_at`, `updated_at`) VALUES
('MDAwNzg2Mzc0NzU4Njg1', 'zikzay@gmail.com', 'VmxlG6VL5U+gZLvwWRs0kPtOp9VSWMdTXAiHDlWOdeM=', 1, '2021-09-15 06:44:54', '2021-09-16 02:54:24'),
('MDAwNzg3MjU1MjA4NjM1', 'dev.zikzay@gmail.com', 'RBFa9tsaa4/LpjLlwCGsGvC73JPinYNlzXLT3/UPoXQ=', 0, '2021-09-15 06:59:35', '2021-09-16 02:29:01'),
('MDAwODgyNDYxOTY4Mzgy', 'willisolo@gmail.com', 'AdHQA4VRI8BQOfyeD2jzcKBuW6p0kfz/zVcZhihMq68=', 0, '2021-09-16 09:26:21', '2021-09-16 09:26:21'),
('MDAwODgyNjEzODIyNzI4', 'solowill@gmail.com', 'wT3MDg0TXsEG+brRTshNR9mn/oHGpzoK8sFpgEdVgPU=', 0, '2021-09-16 09:28:53', '2021-09-16 09:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `mb_naira_wallets`
--

CREATE TABLE `mb_naira_wallets` (
  `id` varchar(24) NOT NULL,
  `user` varchar(24) NOT NULL,
  `balance` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mb_naira_wallets`
--

INSERT INTO `mb_naira_wallets` (`id`, `user`, `balance`, `created_at`, `updated_at`) VALUES
('MDAwODE4MjY5Njg2ODUw', 'MDAwNzg3MDg4NzM3NTk0', 0, '2021-09-15 15:36:29', '2021-09-15 15:36:29'),
('MDAwODU4OTQ0ODAzNzY5', 'MDAwODU3NDE5NDUwODM2', 0, '2021-09-16 02:54:24', '2021-09-16 02:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `mb_phone_codes`
--

CREATE TABLE `mb_phone_codes` (
  `id` varchar(24) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mb_settings`
--

CREATE TABLE `mb_settings` (
  `id` varchar(24) NOT NULL,
  `sms_notification` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `email_transaction_notification` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `two_factor_authentication` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `finger_print_login` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `newsletter` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mb_settings`
--

INSERT INTO `mb_settings` (`id`, `sms_notification`, `email_transaction_notification`, `two_factor_authentication`, `finger_print_login`, `newsletter`, `created_at`, `updated_at`, `user`) VALUES
('MDAwODE4NDkwODE5MTg5', 1, 1, 0, 1, 1, '2021-09-15 15:40:10', '2021-09-15 16:52:10', 'MDAwNzg3MDg4NzM3NTk0'),
('MDAwODU4OTQ0OTM5NTIy', 1, 1, 1, 1, 1, '2021-09-16 02:54:24', '2021-09-16 02:54:24', 'MDAwODU3NDE5NDUwODM2');

-- --------------------------------------------------------

--
-- Table structure for table `mb_users`
--

CREATE TABLE `mb_users` (
  `id` varchar(24) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `email_address` varchar(64) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `lock_code` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified_email` tinyint(1) UNSIGNED NOT NULL,
  `verified_phone` tinyint(1) UNSIGNED NOT NULL,
  `blocked` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mb_users`
--

INSERT INTO `mb_users` (`id`, `first_name`, `surname`, `email_address`, `phone_number`, `lock_code`, `password`, `verified_email`, `verified_phone`, `blocked`, `created_at`, `updated_at`) VALUES
('MDAwNzg3MDg4NzM3NTk0', 'Chukwuebuka', 'Francis', 'dev.zikzay@gmail.com', '', '$2y$10$MD4xjDDwsPGLvTmVdPr66OzD55PKYl2tUnXmqc1B6TKW8iJLg91uu', '$2y$10$AE0itDh43eE2vnr9sxSfGO8g6KsfqAz5PU.WppOBeZOMWrEtSMwIe', 1, 0, 0, '2021-09-15 07:09:11', '2021-09-15 17:55:13'),
('MDAwODgyMDg3MDQzNjMz', 'Williams', 'Solomon', 'williams@gmail.com', '', '', '$2y$10$Jw2eNVokKFDA4n5mUnIGjeUA4MiqNtlN1pM4kwhNw.BiNxKGsI6qu', 0, 0, 0, '2021-09-16 09:20:07', '2021-09-16 09:20:07'),
('MDAwODgyNDYxODMxNjc3', 'Williams', 'Solomon', 'willisolo@gmail.com', '', '', '$2y$10$K7Z4MxcA9rGPIieeCrZOf.qQaR7Qts.xZfjk5jAiIM.tJpTfRLuM2', 0, 0, 0, '2021-09-16 09:26:21', '2021-09-16 09:26:21'),
('MDAwODgyNjEzNjU2NDc5', 'Williams', 'Solomon', 'solowill@gmail.com', '', '', '$2y$10$X5zcBmyBA509XwBgBfeVyOaPG54So0WO8tjuiXQLrxSrm2yAXZRNa', 0, 0, 0, '2021-09-16 09:28:53', '2021-09-16 09:28:53'),
('MDAwODU3NDE5NDUwODM2', 'Isaac', 'Eze', 'zikzay@gmail.com', '', '$2y$10$r6CZ3Z0HddgpO7F6SmZJ2OeoNAHtHXFZrAxIo3cWurJbk73qTBG9i', '$2y$10$vGVNQN9.gLWUxRKHDJc/tO6xashbdrX4GlLnVPKGSqpvM2iAVzQoe', 1, 0, 0, '2021-09-16 02:28:59', '2021-09-16 22:39:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mb_admins`
--
ALTER TABLE `mb_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_bank_accounts`
--
ALTER TABLE `mb_bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_bvns`
--
ALTER TABLE `mb_bvns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_email_otp`
--
ALTER TABLE `mb_email_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_naira_wallets`
--
ALTER TABLE `mb_naira_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_phone_codes`
--
ALTER TABLE `mb_phone_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_settings`
--
ALTER TABLE `mb_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_users`
--
ALTER TABLE `mb_users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
