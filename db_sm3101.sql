-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 10:02 AM
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
-- Table structure for table `tblcarinfo`
--

DROP TABLE IF EXISTS `tblcarinfo`;
CREATE TABLE IF NOT EXISTS `tblcarinfo` (
  `Id_number` int NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Contact_number` varchar(50) DEFAULT NULL,
  `Car_model` varchar(50) DEFAULT NULL,
  `Plate_number` varchar(50) DEFAULT NULL,
  `Primary_color` varchar(50) DEFAULT NULL,
  `empid` int DEFAULT NULL,
  `studid` int NOT NULL,
  PRIMARY KEY (`Id_number`),
  KEY `empid` (`empid`),
  KEY `studid` (`studid`),
  KEY `Plate_number` (`Plate_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblcarinfo`
--

INSERT INTO `tblcarinfo` (`Id_number`, `Address`, `Position`, `Contact_number`, `Car_model`, `Plate_number`, `Primary_color`, `empid`, `studid`) VALUES
(1, 'Lipa City', 'Teacher', '09123456789', 'SUZUKI', 'SECRET123', 'YELLOW', 3, 0),
(2, 'Banay-banay', 'Teacher', '09123456789', 'Ford Mustang', 'QWE145', 'BLUE', 1, 0),
(3, 'Sto.Tomas', 'Supervisor', '09123456789', 'Toyota GR Supra', 'OMG888', 'GRAY', 2, 0),
(4, 'Inosloban Lipa', 'Teacher', '09123456789', 'Bugatti Chiron', 'TOPG543', 'Orange', 4, 0),
(5, 'Marawoy', 'Teacher', '09123456789', 'Ferrari F12', 'SHH111', 'Dark-red', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

DROP TABLE IF EXISTS `tblguest`;
CREATE TABLE IF NOT EXISTS `tblguest` (
  `guestId` int NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contact_number` varchar(50) DEFAULT NULL,
  `Car_model` varchar(50) DEFAULT NULL,
  `Plate_number` varchar(50) DEFAULT NULL,
  `Primary_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`guestId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblguest`
--

INSERT INTO `tblguest` (`guestId`, `Address`, `Contact_number`, `Car_model`, `Plate_number`, `Primary_color`) VALUES
(2, 'Hongkong Manila', '123456789', 'Mazda MX5', 'GIO090', 'Red'),
(5, 'SanJuan', '123456789', 'Porsche 911', 'SUP123', 'Gray'),
(4, 'P.ulan Lipa City', '123456789', 'Chevrolet Camaro', 'BUBU675', 'White'),
(1, 'Cuenca', '123456789', 'Aston Martin', 'AFK990', 'Gray-white'),
(3, 'Taal', '123456789', 'Honda Integra', 'MOP891', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `tblregister`
--

DROP TABLE IF EXISTS `tblregister`;
CREATE TABLE IF NOT EXISTS `tblregister` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Contact_number` varchar(50) DEFAULT NULL,
  `Car_model` varchar(50) DEFAULT NULL,
  `Plate_number` varchar(50) DEFAULT NULL,
  `Primary_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblregister`
--

INSERT INTO `tblregister` (`reg_id`, `lastname`, `firstname`, `Address`, `Position`, `Contact_number`, `Car_model`, `Plate_number`, `Primary_color`) VALUES
(1, 'Tamad', 'Juan', 'San Juan, Batangas', 'Supervisor', '09567812364', 'Mustang G', 'OPM456', 'Red'),
(2, 'Alvarez', 'Kim', 'San Jose, Lipa', 'Teacher', '09235798561', 'SUZUKI', 'LUH123', 'Red'),
(3, 'Lason', 'Muhalik', 'Lipa', 'Teacher', '09567812789', 'Toyota', 'TEH456', 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `tblslots`
--

DROP TABLE IF EXISTS `tblslots`;
CREATE TABLE IF NOT EXISTS `tblslots` (
  `Plate_number` varchar(50) NOT NULL,
  `Slot_number` varchar(50) DEFAULT NULL,
  `Date_` varchar(50) DEFAULT NULL,
  `Time_in` varchar(50) DEFAULT NULL,
  `Time_out` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Plate_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblslots`
--

INSERT INTO `tblslots` (`Plate_number`, `Slot_number`, `Date_`, `Time_in`, `Time_out`) VALUES
('OPM456', '5', '11-22-23', '10:59', '1:00'),
('LUH123', '6', '11-21-23', '1:19', '3:30'),
('TEH456', '8', '11-21-23', '09:45', '07:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `user_Id` int NOT NULL,
  `empid` int NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_Id`, `empid`, `user_name`, `user_pass`, `user_position`) VALUES
(1, 7, 'Admin', 'ADMIN123', 'HEAD'),
(2, 8, 'Guard', 'GUARD123', 'Guard');

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
