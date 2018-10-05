-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2018 at 02:52 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `adminName` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `NIC` varchar(10) NOT NULL,
  `telNo` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `address`, `NIC`, `telNo`, `email`) VALUES
(16, ' ruwana', ' mirigama', '933183245v', 0, '  ruwan.werdia0150@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `town` varchar(20) DEFAULT NULL,
  `heading` varchar(30) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `imgName` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `town`, `heading`, `description`, `name`, `email`, `price`, `tel`, `username`, `imgName`) VALUES
(16, 'gampaja', 'asd', 'sdasd', 'sdfdsf', 'sdfsdf@gmail.com', '2250', '222222222', 'dasd', '1.jpg'),
(25, 'aasd', 'asdasdasd', 'asdasdasd', 'sads', 'ruwan.wedisa0150@gmail.com', '2211', '222222222', 'dasd', '3.jpg'),
(26, 'Badulla', 'Home', 'Home', 'Sahan', 'sudeerasaha@gmail.com', '200000', '0710132422', 'dasd', '2.jpg'),
(27, 'Badulla', 'Home', 'Home', 'Sahan', 'sudeerasaha@gmail.com', '200000', '0710132422', 'dasd', '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `customerName` varchar(30) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `NIC` varchar(10) NOT NULL,
  `telNo` int(10) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customerName`, `address`, `NIC`, `telNo`, `email`) VALUES
(37, 'gisban', 'asdasdasdasd', '955521325v', 222222222, 'hasanka@gmail.com'),
(42, 'rfghh', 'rftghy', '11212121v2', 222222222, 'hasanka@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activated` int(1) NOT NULL,
  `userCategory` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `userName`, `password`, `activated`, `userCategory`) VALUES
(16, 'ruwan', 'ruwan0150', 1, 1),
(42, 'abc', '12345678', 0, 2),
(37, 'gisban', 'gisban0150', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `fullname`, `telephone`, `email`, `address`, `message`) VALUES
(37, 'asdasdasd', 112294111, 'ruwan.wedisa0150@gmail.com', 'asdasd', 'I need to be Contack right now. my asdasd adkada dad adkad adkad adakdddad adaa da.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`NIC`),
  ADD UNIQUE KEY `UNIQUE` (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`NIC`),
  ADD UNIQUE KEY `UNIQUE` (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `UNIQUE` (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
