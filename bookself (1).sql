-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 08:12 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookself`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_item`
--

CREATE TABLE `store_item` (
  `store_item_id` int(11) NOT NULL,
  `slot_no` varchar(100) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `is_collected` int(11) DEFAULT 0,
  `store_date` date NOT NULL,
  `is_returned` int(11) DEFAULT 0,
  `return_at` timestamp NULL DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_item`
--

INSERT INTO `store_item` (`store_item_id`, `slot_no`, `subject_name`, `course_code`, `start_time`, `is_collected`, `store_date`, `is_returned`, `return_at`, `end_time`) VALUES
(1, '1', 'Book 2', '120', '12.30', 0, '2021-12-08', 0, NULL, '30.4'),
(2, '2', 'Book 1', '130', '12.30', 0, '2021-12-09', 0, NULL, '30.4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `office_id` varchar(110) NOT NULL,
  `marketing_id` varchar(110) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(110) NOT NULL DEFAULT '1',
  `log_count` varchar(300) NOT NULL,
  `last_login` varchar(300) NOT NULL,
  `ip` varchar(150) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `office_id`, `marketing_id`, `type`, `status`, `log_count`, `last_login`, `ip`, `username`, `password`, `create_date`) VALUES
(16, '3', '28', 'admin', '1', '83', '02-12-2021 18:30:44', '::1', 'admin', 'admin', '11-03-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `user_session_id` int(11) NOT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `sign_in_time` varchar(100) DEFAULT NULL,
  `sign_out_time` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `user_id` varchar(110) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_session`
--

INSERT INTO `user_session` (`user_session_id`, `user_type`, `sign_in_time`, `sign_out_time`, `ip`, `user_id`) VALUES
(1, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0'),
(2, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '::1', '1'),
(3, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '::1', '1'),
(4, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '::1', '1'),
(5, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '::1', '1'),
(6, '', '2018-10-17 23:01:50', '0000-00-00 00:00:00', '::1', '1'),
(7, '', '0000-00-00 00:00:00', '2018-10-17 23:01:52', '::1', '1'),
(8, '', '2018-10-17 23:02:06', '0000-00-00 00:00:00', '::1', '1'),
(9, '', '0000-00-00 00:00:00', '2018-10-17 23:02:31', '::1', '1'),
(10, '', '2018-10-17 23:02:33', '0000-00-00 00:00:00', '::1', '1'),
(11, '', '0000-00-00 00:00:00', '2018-10-17 23:02:34', '::1', '1'),
(12, '', '2018-10-17 23:02:53', '0000-00-00 00:00:00', '::1', '1'),
(13, '', '0000-00-00 00:00:00', '2018-10-17 23:02:55', '::1', '1'),
(14, '', '2018-10-17 23:03:40', '0000-00-00 00:00:00', '::1', '1'),
(15, '', '0000-00-00 00:00:00', '2018-10-17 23:03:42', '::1', '1'),
(16, '', '2018-10-17 23:03:44', '0000-00-00 00:00:00', '::1', '1'),
(17, '', '0000-00-00 00:00:00', '2018-10-17 23:03:46', '::1', '1'),
(18, '', '2018-10-17 23:04:02', '0000-00-00 00:00:00', '::1', '1'),
(19, '', '2018-10-17 23:07:32', '0000-00-00 00:00:00', '::1', '1'),
(20, '', '2018-10-17 23:09:01', '0000-00-00 00:00:00', '::1', '1'),
(21, '', '2018-10-17 23:09:05', '0000-00-00 00:00:00', '::1', '1'),
(22, '', '2018-10-17 23:09:07', '0000-00-00 00:00:00', '::1', '1'),
(23, '', '2018-10-17 23:09:10', '0000-00-00 00:00:00', '::1', '1'),
(24, '', '2018-10-17 23:09:49', '0000-00-00 00:00:00', '::1', '1'),
(25, '', '2018-10-17 23:11:12', '0000-00-00 00:00:00', '::1', '1'),
(26, '', '2018-10-17 23:12:29', '0000-00-00 00:00:00', '::1', '1'),
(27, '', '0000-00-00 00:00:00', '2018-10-17 23:12:32', '::1', '1'),
(28, '', '2018-10-17 23:12:34', '0000-00-00 00:00:00', '::1', '1'),
(29, '', '2018-10-17 23:12:55', '0000-00-00 00:00:00', '::1', '1'),
(30, '', '2018-10-17 23:13:21', '0000-00-00 00:00:00', '::1', '1'),
(31, '', '2018-10-17 23:14:30', '0000-00-00 00:00:00', '::1', '1'),
(32, '', '2018-10-17 23:14:49', '0000-00-00 00:00:00', '::1', '1'),
(33, '', '2018-10-17 23:15:54', '0000-00-00 00:00:00', '::1', '1'),
(34, '', '2018-10-17 23:16:48', '0000-00-00 00:00:00', '::1', '1'),
(35, '', '2018-10-17 23:17:43', '0000-00-00 00:00:00', '::1', '1'),
(36, '', '0000-00-00 00:00:00', '2018-10-17 23:21:55', '::1', '1'),
(37, '', '2018-10-17 23:22:03', '0000-00-00 00:00:00', '::1', '2'),
(38, '', '2018-10-18 08:44:53', '0000-00-00 00:00:00', '::1', '1'),
(39, '', '2018-10-18 14:07:36', '0000-00-00 00:00:00', '::1', '1'),
(40, '', '0000-00-00 00:00:00', '2018-10-18 14:48:32', '::1', '1'),
(41, '', '2018-10-18 14:48:33', '0000-00-00 00:00:00', '::1', '1'),
(42, '', '0000-00-00 00:00:00', '2018-10-18 16:10:46', '::1', '1'),
(43, '', '2018-10-18 16:10:48', '0000-00-00 00:00:00', '::1', '1'),
(44, '', '0000-00-00 00:00:00', '2018-10-18 16:10:49', '::1', '1'),
(45, '', '2018-10-18 17:00:55', '0000-00-00 00:00:00', '::1', '1'),
(46, '', '2018-10-18 18:42:54', '0000-00-00 00:00:00', '::1', '1'),
(47, '', '2018-10-18 20:04:09', '0000-00-00 00:00:00', '::1', '1'),
(48, '', '2018-10-18 21:26:27', '0000-00-00 00:00:00', '::1', '1'),
(49, '', '2018-10-19 18:36:21', '0000-00-00 00:00:00', '::1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_item`
--
ALTER TABLE `store_item`
  ADD PRIMARY KEY (`store_item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`user_session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store_item`
--
ALTER TABLE `store_item`
  MODIFY `store_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `user_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
