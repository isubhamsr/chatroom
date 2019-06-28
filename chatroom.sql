-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2018 at 07:03 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `msgs`
--

CREATE TABLE `msgs` (
  `sno` int(11) NOT NULL,
  `msg` text NOT NULL,
  `room` text NOT NULL,
  `ip` text NOT NULL,
  `stime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msgs`
--

INSERT INTO `msgs` (`sno`, `msg`, `room`, `ip`, `stime`) VALUES
(4, 'hi', 'room12', '::1', '2018-08-20 21:26:12'),
(5, 'h2', 'room12', '::1', '2018-08-20 21:31:39'),
(6, 'hi3', 'room12', '::1', '2018-08-20 21:37:13'),
(7, 'this is me', 'room12', '::1', '2018-08-20 21:38:31'),
(8, 'this is subham', 'room12', '::1', '2018-08-20 21:39:48'),
(9, 'hello', 'room12', '::1', '2018-08-20 21:51:07'),
(10, 'this is me', 'room12', '::1', '2018-08-20 22:08:07'),
(11, 'how r u?', 'room12', '::1', '2018-08-20 22:11:11'),
(12, 'fine', 'room12', '::1', '2018-08-20 22:11:20'),
(13, 'hi', 'room12', '::1', '2018-08-20 22:12:21'),
(14, 'hello', 'room12', '::1', '2018-08-20 22:12:33'),
(15, 'hii', 'room1', '::1', '2018-08-20 22:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `sno` int(11) NOT NULL,
  `roomname` varchar(100) NOT NULL,
  `stime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`sno`, `roomname`, `stime`) VALUES
(2, 'roy', '2018-08-19 12:04:40'),
(3, 'room11', '2018-08-19 12:05:11'),
(4, 'chatroom11', '2018-08-19 12:10:32'),
(5, 'sub', '2018-08-19 12:34:55'),
(6, 'sub1', '2018-08-19 12:36:31'),
(7, 'sub2', '2018-08-19 12:39:19'),
(8, 'room12', '2018-08-20 20:41:19'),
(9, 'room1', '2018-08-20 22:13:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msgs`
--
ALTER TABLE `msgs`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msgs`
--
ALTER TABLE `msgs`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
