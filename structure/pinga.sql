-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 09:13 AM
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
-- Database: `pinga`
--

-- --------------------------------------------------------

--
-- Table structure for table `rgp_users_other_info`
--

CREATE TABLE `rgp_users_other_info` (
  `info_id` int(11) NOT NULL,
  `rpg_user_id` int(11) NOT NULL,
  `monthly_salary` varchar(10) NOT NULL,
  `marital_status` varchar(15) NOT NULL,
  `rpg_location` varchar(150) NOT NULL,
  `rpg_city` varchar(30) NOT NULL,
  `rpg_state` varchar(30) NOT NULL,
  `rpg_country` varchar(30) NOT NULL,
  `rpg_dob` varchar(20) NOT NULL,
  `rpg_about_me` text NOT NULL,
  `rpg_body_type` varchar(30) NOT NULL,
  `rpg_height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rgp_users_other_info`
--

INSERT INTO `rgp_users_other_info` (`info_id`, `rpg_user_id`, `monthly_salary`, `marital_status`, `rpg_location`, `rpg_city`, `rpg_state`, `rpg_country`, `rpg_dob`, `rpg_about_me`, `rpg_body_type`, `rpg_height`) VALUES
(1, 1, '23000', 'Separated ', '', 'Onitsha', 'Anambra', 'Nigeria', '10-09-1993 ', 'The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down The lord is my shelpherd is shall not want he lead me to lie down ', 'Athletic ', 168),
(2, 2, '54000', 'Never Married ', '', 'Numan', 'Adamawa', 'Nigeria', '11-07-1990 ', 'This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of  This is what i want to say about the lord chosen in this time of ', 'Muscular ', 176),
(3, 3, '119050 ', 'Married ', '', 'Kuje', 'Abuja', 'Nigeria', '07-05-1998 ', 'It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself It is sometimes a dificult thing to to say something about yourself ', 'Athletic ', 169),
(4, 4, '298299 ', 'Married ', '', 'Awka', 'Anambra', 'Nigeria', '06-05-1992 ', 'I am the best of myself no one can tell be what to do and what to say in this life I am the best of myself no one can tell be what to do and what to say in this life I am the best of myself no one can tell be what to do and what to say in this life I am the best of myself no one can tell be what to do and what to say in this life I am the best of myself no one can tell be what to do and what to say in this life I am the best of myself no one can tell be what to do and what to say in this life ', 'Fat ', 29);

-- --------------------------------------------------------

--
-- Table structure for table `rpg_business_info`
--

CREATE TABLE `rpg_business_info` (
  `rpg_business_id` int(11) NOT NULL,
  `rpg_business_name` varchar(30) NOT NULL,
  `rpg_business_category` varchar(30) NOT NULL,
  `rpg_business_email` varchar(50) NOT NULL,
  `rpg_business_phone` varchar(15) NOT NULL,
  `rpg_business_image` varchar(150) NOT NULL,
  `rpg_business_location` varchar(150) NOT NULL,
  `rpg_business_city` varchar(30) NOT NULL,
  `rpg_business_state` varchar(30) NOT NULL,
  `rpg_business_country` varchar(35) NOT NULL,
  `rpg_business_username` varchar(30) NOT NULL,
  `rpg_business_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_business_info`
--

INSERT INTO `rpg_business_info` (`rpg_business_id`, `rpg_business_name`, `rpg_business_category`, `rpg_business_email`, `rpg_business_phone`, `rpg_business_image`, `rpg_business_location`, `rpg_business_city`, `rpg_business_state`, `rpg_business_country`, `rpg_business_username`, `rpg_business_password`) VALUES
(1, 'Okeson', 'Makeup Artist', 'okeson@gmail.com', '09030383838', '170819052034.jpg ', '', '', '', '', 'okeson', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_categories`
--

CREATE TABLE `rpg_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_categories`
--

INSERT INTO `rpg_categories` (`id`, `name`, `image`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Hair Dressing', '1.jpg', 'Your customers will love the simple, secure payment experience, and if you need any help, \r\n                                    our friendly Support team is only a quick phone call (or email) away', 1, '2020-11-15 17:52:12', '2020-11-15 17:52:12'),
(2, 'Photographer', '1.jpg', 'Your customers will love the simple, secure payment experience, and if you need any help, \r\n                                    our friendly Support team is only a quick phone call (or email) away', 1, '2020-11-15 17:54:41', '2020-11-15 17:54:41'),
(3, 'Fashion Design', '1.jpg', 'Your customers will love the simple, secure payment experience, and if you need any help, \r\n                                    our friendly Support team is only a quick phone call (or email) away', 1, '2020-11-15 17:55:04', '2020-11-15 17:55:04'),
(4, 'Make-up Artist', '1.jpg', 'Your customers will love the simple, secure payment experience, and if you need any help, \r\n                                    our friendly Support team is only a quick phone call (or email) away', 1, '2020-11-15 17:55:25', '2020-11-15 17:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_chats`
--

CREATE TABLE `rpg_chats` (
  `id` int(11) NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL,
  `receiver` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `image` varchar(128) NOT NULL,
  `delivered` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_chats`
--

INSERT INTO `rpg_chats` (`id`, `sender`, `receiver`, `message`, `image`, `delivered`, `created_at`, `updated_at`) VALUES
(1, 21, 20, 'First Bank Onah Emeka Enugu glo number of people who are', '', 0, '2020-11-22 13:31:39', '2020-11-24 05:07:10'),
(2, 21, 20, 'Hello my man', '', 0, '2020-11-22 13:31:39', '2020-11-22 13:31:39'),
(3, 21, 20, 'Please send the stuff to my email as I will take it up', '', 0, '2020-11-22 15:01:51', '2020-11-22 13:31:39'),
(4, 20, 21, 'The Caped Crusaders I will be sincere to my self esteem and I', '', 0, '2020-11-22 15:06:57', '2020-11-22 15:06:57'),
(5, 20, 21, 'the same system', '', 0, '2020-11-22 15:07:10', '2020-11-22 15:07:10'),
(6, 21, 20, 'Why tuff to my email as I will take it up', '', 0, '2020-11-22 15:01:51', '2020-11-22 15:34:00'),
(7, 20, 21, 'Did you get home from work', '', 0, '2020-11-22 15:34:30', '2020-11-22 15:34:30'),
(8, 20, 21, 'hello bro', '', 0, '2020-11-22 15:43:30', '2020-11-22 15:43:30'),
(9, 20, 21, 'hello bro Happy Birthday', '', 0, '2020-11-22 15:43:47', '2020-11-22 15:43:47'),
(10, 20, 21, 'get', '', 0, '2020-11-22 15:52:23', '2020-11-22 15:52:23'),
(11, 20, 21, 'get yt', '', 0, '2020-11-22 15:52:30', '2020-11-22 15:52:30'),
(12, 20, 21, 'get youy', '', 0, '2020-11-22 15:52:36', '2020-11-22 15:52:36'),
(13, 20, 21, 'get youy', '', 0, '2020-11-22 15:53:00', '2020-11-22 15:53:00'),
(14, 20, 21, 'get youy Hugh Laurie', '', 0, '2020-11-22 15:53:13', '2020-11-22 15:53:13'),
(15, 20, 21, 'the', '', 0, '2020-11-22 15:55:50', '2020-11-22 15:55:50'),
(16, 20, 21, 'the best for the', '', 0, '2020-11-22 15:55:59', '2020-11-22 15:55:59'),
(17, 20, 21, 'the best for the next', '', 0, '2020-11-22 15:56:17', '2020-11-22 15:56:17'),
(18, 20, 21, 'The Star Wars you have a', '', 0, '2020-11-22 16:03:09', '2020-11-22 16:03:09'),
(19, 20, 21, 'The Star Wars', '', 0, '2020-11-22 16:06:03', '2020-11-22 16:06:03'),
(20, 20, 21, 'y', '', 0, '2020-11-22 16:10:56', '2020-11-22 16:10:56'),
(21, 20, 21, 'yuhg', '', 0, '2020-11-22 16:11:01', '2020-11-22 16:11:01'),
(22, 20, 21, 'yes it', '', 0, '2020-11-22 16:14:57', '2020-11-22 16:14:57'),
(23, 20, 21, 'yes it', '', 0, '2020-11-22 16:15:05', '2020-11-22 16:15:05'),
(24, 20, 21, 'the', '', 0, '2020-11-22 16:19:14', '2020-11-22 16:19:14'),
(25, 20, 21, 'the guy that', '', 0, '2020-11-22 16:19:21', '2020-11-22 16:19:21'),
(26, 20, 21, 'the guy that Utd you', '', 0, '2020-11-22 16:19:26', '2020-11-22 16:19:26'),
(27, 20, 21, 'the guy that Utd you can get some more', '', 0, '2020-11-22 16:19:32', '2020-11-22 16:19:32'),
(28, 20, 21, 'the guy that Utd you can get some more and more importantly the', '', 0, '2020-11-22 16:19:37', '2020-11-22 16:19:37'),
(29, 20, 21, 'you have a', '', 0, '2020-11-22 16:21:14', '2020-11-22 16:21:14'),
(30, 20, 21, 'you have a great day', '', 0, '2020-11-22 16:21:18', '2020-11-22 16:21:18'),
(31, 20, 21, 'you have a great day at work now so', '', 0, '2020-11-22 16:21:23', '2020-11-22 16:21:23'),
(32, 20, 21, 'you have a great day at work now so I&#039;m going', '', 0, '2020-11-22 16:21:28', '2020-11-22 16:21:28'),
(33, 20, 21, 'you have a great day at work now so I&#039;m going back', '', 0, '2020-11-22 16:21:31', '2020-11-22 16:21:31'),
(34, 20, 21, 'you have a great day at work now so I&#039;m going back home now so', '', 0, '2020-11-22 16:21:35', '2020-11-22 16:21:35'),
(35, 20, 21, 'you have a great day at work now so I&#039;m going back home now so I&#039;m going to the gym', '', 0, '2020-11-22 16:21:39', '2020-11-22 16:21:39'),
(36, 20, 21, 'you have a great day at work now so I&#039;m going back home now so I&#039;m going to the gym today is the', '', 0, '2020-11-22 16:21:44', '2020-11-22 16:21:44'),
(37, 20, 21, 'tyou', '', 0, '2020-11-22 16:29:47', '2020-11-22 16:29:47'),
(38, 20, 21, 'the', '', 0, '2020-11-22 16:33:23', '2020-11-22 16:33:23'),
(39, 20, 21, 'yes you can see the', '', 0, '2020-11-22 16:34:27', '2020-11-22 16:34:27'),
(40, 20, 21, 'yes you can see the movie', '', 0, '2020-11-22 16:34:30', '2020-11-22 16:34:30'),
(41, 20, 21, 'yes you c', '', 0, '2020-11-22 16:34:37', '2020-11-22 16:34:37'),
(42, 20, 21, 'yes you cmay', '', 0, '2020-11-22 16:34:42', '2020-11-22 16:34:42'),
(43, 20, 21, '9am the time and ðŸ’°', '', 0, '2020-11-22 16:46:52', '2020-11-22 16:46:52'),
(44, 20, 21, '9am the time and ðŸ’° too for a few weeks ago I was going to', '', 0, '2020-11-22 16:47:06', '2020-11-22 16:47:06'),
(45, 0, 0, '', '', 0, '2020-11-24 05:52:45', '2020-11-24 05:52:45'),
(46, 20, 22, 'yes it does', '', 0, '2020-11-24 06:01:46', '2020-11-24 06:01:46'),
(47, 20, 22, '', '007596904781.jpg', 0, '2020-11-24 06:20:25', '2020-11-24 06:20:25'),
(48, 20, 22, '', '007597018801.jpg', 0, '2020-11-24 06:22:19', '2020-11-24 06:22:19'),
(49, 20, 22, 'you have', '', 0, '2020-11-24 06:22:29', '2020-11-24 06:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_comments`
--

CREATE TABLE `rpg_comments` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `post` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_comments`
--

INSERT INTO `rpg_comments` (`id`, `user`, `post`, `message`, `active`, `created_at`, `updated_at`) VALUES
(1, 20, 4, 'My very first comment is here now and it is life', 1, '2020-11-18 07:01:34', '2020-11-18 07:01:34'),
(2, 20, 5, 'You can post anything about the treatment of the African American to the', 1, '2020-11-18 13:46:38', '2020-11-18 13:46:38'),
(3, 20, 3, 'Another day to you and your ðŸ‘ª and I don&#039;t want', 1, '2020-11-18 16:44:06', '2020-11-18 16:44:06'),
(4, 21, 4, 'My own place and I will have to be with you', 1, '2020-11-19 06:26:24', '2020-11-19 06:26:24'),
(5, 21, 3, 'Leave you have a great weekend everyone else in mind', 1, '2020-11-20 12:00:15', '2020-11-20 12:00:15'),
(6, 22, 3, 'You See Me 2 I will be sincere to my self esteem', 1, '2020-11-22 07:39:33', '2020-11-22 07:39:33'),
(7, 22, 7, 'my Student Iceztech New Year my Love Hewitt I', 1, '2020-11-22 07:40:37', '2020-11-22 07:40:37'),
(8, 22, 6, 'The Caped Crusaders I will be sincere apologies', 1, '2020-11-22 07:41:04', '2020-11-22 07:41:04'),
(9, 22, 5, 'Looking For Lodge I will be sincere to my self esteem', 1, '2020-11-22 07:41:25', '2020-11-22 07:41:25'),
(10, 20, 8, 'van and the kids', 1, '2020-11-24 06:37:48', '2020-11-24 06:37:48'),
(11, 20, 8, 'know how you', 1, '2020-11-24 06:38:54', '2020-11-24 06:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_followers`
--

CREATE TABLE `rpg_followers` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `follower` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_followers`
--

INSERT INTO `rpg_followers` (`id`, `user`, `follower`, `created_at`, `updated_at`) VALUES
(5, 17, 20, '2020-11-20 04:34:18', '2020-11-20 04:34:18'),
(6, 19, 20, '2020-11-20 04:34:18', '2020-11-20 04:34:18'),
(7, 21, 22, '2020-11-22 11:34:10', '2020-11-22 11:34:10'),
(8, 20, 22, '2020-11-22 11:34:31', '2020-11-22 11:34:31'),
(11, 22, 20, '2020-11-24 06:35:40', '2020-11-24 06:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_likes`
--

CREATE TABLE `rpg_likes` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `post` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_likes`
--

INSERT INTO `rpg_likes` (`id`, `user`, `post`, `active`, `created_at`, `updated_at`) VALUES
(2, 18, 5, 1, '2020-11-17 09:00:20', '2020-11-17 09:00:20'),
(6, 19, 3, 1, '2020-11-17 10:47:39', '2020-11-17 10:47:39'),
(7, 17, 5, 1, '2020-11-18 16:42:29', '2020-11-18 16:42:29'),
(8, 17, 3, 1, '2020-11-18 16:46:23', '2020-11-18 16:46:23'),
(20, 20, 3, 1, '2020-11-19 06:15:36', '2020-11-19 06:15:36'),
(21, 20, 5, 1, '2020-11-19 06:15:42', '2020-11-19 06:15:42'),
(22, 21, 4, 1, '2020-11-19 06:26:03', '2020-11-19 06:26:03'),
(23, 21, 5, 1, '2020-11-19 06:26:07', '2020-11-19 06:26:07'),
(24, 21, 7, 1, '2020-11-20 10:22:17', '2020-11-20 10:22:17'),
(25, 22, 7, 1, '2020-11-22 07:38:51', '2020-11-22 07:38:51'),
(26, 22, 5, 1, '2020-11-22 07:38:57', '2020-11-22 07:38:57'),
(27, 22, 3, 1, '2020-11-22 07:39:04', '2020-11-22 07:39:04'),
(30, 20, 6, 1, '2020-11-24 06:34:18', '2020-11-24 06:34:18'),
(31, 23, 3, 1, '2020-11-24 08:04:54', '2020-11-24 08:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_paystack_model`
--

CREATE TABLE `rpg_paystack_model` (
  `id` int(11) NOT NULL,
  `reference` varchar(16) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `confirm` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_paystack_model`
--

INSERT INTO `rpg_paystack_model` (`id`, `reference`, `amount`, `confirm`, `created_at`, `updated_at`) VALUES
(7, 'e771cf65a8553', 1900, 1, '2020-11-22 06:08:16', '2020-11-22 07:03:39'),
(8, '5221801fa2894', 3500, 1, '2020-11-22 11:51:44', '2020-11-22 11:51:44'),
(9, '78c842b1a8113', 3500, 1, '2020-11-24 08:02:56', '2020-11-24 08:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_posts`
--

CREATE TABLE `rpg_posts` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `is_product` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_posts`
--

INSERT INTO `rpg_posts` (`id`, `user`, `category`, `product_name`, `image`, `description`, `price`, `is_product`, `active`, `created_at`, `updated_at`) VALUES
(3, 20, 1, 'IPhone', '006902718147.jpg,006902739860.jpg,006902755597.jpg', 'the best thing that you have', 5600, 1, 1, '2020-11-16 05:35:59', '2020-11-16 05:35:59'),
(4, 20, 2, 'Nokia phone A56', '006929371852.jpg,006929397987.jpg,', 'The Caped Crusaders you have a great weekend everyone else in mind when we are discussing the sam bro i have a website called me and', 62000, 1, 1, '2020-11-16 12:56:17', '2020-11-16 12:56:17'),
(5, 20, 3, 'Lovely grown', '006953300017.jpg,,', 'The Caped Crusaders you for your time to go to the office first please let me know when ever you say that the private sector', 18500, 1, 1, '2020-11-16 19:34:52', '2020-11-16 19:34:52'),
(6, 21, 1, 'Workerman', '007251778664.jpg,007251813960.jpg,007251839798.jpg', 'This morning and then you can do that to you and you&#039;re feeling much better dear friends and family members and the other night when I got a job and the Two strings attached to the rest of the African Americans are welcome your  â˜º', 8500, 1, 1, '2020-11-20 06:30:48', '2020-11-20 06:30:48'),
(7, 21, 0, '', '007255591028.jpg,,', 'Th know what you are saying ur are using that as a reason to be angry at my actions and words of wisdom and', 0, 0, 1, '2020-11-20 07:32:07', '2020-11-20 07:32:07'),
(8, 22, 3, 'Fashion', '007429525571.jpg,007429565422.jpg,007429645751.jpg', 'What you doing now then I&#039;ll go back to ur work or if u can&#039;t', 11800, 1, 1, '2020-11-22 07:53:25', '2020-11-22 07:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_reports`
--

CREATE TABLE `rpg_reports` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `post` int(10) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_reports`
--

INSERT INTO `rpg_reports` (`id`, `user`, `post`, `message`, `created_at`, `updated_at`) VALUES
(1, 20, 5, 'I will like to prepare for the next bus stop at a', '2020-11-18 16:19:29', '2020-11-18 16:19:29'),
(2, 20, 3, 'another day to day basis for a', '2020-11-18 16:44:29', '2020-11-18 16:44:29'),
(3, 20, 3, 'I want to upload the video', '2020-11-19 04:10:52', '2020-11-19 04:10:52'),
(4, 20, 4, 'the same system and the kids and', '2020-11-19 04:11:28', '2020-11-19 04:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_subscriptions`
--

CREATE TABLE `rpg_subscriptions` (
  `id` int(11) NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `subsctipion_name` varchar(32) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `reference` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_subscriptions`
--

INSERT INTO `rpg_subscriptions` (`id`, `user`, `subsctipion_name`, `amount`, `duration`, `reference`, `created_at`, `updated_at`) VALUES
(1, 3, '', 1900, 1, 'e771cf65a8553', '2020-11-22 06:21:08', '2020-11-22 07:13:19'),
(2, 3, '', 1900, 1, 'e771cf65a8553', '2020-11-22 07:03:39', '2020-11-22 07:13:23'),
(3, 20, '', 3500, 2, '5221801fa2894', '2020-11-22 11:51:44', '2020-11-22 11:51:44'),
(4, 23, '', 3500, 2, '78c842b1a8113', '2020-11-24 08:02:57', '2020-11-24 08:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_users`
--

CREATE TABLE `rpg_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `nickname` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `state` varchar(64) NOT NULL,
  `lga` varchar(64) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `income` varchar(32) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_users`
--

INSERT INTO `rpg_users` (`id`, `name`, `nickname`, `email`, `phone_number`, `state`, `lga`, `gender`, `dob`, `income`, `image`, `password`, `created_at`, `updated_at`) VALUES
(19, 'Lucke', 'luke', 'luke@gmail.com', '09099880099', 'Anabra', 'Aguata', 'male', '2019-09-12', '430000', '006850618445.jpg', '$2y$10$g4bl1dLOPvuzF5jfQtC2nugski2LfTh4qYMd/3ntjevFfAy8KjY3K', '2020-11-15 13:44:11', '2020-11-15 15:04:31'),
(20, 'Peter Williams', 'willipet', 'willipet@gmail.com', '08025254581', 'Anambra State', 'Anambra West', 'Male', '2018-06-04', '5630000', '006855274433.jpg', '$2y$10$m2XtDV8tdwTqqv.OzGBb3e/2LlG3jSplzJQ91pahEGM6tsJhj6c3K', '2020-11-15 16:18:49', '2020-11-15 16:19:54'),
(21, 'Elvis Presley', 'ivaglown', 'ivaglown@yahoo.com', '08025651498', 'Abuja FCT', 'Kuje', 'Male', '2000-12-09', '63500', '007165216380.jpg', '$2y$10$/WSAw1XE/FdOXbxr0IAKDOYCCpF0kGHuhwWUjuGrfpmHlW8ecn4Iu', '2020-11-19 06:24:35', '2020-11-19 06:25:36'),
(22, 'Hilson Michael', 'michilson', 'michilson@gmail.com', '08065321478', 'Abia State', 'Aba North', 'Male', '1998-04-04', '65300', '007354349108.jpg', '$2y$10$OGOfn79/EOaxh/248K0BE.TybDm5bXqPu.JoEIF6NhsCx6mpHtoHe', '2020-11-21 10:56:20', '2020-11-21 10:57:49'),
(23, 'Job Andrew', 'jobdrew', 'jobdrew@gmail.com', '08065296312', 'Akwa Ibom State', 'Eastern Obolo', 'Male', '2000-01-10', 'â‚¦500,000 and Above', '007603003847.jpg', '$2y$10$eqXz6B/p.u.0flnwmVhfweCTqgqmkg0JuZMrbXExjUc5Xq6TGxlLu', '2020-11-24 08:01:29', '2020-11-24 08:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_users_chat`
--

CREATE TABLE `rpg_users_chat` (
  `chat_id` int(11) NOT NULL,
  `rpg_user_id` int(11) NOT NULL,
  `rpg_reciever_id` int(11) NOT NULL,
  `message_type` varchar(15) NOT NULL,
  `chat_message` text NOT NULL,
  `chat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chat_seen` int(11) NOT NULL,
  `chat_read` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rpg_users_info`
--

CREATE TABLE `rpg_users_info` (
  `rpg_user_id` int(11) NOT NULL,
  `rpg_name` varchar(50) NOT NULL,
  `rpg_email` varchar(50) NOT NULL,
  `rpg_phone` varchar(15) NOT NULL,
  `rpg_username` varchar(30) NOT NULL,
  `rpg_password` varchar(32) NOT NULL,
  `rpg_sex` varchar(6) NOT NULL,
  `rpg_nickname` varchar(30) NOT NULL,
  `rpg_favourite` varchar(15) NOT NULL,
  `rpg_reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_users_info`
--

INSERT INTO `rpg_users_info` (`rpg_user_id`, `rpg_name`, `rpg_email`, `rpg_phone`, `rpg_username`, `rpg_password`, `rpg_sex`, `rpg_nickname`, `rpg_favourite`, `rpg_reg_time`) VALUES
(1, 'Philip Ukamaka ', 'philoka@gmail.com ', '09072009288 ', 'philoka ', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', 'philoka ', 'Hookups ', '2019-07-12 18:07:50'),
(2, 'Samson Ukakpu ', 'samson@gmail.com ', '080838737738 ', 'samson ', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male ', 'samson ', 'Hookups ', '2019-07-12 20:09:23'),
(3, 'Victorial ', 'vickky@gmail.com ', '0903388374 ', 'vickky ', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', 'Vickky ', 'Date ', '2019-07-20 10:24:17'),
(4, 'Uchenna ', 'uchenny@gmail.com', '08033883388', 'uchenny', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', 'uchenny ', 'Relationship ', '2019-08-10 12:12:41'),
(5, 'Nemae', 'onyemadioha@gmail.com', '08067324444', 'admin@oragox.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', 'uchenny', 'Relationship', '2020-01-29 09:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_users_post`
--

CREATE TABLE `rpg_users_post` (
  `post_id` int(11) NOT NULL,
  `rpg_user_id` int(11) NOT NULL,
  `post_type` varchar(15) NOT NULL,
  `post_content` text NOT NULL,
  `likes` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_users_post`
--

INSERT INTO `rpg_users_post` (`post_id`, `rpg_user_id`, `post_type`, `post_content`, `likes`, `views`, `post_time`) VALUES
(1, 1, 'image ', '120719094956.jpg ', 0, 0, '2019-07-12 19:49:56'),
(2, 1, 'image ', '120719095052.jpg ', 0, 0, '2019-07-12 19:50:52'),
(3, 2, 'image ', '120719102337.jpg ', 0, 0, '2019-07-12 20:23:37'),
(4, 2, 'image ', '120719102348.jpg ', 0, 0, '2019-07-12 20:23:48'),
(5, 3, 'image ', '200719122652.jpg ', 0, 0, '2019-07-20 10:26:52'),
(6, 3, 'image ', '200719122708.jpg ', 0, 0, '2019-07-20 10:27:08'),
(7, 3, 'image ', '200719122724.jpg ', 0, 0, '2019-07-20 10:27:24'),
(8, 3, 'image ', '200719122737.jpg ', 0, 0, '2019-07-20 10:27:37'),
(9, 3, 'image ', '200719122753.jpg ', 0, 0, '2019-07-20 10:27:53'),
(10, 3, 'image ', '200719122808.jpg ', 0, 0, '2019-07-20 10:28:08'),
(11, 4, 'image', '100819085911.jpg', 0, 0, '2019-08-10 18:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `rpg_users_profile_pix`
--

CREATE TABLE `rpg_users_profile_pix` (
  `profile_pix_id` int(11) NOT NULL,
  `rpg_user_id` int(11) NOT NULL,
  `profile_pix` varchar(30) NOT NULL,
  `profile_pix_thumbnail` varchar(30) NOT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpg_users_profile_pix`
--

INSERT INTO `rpg_users_profile_pix` (`profile_pix_id`, `rpg_user_id`, `profile_pix`, `profile_pix_thumbnail`, `time_posted`) VALUES
(1, 1, '120719094321.jpg ', '1.jpg ', '2019-07-12 19:43:21'),
(2, 1, '120719095010.jpg ', '1.jpg ', '2019-07-12 19:50:10'),
(3, 2, '120719100940.jpg ', '2.jpg ', '2019-07-12 20:09:41'),
(4, 3, '200719122439.jpg ', '3.jpg ', '2019-07-20 10:24:39'),
(5, 4, '100819021305.jpg', '4.jpg', '2019-08-10 12:13:06'),
(6, 5, '290120103219.jpg', '5.jpg', '2020-01-29 09:32:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rgp_users_other_info`
--
ALTER TABLE `rgp_users_other_info`
  ADD PRIMARY KEY (`info_id`),
  ADD KEY `rpg_user_id` (`rpg_user_id`);

--
-- Indexes for table `rpg_business_info`
--
ALTER TABLE `rpg_business_info`
  ADD PRIMARY KEY (`rpg_business_id`);

--
-- Indexes for table `rpg_categories`
--
ALTER TABLE `rpg_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_chats`
--
ALTER TABLE `rpg_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_comments`
--
ALTER TABLE `rpg_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_followers`
--
ALTER TABLE `rpg_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_likes`
--
ALTER TABLE `rpg_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_paystack_model`
--
ALTER TABLE `rpg_paystack_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_posts`
--
ALTER TABLE `rpg_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_reports`
--
ALTER TABLE `rpg_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_subscriptions`
--
ALTER TABLE `rpg_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_users`
--
ALTER TABLE `rpg_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rpg_users_chat`
--
ALTER TABLE `rpg_users_chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `rpg_reciever_id` (`rpg_reciever_id`),
  ADD KEY `rpg_user_id` (`rpg_user_id`);

--
-- Indexes for table `rpg_users_info`
--
ALTER TABLE `rpg_users_info`
  ADD PRIMARY KEY (`rpg_user_id`);

--
-- Indexes for table `rpg_users_post`
--
ALTER TABLE `rpg_users_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `rpg_user_id` (`rpg_user_id`);

--
-- Indexes for table `rpg_users_profile_pix`
--
ALTER TABLE `rpg_users_profile_pix`
  ADD PRIMARY KEY (`profile_pix_id`),
  ADD KEY `rpg_user_id` (`rpg_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rgp_users_other_info`
--
ALTER TABLE `rgp_users_other_info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rpg_business_info`
--
ALTER TABLE `rpg_business_info`
  MODIFY `rpg_business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rpg_categories`
--
ALTER TABLE `rpg_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rpg_chats`
--
ALTER TABLE `rpg_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `rpg_comments`
--
ALTER TABLE `rpg_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rpg_followers`
--
ALTER TABLE `rpg_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rpg_likes`
--
ALTER TABLE `rpg_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rpg_paystack_model`
--
ALTER TABLE `rpg_paystack_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rpg_posts`
--
ALTER TABLE `rpg_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rpg_reports`
--
ALTER TABLE `rpg_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rpg_subscriptions`
--
ALTER TABLE `rpg_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rpg_users`
--
ALTER TABLE `rpg_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rpg_users_info`
--
ALTER TABLE `rpg_users_info`
  MODIFY `rpg_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rpg_users_post`
--
ALTER TABLE `rpg_users_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rpg_users_profile_pix`
--
ALTER TABLE `rpg_users_profile_pix`
  MODIFY `profile_pix_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
