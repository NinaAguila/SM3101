-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2023 at 09:39 AM
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
-- Table structure for table `editparking`
--

DROP TABLE IF EXISTS `editparking`;
CREATE TABLE IF NOT EXISTS `editparking` (
  `Id_number` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Contact_number` varchar(50) DEFAULT NULL,
  `Car_model` varchar(50) DEFAULT NULL,
  `Plate_number` varchar(50) DEFAULT NULL,
  `Primary_color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `editparking`
--

INSERT INTO `editparking` (`Id_number`, `Name`, `Address`, `Position`, `Contact_number`, `Car_model`, `Plate_number`, `Primary_color`) VALUES
(2020202, 'May name na', 'May Address na', 'May position na', '123450987', 'Fake Taxi', 'SECRET123', 'Fake Taxi'),
(78237, 'Son Goku', 'Banay-Banay Lipa', 'Supersaiyan3', '2147483647', 'Ford Mustang', 'QWE145', 'Blue'),
(99999, 'Itachi Uchiha', 'Konoha', 'Instructor', '2147483647', 'Toyota GR Supra', 'OMG888', 'Gray'),
(92385, 'Andrew Tate', 'Secret Address', 'Visitor', '2147483647', 'Bugatti Chiron', 'TOPG543', 'Orange'),
(66666, 'Andrei', 'Lipa City', 'Student', '2147483647', 'Ferrari F12', 'SHH111', 'Dark-Red'),
(789, 'Jessica', 'Hindi na Homeless', 'Wala', '976', 'Walang car', 'JKH123', 'Walang car'),
(486123, 'Eloyyy', 'Inosloban', 'President', '2147483647', 'HYUNDAI', 'AYU890', 'Blue'),
(10101, 'Bobo', 'Bobo ka', 'Bobong position', '0999781231', 'Bobong car', 'BOBO123', 'BOBO RED'),
(789789, 'Yuri', 'Japan', 'Doggy', '9102381923', 'Mustang', 'GOAT990', 'YELLOW-RED');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
