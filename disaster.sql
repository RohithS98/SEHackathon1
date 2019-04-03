-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2019 at 06:11 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `disaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `disasterpredicted`
--

DROP TABLE IF EXISTS `disasterpredicted`;
CREATE TABLE IF NOT EXISTS `disasterpredicted` (
  `type` enum('earthquake','flood','cyclone','heatwave') DEFAULT NULL,
  `lat` double NOT NULL DEFAULT '0',
  `lon` double NOT NULL DEFAULT '0',
  `severity` varchar(20) DEFAULT NULL,
  `predicteddate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disasterpredicted`
--

INSERT INTO `disasterpredicted` (`type`, `lat`, `lon`, `severity`, `predicteddate`) VALUES
('cyclone', 11.5, 75.5, 'Mild', '2019-04-07'),
('earthquake', 26.8, 84.5, 'High', '2019-04-05'),
('flood', 26.9, 84.9, 'Moderate', '2019-04-05'),
('heatwave', 13.5, 79.4, 'High', '2019-04-08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
