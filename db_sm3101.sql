-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2023 at 10:04 AM
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
-- Table structure for table `carparking`
--

DROP TABLE IF EXISTS `carparking`;
CREATE TABLE IF NOT EXISTS `carparking` (
  `Id_number` int NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Contact_number` varchar(50) DEFAULT NULL,
  `Car_model` varchar(50) DEFAULT NULL,
  `Plate_number` varchar(50) DEFAULT NULL,
  `Primary_color` varchar(50) DEFAULT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`Id_number`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carparking`
--

INSERT INTO `carparking` (`Id_number`, `Address`, `Position`, `Contact_number`, `Car_model`, `Plate_number`, `Primary_color`, `empid`) VALUES
(1, 'Lipa City', 'Teacher', '09123456789', 'SUZUKI', 'SECRET123', 'YELLOW', 3),
(2, 'Banay-banay', 'Visitor', '09123456789', 'Ford Mustang', 'QWE145', 'BLUE', 1),
(3, 'Sto.Tomas', 'Supervisor', '09123456789', 'Toyota GR Supra', 'OMG888', 'GRAY', 2),
(4, 'Inosloban Lipa', 'Visitor', '09123456789', 'Bugatti Chiron', 'TOPG543', 'Orange', 4),
(5, 'Marawoy', 'Teacher', '09123456789', 'Ferrari F12', 'SHH111', 'Dark-red', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'Ramos', 'Lois Andrei', 'CICS'),
(3, 'Penera', 'Jay Troyd', 'CICS'),
(4, 'Razon', 'Joana Marie', 'CICS'),
(5, 'Rosa', 'Christine Ann', 'CICS'),
(6, 'Zara', 'Von Raniel', 'CICS');

-- --------------------------------------------------------

--
-- Table structure for table `tblguess`
--

DROP TABLE IF EXISTS `tblguess`;
CREATE TABLE IF NOT EXISTS `tblguess` (
  `studid` int DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contact_number` varchar(50) DEFAULT NULL,
  `Car_model` varchar(50) DEFAULT NULL,
  `Plate_number` varchar(50) DEFAULT NULL,
  `Primary_color` varchar(50) DEFAULT NULL,
  KEY `studid` (`studid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblguess`
--

INSERT INTO `tblguess` (`studid`, `Address`, `Contact_number`, `Car_model`, `Plate_number`, `Primary_color`) VALUES
(2, 'Hongkong Manila', '123456789', 'Mazda MX5', 'GIO090', 'Red'),
(5, 'SanJuan', '123456789', 'Porsche 911', 'SUP123', 'Gray'),
(4, 'P.ulan Lipa City', '123456789', 'Chevrolet Camaro', 'BUBU675', 'White'),
(1, 'Cuenca', '123456789', 'Aston Martin', 'AFK990', 'Gray-white'),
(3, 'Taal', '123456789', 'Honda Integra', 'MOP891', 'Black');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs'),
(3, 'Wood', 'Jack', 'BSCS'),
(4, 'Gonzales', 'Lucio', 'BSIT'),
(5, 'Miller', 'Steven', 'BSIT'),
(6, 'Garner', 'Eula', 'BSBA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
