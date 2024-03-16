-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2019 at 10:52 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accident`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  `latitude` varchar(45) NOT NULL,
  `longitude` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `person_killed` int(45) DEFAULT NULL,
  `person_injured` int(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `taluka` varchar(45) DEFAULT NULL,
  `police_station` varchar(45) DEFAULT NULL,
  `level` varchar(100) NOT NULL,
  `color_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `date`, `latitude`, `longitude`, `address`, `reason`, `person_killed`, `person_injured`, `district`, `taluka`, `police_station`, `level`, `color_code`) VALUES
(1, 'asdad', '20.002422', '73.711428', 'Carban Naka,Satpur', 'Village & Rush up and down road,Cross speed limit', NULL, NULL, NULL, NULL, NULL, '1', '#00FF00'),
(2, '', '19.914532', '73.900918', 'NH 60,Shindegaon,Nashik', 'Village & Rush up and down road,Cross speed limit', NULL, NULL, NULL, NULL, NULL, '2', '#00FF00'),
(3, '', '20.000683', '73.782491', 'CBS Signal,Nashik', 'T Junction,Harp Curve road', NULL, NULL, NULL, NULL, NULL, '3', '#00FF00'),
(4, '', '20.023254', '73.801469', 'Tarwala Nagar', 'Village & Rush up and down roa', NULL, NULL, NULL, NULL, NULL, '4', '#FFA500'),
(5, '', '20.006552', '73.822567', 'Siddhi Vinayak,Adgaon', 'Cross speed limit,Junction,Shape Curve road', NULL, NULL, NULL, NULL, NULL, '5', '#FFA500'),
(6, '', '20.007261', '73.771402', 'Old Gangapur Naka', 'Village & Rush up and down road,', NULL, NULL, NULL, NULL, NULL, '6', '#FFA500'),
(7, '', '19.956684', '73.833725', 'Datta Mandir Signal,Nashik', 'Cross speed limit,Junction', NULL, NULL, NULL, NULL, NULL, '7', '#FFA500'),
(8, '', '20.013605', '73.822619', 'K K Wagh College,Adgaon', 'Village & Rush up and down road,Cross spe', NULL, NULL, NULL, NULL, NULL, '2', '#00FF00'),
(9, '', '19.996741', '73.801067', 'Dwarka Circle', 'Village & Rush up and down road,Cross sp', NULL, NULL, NULL, NULL, NULL, '4', '#FFA500'),
(10, '', '20.167646', '73.342948', 'Tapovan Crossing', 'Village & Rush up and down road,Cross speed limit,Junction,Shape Curve road', NULL, NULL, NULL, NULL, NULL, '3', '#00FF00');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `phone`, `email`, `pass`, `address`) VALUES
(1, 'harsha', '8205021040', 'p@gmail.com', '123456', 'djfwiuiofu'),
(2, 'ram', '9403151215', 'ram@gmail.com', '123456', 'wdofiourofi'),
(3, 'jrhfkwruhuu', '9744521020', 'w@gmail.com', '123', 'fjgjgj'),
(4, 'sunil', '9867865756', 's@gmail.com', '12345', 'pune');

-- --------------------------------------------------------

--
-- Table structure for table `tmoinfo`
--

DROP TABLE IF EXISTS `tmoinfo`;
CREATE TABLE IF NOT EXISTS `tmoinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmoinfo`
--

INSERT INTO `tmoinfo` (`id`, `name`, `email`, `mobile`, `address`, `password`) VALUES
(1, 'pallavi', 'p@gmail.com', 8567456478, 'nasik', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'gaurav', 'gaikwad.gaurav18@gmail.com', '123'),
(2, 'abc', 'abc@gmail.com', '123'),
(3, 'pqr', 'pqr@gmail.com', '1234'),
(4, 'prashant pawar', 'prashant@gmail.com', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
