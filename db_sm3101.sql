-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2023 at 10:52 AM
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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `incharge` varchar(255) NOT NULL,
  `SRCODE` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(50) DEFAULT NULL,
  `SYMPTOM` varchar(50) DEFAULT NULL,
  `PRESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE` date NOT NULL,
  `empid` int DEFAULT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `empid` (`empid`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `incharge`, `SRCODE`, `CONTACT`, `SYMPTOM`, `PRESCRIPTION`, `DATE`, `empid`, `studid`) VALUES
(1, '', '21-76748', '098762487', 'headache', 'biogesic', '2023-11-22', NULL, NULL),
(2, '', '21-76748', '0987654', 'headache', 'biogesic', '2023-11-23', NULL, NULL),
(3, '', '21-35462', '0908087709', 'lagnat', 'bidesic', '2023-11-01', 1, 1),
(5, '', '21-3241', '012312411241', 'flu', 'bioflu', '2023-11-01', 1, 2),
(6, '', '21-3241', '012312411241', 'flu', 'bioflu', '2023-11-01', 1, 2),
(7, '', '21-3413', '0912432452', 'asthma', 'asthmaline', '2023-11-01', 3, 3),
(8, '', '21-3413', '0912432452', 'asthma', 'asthmaline', '2023-11-01', 3, 3),
(9, '', '21-12345', '09912345123', 'flu', 'biogesic', '2023-11-01', 1, 4),
(10, '', '21-14512', '09084124433', 'Flu', 'Bioflu', '2023-11-08', 5, 5),
(11, '', '21-12345', '09912345123', 'flu', 'biogesic', '2023-11-01', 1, 4),
(12, '', '21-14512', '09084124433', 'Flu', 'Bioflu', '2023-11-08', 5, 5);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'dimaala', 'ayen', 'cabe'),
(3, 'mendoza', 'paul', 'cas'),
(4, 'dimaandal', 'roy', 'cics'),
(5, 'esperanza', 'shane', 'cabe'),
(6, 'esperanza', 'shane', 'cabe'),
(7, 'macalintal', 'kyla', 'cics'),
(8, 'venerable', 'mike', 'cics'),
(9, 'tenoso', 'chrizelle', 'cics'),
(10, 'aranas', 'kyhel', 'cabe');

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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs'),
(3, 'dimaala', 'ayen', 'bssc'),
(4, 'de jesus', 'paulo', 'bsit'),
(5, 'alip', 'ella', 'bsit'),
(6, 'tipan', 'allen', 'bsit'),
(7, 'dimaala', 'ayen', 'bssc'),
(8, 'matibag', 'chris', 'bpa'),
(9, 'maranan', 'carl', 'bpa'),
(10, 'sabilio', 'erik', 'bsit');

-- --------------------------------------------------------

--
-- Table structure for table `tbusers`
--

DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE IF NOT EXISTS `tbusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`id`, `username`, `password`, `empid`) VALUES
(1, 'Aguila_Nina', 'password', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
