-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 07:56 PM
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
-- Table structure for table `mbr_airtime`
--

CREATE TABLE `mbr_airtime` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `network` varchar(8) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `reference` varchar(16) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_airtime`
--

INSERT INTO `mbr_airtime` (`id`, `user`, `network`, `phone_number`, `amount`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'mtn', '08011111111', 200, '', 'SUCCESS', '2021-02-28 07:21:49', '2021-02-28 07:21:49'),
(2, 1, 'mtn', '08011111111', 200, '', 'SUCCESS', '2021-02-28 07:24:46', '2021-02-28 07:24:46'),
(3, 1, 'mtn', '08011111111', 200, '', 'SUCCESS', '2021-02-28 07:25:37', '2021-02-28 07:25:37'),
(4, 1, 'mtn', '08011111111', 200, 'at015895328253', 'SUCCESS', '2021-02-28 07:27:29', '2021-02-28 07:27:29'),
(5, 1, 'mtn', '08011111111', 200, 'at015895430430', 'SUCCESS', '2021-02-28 07:29:12', '2021-02-28 07:29:12'),
(6, 1, 'mtn', '08011111111', 200, 'at015904934241', 'SUCCESS', '2021-02-28 10:07:37', '2021-02-28 10:07:37'),
(7, 1, 'mtn', '08011111111', 200, 'at015907710773', 'SUCCESS', '2021-02-28 10:53:53', '2021-02-28 10:53:53'),
(8, 1, 'mtn', '08011111111', 200, 'at015907811481', 'SUCCESS', '2021-02-28 10:55:34', '2021-02-28 10:55:34'),
(9, 10, 'mtn', '08011111111', 200, 'at016273820706', 'SUCCESS', '2021-03-04 16:35:41', '2021-03-04 16:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_airtime_to_cash`
--

CREATE TABLE `mbr_airtime_to_cash` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `network` varchar(16) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `amount_to_receive` int(10) UNSIGNED NOT NULL,
  `reference` varchar(16) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_airtime_to_cash`
--

INSERT INTO `mbr_airtime_to_cash` (`id`, `user`, `network`, `phone_number`, `amount`, `amount_to_receive`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 'mtn', '08108804566', 2500, 0, '', '', '2021-03-05 13:06:31', '2021-03-05 13:06:31'),
(2, 8, 'mtn', '08108804560', 2500, 0, '', '', '2021-03-05 13:07:06', '2021-03-05 13:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_api_mobile_data`
--

