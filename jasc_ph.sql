-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 25, 2023 at 03:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasc_ph`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(8, 'Jasmine', 'Alicaya', 'jasmine@gmail.com', 'jasminelae15', 'a1Bz20ydqelm8m1wqlfc91483fd07490f5c7cc0e66938cf70c'),
(9, 'Christian', 'Villaveza', 'christian@gmail.com', 'christian31', 'a1Bz20ydqelm8m1wql236a1c204029d2eab227cbbc16d0348e');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Ribbon'),
(2, 'Scrunchies'),
(3, 'Headbands'),
(4, 'Baby Collection');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(77, 6, 'has logged in the system at ', '2017-11-11 00:26:10'),
(78, 1, '(Administrator) has logged in the system at ', '2017-11-11 01:38:51'),
(79, 6, 'has logged in the system at ', '2017-11-12 01:36:32'),
(80, 6, 'has logged in the system at ', '2017-11-12 21:22:19'),
(81, 1, '(Administrator) has logged in the system at ', '2017-11-12 21:25:48'),
(82, 1, '(Administrator) has logged in the system at ', '2017-11-12 21:26:22'),
(83, 2, '(Administrator) has logged in the system at ', '2017-11-12 21:29:04'),
(84, 6, 'has logged in the system at ', '2017-11-12 21:45:12'),
(85, 2, '(Administrator) has logged in the system at ', '2017-11-12 21:47:14'),
(86, 6, 'has logged in the system at ', '2017-11-12 23:14:12'),
(87, 1, '(Administrator) has logged in the system at ', '2017-11-12 23:19:55'),
(88, 6, 'has logged in the system at ', '2017-11-12 23:22:32'),
(89, 6, 'has logged in the system at ', '2017-11-13 00:17:25'),
(90, 1, '(Administrator) has logged in the system at ', '2017-11-13 00:28:25'),
(91, 1, 'added a new product 150 of Arduino Uno Rec3-1', '2017-11-13 00:31:30'),
(92, 1, 'added a new product 400 of Aruino Mega', '2017-11-13 00:32:19'),
(93, 1, 'added a new product 344 of Arduino Uno 2', '2017-11-13 00:33:17'),
(94, 1, 'added a new product 234 of Raspberry Pi 3', '2017-11-13 00:34:22'),
(95, 1, 'added a new product 456 of Flame Sensor', '2017-11-13 00:35:28'),
(96, 6, 'has logged in the system at ', '2017-11-13 00:38:32'),
(97, 1, '(Administrator) has logged in the system at ', '2017-11-13 08:45:06'),
(98, 6, 'has logged in the system at ', '2017-11-13 08:47:34'),
(99, 1, '(Administrator) has logged in the system at ', '2017-11-13 08:53:46'),
(100, 7, 'has logged in the system at ', '2017-11-13 08:56:45'),
(101, 1, '(Administrator) has logged in the system at ', '2017-11-13 10:40:50'),
(102, 6, 'has logged in the system at ', '2017-11-13 10:42:37'),
(103, 1, '(Administrator) has logged in the system at ', '2017-11-13 10:55:02'),
(104, 6, 'has logged in the system at ', '2017-11-13 10:55:19'),
(105, 1, '(Administrator) has logged in the system at ', '2017-11-13 11:15:27'),
(106, 6, 'has logged in the system at ', '2017-11-13 11:15:38'),
(107, 1, '(Administrator) has logged in the system at ', '2017-11-13 11:31:48'),
(108, 6, 'has logged in the system at ', '2017-11-13 11:55:12'),
(109, 1, '(Administrator) has logged in the system at ', '2017-11-13 11:57:27'),
(110, 6, 'has logged in the system at ', '2017-11-13 11:59:22'),
(111, 1, '(Administrator) has logged in the system at ', '2017-11-13 12:00:16'),
(112, 6, 'has logged in the system at ', '2017-11-13 12:04:41'),
(113, 8, 'has logged in the system at ', '2017-11-13 13:05:00'),
(114, 2, '(Administrator) has logged in the system at ', '2017-11-13 13:16:17'),
(115, 2, 'added a new product 700 of Sensor', '2017-11-13 13:20:38'),
(116, 2, 'added 900 of Arduino Uno 2', '2017-11-13 13:20:57'),
(117, 6, 'has logged in the system at ', '2017-11-13 19:58:52'),
(118, 8, 'has logged in the system at ', '2017-11-13 20:00:59'),
(119, 1, '(Administrator) has logged in the system at ', '2017-11-13 20:01:58'),
(120, 1, '(Administrator) has logged in the system at ', '2017-11-13 21:47:41'),
(121, 6, 'has logged in the system at ', '2017-11-13 21:49:55'),
(122, 1, '(Administrator) has logged in the system at ', '2017-11-13 21:52:28'),
(123, 1, '(Administrator) has logged in the system at ', '2017-11-14 16:01:08'),
(124, 6, 'has logged in the system at ', '2017-11-17 01:43:42'),
(125, 6, 'has logged in the system at ', '2017-11-17 02:15:46'),
(126, 8, 'has logged in the system at ', '2017-11-21 20:19:39'),
(127, 8, 'has logged in the system at ', '2017-11-25 23:31:53'),
(128, 1, '(Administrator) has logged in the system at ', '2023-10-23 12:06:11'),
(129, 1, '(Administrator) has logged in the system at ', '2023-10-23 13:15:29'),
(130, 910, 'has logged in the system at ', '2023-10-23 13:23:20'),
(131, 910, 'has logged in the system at ', '2023-10-23 21:25:20'),
(132, 1, '(Administrator) has logged in the system at ', '2023-10-24 12:11:04'),
(133, 1, '(Administrator) has logged in the system at ', '2023-10-24 12:26:40'),
(134, 3, '(Administrator) has logged in the system at ', '2023-10-24 12:36:37'),
(135, 910, 'has logged in the system at ', '2023-10-25 11:50:03'),
(136, 3, '(Administrator) has logged in the system at ', '2023-10-25 12:11:50'),
(137, 1, '(Administrator) has logged in the system at ', '2023-10-25 12:13:38'),
(138, 4, '(Administrator) has logged in the system at ', '2023-10-25 12:31:34'),
(139, 4, 'added a new product 2 of Bowtie Barette', '2023-10-25 12:54:42'),
(140, 4, 'added 5000 of Bowtie Barette', '2023-10-25 13:00:45'),
(141, 910, 'has logged in the system at ', '2023-10-25 13:03:16'),
(142, 4, '(Administrator) has logged in the system at ', '2023-10-25 13:07:35'),
(143, 910, 'has logged in the system at ', '2023-10-25 13:08:34'),
(144, 4, '(Administrator) has logged in the system at ', '2023-10-25 13:09:42'),
(145, 4, '(Administrator) has logged in the system at ', '2023-10-25 19:03:56'),
(146, 910, 'has logged in the system at ', '2023-10-25 19:19:03'),
(147, 910, 'has logged in the system at ', '2023-10-26 14:05:20'),
(148, 911, 'has logged in the system at ', '2023-10-26 14:07:05'),
(149, 911, 'has logged in the system at ', '2023-10-26 14:48:14'),
(150, 7, '(Administrator) has logged in the system at ', '2023-10-26 14:50:25'),
(151, 910, 'has logged in the system at ', '2023-10-26 15:05:45'),
(152, 7, '(Administrator) has logged in the system at ', '2023-10-26 15:06:45'),
(153, 7, '(Administrator) has logged in the system at ', '2023-10-26 15:28:44'),
(154, 910, 'has logged in the system at ', '2023-10-26 15:49:39'),
(155, 910, 'has logged in the system at ', '2023-10-26 16:19:30'),
(156, 7, '(Administrator) has logged in the system at ', '2023-10-26 16:20:39'),
(157, 910, 'has logged in the system at ', '2023-10-26 16:28:40'),
(158, 7, '(Administrator) has logged in the system at ', '2023-10-26 16:29:30'),
(159, 7, '(Administrator) has logged in the system at ', '2023-11-19 10:27:20'),
(160, 7, 'added a new product 1000 of  Bowtie barette', '2023-11-19 10:36:10'),
(161, 910, 'has logged in the system at ', '2023-11-19 10:38:19'),
(162, 7, '(Administrator) has logged in the system at ', '2023-11-19 10:38:56'),
(163, 7, 'added a new product 1000 of Long Bowtailed barette ', '2023-11-19 10:39:56'),
(164, 7, 'added a new product 1000 of Bowtie Barette (classic size)', '2023-11-19 10:41:41'),
(165, 910, 'has logged in the system at ', '2023-11-19 10:42:18'),
(166, 7, '(Administrator) has logged in the system at ', '2023-11-19 10:44:36'),
(167, 910, 'has logged in the system at ', '2023-11-19 10:45:08'),
(168, 7, '(Administrator) has logged in the system at ', '2023-11-19 10:48:02'),
(169, 910, 'has logged in the system at ', '2023-11-19 10:58:06'),
(170, 7, '(Administrator) has logged in the system at ', '2023-11-19 11:01:04'),
(171, 910, 'has logged in the system at ', '2023-11-19 11:11:13'),
(172, 7, '(Administrator) has logged in the system at ', '2023-11-19 11:15:47'),
(173, 7, 'added a new product 1000 of Long Bowtailed Barette ', '2023-11-19 11:17:27'),
(174, 7, 'added a new product 100 of Sweetheart Bowtailed Barette', '2023-11-19 11:18:54'),
(175, 910, 'has logged in the system at ', '2023-11-19 11:45:33'),
(176, 910, 'has logged in the system at ', '2023-11-19 19:09:40'),
(177, 7, '(Administrator) has logged in the system at ', '2023-11-19 19:18:13'),
(178, 7, '(Administrator) has logged in the system at ', '2023-11-19 19:47:30'),
(179, 7, 'added a new product 1323 of adasdad', '2023-11-19 19:48:07'),
(180, 910, 'has logged in the system at ', '2023-11-19 20:41:20'),
(181, 910, 'has logged in the system at ', '2023-11-19 21:04:28'),
(182, 7, '(Administrator) has logged in the system at ', '2023-11-19 21:32:48'),
(183, 7, '(Administrator) has logged in the system at ', '2023-11-19 21:47:23'),
(184, 910, 'has logged in the system at ', '2023-11-19 21:55:56'),
(185, 7, '(Administrator) has logged in the system at ', '2023-11-19 22:07:30'),
(186, 910, 'has logged in the system at ', '2023-11-19 22:08:09'),
(187, 7, '(Administrator) has logged in the system at ', '2023-11-19 22:23:24'),
(188, 7, '(Administrator) has logged in the system at ', '2023-11-19 22:37:35'),
(189, 910, 'has logged in the system at ', '2023-11-20 09:56:46'),
(190, 910, 'has logged in the system at ', '2023-11-20 09:57:52'),
(191, 7, '(Administrator) has logged in the system at ', '2023-11-20 10:00:39'),
(192, 910, 'has logged in the system at ', '2023-11-20 13:33:33'),
(193, 7, '(Administrator) has logged in the system at ', '2023-11-20 13:36:17'),
(194, 8, '(Administrator) has logged in the system at ', '2023-11-20 13:37:43'),
(195, 910, 'has logged in the system at ', '2023-11-20 13:42:10'),
(196, 910, 'has logged in the system at ', '2023-11-20 13:55:56'),
(197, 8, '(Administrator) has logged in the system at ', '2023-11-20 13:58:00'),
(198, 910, 'has logged in the system at ', '2023-11-20 18:43:52'),
(199, 910, 'has logged in the system at ', '2023-11-20 18:44:15'),
(200, 9, '(Administrator) has logged in the system at ', '2023-11-20 18:50:53'),
(201, 910, 'has logged in the system at ', '2023-11-20 20:23:53'),
(202, 8, '(Administrator) has logged in the system at ', '2023-11-20 20:26:13'),
(203, 910, 'has logged in the system at ', '2023-11-21 20:07:33'),
(204, 8, '(Administrator) has logged in the system at ', '2023-11-21 20:14:07'),
(205, 8, '(Administrator) has logged in the system at ', '2023-11-21 20:17:05'),
(206, 910, 'has logged in the system at ', '2023-11-21 20:36:23'),
(207, 8, '(Administrator) has logged in the system at ', '2023-11-21 20:50:49'),
(208, 910, 'has logged in the system at ', '2023-11-22 12:19:43'),
(209, 8, '(Administrator) has logged in the system at ', '2023-11-22 21:31:59'),
(210, 910, 'has logged in the system at ', '2023-11-22 21:43:15'),
(211, 8, '(Administrator) has logged in the system at ', '2023-11-22 21:44:24'),
(212, 910, 'has logged in the system at ', '2023-11-22 21:50:09'),
(213, 8, '(Administrator) has logged in the system at ', '2023-11-22 21:53:48'),
(214, 8, '(Administrator) has logged in the system at ', '2023-11-22 21:53:56'),
(215, 910, 'has logged in the system at ', '2023-11-22 21:56:21'),
(216, 8, '(Administrator) has logged in the system at ', '2023-11-22 21:57:54'),
(217, 8, '(Administrator) has logged in the system at ', '2023-11-23 21:28:05'),
(218, 8, 'added a new product 100 of Bowtie Barette (classic size)', '2023-11-23 21:38:48'),
(219, 8, 'added a new product 100 of Long Bowtailed Barette ', '2023-11-23 21:45:37'),
(220, 8, 'added a new product 100 of Long Bowtailed Barette ', '2023-11-23 21:54:12'),
(221, 8, 'added a new product 100 of Sweetheart Bowtailed Barette', '2023-11-23 21:56:23'),
(222, 8, 'added a new product 100 of Premium Deluxe Long Ribbon', '2023-11-23 22:03:11'),
(223, 8, 'added a new product 100 of Premium Deluxe Ribbon', '2023-11-23 22:11:01'),
(224, 8, 'added a new product 100 of Premium Deluxe', '2023-11-23 22:15:28'),
(225, 8, 'added a new product 100 of Premium Deluxe Layered Ribbon', '2023-11-23 22:20:55'),
(226, 8, 'added a new product 100 of Scrunchies (xxs)', '2023-11-23 22:30:06'),
(227, 8, 'added a new product 100 of Scrunchies (xxl)', '2023-11-23 22:33:08'),
(228, 8, 'added a new product 100 of Minicrown Scrunchies', '2023-11-23 22:37:09'),
(229, 8, 'added a new product 100 of Multipurpose Twilly ', '2023-11-23 22:42:27'),
(230, 8, 'added a new product 100 of Layered Bow Headband', '2023-11-23 22:45:31'),
(231, 8, 'added a new product 12312 of ada', '2023-11-23 22:50:22'),
(232, 8, 'added a new product 1231 of qweqwe', '2023-11-23 22:55:24'),
(233, 8, 'added a new product 12312 of qweqwe', '2023-11-23 23:03:05'),
(234, 8, 'added a new product 100 of qeqe', '2023-11-23 23:05:35'),
(235, 910, 'has logged in the system at ', '2023-11-23 23:24:37'),
(236, 8, '(Administrator) has logged in the system at ', '2023-11-23 23:32:23'),
(237, 8, '(Administrator) has logged in the system at ', '2023-11-24 13:39:33'),
(238, 910, 'has logged in the system at ', '2023-11-24 15:17:18'),
(239, 8, '(Administrator) has logged in the system at ', '2023-11-24 15:17:51'),
(240, 910, 'has logged in the system at ', '2023-11-24 15:19:30'),
(241, 8, '(Administrator) has logged in the system at ', '2023-11-24 15:21:15'),
(242, 910, 'has logged in the system at ', '2023-11-24 15:33:20'),
(243, 8, '(Administrator) has logged in the system at ', '2023-11-24 15:34:13'),
(244, 910, 'has logged in the system at ', '2023-11-24 15:36:49'),
(245, 8, '(Administrator) has logged in the system at ', '2023-11-24 15:38:07'),
(246, 910, 'has logged in the system at ', '2023-11-24 15:42:58'),
(247, 916, 'has logged in the system at ', '2023-11-24 15:44:34'),
(248, 912, 'has logged in the system at ', '2023-11-24 15:45:11'),
(249, 914, 'has logged in the system at ', '2023-11-24 15:45:39'),
(250, 915, 'has logged in the system at ', '2023-11-24 15:46:29'),
(251, 8, '(Administrator) has logged in the system at ', '2023-11-24 15:47:09'),
(252, 8, '(Administrator) has logged in the system at ', '2023-11-24 16:13:00'),
(253, 910, 'has logged in the system at ', '2023-11-24 16:16:07'),
(254, 8, '(Administrator) has logged in the system at ', '2023-11-24 16:16:56'),
(255, 910, 'has logged in the system at ', '2023-11-24 16:40:18'),
(256, 8, '(Administrator) has logged in the system at ', '2023-11-24 16:41:13'),
(257, 910, 'has logged in the system at ', '2023-11-24 16:50:09'),
(258, 8, '(Administrator) has logged in the system at ', '2023-11-24 16:53:58'),
(259, 8, '(Administrator) has logged in the system at ', '2023-11-24 16:56:32'),
(260, 912, 'has logged in the system at ', '2023-11-24 22:10:34'),
(261, 910, 'has logged in the system at ', '2023-11-24 22:11:24'),
(262, 8, '(Administrator) has logged in the system at ', '2023-11-24 22:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_color` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `shipping_add` varchar(500) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `accepted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `track_num`, `prod_name`, `prod_color`, `firstname`, `middlename`, `lastname`, `email`, `contact`, `shipping_add`, `order_date`, `status`, `totalprice`, `tax`, `accepted`) VALUES
(23, 910, 9101910, '', '', 'Christian', 'Derain', 'Villaveza', 'tiano@gmail.com', '097666161', 'Brgy Wawa Nasugbu Batangas Metro Manila', '2023-11-24 15:37:41', 'Pending', '85.00', '10.20', 1),
(25, 916, 9161916, '', '', 'Renzo', 'Miles', 'Cabral', 'renzo@gmail.com', '0912312312', 'Subd Roxaco Nasugbu Batangas Metro Manila', '2023-11-24 15:44:57', 'Pending', '35.00', '4.20', 1),
(26, 912, 9121912, '', '', 'Cecile', 'Ramos', 'Baral', 'cecile', '123456789', 'Brgy. Putat Nasugbu Batangas Metro Manila', '2023-11-24 15:45:29', 'Pending', '99.00', '11.88', 1),
(27, 914, 9141914, '', '', 'Jimuel', 'Padilla', 'Salosa', 'jimuel@gmail.com', '456871245', 'Brgy. Bolboc Tuy Bataangas South Luzon', '2023-11-24 15:46:04', 'Pending', '39.00', '4.68', 1),
(28, 915, 9151915, '', '', 'Allard Kehn', 'Bernardo', 'Legaspi', 'allardkehn@gmail.com', '301265987', 'Brgy. Balimbing Calatagan Batangas Metro Manila', '2023-11-24 15:46:53', 'Pending', '85.00', '10.20', 1),
(30, 910, 9101910, '', '', 'Christian', 'Derain', 'Villaveza', 'tiano@gmail.com', '097666161', 'Brgy. Bolboc Tuy Bataangas South Luzon', '2023-11-24 16:40:45', 'Pending', '35.00', '4.20', 1),
(31, 910, 9101910, '', '', 'Christian', 'Derain', 'Villaveza', 'tiano@gmail.com', '097666161', 'Brgy. Bolboc Tuy Bataangas South Luzon', '2023-11-24 16:52:39', 'Pending', '35.00', '4.20', 0),
(32, 910, 9101910, '', '', 'Christian', 'Derain', 'Villaveza', 'tiano@gmail.com', '097666161', 'Brgy. Bolboc Tuy Bataangas South Luzon', '2023-11-24 16:53:22', 'Pending', '45.00', '5.40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', '434.00', 6, '1'),
(54, 13, 3, '335', '1302.00', 6, '1'),
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(79, 14, 1, '233', '760.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(98, 15, 1, '', '455.00', 5, ''),
(99, 15, 1, '', '455.00', 6, ''),
(100, 16, 1, '', '1500.00', 6, ''),
(101, 12, 1, '392', '155.00', 8, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(103, 15, 1, '', '455.00', 8, ''),
(104, 17, 474, '4528', '21330.00', 910, '1'),
(105, 17, 1, '4527', '45.00', 910, '1'),
(106, 20, 1, '999', '80.00', 910, '1'),
(107, 20, 1, '998', '80.00', 910, '1'),
(108, 20, 1, '997', '80.00', 910, '1'),
(109, 20, 4, '993', '320.00', 910, '1'),
(110, 21, 3, '997', '300.00', 910, '1'),
(111, 23, 1, '1322', '435.00', 910, '1'),
(112, 23, 1, '1321', '435.00', 910, '1'),
(113, 23, 1, '1321', '435.00', 910, '1'),
(114, 23, 1, '1321', '435.00', 910, '1'),
(115, 20, 1, '', '80.00', 910, '1'),
(116, 23, 1, '1320', '435.00', 910, '1'),
(117, 21, 1, '996', '100.00', 910, '1'),
(118, 22, 1, '99', '99.00', 910, '1'),
(120, 40, 1, '99', '35.00', 910, '1'),
(121, 34, 1, '99', '45.00', 910, '1'),
(122, 30, 1, '', '79.00', 910, '1'),
(123, 35, 1, '99', '35.00', 910, '1'),
(124, 31, 1, '99', '99.00', 910, '1'),
(125, 40, 1, '98', '35.00', 910, '1'),
(126, 34, 1, '99', '45.00', 910, '1'),
(127, 36, 1, '99', '80.00', 910, '1'),
(128, 31, 1, '98', '99.00', 910, '1'),
(129, 29, 1, '99', '59.00', 910, '1'),
(130, 28, 1, '99', '39.00', 910, '1'),
(131, 40, 1, '97', '35.00', 910, '1'),
(132, 26, 1, '99', '85.00', 910, '1'),
(133, 40, 1, '96', '35.00', 910, '1'),
(134, 35, 1, '98', '35.00', 916, '1'),
(135, 27, 1, '99', '99.00', 912, '1'),
(136, 28, 1, '98', '39.00', 914, '1'),
(137, 26, 1, '98', '85.00', 915, '1'),
(138, 24, 1, '99', '45.00', 910, '1'),
(139, 40, 1, '95', '35.00', 910, '1'),
(140, 40, 1, '94', '35.00', 910, '1'),
(141, 39, 1, '12311', '45.00', 910, '1'),
(142, 27, 1, '', '99.00', 912, ''),
(144, 39, 1, '', '45.00', 910, '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_color` varchar(255) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_color`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(24, 'Bowtie Barette (classic size)', 'Brown / Violet / Yellow', 'Elevate your hairstyle with the timeless elegance of our Bowtie Barrette in classic size, a perfect blend of sophistication and charm.', 99, '25.00', '45.00', 'Ribbon', '', '0001', 'class1.jpg', 'class2.jpg', 'class3.jpg'),
(26, 'Long Bowtailed Barette ', 'Violet / Pink / Red / White / Tangerine / Beige / Yellow', 'Make a statement with our Long Bowtailed Barrette, a gracefully elongated accessory designed to add a touch of sophistication to any hairstyle.', 98, '45.00', '85.00', 'Ribbon', '', '0002', 'long1.jpg', 'long2.jpg', 'long3.jpg'),
(27, 'Sweetheart Bowtailed Barette', 'Violet / Pink / Red / White / Tangerine / Beige / Yellow', 'Infuse a touch of romance into your look with our Sweetheart Bowtailed Barrette, featuring a charming design that captures the essence of sweet and stylish elegance.', 99, '50.00', '99.00', 'Ribbon', '', '0003', 'sweet1.jpg', 'sweet2.jpg', 'sweet3.jpg'),
(28, 'Premium Deluxe Long Ribbon', 'White / Black', 'Elevate your style to new heights with our Premium Deluxe Long Ribbon, a symbol of opulence and sophistication for a truly luxurious touch to your hair.', 98, '20.00', '39.00', 'Ribbon', '', '0004', 'dlong1.jpg', 'dlong2.jpg', 'dlong3.jpg'),
(29, 'Premium Deluxe Ribbon', 'White / Black', 'Experience luxury in simplicity with our Premium Deluxe Ribbon, a refined accessory designed to effortlessly elevate your hairdo with timeless elegance.', 99, '40.00', '59.00', 'Ribbon', '', '0005', 'dribbon1.jpg', 'dribbon2.jpg', 'dribbon3.jpg'),
(30, 'Premium Deluxe', 'Brown/ White / Black', 'Indulge in sophistication and luxury with our Premium Deluxe collection, where every piece is meticulously crafted to add a touch of opulence to your style.', 100, '50.00', '79.00', 'Ribbon', '', '0006', 'pdeluxe1.jpg', 'pdeluxe2.jpg', 'pdeluxe3.jpg'),
(31, 'Premium Deluxe Layered Ribbon', 'Brown / White / Black', 'Immerse yourself in the epitome of elegance with our Premium Deluxe Layered Ribbon, a meticulously crafted accessory that adds a multi-dimensional and luxurious flair to your hairstyle.', 98, '60.00', '99.00', 'Ribbon', '', '0007', 'player1.jpg', 'player2.jpg', 'player3.jpg'),
(32, 'Scrunchies (xxs)', 'Red /  Pink / Violet / White / Black / Green / Orange / Brown / Beige', 'Elevate your everyday style with our chic scrunchies, combining comfort and flair in a single accessory for a playful and versatile hair statement.', 100, '10.00', '19.00', 'Scrunchies', '', '0008', 'scrunch1.jpg', 'scrunch2.jpg', 'scrunch3.jpg'),
(33, 'Scrunchies (xxl)', 'Red / Pink / Violet / White / Black / Green / Orange / Brown / Beige', 'Elevate your everyday style with our chic scrunchies, combining comfort and flair in a single accessory for a playful and versatile hair statement.', 100, '15.00', '29.00', 'Scrunchies', '', '0009', 'scrunch1.jpg', 'scrunch2.jpg', 'scrunch3.jpg'),
(34, 'Minicrown Scrunchies', 'Brown / White / Black', 'Adorn your hair royally with our Minicrown Scrunchies, where regal charm meets playful style in every delightful accessory.', 99, '25.00', '45.00', 'Headbands', '', '0010', 'minis1.jpg', 'minis2.jpg', 'minis3.jpg'),
(35, 'Multipurpose Twilly ', 'Black / White / Brown / Yellow / Pink', 'Transform your look effortlessly with our Multipurpose Twilly, a versatile accessory that adds a touch of flair whether worn as a headband, ponytail wrap, or chic neck scarf.', 98, '20.00', '35.00', 'Headbands', '', '0011', 'multi1.jpg', 'multi2.jpg', 'multi3.jpg'),
(36, 'Layered Bow Headband', 'Khaki / White / Beige', 'Upgrade your style with our Layered Bow Headband, a sophisticated accessory featuring a beautifully layered bow design that effortlessly adds a touch of charm to any look.', 99, '50.00', '80.00', 'Headbands', '', '0012', 'lbow1.jpg', 'lbow2.jpg', 'lbow3.jpg'),
(39, 'Babybow Pair Clip', 'White / Black / Pink / Red / Yellow / Brown / Violet', 'Delight in the adorable simplicity of our Babybow Pair Clip, a sweet and secure accessory crafted to add the perfect touch of charm to your little one\'s precious locks.', 12311, '25.00', '45.00', 'Baby Collection', '', '0013', 'pbow1.jpg', 'pbow2.jpg', 'pbow3.jpg'),
(40, 'Babybow Nylon Headbands', 'White / Black / Pink / Brown / Violet / Red / Yellow', 'Wrap your little one in comfort and cuteness with our Babybow Nylon Headbands, featuring petite bows for a sweet and gentle accent to your baby\'s adorable style.', 94, '15.00', '35.00', 'Baby Collection', '', '0014', 'nylon1.jpg', 'nylon2.jpg', 'nylon3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(910, 'Christian', 'Derain', 'Villaveza', 'Wawa', 'tiano@gmail.com', '097666161', 'tiano', 'a1Bz20ydqelm8m1wqle55110156b156d5a1c291f8461db8ce8'),
(912, 'Cecile', 'Ramos', 'Baral', 'Brgy. Putat Nasugbu Batangas', 'cecile', '123456789', 'cecile01', 'a1Bz20ydqelm8m1wql7ad167d9a2407113eea71c6e518c5bc9'),
(914, 'Jimuel', 'Padilla', 'Salosa', 'Brgy. Bolboc Tuy Bataangas', 'jimuel@gmail.com', '456871245', 'jimuel03', 'a1Bz20ydqelm8m1wqle01cd137ced1ae0ec22778249fffaa7a'),
(915, 'Allard Kehn', 'Bernardo', 'Legaspi', 'Brgy. Balimbing Calatagan Batangas', 'allardkehn@gmail.com', '301265987', 'allardkehn04', 'a1Bz20ydqelm8m1wqld3a2130919f40c655b9def601b3d95bf'),
(916, 'Renzo', 'Miles', 'Cabral', 'Subd Roxaco Nasugbu Batangas', 'renzo@gmail.com', '0912312312', 'renzo123', 'a1Bz20ydqelm8m1wqla893f57110c51a4faff80a2f8febc3ee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=917;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
