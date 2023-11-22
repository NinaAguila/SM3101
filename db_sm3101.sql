-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2023 at 08:25 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sm3101`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

DROP TABLE IF EXISTS `tbempinfo`;
CREATE TABLE IF NOT EXISTS `tbempinfo` (
  `empid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'dela cruz', 'juan', 'security'),
(3, 'manalo', 'francisco', 'security'),
(4, 'hernandez', 'reynold', 'security'),
(5, 'mendoza', 'ronnie', 'student discipline');

-- --------------------------------------------------------

--
-- Table structure for table `tbemplogin`
--

DROP TABLE IF EXISTS `tbemplogin`;
CREATE TABLE IF NOT EXISTS `tbemplogin` (
  `emploginID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`emploginID`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbemplogin`
--

INSERT INTO `tbemplogin` (`emploginID`, `username`, `password`, `empid`) VALUES
(1, 'Guard1', 'Guard111', 1),
(2, 'Guard2', 'Guard222', 2),
(3, 'Guard3', 'Guard333', 3),
(4, 'OSDAdmin', 'OSDAdmin123', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

DROP TABLE IF EXISTS `tbstudinfo`;
CREATE TABLE IF NOT EXISTS `tbstudinfo` (
  `studid` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs'),
(3, 'Coronel', 'Marielle', 'BSIT'),
(4, 'Fajilan', 'Micaella Curlyne', 'BSIT'),
(5, 'Borja', 'John Laurence', 'BSIT'),
(6, 'Baybay', 'Emmanuel', 'BSIT'),
(7, 'Valdez', 'Fryan Auric', 'BSIT'),
(8, 'Custodio', 'Juliana Beatriz', 'BSIT'),
(9, 'nebres', 'elbert', 'BSIT'),
(10, 'latorre', 'john aeron', 'BSIT'),
(11, 'mayo', 'john lorenz', 'BSIT'),
(12, 'dulay', 'veronica', 'BSIT'),
(13, 'villanueva', 'kurt xavier', 'BSIT'),
(14, 'mercado', 'kurt dhracir', 'BSIT'),
(15, 'dela pena', 'mary ann', 'BSIT');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudlogin`
--

DROP TABLE IF EXISTS `tbstudlogin`;
CREATE TABLE IF NOT EXISTS `tbstudlogin` (
  `studloginID` int NOT NULL AUTO_INCREMENT,
  `srCode` varchar(10) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`studloginID`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudlogin`
--

INSERT INTO `tbstudlogin` (`studloginID`, `srCode`, `username`, `password`, `studid`) VALUES
(1, '21-33599', 'Janine Lansangan', 'lansangan1282', 1),
(2, '21-33600', 'John Smith', 'smith123', 2),
(3, '21-33601', 'Maria Garcia', 'garcia456', 3),
(4, '21-33602', 'Robert Johnson', 'johnson789', 4),
(5, '21-33603', 'Linda Chen', 'chen123', 5),
(6, '21-33604', 'Michael Lee', 'lee456', 6),
(7, '21-33605', 'Sophia Wang', 'wang789', 7),
(8, '21-33606', 'William Brown', 'brown123', 8),
(9, '21-33607', 'Jennifer Kim', 'kim456', 9),
(10, '21-33608', 'David Nguyen', 'nguyen789', 10),
(11, '21-33609', 'Karen Martinez', 'martinez123', 11),
(12, '21-33610', 'Samuel Lopez', 'lopez456', 12),
(13, '21-33611', 'Olivia Wilson', 'wilson789', 13),
(14, '21-33612', 'Daniel Gonzalez', 'gonzalez123', 14),
(15, '21-33613', 'Emily Harris', 'harris456', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbviolation`
--

DROP TABLE IF EXISTS `tbviolation`;
CREATE TABLE IF NOT EXISTS `tbviolation` (
  `violationID` int NOT NULL AUTO_INCREMENT,
  `srCode` varchar(10) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `violationtype` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sanction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`violationID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbviolation`
--

INSERT INTO `tbviolation` (`violationID`, `srCode`, `date`, `violationtype`, `remarks`, `sanction`) VALUES
(1, '21-33613', '2023-10-13 00:18:00', 'Haircut/Color', 'Improper Hairstyle', 'Written Warning'),
(2, '21-20219', '2023-10-14 00:21:00', 'Haircut/Color', 'Mohawk Hairstyle', 'Written Warning'),
(3, '21-33601', '2023-10-13 00:30:00', 'Dress Code', 'Wearing Crop Top', 'Written Warning'),
(4, '22-30078', '2023-10-14 01:35:00', 'Uniform', 'Wrong School Shoes', 'Written Warning'),
(5, '25-09127', '2023-10-14 02:18:00', 'Dress Code', 'Wearing Ripped Jeans', 'Written Warning'),
(6, '21-33613', '2023-10-16 03:23:00', 'Others', 'Not wearing of school ID', 'Written Reprimand'),
(7, '21-33601', '2023-10-16 03:30:00', 'Misconduct', 'Vaping outside university gate', 'To be Discussed'),
(8, '21-20219', '2023-10-17 04:30:00', 'Others', 'Not wearing own school ID', 'Written Reprimand'),
(9, '22-30078', '2023-10-17 02:25:00', 'Haircut/Color', 'Undercut haistyle', 'Written Warning'),
(10, '25-09127', '2023-10-18 06:28:00', 'Uniform', 'Not wearing proper school uniform', 'Written Reprimand'),
(11, '21-33613', '2023-10-18 01:28:00', 'Uniform', 'Inappropriate Shoes (Rubber Shoes while wearing school uniform)', 'Written Reprimand'),
(12, '21-33601', '2023-10-21 04:28:00', 'Others', 'Bringing harmful object to school', 'Written Reprimand'),
(13, '21-20219', '2023-11-06 00:29:00', 'Misconduct', 'Smoking inside the campus', 'One day Suspension'),
(14, '22-30078', '2023-11-07 02:32:00', 'Dress Code', 'Wearing tight leggings ', 'Written Warning'),
(15, '25-04390', '2023-11-13 10:29:00', 'Haircut/Color', 'Loud hair color', 'Written Warning'),
(17, '21-53681', '2023-11-22 00:23:00', 'Haircut/Color', 'Loud hair color', 'Written Warning');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