CREATE TABLE `mbr_api_mobile_data` (
  `id` int(11) NOT NULL,
  `api_source` varchar(32) NOT NULL,
  `data_id` varchar(32) NOT NULL,
  `network_id` int(10) UNSIGNED NOT NULL,
  `network` varchar(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `size` varchar(16) NOT NULL,
  `bonus_size` varchar(16) NOT NULL,
  `duration` varchar(16) NOT NULL,
  `api_price` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `api_active` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_api_mobile_data`
--

INSERT INTO `mbr_api_mobile_data` (`id`, `api_source`, `data_id`, `network_id`, `network`, `name`, `size`, `bonus_size`, `duration`, `api_price`, `price`, `api_active`, `active`, `created_at`, `updated_at`) VALUES
(1, 'VTPass', 'mtn-10mb-100', 1, 'MTN', 'N100 100MB - 24 hrs', '100MB', '', '24 hrs', 100, 100, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:19'),
(2, 'VTPass', 'mtn-50mb-200', 1, 'MTN', 'N200 200MB - 2 days', '200MB', '', '2 days', 200, 200, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:19'),
(3, 'VTPass', 'mtn-100mb-1000', 1, 'MTN', 'N1000 1.5GB - 30 days', '1.5GB', '', '30 days', 1000, 1000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(4, 'VTPass', 'mtn-500mb-2000', 1, 'MTN', 'N2000 4.5GB - 30 days', '4.5GB', '', '30 days', 2000, 2000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(5, 'VTPass', 'mtn-20hrs-1500', 1, 'MTN', 'N1500 6GB - 7 days', '6GB', '', '7 days', 1500, 1500, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(6, 'VTPass', 'mtn-3gb-2500', 1, 'MTN', 'N2500 6GB - 30 days', '6GB', '', '30 days', 2500, 2500, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(7, 'VTPass', 'mtn-data-3000', 1, 'MTN', 'N3000 8GB - 30 days', '8GB', '', '30 days', 3000, 3000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(8, 'VTPass', 'mtn-1gb-3500', 1, 'MTN', 'N3500 10GB - 30 days', '10GB', '', '30 days', 3500, 3500, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(9, 'VTPass', 'mtn-100hr-5000', 1, 'MTN', 'N5000 15GB - 30 days', '15GB', '', '30 days', 5000, 5000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(10, 'VTPass', 'mtn-3gb-6000', 1, 'MTN', 'N6000 20GB - 30 days', '20GB', '', '30 days', 6000, 6000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(11, 'VTPass', 'mtn-40gb-10000', 1, 'MTN', 'N10000 40GB - 30 days', '40GB', '', '30 days', 10000, 10000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(12, 'VTPass', 'mtn-75gb-15000', 1, 'MTN', 'N15000 75GB - 30 days', '75GB', '', '30 days', 15000, 15000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(13, 'VTPass', 'mtn-110gb-20000', 1, 'MTN', 'N20000 110GB - 30 days', '110GB', '', '30 days', 20000, 20000, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(14, 'VTPass', 'mtn-3gb-1500', 1, 'MTN', 'N1500 3GB - 30 days', '3GB', '', '30 days', 1500, 1500, 1, 1, '2021-02-16 06:46:58', '2021-02-16 06:56:20'),
(15, 'VTPass', 'airt-50', 2, 'AIRTEL', 'Airtel Data Bundle - 50 Naira - 25MB  - 1Day', '25MB', '', '1Day', 49, 49, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(16, 'VTPass', 'airt-100', 2, 'AIRTEL', 'Airtel Data Bundle - 100 Naira - 75MB - 1Day', '75MB', '', '1Day', 99, 99, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(17, 'VTPass', 'airt-200', 2, 'AIRTEL', 'Airtel Data Bundle - 200 Naira - 200MB - 3Days', '200MB', '', '3Days', 199, 199, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(18, 'VTPass', 'airt-300', 2, 'AIRTEL', 'Airtel Data Bundle - 300 Naira - 350MB - 7 Days', '350MB', '', '7 Days', 299, 299, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(19, 'VTPass', 'airt-500', 2, 'AIRTEL', 'Airtel Data Bundle - 500 Naira - 750MB - 14 Days', '750MB', '', '14 Days', 499, 499, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(20, 'VTPass', 'airt-1000', 2, 'AIRTEL', 'Airtel Data Bundle - 1,000 Naira - 1.5GB - 30 Days', '1.5GB', '', '30 Days', 999, 999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(21, 'VTPass', 'airt-1500', 2, 'AIRTEL', 'Airtel Data Bundle - 1,500 Naira - 3GB - 30 Days', '3GB', '', '30 Days', 1499, 1499, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(22, 'VTPass', 'airt-2000', 2, 'AIRTEL', 'Airtel Data Bundle - 2,000 Naira - 4.5GB - 30 Days', '4.5GB', '', '30 Days', 1999, 1999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(23, 'VTPass', 'airt-3000', 2, 'AIRTEL', 'Airtel Data Bundle - 3,000 Naira - 8GB - 30 Days', '8GB', '', '30 Days', 2999, 2999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(24, 'VTPass', 'airt-4000', 2, 'AIRTEL', 'Airtel Data Bundle - 4,000 Naira - 11GB - 30 Days', '11GB', '', '30 Days', 3999, 3999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(25, 'VTPass', 'airt-5000', 2, 'AIRTEL', 'Airtel Data Bundle - 5,000 Naira - 15GB - 30 Days', '15GB', '', '30 Days', 4999, 4999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(26, 'VTPass', 'airt-1500-2', 2, 'AIRTEL', 'Airtel Binge Data - 1,500 Naira (7 Days) - 6GB', '1,500', '', '6GB', 1499, 1499, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(27, 'VTPass', 'airt-10000', 2, 'AIRTEL', 'Airtel Data Bundle - 10,000 Naira - 40GB - 30 Days', '40GB', '', '30 Days', 9999, 9999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(28, 'VTPass', 'airt-15000', 2, 'AIRTEL', 'Airtel Data Bundle - 15,000 Naira - 75GB - 30 Days', '75GB', '', '30 Days', 14999, 14999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:21'),
(29, 'VTPass', 'airt-20000', 2, 'AIRTEL', 'Airtel Data Bundle - 20,000 Naira - 110GB - 30 Days', '110GB', '', '30 Days', 19999, 19999, 1, 1, '2021-02-16 06:47:44', '2021-02-16 06:56:22'),
(30, 'VTPass', 'glo100', 3, 'GLO', 'Glo Data N100 -  105MB - 2 day', '105MB', '', '2 day', 100, 100, 1, 1, '2021-02-16 06:48:14', '2021-02-16 06:56:22'),
(31, 'VTPass', 'glo200', 3, 'GLO', 'Glo Data N200 -  350MB - 4 days', '350MB', '', '4 days', 200, 200, 1, 1, '2021-02-16 06:48:14', '2021-02-16 06:56:22'),
(32, 'VTPass', 'glo500', 3, 'GLO', 'Glo Data N500 -  1.05GB - 14 days', '1.05GB', '', '14 days', 500, 500, 1, 1, '2021-02-16 06:48:14', '2021-02-16 06:56:23'),
(33, 'VTPass', 'glo1000', 3, 'GLO', 'Glo Data N1000 -  2.5GB - 30 days', '2.5GB', '', '30 days', 1000, 1000, 1, 1, '2021-02-16 06:48:14', '2021-02-16 06:56:23'),
(34, 'VTPass', 'glo2000', 3, 'GLO', 'Glo Data N2000 -  5.8GB - 30 days', '5.8GB', '', '30 days', 2000, 2000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(35, 'VTPass', 'glo2500', 3, 'GLO', 'Glo Data N2500 -  7.7GB - 30 days', '7.7GB', '', '30 days', 2500, 2500, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(36, 'VTPass', 'glo3000', 3, 'GLO', 'Glo Data N3000 -  10GB - 30 days', '10GB', '', '30 days', 3000, 3000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(37, 'VTPass', 'glo4000', 3, 'GLO', 'Glo Data N4000 -  13.25GB - 30 days', '13.25GB', '', '30 days', 4000, 4000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(38, 'VTPass', 'glo5000', 3, 'GLO', 'Glo Data N5000 -  18.25GB - 30 days', '18.25GB', '', '30 days', 5000, 5000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(39, 'VTPass', 'glo8000', 3, 'GLO', 'Glo Data N8000 -  29.5GB - 30 days', '29.5GB', '', '30 days', 8000, 8000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(40, 'VTPass', 'glo10000', 3, 'GLO', 'Glo Data N10000 -  50GB - 30 days', '50GB', '', '30 days', 10000, 10000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(41, 'VTPass', 'glo15000', 3, 'GLO', 'Glo Data N15000 -  93GB - 30 days', '93GB', '', '30 days', 15000, 15000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(42, 'VTPass', 'glo18000', 3, 'GLO', 'Glo Data N18000 -  119GB - 30 days', '119GB', '', '30 days', 18000, 18000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(43, 'VTPass', 'glo1500', 3, 'GLO', 'Glo Data N1500 -  4.1GB - 30 days', '4.1GB', '', '30 days', 1500, 1500, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(44, 'VTPass', 'glo20000', 3, 'GLO', 'Glo Data N20000 -  138GB - 30 days', '138GB', '', '30 days', 20000, 20000, 1, 1, '2021-02-16 06:48:15', '2021-02-16 06:56:23'),
(45, 'VTPass', 'eti-100', 4, '9MOBILE', '9mobile Data - 100 Naira - 100MB - 1 day', '100MB', '', '1 day', 100, 100, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(46, 'VTPass', 'eti-200', 4, '9MOBILE', '9mobile Data - 200 Naira - 650MB - 1 day', '650MB', '', '1 day', 200, 200, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(47, 'VTPass', 'eti-500', 4, '9MOBILE', '9mobile Data - 500 Naira - 500MB - 30 Days', '500MB', '', '30 Days', 500, 500, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(48, 'VTPass', 'eti-1000', 4, '9MOBILE', '9mobile Data - 1000 Naira - 1.5GB - 30 days', '1.5GB', '', '30 days', 1000, 1000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(49, 'VTPass', 'eti-2000', 4, '9MOBILE', '9mobile Data - 2000 Naira - 4.5GB Data - 30 Days', '4.5GB', '', '30 Days', 2000, 2000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(50, 'VTPass', 'eti-5000', 4, '9MOBILE', '9mobile Data - 5000 Naira - 15GB Data - 30 Days', '15GB', '', '30 Days', 5000, 5000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(51, 'VTPass', 'eti-10000', 4, '9MOBILE', '9mobile Data - 10000 Naira - 40GB - 30 days', '40GB', '', '30 days', 10000, 10000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(52, 'VTPass', 'eti-15000', 4, '9MOBILE', '9mobile Data - 15000 Naira - 75GB - 30 Days', '75GB', '', '30 Days', 15000, 15000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(53, 'VTPass', 'eti-27500', 4, '9MOBILE', '9mobile Data - 27,500 Naira - 30GB - 90 days', '30GB', '', '90 days', 27500, 27500, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:24'),
(54, 'VTPass', 'eti-55000', 4, '9MOBILE', '9mobile Data - 55,000 Naira - 60GB - 180 days', '60GB', '', '180 days', 55000, 55000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:25'),
(55, 'VTPass', 'eti-110000', 4, '9MOBILE', '9mobile Data - 110,000 Naira - 120GB - 365 days', '120GB', '', '365 days', 110000, 110000, 1, 1, '2021-02-16 06:52:22', '2021-02-16 06:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_banks`
--

CREATE TABLE `mbr_banks` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(6) NOT NULL,
  `long_code` varchar(10) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `country` varchar(64) NOT NULL,
  `currence` varchar(5) NOT NULL,
  `pay_with_bank` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_banks`
--

INSERT INTO `mbr_banks` (`id`, `name`, `code`, `long_code`, `active`, `country`, `currence`, `pay_with_bank`, `created_at`, `updated_at`) VALUES
(1, 'Access bank', '044', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(2, 'Citibank Nigeria', '023', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(3, 'Diamond bank', '063', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(4, 'Ecobank Nigeria Plc', '050', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(5, 'Fidelity bank', '070', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(6, 'First bank', '011', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(7, 'First City Monument Bank Plc', '214', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(8, 'GTBank', '058', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(9, 'Heritage bank', '030', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(10, 'Keystone bank', '082', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(11, 'Kuda Microfinance Bank', '50211', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(12, 'Polaris Bank', '076', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(13, 'Providus Bank', '101', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(14, 'Rubies Micro-finance Bank', '125', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(15, 'Stanbic IBTC Bank Ltd.', '221', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(16, 'Standard Chartered Bank Nigeria Ltd.', '068', '', 0, '', '', 0, '2021-03-04 11:31:37', '2021-03-04 11:31:37'),
(17, 'Sterling bank', '232', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38'),
(18, 'Suntrust Bank Nigeria Limited', '100', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38'),
(19, 'Union bank', '032', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38'),
(20, 'United Bank For Africa Plc', '033', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38'),
(21, 'Unity Bank Plc', '215', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38'),
(22, 'Wema bank', '035', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38'),
(23, 'Zenith bank', '057', '', 0, '', '', 0, '2021-03-04 11:31:38', '2021-03-04 11:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_bank_accounts`
--

CREATE TABLE `mbr_bank_accounts` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(64) NOT NULL,
  `account_number` varchar(10) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_code` varchar(4) NOT NULL,
  `bvn` varchar(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_bank_accounts`
--

INSERT INTO `mbr_bank_accounts` (`id`, `user`, `account_name`, `account_number`, `bank_name`, `bank_code`, `bvn`, `created_at`, `updated_at`) VALUES
(1, 4, 'Agbo Stephen', '1234567890', 'gtb', '', '12345678901', '2021-02-03 14:05:48', '2021-02-03 14:58:04'),
(14, 5, 'Agbo Stephen', '8379148848', 'gtb', '', '12345678901', '2021-02-04 12:33:30', '2021-03-03 15:02:05'),
(15, 8, 'AGBO STEPHEN CHINAZA', '0239326161', 'GTBank', '', '22345514341', '2021-03-03 12:44:44', '2021-03-04 14:58:54'),
(16, 10, 'EZE ISAAC OKPARA', '3116778786', 'First bank', '', '3116778786', '2021-03-04 14:11:39', '2021-03-04 14:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_bitcoin_buyers`
--

CREATE TABLE `mbr_bitcoin_buyers` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `btc_rate` int(10) UNSIGNED NOT NULL,
  `min_btc` float NOT NULL,
  `max_btc` float NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `approved` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_bitcoin_buyers`
--

INSERT INTO `mbr_bitcoin_buyers` (`id`, `user`, `btc_rate`, `min_btc`, `max_btc`, `active`, `approved`, `created_at`, `updated_at`) VALUES
(1, 5, 4356, 2, 9, 1, 0, '2021-03-01 14:05:59', '2021-03-01 15:07:04'),
(2, 8, 4280, 989, 1, 1, 0, '2021-03-03 11:06:58', '2021-03-03 11:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_bitcoin_sellers`
--

CREATE TABLE `mbr_bitcoin_sellers` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `btc_rate` int(10) UNSIGNED NOT NULL,
  `min_btc` float NOT NULL,
  `max_btc` float NOT NULL,
  `time_allowed` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `approved` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_bitcoin_sellers`
--

INSERT INTO `mbr_bitcoin_sellers` (`id`, `user`, `btc_rate`, `min_btc`, `max_btc`, `time_allowed`, `active`, `approved`, `created_at`, `updated_at`) VALUES
(1, 1, 427, 2, 9, 12, 1, 0, '2021-02-28 16:47:23', '2021-02-28 17:57:07'),
(2, 4, 427, 2, 9, 12, 1, 0, '2021-02-28 17:29:09', '2021-02-28 17:57:11'),
(3, 5, 4356, 2, 888, 12, 1, 0, '2021-02-28 17:33:11', '2021-03-01 13:19:53'),
(4, 8, 0, 258, 896, 12, 1, 0, '2021-03-03 11:18:07', '2021-03-03 11:18:07'),
(5, 0, 0, 0, 0, 0, 1, 0, '2021-03-04 15:20:49', '2021-03-04 15:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_bitcoin_wallets`
--

CREATE TABLE `mbr_bitcoin_wallets` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `balance` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_bitcoin_wallets`
--

INSERT INTO `mbr_bitcoin_wallets` (`id`, `user`, `wallet_address`, `balance`, `created_at`, `updated_at`) VALUES
(1, 2, 'qs9ombfzrnlurxbaf', 0, '2021-02-02 14:01:33', '2021-02-02 14:01:33'),
(2, 1, 'bhgd4w3nil11qk3c4', 0, '2021-02-02 14:32:24', '2021-02-02 14:32:24'),
(3, 3, '7c9tuv4h84ze3b31c', 0, '2021-02-02 14:37:04', '2021-02-02 14:37:04'),
(4, 4, 'bmv2ro5dg05gql2ef', 0, '2021-02-02 15:02:16', '2021-02-02 15:02:16'),
(5, 5, '5bioi6q0hte3x1135', 0, '2021-02-03 10:48:09', '2021-02-03 10:48:09'),
(6, 8, 'd9jgd85bz8wcs9b09', 0, '2021-03-02 14:46:34', '2021-03-02 14:46:34'),
(7, 10, 'cqg3hhzpum8x6x3c4', 0, '2021-03-03 12:05:25', '2021-03-03 12:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_discounts`
--

CREATE TABLE `mbr_discounts` (
  `id` int(11) NOT NULL,
  `product` varchar(256) NOT NULL,
  `product_code` varchar(4) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `percent` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_discounts`
--

INSERT INTO `mbr_discounts` (`id`, `product`, `product_code`, `amount`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'Airtime to Cash', 'a2c', 0, 15, '2021-03-05 12:36:23', '2021-03-05 12:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_electricity_beneficiaries`
--

CREATE TABLE `mbr_electricity_beneficiaries` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `meter_number` varchar(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `service` varchar(32) NOT NULL,
  `bill_code` varchar(32) NOT NULL,
  `type` varchar(8) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mbr_electricity_services`
--

CREATE TABLE `mbr_electricity_services` (
  `id` int(11) NOT NULL,
  `api_source` varchar(32) NOT NULL,
  `service_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bill_code` varchar(32) NOT NULL,
  `min_amount` int(10) UNSIGNED NOT NULL,
  `max_amount` int(10) UNSIGNED NOT NULL,
  `service_fee` int(10) UNSIGNED NOT NULL,
  `api_active` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_electricity_services`
--

INSERT INTO `mbr_electricity_services` (`id`, `api_source`, `service_id`, `name`, `bill_code`, `min_amount`, `max_amount`, `service_fee`, `api_active`, `active`, `created_at`, `updated_at`) VALUES
(1, 'VTPass', 'ikeja-electric', 'Ikeja Electric Payment - PHCN', 'ikeja-electric', 500, 200000, 0, 1, 1, '2021-02-18 13:01:48', '2021-02-18 13:01:48'),
(2, 'VTPass', 'eko-electric', 'Eko Electric Payment - EKEDC', 'eko-electric', 500, 200000, 0, 1, 1, '2021-02-18 13:01:49', '2021-02-18 13:01:49'),
(3, 'VTPass', 'abuja-electric', 'Abuja Electricity Distribution C', 'abuja-electric', 500, 500000, 0, 1, 1, '2021-02-18 13:01:49', '2021-02-18 13:01:49'),
(4, 'VTPass', 'kano-electric', 'KEDCO - Kano Electric', 'kano-electric', 500, 200000, 0, 1, 1, '2021-02-18 13:01:50', '2021-02-18 13:01:50'),
(5, 'VTPass', 'portharcourt-electric', 'PHED - Port Harcourt Electric', 'portharcourt-electric', 100, 200000, 0, 1, 1, '2021-02-18 13:01:51', '2021-02-18 13:01:51'),
(6, 'VTPass', 'jos-electric', 'Jos Electric - JED', 'jos-electric', 500, 300000, 0, 1, 1, '2021-02-18 13:01:52', '2021-02-18 13:01:52'),
(7, 'VTPass', 'kaduna-electric', 'Kaduna Electric - KAEDCO', 'kaduna-electric', 500, 300000, 0, 1, 1, '2021-02-18 13:01:52', '2021-02-18 13:01:52'),
(8, 'VTPass', 'ibadan-electric', 'Ibadan Electric - IBEDC', 'ibadan-electric', 100, 50000, 0, 1, 1, '2021-02-18 13:01:52', '2021-02-18 13:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_email_codes`
--

CREATE TABLE `mbr_email_codes` (
  `id` int(11) NOT NULL,
  `email_address` varchar(64) NOT NULL,
  `code` varchar(255) NOT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_email_codes`
--

INSERT INTO `mbr_email_codes` (`id`, `email_address`, `code`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'uchechi@gmail.com', 'g1kf23SERuX6TMOr86hHaVUGmIxiKXIIR5wU/USpaqM=', 1, '2021-02-02 13:50:17', '2021-02-02 14:32:23'),
(2, 'welling@gmail.com', 'sIiBhO92MW+zWoXRwKabkyertMqxr5R5o/NPUnzLtzY=', 1, '2021-02-02 13:57:54', '2021-02-02 14:01:32'),
(3, 'ella@gmail.com', 'CX6QDKVCPO9FrAJ8WVId46lWH0DKN6ZBQEjwduhxB8o=', 1, '2021-02-02 14:34:57', '2021-02-02 14:37:04'),
(4, 'ellaU@gmail.com', 'JnDePAmzz84QaHPO1K0tuFeUJBymWqFoILlDUP0YRtI=', 1, '2021-02-02 14:55:00', '2021-02-02 15:02:16'),
(5, 'chinazam@gmail.com', 'BkZJLM6G8SYWmSW2EJ4kFi/eynKiwowMlZAE5jCEM6Y=', 1, '2021-02-03 10:46:05', '2021-02-03 10:48:09'),
(6, 'email2@gmail.com', 'UTQI9M0SqfkaDTKi9/oEMij6e6ikIu8zxugdXqRY9Z4=', 0, '2021-02-22 03:33:22', '2021-02-22 03:33:22'),
(7, 'zikzay@gmail.com', 'WgpKblwLBMfdKGhNUTsVejqDmMTGbZ3XWKLpBgBAbB4=', 1, '2021-02-22 04:02:09', '2021-03-03 12:05:25'),
(8, 'agbo.raph111@gmail.com', 'Uc8jmwyNCy2HYPl5XqbCIqZQaymmCBBykLPDU0jXdDM=', 1, '2021-03-02 14:44:42', '2021-03-02 14:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_fund_history`
--

CREATE TABLE `mbr_fund_history` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(8) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `source` varchar(16) NOT NULL,
  `source_reference` varchar(32) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_fund_history`
--

INSERT INTO `mbr_fund_history` (`id`, `user`, `amount`, `currency`, `reference`, `source`, `source_reference`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, 'NGN', 'mff014266774315', 'MONNIFY', '', 'PENDING', '2021-02-09 11:04:54', '2021-02-09 11:04:54'),
(2, 1, 1000, 'NGN', 'mff014266843067', 'MONNIFY', '', 'PENDING', '2021-02-09 11:06:03', '2021-02-09 11:06:03'),
(3, 1, 1000, 'NGN', 'mff014266897646', 'MONNIFY', '', 'PENDING', '2021-02-09 11:06:57', '2021-02-09 11:06:57'),
(4, 1, 1000, 'NGN', 'mff014266940702', 'MONNIFY', 'MNFY|17|20210209120753|001093', 'PAID', '2021-02-09 11:07:40', '2021-02-09 11:36:50'),
(5, 5, 2000, 'NGN', 'msOHljU5oTBPbff', 'MONNIFY', 'MNFY|04|20210209121757|001303', 'PAID', '2021-02-09 11:26:07', '2021-02-09 11:26:07'),
(6, 1, 100, 'NGN', 'ChargedFromAndro', 'PAYSTACK', 'ChargedFromAndroid_1612559053917', 'PAID', '2021-02-09 13:07:38', '2021-02-09 13:07:38'),
(7, 1, 100, 'NGN', 'ChargedFromAndro', 'PAYSTACK', 'ChargedFromAndroid_1612541255078', 'PAID', '2021-02-09 13:11:18', '2021-02-09 13:11:18'),
(8, 1, 100, 'NGN', 'ChargedFromAndro', 'PAYSTACK', 'ChargedFromAndroid_1612541050882', 'PAID', '2021-02-09 13:11:45', '2021-02-09 13:11:45'),
(9, 5, 2000, 'NGN', '4dutyzkb2m', 'PAYSTACK', '4dutyzkb2m', 'PAID', '2021-02-09 14:07:21', '2021-02-09 14:07:21'),
(10, 10, 1000, 'NGN', 'mff016268544552', 'MONNIFY', 'MNFY|69|20210304160747|000017', 'PAID', '2021-03-04 15:07:44', '2021-03-04 15:17:16'),
(11, 10, 100, 'NGN', 'pskf8307d0fa1fd8', 'PAYSTACK', 'pskf8307d0fa1fd8a4e', 'PAID', '2021-03-04 15:27:26', '2021-03-04 15:27:26'),
(12, 8, 1000, 'NGN', 'aacnbxQnNAxF2Zx', 'MONNIFY', 'MNFY|69|20210304181310|000029', 'PAID', '2021-03-04 17:19:21', '2021-03-04 17:19:21'),
(13, 8, 4000, 'NGN', 'mff016277750910', 'MONNIFY', 'MNFY|49|20210304184113|000025', 'PAID', '2021-03-04 17:41:10', '2021-03-04 17:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_mobile_data`
--

CREATE TABLE `mbr_mobile_data` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `network` varchar(16) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `data_id` varchar(16) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_mobile_data`
--

INSERT INTO `mbr_mobile_data` (`id`, `user`, `network`, `phone_number`, `data_id`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 'mtn', '08011111111', 'mtn-100mb-1000', 'dt016274031583', 'SUCCESS', '2021-03-04 16:39:13', '2021-03-04 16:39:13'),
(2, 10, 'mtn', '08011111111', 'mtn-100mb-1000', 'dt016274130921', 'SUCCESS', '2021-03-04 16:40:52', '2021-03-04 16:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_mobile_network`
--

CREATE TABLE `mbr_mobile_network` (
  `id` int(11) NOT NULL,
  `network_id` int(10) UNSIGNED NOT NULL,
  `network` varchar(16) NOT NULL,
  `network_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mbr_naria_wallets`
--

CREATE TABLE `mbr_naria_wallets` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `balance` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_naria_wallets`
--

INSERT INTO `mbr_naria_wallets` (`id`, `user`, `balance`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '2021-02-02 14:01:32', '2021-02-02 14:01:32'),
(2, 1, 6000, '2021-02-02 14:32:24', '2021-02-28 07:29:11'),
(3, 3, 0, '2021-02-02 14:37:04', '2021-02-02 14:37:04'),
(5, 5, 2006, '2021-02-03 10:48:09', '2021-02-09 14:07:21'),
(6, 8, 6000, '2021-03-02 14:46:34', '2021-03-04 17:45:09'),
(7, 10, 28800, '2021-03-03 12:05:25', '2021-03-04 16:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_paystack_model`
--

CREATE TABLE `mbr_paystack_model` (
  `id` int(11) NOT NULL,
  `reference` varchar(64) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `confirm` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_paystack_model`
--

INSERT INTO `mbr_paystack_model` (`id`, `reference`, `amount`, `confirm`, `created_at`, `updated_at`) VALUES
(1, 'ChargedFromAndro', 0, 0, '2021-02-09 12:57:30', '2021-02-09 12:57:30'),
(2, 'ChargedFromAndro', 0, 0, '2021-02-09 12:58:24', '2021-02-09 12:58:24'),
(3, 'ChargedFromAndro', 0, 0, '2021-02-09 13:02:14', '2021-02-09 13:02:14'),
(4, 'ChargedFromAndroid_1612559053917', 100, 1, '2021-02-09 13:03:23', '2021-02-09 13:03:51'),
(5, 'ChargedFromAndroid_1612541255078', 200, 1, '2021-02-09 13:09:51', '2021-02-09 13:09:51'),
(6, 'ChargedFromAndroid_1612541050882', 100, 1, '2021-02-09 13:11:45', '2021-02-09 13:11:45'),
(7, '4dutyzkb2m', 6, 1, '2021-02-09 14:07:21', '2021-02-09 14:07:21'),
(8, 'pskf8307d0fa1fd8a4e', 30000, 1, '2021-03-04 15:27:26', '2021-03-04 15:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_phone_codes`
--

CREATE TABLE `mbr_phone_codes` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `code` varchar(255) NOT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_phone_codes`
--

INSERT INTO `mbr_phone_codes` (`id`, `phone_number`, `code`, `verified`, `created_at`, `updated_at`) VALUES
(13, '09028837747', 'Z0lMnShwBh/9xKo6/0qY/JeHnv0QUMvxAw/8I9V/0LI=', 1, '2021-02-04 10:34:57', '2021-03-02 14:52:19'),
(15, '08108803488', 'nrroEIElu+Yhv6+93Xo9TITnehSWCYhysycVrAgvOEU=', 1, '2021-02-04 10:45:31', '2021-03-03 14:51:13'),
(16, '09028837741', 'KUI5P5IFs0KN0SQC8+guz02H8pk62nlaPpeNzVJb6TM=', 0, '2021-03-02 14:59:14', '2021-03-02 14:59:42'),
(17, '09028837740', 'jcEubUJk/rgSo63Sy2GxZ55AlODmP9QVBZEau4q4fTk=', 1, '2021-03-02 15:01:57', '2021-03-02 15:02:33'),
(18, '09032884565', 'jiRVMJnpP141M80pjtOoTNKZcXHEQKuo2qNOE9WIT08=', 0, '2021-03-02 15:04:05', '2021-03-02 15:04:32'),
(19, '09138807871', 'clUMl4owrqV26+F8tKBir6ktlDYwGxxRF7Emf05pqkY=', 1, '2021-03-02 15:17:22', '2021-03-03 12:08:35'),
(20, '07085427500', 'YU8olywMoTGGAsYDSTTTTwg3jNb7jpPOzPxjuuUnyjc=', 0, '2021-03-02 15:24:01', '2021-03-02 15:24:01'),
(21, '07085427519', 'NLh1kWWBw69hI0RUg2C8eqIVUPwY/rhHAyTEIAMpbHM=', 0, '2021-03-02 15:26:44', '2021-03-02 15:27:42'),
(22, '08148816038', 'WZl6Gd3+6WAfaPlP/QZu0QwjB5mcht2qiqYXucJrKm8=', 0, '2021-03-02 15:29:22', '2021-03-02 15:29:22'),
(23, '08108466437', 'MGj7E1I9ywUQB7ZDiCwJi/s84UoKETFJj56XJHyVKjU=', 0, '2021-03-02 15:32:16', '2021-03-03 14:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_phone_number_beneficiaries`
--

CREATE TABLE `mbr_phone_number_beneficiaries` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `network` varchar(8) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_phone_number_beneficiaries`
--

INSERT INTO `mbr_phone_number_beneficiaries` (`id`, `user`, `network`, `phone_number`, `count`, `created_at`, `updated_at`) VALUES
(1, 1, 'mtn', '08011111111', 2, '2021-02-28 10:53:50', '2021-02-28 10:55:31'),
(2, 10, 'mtn', '08011111111', 1, '2021-03-04 16:35:40', '2021-03-04 16:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_rates`
--

CREATE TABLE `mbr_rates` (
  `id` int(11) NOT NULL,
  `currency` varchar(16) NOT NULL,
  `buy_rate` float NOT NULL,
  `sell_rate` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_rates`
--

INSERT INTO `mbr_rates` (`id`, `currency`, `buy_rate`, `sell_rate`, `created_at`, `updated_at`) VALUES
(1, 'usd', 480, 470, '2021-02-26 13:53:26', '2021-02-26 13:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_services`
--

CREATE TABLE `mbr_services` (
  `id` int(11) NOT NULL,
  `service_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `package_name` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mbr_settings`
--

CREATE TABLE `mbr_settings` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `default_account` int(10) UNSIGNED NOT NULL,
  `add_fund_phone_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `withdraw_fund_phone_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `add_fund_email_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `withdraw_fund_email_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `buy_asset_phone_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `sell_asset_phone_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `buy_access_email_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `sell_asset_email_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `login_email_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `newsletter_phone_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `newsletter_email_alert` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `sms_alert` tinyint(4) NOT NULL DEFAULT '1',
  `two_factor_auth` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_settings`
--

INSERT INTO `mbr_settings` (`id`, `user`, `default_account`, `add_fund_phone_alert`, `withdraw_fund_phone_alert`, `add_fund_email_alert`, `withdraw_fund_email_alert`, `buy_asset_phone_alert`, `sell_asset_phone_alert`, `buy_access_email_alert`, `sell_asset_email_alert`, `login_email_alert`, `newsletter_phone_alert`, `newsletter_email_alert`, `sms_alert`, `two_factor_auth`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-02-03 09:44:35', '2021-02-03 10:14:35'),
(5, 5, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, '2021-02-03 10:57:14', '2021-02-04 16:47:34'),
(6, 4, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2021-02-03 14:58:09', '2021-02-03 14:58:09'),
(7, 8, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-03-02 14:47:30', '2021-03-04 14:49:15'),
(8, 10, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-03-03 12:05:25', '2021-03-04 14:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_transaction_history`
--

CREATE TABLE `mbr_transaction_history` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  `currency` varchar(8) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `title` varchar(16) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_transaction_history`
--

INSERT INTO `mbr_transaction_history` (`id`, `user`, `amount`, `currency`, `reference`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 'NGN', 'at015889721471', 'Airtime Purchase', '', 'SUCCESS', '2021-02-28 05:54:02', '2021-03-01 14:46:12'),
(2, 1, 200, 'NGN', 'at015889721471', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'FAILED', '2021-02-28 05:54:02', '2021-03-01 14:46:15'),
(3, 1, 100, 'NGN', 'at015894988622', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'SUCCESS', '2021-02-28 07:21:49', '2021-03-01 14:46:21'),
(4, 1, 200, 'NGN', 'at015895165650', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'PROCESSING', '2021-02-28 07:24:46', '2021-03-01 14:45:21'),
(5, 1, 300, 'NGN', 'at015895216105', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'SUCCESS', '2021-02-28 07:25:37', '2021-03-01 14:46:26'),
(6, 1, 200, 'NGN', 'at015895328253', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'SUCCESS', '2021-02-28 07:27:29', '2021-02-28 07:27:29'),
(7, 1, 200, 'NGN', 'at015895430430', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'FAILED', '2021-02-28 07:29:12', '2021-03-01 14:45:28'),
(8, 1, 400, 'USD', 'at015904934241', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'SUCCESS', '2021-02-28 10:07:37', '2021-03-01 14:46:35'),
(9, 1, 200, 'USD', 'at015907710773', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'PROCESSING', '2021-02-28 10:53:53', '2021-03-01 14:45:46'),
(10, 1, 200, 'USD', 'at015907811481', 'Airtime Purchase', 'mtn recharge to 08011111111 was ', 'PROCESSING', '2021-02-28 10:55:34', '2021-03-01 14:45:53'),
(11, 10, 1000, 'NGN', 'mff016268544552', 'Fund Account', 'NGN1000.00 has been created to y', 'SUCCESS', '2021-03-04 15:17:16', '2021-03-04 15:17:16'),
(12, 10, 30000, 'NGN', 'pskf8307d0fa1fd8', 'Fund Account', 'NGN30000 has been created to you Naira wallet', 'SUCCESS', '2021-03-04 15:27:26', '2021-03-04 15:27:26'),
(13, 10, 200, 'NGN', 'at016273820706', 'Airtime Purchase', 'mtn NGN200 recharge to 08011111111 was success', 'SUCCESS', '2021-03-04 16:35:42', '2021-03-04 16:35:42'),
(14, 10, 0, 'NGN', 'dt016274031583', 'Mobile Data Purc', 'mtn NGN1000 recharge to 08011111111 was success', 'SUCCESS', '2021-03-04 16:39:13', '2021-03-04 16:39:13'),
(15, 10, 1000, 'NGN', 'dt016274130921', 'Mobile Data Purc', 'mtn NGN1000 recharge to 08011111111 was success', 'SUCCESS', '2021-03-04 16:40:52', '2021-03-04 16:40:52'),
(16, 8, 2000, 'NGN', 'aacnbxQnNAxF2Zx', 'Fund Account', 'NGN2000.00 has been created to you Naira wallet', 'SUCCESS', '2021-03-04 17:19:21', '2021-03-04 17:19:21'),
(17, 8, 4000, 'NGN', 'mff016277750910', 'Fund Account', 'NGN4000.00 has been created to you Naira wallet', 'SUCCESS', '2021-03-04 17:45:09', '2021-03-04 17:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_tv_beneficiaries`
--

CREATE TABLE `mbr_tv_beneficiaries` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `smart_card_number` varchar(16) NOT NULL,
  `name` varchar(32) NOT NULL,
  `service` varchar(32) NOT NULL,
  `count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mbr_tv_services`
--

CREATE TABLE `mbr_tv_services` (
  `id` int(11) NOT NULL,
  `api_source` varchar(32) NOT NULL,
  `service_id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `package` varchar(32) NOT NULL,
  `bill_code` varchar(32) NOT NULL,
  `api_price` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `api_active` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_tv_services`
--

INSERT INTO `mbr_tv_services` (`id`, `api_source`, `service_id`, `name`, `package`, `bill_code`, `api_price`, `price`, `api_active`, `active`, `created_at`, `updated_at`) VALUES
(1, 'VTPass', 'dstv', 'DSTV', 'DStv Padi ', 'dstv-padi', 1850, 1850, 1, 1, '2021-02-16 20:43:25', '2021-02-16 20:43:25'),
(2, 'VTPass', 'dstv', 'DSTV', 'DStv Yanga ', 'dstv-yanga', 2565, 2565, 1, 1, '2021-02-16 20:43:25', '2021-02-16 20:43:25'),
(3, 'VTPass', 'dstv', 'DSTV', 'Dstv Confam ', 'dstv-confam', 4615, 4615, 1, 1, '2021-02-16 20:43:26', '2021-02-16 20:43:26'),
(4, 'VTPass', 'dstv', 'DSTV', 'DStv  Compact ', 'dstv79', 7900, 7900, 1, 1, '2021-02-16 20:43:26', '2021-02-16 20:43:26'),
(5, 'VTPass', 'dstv', 'DSTV', 'DStv Premium ', 'dstv3', 18400, 18400, 1, 1, '2021-02-16 20:43:27', '2021-02-16 20:43:27'),
(6, 'VTPass', 'dstv', 'DSTV', 'DStv Asia ', 'dstv6', 6200, 6200, 1, 1, '2021-02-16 20:43:27', '2021-02-16 20:43:27'),
(7, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus ', 'dstv7', 12400, 12400, 1, 1, '2021-02-16 20:43:27', '2021-02-16 20:43:27'),
(8, 'VTPass', 'dstv', 'DSTV', 'DStv Premium-French ', 'dstv9', 25550, 25550, 1, 1, '2021-02-16 20:43:27', '2021-02-16 20:43:27'),
(9, 'VTPass', 'dstv', 'DSTV', 'DStv Premium-Asia ', 'dstv10', 20500, 20500, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(10, 'VTPass', 'dstv', 'DSTV', 'DStv Confam + ExtraView ', 'confam-extra', 7115, 7115, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(11, 'VTPass', 'dstv', 'DSTV', 'DStv Yanga + ExtraView ', 'yanga-extra', 5065, 5065, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(12, 'VTPass', 'dstv', 'DSTV', 'DStv Padi + ExtraView ', 'padi-extra', 4350, 4350, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(13, 'VTPass', 'dstv', 'DSTV', 'DStv Compact + Asia ', 'com-asia', 14100, 14100, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(14, 'VTPass', 'dstv', 'DSTV', 'DStv Compact + Extra View ', 'dstv30', 10400, 10400, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(15, 'VTPass', 'dstv', 'DSTV', 'DStv Compact + French Touch ', 'com-frenchtouch', 10200, 10200, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(16, 'VTPass', 'dstv', 'DSTV', 'DStv Premium - Extra View ', 'dstv33', 20900, 20900, 1, 1, '2021-02-16 20:43:28', '2021-02-16 20:43:28'),
(17, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus - Asia ', 'dstv40', 18600, 18600, 1, 1, '2021-02-16 20:43:29', '2021-02-16 20:43:29'),
(18, 'VTPass', 'dstv', 'DSTV', 'DStv Compact + French Touch + Ex', 'com-frenchtouch-extra', 12700, 12700, 1, 1, '2021-02-16 20:43:29', '2021-02-16 20:43:29'),
(19, 'VTPass', 'dstv', 'DSTV', 'DStv Compact + Asia + ExtraView ', 'com-asia-extra', 16600, 16600, 1, 1, '2021-02-16 20:43:29', '2021-02-16 20:43:29'),
(20, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus + French Plus ', 'dstv43', 20500, 20500, 1, 1, '2021-02-16 20:43:29', '2021-02-16 20:43:29'),
(21, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus + French Touch', 'complus-frenchtouch', 14700, 14700, 1, 1, '2021-02-16 20:43:30', '2021-02-16 20:43:30'),
(22, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus - Extra View ', 'dstv45', 14900, 14900, 1, 1, '2021-02-16 20:43:30', '2021-02-16 20:43:30'),
(23, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus + FrenchPlus +', 'complus-french-extraview', 23000, 23000, 1, 1, '2021-02-16 20:43:30', '2021-02-16 20:43:30'),
(24, 'VTPass', 'dstv', 'DSTV', 'DStv Compact + French Plus ', 'dstv47', 16000, 16000, 1, 1, '2021-02-16 20:43:30', '2021-02-16 20:43:30'),
(25, 'VTPass', 'dstv', 'DSTV', 'DStv Compact Plus + Asia + Extra', 'dstv48', 21100, 21100, 1, 1, '2021-02-16 20:43:31', '2021-02-16 20:43:31'),
(26, 'VTPass', 'dstv', 'DSTV', 'DStv Premium + Asia + Extra View', 'dstv61', 23000, 23000, 1, 1, '2021-02-16 20:43:31', '2021-02-16 20:43:31'),
(27, 'VTPass', 'dstv', 'DSTV', 'DStv Premium + French + Extra Vi', 'dstv62', 28050, 28050, 1, 1, '2021-02-16 20:43:31', '2021-02-16 20:43:31'),
(28, 'VTPass', 'dstv', 'DSTV', 'DStv HDPVR Access Service ', 'hdpvr-access-service', 2500, 2500, 1, 1, '2021-02-16 20:43:31', '2021-02-16 20:43:31'),
(29, 'VTPass', 'dstv', 'DSTV', 'DStv French Plus Add-on ', 'frenchplus-addon', 8100, 8100, 1, 1, '2021-02-16 20:43:31', '2021-02-16 20:43:31'),
(30, 'VTPass', 'dstv', 'DSTV', 'DStv Asian Add-on ', 'asia-addon', 6200, 6200, 1, 1, '2021-02-16 20:43:31', '2021-02-16 20:43:31'),
(31, 'VTPass', 'dstv', 'DSTV', 'DStv French Touch Add-on ', 'frenchtouch-addon', 2300, 2300, 1, 1, '2021-02-16 20:43:32', '2021-02-16 20:43:32'),
(32, 'VTPass', 'dstv', 'DSTV', 'ExtraView Access ', 'extraview-access', 2500, 2500, 1, 1, '2021-02-16 20:43:32', '2021-02-16 20:43:32'),
(33, 'VTPass', 'dstv', 'DSTV', 'DStv French 11 ', 'french11', 3260, 3260, 1, 1, '2021-02-16 20:43:32', '2021-02-16 20:43:32'),
(34, 'VTPass', 'gotv', 'GOTV', 'GOtv Lite ', 'gotv-lite', 410, 410, 1, 1, '2021-02-16 20:43:35', '2021-02-16 20:43:35'),
(35, 'VTPass', 'gotv', 'GOTV', 'GOtv Max ', 'gotv-max', 3600, 3600, 1, 1, '2021-02-16 20:43:35', '2021-02-16 20:43:35'),
(36, 'VTPass', 'gotv', 'GOTV', 'GOtv Jolli ', 'gotv-jolli', 2460, 2460, 1, 1, '2021-02-16 20:43:35', '2021-02-16 20:43:35'),
(37, 'VTPass', 'gotv', 'GOTV', 'GOtv Jinja ', 'gotv-jinja', 1640, 1640, 1, 1, '2021-02-16 20:43:35', '2021-02-16 20:43:35'),
(38, 'VTPass', 'gotv', 'GOTV', 'GOtv Lite (3 Months) ', 'gotv-lite-3months', 1080, 1080, 1, 1, '2021-02-16 20:43:36', '2021-02-16 20:43:36'),
(39, 'VTPass', 'gotv', 'GOTV', 'GOtv Lite (1 Year) ', 'gotv-lite-1year', 3180, 3180, 1, 1, '2021-02-16 20:43:36', '2021-02-16 20:43:36'),
(40, 'VTPass', 'startimes', 'STARTIMES', 'Nova  -  1 Month', 'nova', 900, 900, 1, 1, '2021-02-16 20:43:39', '2021-02-16 20:43:39'),
(41, 'VTPass', 'startimes', 'STARTIMES', 'Basic  -  1 Month', 'basic', 1700, 1700, 1, 1, '2021-02-16 20:43:39', '2021-02-16 20:43:39'),
(42, 'VTPass', 'startimes', 'STARTIMES', 'Smart  -  1 Month', 'smart', 2200, 2200, 1, 1, '2021-02-16 20:43:39', '2021-02-16 20:43:39'),
(43, 'VTPass', 'startimes', 'STARTIMES', 'Classic  -  1 Month', 'classic', 2500, 2500, 1, 1, '2021-02-16 20:43:40', '2021-02-16 20:43:40'),
(44, 'VTPass', 'startimes', 'STARTIMES', 'Super  -  1 Month', 'super', 4200, 4200, 1, 1, '2021-02-16 20:43:40', '2021-02-16 20:43:40'),
(45, 'VTPass', 'startimes', 'STARTIMES', 'Nova  -  1 Week', 'nova-weekly', 300, 300, 1, 1, '2021-02-16 20:43:40', '2021-02-16 20:43:40'),
(46, 'VTPass', 'startimes', 'STARTIMES', 'Basic  -  1 Week', 'basic-weekly', 600, 600, 1, 1, '2021-02-16 20:43:40', '2021-02-16 20:43:40'),
(47, 'VTPass', 'startimes', 'STARTIMES', 'Smart  -  1 Week', 'smart-weekly', 700, 700, 1, 1, '2021-02-16 20:43:40', '2021-02-16 20:43:40'),
(48, 'VTPass', 'startimes', 'STARTIMES', 'Classic  -  1 Week ', 'classic-weekly', 1200, 1200, 1, 1, '2021-02-16 20:43:40', '2021-02-16 20:43:40'),
(49, 'VTPass', 'startimes', 'STARTIMES', 'Super  -  1 Week', 'super-weekly', 1500, 1500, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41'),
(50, 'VTPass', 'startimes', 'STARTIMES', 'Nova  -  1 Day', 'nova-daily', 90, 90, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41'),
(51, 'VTPass', 'startimes', 'STARTIMES', 'Basic  -  1 Day', 'basic-daily', 160, 160, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41'),
(52, 'VTPass', 'startimes', 'STARTIMES', 'Smart  -  1 Day', 'smart-daily', 200, 200, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41'),
(53, 'VTPass', 'startimes', 'STARTIMES', 'Classic  -  1 Day ', 'classic-daily', 320, 320, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41'),
(54, 'VTPass', 'startimes', 'STARTIMES', 'Super  -  1 Day', 'super-daily', 400, 400, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41'),
(55, 'VTPass', 'startimes', 'STARTIMES', 'ewallet Amount', 'ewallet', 0, 0, 1, 1, '2021-02-16 20:43:41', '2021-02-16 20:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_usd_wallet`
--

CREATE TABLE `mbr_usd_wallet` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `balance` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_usd_wallet`
--

INSERT INTO `mbr_usd_wallet` (`id`, `user`, `balance`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '2021-02-02 14:01:33', '2021-02-02 14:01:33'),
(2, 1, 2.72341, '2021-02-02 14:32:24', '2021-02-28 10:55:31'),
(3, 3, 0, '2021-02-02 14:37:04', '2021-02-02 14:37:04'),
(4, 4, 0, '2021-02-02 15:02:16', '2021-02-02 15:02:16'),
(5, 5, 0, '2021-02-03 10:48:09', '2021-02-03 10:48:09'),
(6, 8, 0, '2021-03-02 14:46:34', '2021-03-02 14:46:34'),
(7, 10, 0, '2021-03-03 12:05:25', '2021-03-03 12:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `mbr_users`
--

CREATE TABLE `mbr_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `surname` varchar(64) NOT NULL,
  `email_address` varchar(64) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `lock_code` int(10) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified_email` tinyint(1) UNSIGNED NOT NULL,
  `verified_phone` tinyint(1) UNSIGNED NOT NULL,
  `blocked` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mbr_users`
--

INSERT INTO `mbr_users` (`id`, `first_name`, `surname`, `email_address`, `phone_number`, `lock_code`, `password`, `verified_email`, `verified_phone`, `blocked`, `created_at`, `updated_at`) VALUES
(1, 'Chibuzor', 'Okeke', 'chinazam@gmail.com', '09028837740', 3062, '$2y$10$.iwTE8rMKdsUffoawi0qtuQPgqDHPH0dQdPMCCuwvvKNy7WI2H.oS', 1, 1, 0, '2021-02-02 13:50:17', '2021-03-02 15:02:33'),
(2, '', '', 'welling@gmail.com', '', 0, '$2y$10$Oybsl5vxcug9m0UgUEg1HOj3bnyZq2snxcQ5r.8uYoG2mMMLgvthG', 1, 0, 0, '2021-02-02 13:57:54', '2021-02-02 14:01:32'),
(3, '', '', 'ella@gmail.com', '', 0, '$2y$10$EaXs0OmVpEglcUi3.5JybuxgxoYRTBmMX1/WDhchnf26qANaXamy6', 1, 0, 0, '2021-02-02 14:34:56', '2021-02-02 14:37:04'),
(4, '', '', 'ellaU@gmail.com', '', 1234, '$2y$10$hSmc4rGclPNYWeb2gNAw5.YTFbskyM.zS9FIvuqV0JUeXeYav7dxK', 1, 0, 0, '2021-02-02 14:55:00', '2021-02-02 15:02:34'),
(5, 'Chibuzor', 'Okeke', 'chinazam@gmail.com', '08108803488', 3062, '$2y$10$.iwTE8rMKdsUffoawi0qtuQPgqDHPH0dQdPMCCuwvvKNy7WI2H.oS', 1, 1, 0, '2021-02-03 10:46:04', '2021-02-04 12:06:56'),
(6, '', '', 'email2@gmail.com', '', 0, '$2y$10$RliRiNHxpkpa2zSdJ0HSROiVD3mElENtoIMAKFtuyKWMIOrCZtnoO', 0, 0, 0, '2021-02-22 03:33:22', '2021-02-22 03:33:22'),
(7, '', '', 'zikzay1@gmail.com', '', 0, '$2y$10$eHbXSmYQHt5APyvBTjNYuO.SVAsGSSzztpB7ObtAJ67Y.ZoqX17aq', 0, 0, 0, '2021-02-22 04:02:09', '2021-03-03 11:55:27'),
(8, 'Chinaza', 'Agbo', 'agbo.raph111@gmail.com', '08108803488', 3061, '$2y$10$q3Pi9wK4Ux9cZiDM3b6quOoObbqdWTldHoWRHN80Ne3hrjU6vGpvm', 1, 1, 0, '2021-03-02 14:44:42', '2021-03-04 11:11:10'),
(9, '', '', 'zikzay1@gmail.com', '', 0, '$2y$10$kU2b4/HkWG/Qin1xqgU0.uoTjk4vuEs9rraDx5ckZ6INpwa4DQv5G', 0, 0, 0, '2021-03-03 11:55:51', '2021-03-03 11:59:17'),
(10, 'ISAAC', 'EZE', 'zikzay@gmail.com', '09138807871', 0, '$2y$10$3KOdbyPeBkudcYNNGK0o2exZfupa0zfwGOqWsoK3h3ec7mqyUdjkO', 1, 1, 0, '2021-03-03 11:59:26', '2021-03-03 12:57:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mbr_airtime`
--
ALTER TABLE `mbr_airtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_airtime_to_cash`
--
ALTER TABLE `mbr_airtime_to_cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_api_mobile_data`
--
ALTER TABLE `mbr_api_mobile_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_banks`
--
ALTER TABLE `mbr_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_bank_accounts`
--
ALTER TABLE `mbr_bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_bitcoin_buyers`
--
ALTER TABLE `mbr_bitcoin_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_bitcoin_sellers`
--
ALTER TABLE `mbr_bitcoin_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_bitcoin_wallets`
--
ALTER TABLE `mbr_bitcoin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_discounts`
--
ALTER TABLE `mbr_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_electricity_beneficiaries`
--
ALTER TABLE `mbr_electricity_beneficiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_electricity_services`
--
ALTER TABLE `mbr_electricity_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_email_codes`
--
ALTER TABLE `mbr_email_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_fund_history`
--
ALTER TABLE `mbr_fund_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_mobile_data`
--
ALTER TABLE `mbr_mobile_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_mobile_network`
--
ALTER TABLE `mbr_mobile_network`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_naria_wallets`
--
ALTER TABLE `mbr_naria_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_paystack_model`
--
ALTER TABLE `mbr_paystack_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_phone_codes`
--
ALTER TABLE `mbr_phone_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_phone_number_beneficiaries`
--
ALTER TABLE `mbr_phone_number_beneficiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_rates`
--
ALTER TABLE `mbr_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_services`
--
ALTER TABLE `mbr_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_settings`
--
ALTER TABLE `mbr_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_transaction_history`
--
ALTER TABLE `mbr_transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_tv_beneficiaries`
--
ALTER TABLE `mbr_tv_beneficiaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_tv_services`
--
ALTER TABLE `mbr_tv_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_usd_wallet`
--
ALTER TABLE `mbr_usd_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mbr_users`
--
ALTER TABLE `mbr_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mbr_airtime`
--
ALTER TABLE `mbr_airtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mbr_airtime_to_cash`
--
ALTER TABLE `mbr_airtime_to_cash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mbr_api_mobile_data`
--
ALTER TABLE `mbr_api_mobile_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mbr_banks`
--
ALTER TABLE `mbr_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mbr_bank_accounts`
--
ALTER TABLE `mbr_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mbr_bitcoin_buyers`
--
ALTER TABLE `mbr_bitcoin_buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mbr_bitcoin_sellers`
--
ALTER TABLE `mbr_bitcoin_sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mbr_bitcoin_wallets`
--
ALTER TABLE `mbr_bitcoin_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mbr_discounts`
--
ALTER TABLE `mbr_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mbr_electricity_beneficiaries`
--
ALTER TABLE `mbr_electricity_beneficiaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mbr_electricity_services`
--
ALTER TABLE `mbr_electricity_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mbr_email_codes`
--
ALTER TABLE `mbr_email_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mbr_fund_history`
--
ALTER TABLE `mbr_fund_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mbr_mobile_data`
--
ALTER TABLE `mbr_mobile_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mbr_mobile_network`
--
ALTER TABLE `mbr_mobile_network`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mbr_naria_wallets`
--
ALTER TABLE `mbr_naria_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mbr_paystack_model`
--
ALTER TABLE `mbr_paystack_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mbr_phone_codes`
--
ALTER TABLE `mbr_phone_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mbr_phone_number_beneficiaries`
--
ALTER TABLE `mbr_phone_number_beneficiaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mbr_rates`
--
ALTER TABLE `mbr_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mbr_services`
--
ALTER TABLE `mbr_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mbr_settings`
--
ALTER TABLE `mbr_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mbr_transaction_history`
--
ALTER TABLE `mbr_transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mbr_tv_beneficiaries`
--
ALTER TABLE `mbr_tv_beneficiaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mbr_tv_services`
--
ALTER TABLE `mbr_tv_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mbr_usd_wallet`
--
ALTER TABLE `mbr_usd_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mbr_users`
--
ALTER TABLE `mbr_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
