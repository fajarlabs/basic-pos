-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2020 at 12:57 PM
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
-- Database: `point_of_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(10, 'Juice', '2020-01-22 01:27:59', '2020-02-05 15:31:14'),
(17, 'Others', '2020-01-25 01:44:42', '2020-02-05 15:49:35'),
(18, 'Coffee', '2020-01-29 18:32:56', '2020-02-05 15:31:27'),
(21, 'Mineral Water', '2020-02-05 14:54:33', '2020-02-05 15:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `reference`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(152, '54662982', 9, 12000, '2020-01-30 01:07:43', '2020-01-30 01:07:45'),
(153, '41122242', 9, 10000, '2020-01-30 02:53:18', '2020-01-30 02:53:20'),
(154, '95247486', 7, 22000, '2020-01-30 04:38:00', '2020-01-30 04:38:00'),
(158, '48053022', 1, 10000, '2020-02-01 05:17:03', '2020-02-04 17:41:59'),
(159, '37250761', 9, 17000, '2020-02-01 06:59:12', '2020-02-04 17:41:59'),
(160, '85917101', 9, 17000, '2020-02-01 07:00:15', '2020-02-04 17:41:59'),
(161, '76961919', 9, 85000, '2020-02-01 07:00:33', '2020-02-04 17:41:59'),
(162, '68645924', 9, 17000, '2020-02-04 07:11:51', '2020-02-04 07:11:51'),
(163, '77511740', 9, 102000, '2020-02-04 07:13:05', '2020-02-04 07:13:06'),
(164, '42517634', 9, 17000, '2020-02-04 07:18:51', '2020-02-04 07:18:52'),
(165, '07290953', 9, 60000, '2020-02-04 07:19:53', '2020-02-04 07:19:54'),
(166, '80423339', 9, 20000, '2020-02-04 07:20:35', '2020-02-04 07:20:35'),
(167, '87689637', 9, 17000, '2020-02-04 07:42:19', '2020-02-04 07:42:19'),
(168, '46653806', 9, 10000, '2020-02-04 07:45:38', '2020-02-04 07:45:38'),
(169, '44276122', 9, 20000, '2020-02-04 07:46:33', '2020-02-04 07:46:33'),
(171, '57808717', 9, 10000, '2020-02-04 07:48:57', '2020-02-04 07:48:57'),
(173, '19285336', 9, 10000, '2020-02-04 07:51:53', '2020-02-04 07:51:53'),
(174, '56891112', 9, 10000, '2020-02-04 07:52:28', '2020-02-04 07:52:29'),
(175, '55804015', 9, 17000, '2020-02-04 07:53:21', '2020-02-04 07:53:21'),
(177, '17826233', 9, 51000, '2020-02-04 07:55:30', '2020-02-04 17:43:07'),
(178, '13292321', 9, 17000, '2020-02-04 07:55:56', '2020-02-04 17:43:07'),
(179, '95838004', 9, 10000, '2020-02-04 07:57:34', '2020-02-04 17:43:07'),
(180, '42587896', 9, 17000, '2020-02-04 07:58:08', '2020-02-04 17:43:07'),
(181, '52913209', 9, 10000, '2020-02-04 07:59:10', '2020-02-04 17:43:07'),
(182, '31255765', 9, 60000, '2020-02-04 07:59:50', '2020-02-04 17:43:07'),
(183, '30005926', 9, 10000, '2020-02-04 08:03:00', '2020-02-04 08:03:00'),
(184, '08557653', 9, 17000, '2020-02-04 08:08:16', '2020-02-04 08:08:16'),
(185, '91054075', 9, 9000, '2020-02-04 08:10:18', '2020-02-04 08:10:18'),
(186, '69372473', 9, 10000, '2020-02-04 08:11:30', '2020-02-04 08:11:31'),
(187, '94550906', 9, 50000, '2020-02-04 08:14:13', '2020-02-04 08:14:13'),
(188, '70709969', 9, 87000, '2020-02-02 08:15:19', '2020-02-04 17:21:09'),
(189, '63724081', 9, 30000, '2020-02-02 08:21:10', '2020-02-04 17:21:09'),
(190, '37508676', 9, 235000, '2020-02-02 08:27:33', '2020-02-04 17:21:09'),
(191, '07707880', 9, 100000, '2020-02-02 08:28:09', '2020-02-04 17:21:09'),
(192, '62573803', 9, 60000, '2020-02-02 08:29:09', '2020-02-04 17:21:09'),
(193, '29904290', 9, 10000, '2020-02-04 08:32:25', '2020-02-04 08:32:25'),
(194, '35102113', 9, 50000, '2020-02-03 08:32:43', '2020-02-04 17:22:10'),
(195, '06642719', 9, 20000, '2020-02-03 09:45:56', '2020-02-04 17:22:09'),
(196, '61002712', 9, 30000, '2020-02-03 09:46:13', '2020-02-04 17:22:09'),
(197, '40176380', 9, 10000, '2020-02-03 09:59:18', '2020-02-04 17:22:09'),
(198, '33927507', 9, 17000, '2020-02-03 10:03:27', '2020-02-04 17:20:06'),
(199, '80644051', 9, 50000, '2020-02-03 10:06:33', '2020-02-04 17:22:09'),
(200, '66035546', 9, 10000, '2020-02-04 10:07:38', '2020-02-04 10:07:39'),
(201, '12898926', 9, 50000, '2020-02-04 10:09:04', '2020-02-04 10:09:04'),
(202, '20287265', 9, 50000, '2020-02-04 10:09:14', '2020-02-04 10:09:14'),
(203, '58586627', 9, 10000, '2020-02-04 10:11:01', '2020-02-04 10:11:01'),
(204, '08530042', 9, 30000, '2020-02-04 10:11:38', '2020-02-04 10:11:38'),
(205, '08853830', 9, 100000, '2020-02-04 10:18:22', '2020-02-04 10:18:22'),
(208, '50211985', 1, 20000, '2020-02-04 14:58:11', '2020-02-04 14:58:12'),
(209, '11534050', 9, 40000, '2020-02-04 17:25:31', '2020-02-04 17:25:32'),
(210, '87277238', 9, 50000, '2020-02-05 01:23:38', '2020-02-05 01:23:38'),
(211, '17700221', 9, 135000, '2020-02-05 04:31:43', '2020-02-05 04:31:45'),
(212, '26435316', 9, 50000, '2020-02-05 04:32:37', '2020-02-05 04:32:37'),
(213, '23572790', 9, 50000, '2020-02-05 04:35:55', '2020-02-05 04:35:55'),
(214, '50089361', 9, 45000, '2020-02-05 04:37:19', '2020-02-05 04:37:19'),
(215, '83620101', 9, 100000, '2020-02-05 04:38:38', '2020-02-05 04:38:38'),
(216, '28417230', 9, 50000, '2020-02-05 04:40:10', '2020-02-05 04:40:11'),
(217, '68862447', 9, 10000, '2020-02-05 04:41:55', '2020-02-05 04:41:55'),
(218, '30810098', 9, 27000, '2020-02-05 04:42:15', '2020-02-05 04:42:16'),
(219, '10516040', 9, 37000, '2020-02-05 04:43:52', '2020-02-05 04:43:52'),
(220, '46627777', 9, 47000, '2020-02-05 04:45:09', '2020-02-05 04:45:09'),
(221, '89385008', 9, 20000, '2020-02-05 04:46:00', '2020-02-05 04:46:00'),
(222, '91485020', 9, 69000, '2020-02-05 07:49:31', '2020-02-05 07:49:34'),
(223, '76952896', 7, 20000, '2020-02-05 10:49:08', '2020-02-05 10:49:09'),
(224, '46689145', 11, 10000, '2020-02-06 00:14:40', '2020-02-06 00:14:41'),
(225, '54302323', 11, 60000, '2020-02-06 00:16:56', '2020-02-06 00:16:56'),
(226, '42195048', 11, 50000, '2020-02-06 00:17:35', '2020-02-06 00:17:36'),
(227, '23291477', 11, 50000, '2020-02-06 00:18:06', '2020-02-06 00:18:06'),
(228, '05286345', 9, 25000, '2020-02-06 00:18:52', '2020-02-06 00:18:52'),
(229, '99265317', 9, 25000, '2020-02-06 00:30:49', '2020-02-06 00:30:50'),
(230, '69187748', 1, 50000, '2020-02-06 00:51:13', '2020-02-06 00:51:13'),
(231, '80448898', 9, 45000, '2020-02-06 03:44:35', '2020-02-06 03:44:35'),
(232, '67949788', 1, 5000, '2020-02-06 04:04:26', '2020-02-06 04:04:26'),
(233, '88417648', 13, 15000, '2020-02-12 08:29:33', '2020-02-12 08:29:34'),
(234, '57104056', 13, 20000, '2020-02-12 08:56:53', '2020-02-12 08:56:53'),
(235, '39337501', 13, 10000, '2020-02-12 08:57:53', '2020-02-12 08:57:53'),
(236, '92557007', 13, 10000, '2020-02-12 08:58:54', '2020-02-12 08:58:54'),
(237, '13823267', 13, 5000, '2020-02-12 09:01:24', '2020-02-12 09:01:24'),
(238, '08611282', 13, 10000, '2020-02-12 09:20:09', '2020-02-12 09:20:09'),
(239, '65294876', 13, 5000, '2020-02-12 09:20:37', '2020-02-12 09:20:37'),
(240, '64004699', 13, 10000, '2020-02-12 09:24:29', '2020-02-12 09:24:29'),
(241, '57694322', 13, 10000, '2020-02-12 10:53:48', '2020-02-12 10:53:48'),
(242, '79911575', 13, 10000, '2020-02-12 15:09:02', '2020-02-12 15:09:03'),
(243, '15934125', 14, 15000, '2020-02-12 15:36:33', '2020-02-12 15:36:33'),
(244, '29744521', 14, 4000, '2020-02-12 15:38:37', '2020-02-12 15:38:37'),
(245, '13727870', 14, 5000, '2020-02-12 16:29:54', '2020-02-12 16:29:55'),
(246, '41958078', 14, 10000, '2020-02-12 16:31:10', '2020-02-12 16:31:10'),
(247, '70455218', 14, 5000, '2020-02-12 16:37:51', '2020-02-12 16:37:52'),
(248, '64778916', 14, 5000, '2020-02-12 16:41:25', '2020-02-12 16:41:25'),
(249, '45601568', 14, 10000, '2020-02-12 16:43:12', '2020-02-12 16:43:12'),
(250, '80973164', 14, 25000, '2020-02-12 16:47:51', '2020-02-12 16:47:51'),
(251, '72720393', 13, 10000, '2020-02-12 18:26:05', '2020-02-12 18:26:06'),
(252, '55910682', 14, 25000, '2020-02-13 01:16:49', '2020-02-13 01:16:51'),
(253, '44367530', 14, 25000, '2020-02-13 02:02:17', '2020-02-13 02:02:18'),
(254, '06854138', 21, 20000, '2020-02-13 04:55:57', '2020-02-13 04:55:57'),
(255, '25187619', 14, 30000, '2020-02-13 05:53:42', '2020-02-13 05:53:42'),
(256, '15897141', 14, 5000, '2020-02-13 05:54:45', '2020-02-13 05:54:46'),
(257, '36720954', 22, 75000, '2020-02-13 07:31:28', '2020-02-13 07:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `subtotal`, `created_at`, `updated_at`) VALUES
(158, 152, 34, 1, 2000, 2000, '2020-01-30 01:07:45', '2020-01-30 01:07:45'),
(159, 152, 37, 1, 10000, 10000, '2020-01-30 01:07:45', '2020-01-30 01:07:45'),
(160, 153, 36, 1, 10000, 10000, '2020-01-30 02:53:19', '2020-01-30 02:53:19'),
(161, 154, 35, 1, 2000, 2000, '2020-01-30 04:38:00', '2020-01-30 04:38:00'),
(162, 154, 42, 1, 10000, 10000, '2020-01-30 04:38:00', '2020-01-30 04:38:00'),
(163, 154, 41, 1, 10000, 10000, '2020-01-30 04:38:00', '2020-01-30 04:38:00'),
(164, 158, 34, 5, 2000, 10000, '2020-02-04 05:17:03', '2020-02-04 05:17:03'),
(165, 159, 44, 1, 17000, 17000, '2020-02-04 06:59:13', '2020-02-04 06:59:13'),
(166, 160, 44, 1, 17000, 17000, '2020-02-04 07:00:15', '2020-02-04 07:00:15'),
(167, 161, 44, 5, 17000, 85000, '2020-02-04 07:00:33', '2020-02-04 07:00:33'),
(168, 162, 44, 1, 17000, 17000, '2020-02-04 07:11:51', '2020-02-04 07:11:51'),
(169, 163, 44, 6, 17000, 102000, '2020-02-04 07:13:06', '2020-02-04 07:13:06'),
(170, 164, 44, 1, 17000, 17000, '2020-02-04 07:18:52', '2020-02-04 07:18:52'),
(171, 165, 40, 3, 20000, 60000, '2020-02-04 07:19:53', '2020-02-04 07:19:53'),
(172, 166, 37, 2, 10000, 20000, '2020-02-04 07:20:35', '2020-02-04 07:20:35'),
(173, 167, 44, 1, 17000, 17000, '2020-02-04 07:42:19', '2020-02-04 07:42:19'),
(174, 168, 43, 1, 10000, 10000, '2020-02-04 07:45:38', '2020-02-04 07:45:38'),
(175, 169, 40, 1, 20000, 20000, '2020-02-04 07:46:33', '2020-02-04 07:46:33'),
(177, 171, 37, 1, 10000, 10000, '2020-02-04 07:48:57', '2020-02-04 07:48:57'),
(179, 173, 41, 1, 10000, 10000, '2020-02-04 07:51:53', '2020-02-04 07:51:53'),
(180, 174, 34, 5, 2000, 10000, '2020-02-04 07:52:29', '2020-02-04 07:52:29'),
(181, 175, 44, 1, 17000, 17000, '2020-02-04 07:53:21', '2020-02-04 07:53:21'),
(183, 177, 44, 3, 17000, 51000, '2020-02-04 07:55:30', '2020-02-04 07:55:30'),
(184, 178, 44, 1, 17000, 17000, '2020-02-04 07:55:56', '2020-02-04 07:55:56'),
(185, 179, 43, 1, 10000, 10000, '2020-02-04 07:57:34', '2020-02-04 07:57:34'),
(186, 180, 44, 1, 17000, 17000, '2020-02-04 07:58:08', '2020-02-04 07:58:08'),
(187, 181, 38, 1, 10000, 10000, '2020-02-04 07:59:10', '2020-02-04 07:59:10'),
(188, 182, 41, 1, 10000, 10000, '2020-02-04 07:59:50', '2020-02-04 07:59:50'),
(189, 182, 42, 1, 10000, 10000, '2020-02-04 07:59:50', '2020-02-04 07:59:50'),
(190, 182, 36, 2, 10000, 20000, '2020-02-04 07:59:50', '2020-02-04 07:59:50'),
(191, 182, 37, 2, 10000, 20000, '2020-02-04 07:59:50', '2020-02-04 07:59:50'),
(192, 183, 43, 1, 10000, 10000, '2020-02-04 08:03:00', '2020-02-04 08:03:00'),
(193, 184, 44, 1, 17000, 17000, '2020-02-04 08:08:16', '2020-02-04 08:08:16'),
(194, 185, 46, 1, 9000, 9000, '2020-02-04 08:10:18', '2020-02-04 08:10:18'),
(195, 186, 34, 5, 2000, 10000, '2020-02-04 08:11:30', '2020-02-04 08:11:30'),
(196, 187, 42, 5, 10000, 50000, '2020-02-04 08:14:13', '2020-02-04 08:14:13'),
(197, 188, 44, 1, 17000, 17000, '2020-02-04 08:15:20', '2020-02-04 08:15:20'),
(198, 188, 43, 1, 10000, 10000, '2020-02-04 08:15:20', '2020-02-04 08:15:20'),
(199, 188, 40, 1, 20000, 20000, '2020-02-04 08:15:20', '2020-02-04 08:15:20'),
(200, 188, 37, 1, 10000, 10000, '2020-02-04 08:15:20', '2020-02-04 08:15:20'),
(201, 188, 36, 1, 10000, 10000, '2020-02-04 08:15:20', '2020-02-04 08:15:20'),
(202, 188, 42, 1, 10000, 10000, '2020-02-04 08:15:20', '2020-02-04 08:15:20'),
(203, 188, 41, 1, 10000, 10000, '2020-02-04 08:15:21', '2020-02-04 08:15:21'),
(204, 189, 38, 1, 10000, 10000, '2020-02-04 08:21:10', '2020-02-04 08:21:10'),
(205, 189, 42, 1, 10000, 10000, '2020-02-04 08:21:10', '2020-02-04 08:21:10'),
(206, 189, 41, 1, 10000, 10000, '2020-02-04 08:21:10', '2020-02-04 08:21:10'),
(207, 190, 40, 5, 20000, 100000, '2020-02-04 08:27:33', '2020-02-04 08:27:33'),
(208, 190, 43, 5, 10000, 50000, '2020-02-04 08:27:33', '2020-02-04 08:27:33'),
(209, 190, 44, 5, 17000, 85000, '2020-02-04 08:27:33', '2020-02-04 08:27:33'),
(210, 191, 42, 5, 10000, 50000, '2020-02-04 08:28:09', '2020-02-04 08:28:09'),
(211, 191, 41, 5, 10000, 50000, '2020-02-04 08:28:09', '2020-02-04 08:28:09'),
(212, 192, 43, 2, 10000, 20000, '2020-02-04 08:29:09', '2020-02-04 08:29:09'),
(213, 192, 40, 2, 20000, 40000, '2020-02-04 08:29:09', '2020-02-04 08:29:09'),
(214, 193, 34, 5, 2000, 10000, '2020-02-04 08:32:25', '2020-02-04 08:32:25'),
(215, 194, 42, 5, 10000, 50000, '2020-02-04 08:32:43', '2020-02-04 08:32:43'),
(216, 195, 40, 1, 20000, 20000, '2020-02-04 09:45:56', '2020-02-04 09:45:56'),
(217, 196, 40, 1, 20000, 20000, '2020-02-04 09:46:13', '2020-02-04 09:46:13'),
(218, 196, 43, 1, 10000, 10000, '2020-02-04 09:46:13', '2020-02-04 09:46:13'),
(219, 197, 43, 1, 10000, 10000, '2020-02-04 09:59:18', '2020-02-04 09:59:18'),
(220, 198, 44, 1, 17000, 17000, '2020-02-04 10:03:27', '2020-02-04 10:03:27'),
(221, 199, 38, 5, 10000, 50000, '2020-02-04 10:06:34', '2020-02-04 10:06:34'),
(222, 200, 34, 5, 2000, 10000, '2020-02-04 10:07:38', '2020-02-04 10:07:38'),
(223, 201, 42, 5, 10000, 50000, '2020-02-04 10:09:04', '2020-02-04 10:09:04'),
(224, 202, 37, 5, 10000, 50000, '2020-02-04 10:09:14', '2020-02-04 10:09:14'),
(225, 203, 41, 1, 10000, 10000, '2020-02-04 10:11:01', '2020-02-04 10:11:01'),
(226, 204, 40, 1, 20000, 20000, '2020-02-04 10:11:38', '2020-02-04 10:11:38'),
(227, 204, 37, 1, 10000, 10000, '2020-02-04 10:11:38', '2020-02-04 10:11:38'),
(228, 205, 40, 5, 20000, 100000, '2020-02-04 10:18:22', '2020-02-04 10:18:22'),
(231, 208, 34, 10, 2000, 20000, '2020-02-04 14:58:12', '2020-02-04 14:58:12'),
(232, 209, 37, 2, 10000, 20000, '2020-02-04 17:25:31', '2020-02-04 17:25:31'),
(233, 209, 36, 2, 10000, 20000, '2020-02-04 17:25:32', '2020-02-04 17:25:32'),
(234, 210, 43, 5, 10000, 50000, '2020-02-05 01:23:38', '2020-02-05 01:23:38'),
(235, 211, 43, 5, 10000, 50000, '2020-02-05 04:31:44', '2020-02-05 04:31:44'),
(236, 211, 44, 5, 17000, 85000, '2020-02-05 04:31:44', '2020-02-05 04:31:44'),
(237, 212, 38, 5, 10000, 50000, '2020-02-05 04:32:37', '2020-02-05 04:32:37'),
(238, 213, 37, 5, 10000, 50000, '2020-02-05 04:35:55', '2020-02-05 04:35:55'),
(239, 214, 46, 5, 9000, 45000, '2020-02-05 04:37:19', '2020-02-05 04:37:19'),
(240, 215, 40, 5, 20000, 100000, '2020-02-05 04:38:38', '2020-02-05 04:38:38'),
(241, 216, 37, 5, 10000, 50000, '2020-02-05 04:40:11', '2020-02-05 04:40:11'),
(242, 217, 34, 5, 2000, 10000, '2020-02-05 04:41:55', '2020-02-05 04:41:55'),
(243, 218, 43, 1, 10000, 10000, '2020-02-05 04:42:15', '2020-02-05 04:42:15'),
(244, 218, 44, 1, 17000, 17000, '2020-02-05 04:42:15', '2020-02-05 04:42:15'),
(245, 219, 40, 1, 20000, 20000, '2020-02-05 04:43:52', '2020-02-05 04:43:52'),
(246, 219, 44, 1, 17000, 17000, '2020-02-05 04:43:52', '2020-02-05 04:43:52'),
(247, 220, 44, 1, 17000, 17000, '2020-02-05 04:45:09', '2020-02-05 04:45:09'),
(248, 220, 41, 1, 10000, 10000, '2020-02-05 04:45:09', '2020-02-05 04:45:09'),
(249, 220, 40, 1, 20000, 20000, '2020-02-05 04:45:09', '2020-02-05 04:45:09'),
(250, 221, 37, 1, 10000, 10000, '2020-02-05 04:46:00', '2020-02-05 04:46:00'),
(251, 221, 36, 1, 10000, 10000, '2020-02-05 04:46:00', '2020-02-05 04:46:00'),
(252, 222, 35, 1, 30000, 30000, '2020-02-05 07:49:33', '2020-02-05 07:49:33'),
(253, 222, 44, 1, 17000, 17000, '2020-02-05 07:49:33', '2020-02-05 07:49:33'),
(254, 222, 38, 1, 10000, 10000, '2020-02-05 07:49:33', '2020-02-05 07:49:33'),
(255, 222, 45, 1, 9000, 9000, '2020-02-05 07:49:33', '2020-02-05 07:49:33'),
(256, 222, 48, 1, 1000, 1000, '2020-02-05 07:49:34', '2020-02-05 07:49:34'),
(257, 222, 34, 1, 2000, 2000, '2020-02-05 07:49:34', '2020-02-05 07:49:34'),
(258, 223, 40, 1, 20000, 20000, '2020-02-05 10:49:08', '2020-02-05 10:49:08'),
(259, 224, 59, 1, 5000, 5000, '2020-02-06 00:14:41', '2020-02-06 00:14:41'),
(260, 224, 48, 1, 5000, 5000, '2020-02-06 00:14:41', '2020-02-06 00:14:41'),
(261, 225, 46, 6, 5000, 30000, '2020-02-06 00:16:56', '2020-02-06 00:16:56'),
(262, 225, 57, 6, 5000, 30000, '2020-02-06 00:16:56', '2020-02-06 00:16:56'),
(263, 226, 61, 10, 5000, 50000, '2020-02-06 00:17:35', '2020-02-06 00:17:35'),
(264, 227, 58, 5, 5000, 25000, '2020-02-06 00:18:06', '2020-02-06 00:18:06'),
(265, 227, 56, 5, 5000, 25000, '2020-02-06 00:18:06', '2020-02-06 00:18:06'),
(266, 228, 52, 5, 5000, 25000, '2020-02-06 00:18:52', '2020-02-06 00:18:52'),
(267, 229, 34, 4, 5000, 20000, '2020-02-06 00:30:50', '2020-02-06 00:30:50'),
(268, 229, 48, 1, 5000, 5000, '2020-02-06 00:30:50', '2020-02-06 00:30:50'),
(269, 230, 52, 5, 5000, 25000, '2020-02-06 00:51:13', '2020-02-06 00:51:13'),
(270, 230, 48, 2, 5000, 10000, '2020-02-06 00:51:13', '2020-02-06 00:51:13'),
(271, 230, 46, 2, 5000, 10000, '2020-02-06 00:51:13', '2020-02-06 00:51:13'),
(272, 230, 58, 1, 5000, 5000, '2020-02-06 00:51:13', '2020-02-06 00:51:13'),
(273, 231, 48, 5, 5000, 25000, '2020-02-06 03:44:35', '2020-02-06 03:44:35'),
(274, 231, 61, 2, 10000, 20000, '2020-02-06 03:44:35', '2020-02-06 03:44:35'),
(275, 232, 59, 1, 5000, 5000, '2020-02-06 04:04:26', '2020-02-06 04:04:26'),
(276, 233, 46, 1, 5000, 5000, '2020-02-12 08:29:33', '2020-02-12 08:29:33'),
(277, 233, 57, 1, 5000, 5000, '2020-02-12 08:29:34', '2020-02-12 08:29:34'),
(278, 233, 48, 1, 5000, 5000, '2020-02-12 08:29:34', '2020-02-12 08:29:34'),
(279, 234, 46, 1, 5000, 5000, '2020-02-12 08:56:53', '2020-02-12 08:56:53'),
(280, 234, 57, 1, 5000, 5000, '2020-02-12 08:56:53', '2020-02-12 08:56:53'),
(281, 234, 59, 1, 5000, 5000, '2020-02-12 08:56:53', '2020-02-12 08:56:53'),
(282, 234, 48, 1, 5000, 5000, '2020-02-12 08:56:53', '2020-02-12 08:56:53'),
(283, 235, 34, 2, 5000, 10000, '2020-02-12 08:57:53', '2020-02-12 08:57:53'),
(284, 236, 34, 1, 5000, 5000, '2020-02-12 08:58:54', '2020-02-12 08:58:54'),
(285, 236, 35, 1, 5000, 5000, '2020-02-12 08:58:54', '2020-02-12 08:58:54'),
(286, 237, 35, 1, 5000, 5000, '2020-02-12 09:01:24', '2020-02-12 09:01:24'),
(287, 238, 60, 1, 5000, 5000, '2020-02-12 09:20:09', '2020-02-12 09:20:09'),
(288, 238, 58, 1, 5000, 5000, '2020-02-12 09:20:09', '2020-02-12 09:20:09'),
(289, 239, 45, 1, 5000, 5000, '2020-02-12 09:20:37', '2020-02-12 09:20:37'),
(290, 240, 59, 1, 5000, 5000, '2020-02-12 09:24:29', '2020-02-12 09:24:29'),
(291, 240, 56, 1, 5000, 5000, '2020-02-12 09:24:29', '2020-02-12 09:24:29'),
(292, 241, 48, 1, 5000, 5000, '2020-02-12 10:53:48', '2020-02-12 10:53:48'),
(293, 241, 52, 1, 5000, 5000, '2020-02-12 10:53:48', '2020-02-12 10:53:48'),
(294, 242, 57, 2, 5000, 10000, '2020-02-12 15:09:03', '2020-02-12 15:09:03'),
(295, 243, 57, 1, 5000, 5000, '2020-02-12 15:36:33', '2020-02-12 15:36:33'),
(296, 243, 46, 2, 5000, 10000, '2020-02-12 15:36:33', '2020-02-12 15:36:33'),
(297, 244, 41, 1, 4000, 4000, '2020-02-12 15:38:37', '2020-02-12 15:38:37'),
(298, 245, 57, 1, 5000, 5000, '2020-02-12 16:29:55', '2020-02-12 16:29:55'),
(299, 246, 57, 1, 5000, 5000, '2020-02-12 16:31:10', '2020-02-12 16:31:10'),
(300, 246, 46, 1, 5000, 5000, '2020-02-12 16:31:10', '2020-02-12 16:31:10'),
(301, 247, 57, 1, 5000, 5000, '2020-02-12 16:37:52', '2020-02-12 16:37:52'),
(302, 248, 57, 1, 5000, 5000, '2020-02-12 16:41:25', '2020-02-12 16:41:25'),
(303, 249, 57, 1, 5000, 5000, '2020-02-12 16:43:12', '2020-02-12 16:43:12'),
(304, 249, 46, 1, 5000, 5000, '2020-02-12 16:43:12', '2020-02-12 16:43:12'),
(305, 250, 46, 5, 5000, 25000, '2020-02-12 16:47:51', '2020-02-12 16:47:51'),
(306, 251, 57, 1, 5000, 5000, '2020-02-12 18:26:06', '2020-02-12 18:26:06'),
(307, 251, 48, 1, 5000, 5000, '2020-02-12 18:26:06', '2020-02-12 18:26:06'),
(308, 252, 35, 5, 5000, 25000, '2020-02-13 01:16:50', '2020-02-13 01:16:50'),
(309, 253, 46, 1, 5000, 5000, '2020-02-13 02:02:17', '2020-02-13 02:02:17'),
(310, 253, 57, 1, 5000, 5000, '2020-02-13 02:02:18', '2020-02-13 02:02:18'),
(311, 253, 48, 1, 5000, 5000, '2020-02-13 02:02:18', '2020-02-13 02:02:18'),
(312, 253, 59, 1, 5000, 5000, '2020-02-13 02:02:18', '2020-02-13 02:02:18'),
(313, 253, 52, 1, 5000, 5000, '2020-02-13 02:02:18', '2020-02-13 02:02:18'),
(314, 254, 57, 2, 5000, 10000, '2020-02-13 04:55:57', '2020-02-13 04:55:57'),
(315, 254, 48, 2, 5000, 10000, '2020-02-13 04:55:57', '2020-02-13 04:55:57'),
(316, 255, 46, 5, 5000, 25000, '2020-02-13 05:53:42', '2020-02-13 05:53:42'),
(317, 255, 57, 1, 5000, 5000, '2020-02-13 05:53:42', '2020-02-13 05:53:42'),
(318, 256, 48, 1, 5000, 5000, '2020-02-13 05:54:46', '2020-02-13 05:54:46'),
(319, 257, 34, 5, 5000, 25000, '2020-02-13 07:31:28', '2020-02-13 07:31:28'),
(320, 257, 61, 5, 10000, 50000, '2020-02-13 07:31:28', '2020-02-13 07:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(34, 'Grape Juice', 5000, 10, '', 'public/images/image-1580916205612.jpg', '2020-01-29 22:41:58', '2020-02-05 15:23:25'),
(35, 'Guava Juice', 5000, 10, '', 'public/images/image-1580916536458.png', '2020-01-29 23:09:57', '2020-02-05 15:28:56'),
(36, 'Le Minerale 1.5 Liter', 5000, 21, '', 'public/images/image-1580339834214.jpg', '2020-01-29 23:17:14', '2020-02-05 14:56:15'),
(37, 'Le Minerale 600 ml', 2500, 21, '', 'public/images/image-1580658454278.jpg', '2020-01-29 23:17:59', '2020-02-05 14:56:37'),
(38, 'Torabika Duo', 4000, 18, '', 'public/images/image-1580339979680.jpg', '2020-01-29 23:19:39', '2020-02-05 15:06:06'),
(40, 'Good Day Chococinno', 4000, 18, '', 'public/images/image-1580659904759.jpg', '2020-01-29 23:23:50', '2020-02-06 02:05:42'),
(41, 'Kopi Luwak', 4000, 18, '', 'public/images/image-1580340384504.jpg', '2020-01-29 23:26:24', '2020-02-05 15:06:25'),
(42, 'Kopi Luwak White Coffee', 4000, 18, '', 'public/images/image-1580340444731.jpg', '2020-01-29 23:27:24', '2020-02-05 15:05:35'),
(43, 'Good Day Capuccinno', 4000, 18, '10 pcs', 'public/images/image-1580659854545.jpg', '2020-01-29 23:50:45', '2020-02-05 15:02:38'),
(44, 'Energen Sereal', 3000, 17, '', 'public/images/image-1580646440435.jpeg', '2020-02-02 11:12:23', '2020-02-05 15:49:52'),
(45, 'Pineapple Juice', 5000, 10, '', 'public/images/image-1580916663786.jpg', '2020-02-03 00:38:14', '2020-02-05 15:31:03'),
(46, 'Avocado Juice', 5000, 10, '', 'public/images/image-1580916827162.jpeg', '2020-02-03 00:39:47', '2020-02-05 15:33:59'),
(48, 'Banana Juice', 5000, 10, '', 'public/images/image-1580916908010.jpg', '2020-02-03 01:29:16', '2020-02-05 15:35:08'),
(52, 'Durian Juice', 5000, 10, '', 'public/images/image-1580917105504.jpg', '2020-02-05 11:14:19', '2020-02-05 15:38:25'),
(54, 'Pitaya Juice', 5000, 10, '', 'public/images/image-1580917214476.jpg', '2020-02-05 11:16:02', '2020-02-05 15:40:14'),
(55, 'Orange Juice', 5000, 10, '', 'public/images/image-1580912667630.jpg', '2020-02-05 14:16:56', '2020-02-05 14:24:27'),
(56, 'Mango Juice', 5000, 10, '', 'public/images/image-1580913648820.jpg', '2020-02-05 14:40:48', '2020-02-05 14:40:48'),
(57, 'Apple Juice', 5000, 10, '', 'public/images/image-1580913767360.jpg', '2020-02-05 14:42:47', '2020-02-05 14:42:47'),
(58, 'Strawberry Juice', 5000, 10, '', 'public/images/image-1580914038389.jpg', '2020-02-05 14:47:18', '2020-02-05 14:47:18'),
(59, 'Carrot Juice', 5000, 10, '', 'public/images/image-1580917374966.jpg', '2020-02-05 15:42:54', '2020-02-05 15:42:54'),
(60, 'Tomato Juice', 5000, 10, '', 'public/images/image-1580917477393.jpg', '2020-02-05 15:44:37', '2020-02-05 15:44:37'),
(61, 'Fresh Milk', 10000, 17, '', 'public/images/image-1580917655214.jpg', '2020-02-05 15:47:35', '2020-02-06 02:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2020-02-04 01:42:03', '2020-02-04 01:42:03'),
(2, 'Cashier', '2020-02-04 01:42:03', '2020-02-04 01:42:03'),
(3, 'User', '2020-02-12 11:18:14', '2020-02-12 11:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `image`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2b$10$TsETXXtw6KVjaZIMJb68T.MbNDlJwR1EG0V7uFyW7CUIjKmcc4ArO', 'admin@email.com', 'Admin', '', 1, '2020-01-20 23:47:38', '2020-02-06 00:16:05'),
(6, 'admin6', '$2b$10$MuRfFnjbVXaI/IztsKXO9OrBZ5wL7Bi.aK.EBsw/ed/TYAeeB9zl2', 'admin6@email.com', 'Admin 6', '', 1, '2020-01-24 17:15:26', '2020-01-24 17:15:26'),
(7, 'sadminot', '$2b$10$vi07Tk2cX1B0PAVUCvRc4.6SqRtt.NUvh/cT/akmrU2P3EfPCAxle', 'sadminot@email.com', 'Sadminot', 'public/images/image-1581478828637.jpg', 1, '2020-01-24 17:27:21', '2020-02-12 03:40:28'),
(9, 'cashier01', '$2b$10$j6NM6ts4OyEmyXnemkPizeiA/Rkv3w28AcBfhdTsUjiPcFhJMJdqO', 'cashier01@email.com', 'Cashier 01', '', 2, '2020-01-29 15:08:58', '2020-02-04 04:39:26'),
(10, 'cashier03', '$2b$10$qSnWKvScXq135/RJqSOlKeGkgkHTo1Xv53IZUMyi0K/tgUsdTcZM.', 'cashier03@email.com', 'Cashier 03', '', 2, '2020-02-04 00:15:26', '2020-02-06 00:55:13'),
(11, 'cashier02', '$2b$10$bMQgyOtyiFW4hs2Z7Tbm5.zZM9.UteGPP6Eq6sQ9UJOw7JV6czota', 'cashier02@email.com', 'Cashier 02', '', 2, '2020-02-04 04:46:03', '2020-02-04 04:46:03'),
(13, 'dadmin', '$2b$10$iJXM456trPeLFUUvDRkwpOeRy5CQnPZJTnYUVyV0wDbjJUvNMttEy', 'dadmin@email.com', 'Dadmin', 'public/images/image-1581500816086.jpg', 1, '2020-02-11 08:26:17', '2020-02-12 10:53:12'),
(14, 'user01', '$2b$10$yKyeXj8ZPorXP6PCL0KOyOc4t9Ce5OPF71GD3Np/vnsdXlfEXOaa.', 'user01@email.com', 'user01', 'public/images/image-1581573173077.jpg', 3, '2020-02-12 14:03:48', '2020-02-13 05:52:53'),
(15, 'user02', '$2b$10$WO4ik9k6yvmia08tW6rQgerusKZ/7of1ZVp/Ci.3ShNs6BB7KK6/C', 'user02@email.com', 'user02', '', 3, '2020-02-12 14:05:37', '2020-02-12 14:05:37'),
(16, 'user03', '$2b$10$HVN7P9QnaLr78SQygyqHqOGlHnPqhT9BFZli5TOKdGBT44NBwFKKy', 'user03@gmail.com', 'user03', '', 3, '2020-02-12 14:16:37', '2020-02-12 14:16:37'),
(17, 'user04', '$2b$10$i4C3rsDW5SDXSEM0tQPFnuv2vwmRWNzphWHCDeQstkS6rWgaZf.De', 'user04@email.com', 'user04', '', 3, '2020-02-12 14:19:50', '2020-02-12 14:19:50'),
(18, 'user05', '$2b$10$1wXaBRF0jYwxE2nkUaXuP.6gofUEJa.VpfiWtu4xXMGXIze0b00oK', 'user05@gmail.com', 'user05', 'public/images/image-1581518530638.jpg', 3, '2020-02-12 14:20:56', '2020-02-12 14:42:10'),
(19, 'user06', '$2b$10$jicUzYkbtTvVSX3EJzuG1.UOMbv8mtvi3qeqDnrmXlR4.i38TZOzO', 'user06@email.com', 'user06', '', 3, '2020-02-12 14:25:43', '2020-02-12 14:25:43'),
(20, 'user00', '$2b$10$s/WueUiuq6n6Y9F2ogYZnu91QcgiCuIS5FHG1MRgv.DviTQa07RUu', 'user00@email.com', 'user00', '', 3, '2020-02-12 14:52:10', '2020-02-12 14:52:10'),
(21, 'budi97', '$2b$10$R0h/Or6DtqzCiDvLI2X2X.pKpzAo/GuACWDniaYpYonUOzY3Ej8OW', 'budibudi@gmail.com', 'budi97', 'public/images/image-1581569895508.jpg', 3, '2020-02-13 04:54:20', '2020-02-13 04:58:15'),
(22, 'yusuf', '$2b$10$1BMj7adnZQkwBPh90W0d9.RvXIClWOk446jijWA0Tdr.dxZh79ep2', 'yusuf@email.com', 'yusuf', 'public/images/image-1581579420284.jpg', 3, '2020-02-13 07:29:18', '2020-02-13 07:37:00'),
(23, 'badmin', '$2b$10$XpLviAHseUzYzbJNVh0NNucFkD5j8Igm9JG7Bkvhi/f0J/VG9t24q', 'badmin@email.com', 'Badmin', '', 1, '2020-03-01 00:12:41', '2020-03-01 00:12:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_fk_1` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_fk_1` (`order_id`),
  ADD KEY `order_details_fk_2` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_fk_1` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_fk_1` (`role_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;