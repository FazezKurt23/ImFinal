-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2026 at 07:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socmed_heraldeze```
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `aid` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`aid`, `email`, `firstname`, `lastname`, `password`) VALUES
(1, 'account@web.com', 'Kurtie', 'Heraldez', '123456'),
(2, 'k@d', 'erd', 'f', 'sa'),
(6, 'kurt@gmail.com', 'king', 'heraldez', '123457'),
(7, 'KURT@UASD', 'sdas', 'fsdf', '32432'),
(17, 'kurtiezy@gmail.com', 'kurt.ai', 'heraldex', '123456'),
(18, 'kurt@gmail.com', 'john', 'heraldez', '123'),
(19, 'kurt@gmail.com', 'sad', 'dsad', 'sadas'),
(20, 'king@gmail.com', 'jhon', 'heraldez', '123'),
(28, '', '', '', ''),
(29, '', '', '', ''),
(30, '', '', '', ''),
(31, 'kurtjohn@gmail.com', 'Kurt John', 'Heraldez', '1234'),
(32, 'jaymon@gmail.com', 'jaymon', 'delica', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `aid`, `content`, `post_date`, `post_time`) VALUES
(1, 1, 'Hello,Rap2x', '2025-12-01', '14:12:05'),
(13, 31, 'cute ko\r\n', '2026-03-09', '14:27:48'),
(14, 20, 'cute ko', '2026-03-16', '14:24:48'),
(15, 31, 'asako\r\n', '2026-03-16', '14:49:27'),
(16, 17, 'ngek\r\n', '2026-03-16', '14:50:12'),
(17, 17, '', '2026-03-16', '14:50:15'),
(18, 17, 'ako ko', '2026-03-16', '14:50:55'),
(19, 31, 'Isaiah 60:22 \r\nWhen the time is right, I, the LORD, will make it happend', '2026-03-18', '14:09:16'),
(20, 31, '                &quot;Isaiah 60:22&quot;\r\n When the time is right, I, the LORD, will make it happen.', '2026-03-18', '14:15:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `aid` (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `account` (`aid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
