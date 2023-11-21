-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2023 at 08:38 AM
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
-- Table structure for table `tbadminsguards`
--

DROP TABLE IF EXISTS `tbadminsguards`;
CREATE TABLE IF NOT EXISTS `tbadminsguards` (
  `userid` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbadminsguards`
--

INSERT INTO `tbadminsguards` (`userid`, `username`, `password`, `usertype`, `name`, `status`, `email`) VALUES
(1, 'adminuser1', 'adminpass1', 'Admin', 'Marj', 'active', 'adminmarj@gmail.com'),
(2, 'adminuser2', 'adminpass2', 'Admin', 'Paulo', 'active', 'adminpaulo@gmail.com'),
(3, 'guarduser3', 'guardpass3', 'Guard', 'Guard Pedro', 'active', 'guardpedro@gmail.com'),
(4, 'guarduser4', 'guardpass4', 'Guard', 'Guard John', 'active', 'guardjjohn@gmail.com'),
(5, 'guarduser5', 'guardpass5', 'Guard', 'Guard Erick', 'active', 'guarderick@gmail.com');

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
(2, 'libunao', 'angeline', 'cics'),
(3, 'suarez', 'aileen', 'cics'),
(4, 'sulit', 'richelle', 'cics'),
(5, 'reyes', 'christoper', 'cics'),
(10, 'austria', 'carl jerome', 'cics'),
(9, 'balazon', 'francis', 'cics'),
(8, 'cabrera', 'christian', 'cics'),
(7, 'labiaga', 'elenor', 'cics'),
(6, 'alimoren', 'dioneces', 'cics');

-- --------------------------------------------------------

--
-- Table structure for table `tbfounditems`
--

DROP TABLE IF EXISTS `tbfounditems`;
CREATE TABLE IF NOT EXISTS `tbfounditems` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(100) NOT NULL,
  `ItemDescription` text,
  `DateTime` datetime DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Status` enum('Lost','Found','Claimed') NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `ReportedBy` int DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbfounditems`
--

INSERT INTO `tbfounditems` (`ItemID`, `ItemName`, `ItemDescription`, `DateTime`, `Location`, `Status`, `Category`, `ReportedBy`, `Image`) VALUES
(1, 'Found Laptop', 'Dell Inspiron laptop found in the library.', '2023-10-11 08:50:00', 'Library', 'Found', 'Electronics', 2, 'laptop.jpg'),
(2, 'Found Wallet', 'Black leather wallet with cash and cards found near the cafeteria.', '2023-10-12 17:30:00', 'Cafeteria', 'Found', 'Wallets', 4, 'wallet.jpg'),
(3, 'Found Earbuds', 'Wireless earbuds found on the bus.', '2023-10-13 10:15:00', 'Bus', 'Found', 'Electronics', 6, 'earbuds.jpg'),
(4, 'Found Backpack', 'Green backpack with school supplies found in the gym.', '2023-10-14 14:00:00', 'Gym', 'Found', 'Bags', 7, 'backpack.jpg'),
(5, 'Found Watch', 'Silver wristwatch found in the classroom.', '2023-10-15 12:45:00', 'Classroom 102', 'Found', 'Accessories', 8, 'watch.jpg'),
(6, 'Found ID Card', 'University ID card found outside the administration office.', '2023-10-16 11:40:00', 'Administration Office', 'Found', 'ID Cards', 9, 'id_card.jpg'),
(7, 'Found Phone', 'iPhone 11 found at the lecture hall.', '2023-10-17 09:20:00', 'Lecture Hall B', 'Found', 'Electronics', 10, 'phone.jpg'),
(8, 'Found Keys', 'Set of car keys found at the parking lot.', '2023-10-18 16:55:00', 'Parking Lot', 'Found', 'Keys', 2, 'keys.jpg'),
(9, 'Found Glasses', 'Prescription eyeglasses found in the library.', '2023-10-19 13:10:00', 'Library', 'Found', 'Accessories', 3, 'glasses.jpg'),
(10, 'Found Umbrella', 'Red umbrella with a floral pattern found near the bus stop.', '2023-10-20 15:00:00', 'Bus Stop', 'Found', 'Accessories', 4, 'umbrella.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblostitems`
--

DROP TABLE IF EXISTS `tblostitems`;
CREATE TABLE IF NOT EXISTS `tblostitems` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(100) NOT NULL,
  `ItemDescription` text,
  `DateTime` datetime DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Status` enum('Lost','Found','Claimed') NOT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `ReportedBy` int DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tblostitems`
--

INSERT INTO `tblostitems` (`ItemID`, `ItemName`, `ItemDescription`, `DateTime`, `Location`, `Status`, `Category`, `ReportedBy`, `Image`) VALUES
(1, 'Lost Phone', 'Black smartphone with cracked screen.', '2023-10-01 10:30:00', 'Library', 'Lost', 'Electronics', 3, 'phone.jpg'),
(2, 'Lost Backpack', 'Red backpack with textbooks and a laptop.', '2023-10-02 15:45:00', 'Cafeteria', 'Lost', 'Bags', 4, 'backpack.jpg'),
(3, 'Lost Keys', 'Set of house and car keys.', '2023-10-03 08:15:00', 'Parking Lot', 'Lost', 'Keys', 5, 'keys.jpg'),
(4, 'Lost Wallet', 'Brown leather wallet with cash and ID.', '2023-10-04 17:20:00', 'Gym', 'Lost', 'Wallets', 6, 'wallet.jpg'),
(5, 'Lost Umbrella', 'Blue umbrella with a pattern.', '2023-10-05 12:00:00', 'Bus Stop', 'Lost', 'Accessories', 7, 'umbrella.jpg'),
(6, 'Lost Watch', 'Silver wristwatch with a black strap.', '2023-10-06 09:30:00', 'Classroom 101', 'Lost', 'Accessories', 8, 'watch.jpg'),
(7, 'Lost Laptop', 'MacBook Pro 13-inch.', '2023-10-07 14:10:00', 'Library', 'Lost', 'Electronics', 9, 'laptop.jpg'),
(8, 'Lost ID Card', 'University ID card with the name \"John Doe\".', '2023-10-08 11:05:00', 'Administration Office', 'Lost', 'ID Cards', 10, 'id_card.jpg'),
(9, 'Lost Headphones', 'Wireless headphones with a case.', '2023-10-09 16:30:00', 'Cafeteria', 'Lost', 'Electronics', 3, 'headphones.jpg'),
(10, 'Lost Glasses', 'Prescription eyeglasses in a black frame.', '2023-10-10 13:25:00', 'Lecture Hall A', 'Lost', 'Accessories', 4, 'glasses.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbrecentactivities`
--

DROP TABLE IF EXISTS `tbrecentactivities`;
CREATE TABLE IF NOT EXISTS `tbrecentactivities` (
  `ActivityID` int NOT NULL AUTO_INCREMENT,
  `ActivityType` varchar(20) NOT NULL,
  `UserID` int DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ActivityID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbrecentactivities`
--

INSERT INTO `tbrecentactivities` (`ActivityID`, `ActivityType`, `UserID`, `ItemID`, `DateTime`) VALUES
(1, 'Report', 3, 1, '2023-10-01 10:30:00'),
(2, 'Report', 4, 2, '2023-10-02 15:45:00'),
(3, 'Report', 5, 3, '2023-10-03 08:15:00'),
(4, 'Report', 6, 4, '2023-10-04 17:20:00'),
(5, 'Report', 7, 5, '2023-10-05 12:00:00'),
(6, 'Report', 8, 6, '2023-10-06 09:30:00'),
(7, 'Report', 9, 7, '2023-10-07 14:10:00'),
(8, 'Report', 10, 8, '2023-10-08 11:05:00'),
(9, 'Report', 3, 9, '2023-10-09 16:30:00'),
(10, 'Report', 4, 10, '2023-10-10 13:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbreports`
--

DROP TABLE IF EXISTS `tbreports`;
CREATE TABLE IF NOT EXISTS `tbreports` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `ReportName` varchar(100) NOT NULL,
  `ReportDescription` text,
  `DateTime` datetime DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `ReportedBy` int DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ReportID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbreports`
--

INSERT INTO `tbreports` (`ReportID`, `ReportName`, `ReportDescription`, `DateTime`, `Location`, `Category`, `ReportedBy`, `Image`) VALUES
(1, 'Report 1', 'This is the first test report.', '2023-10-22 14:30:00', 'Library', 'Test', 3, 'report1.jpg'),
(2, 'Report 2', 'This is the second test report.', '2023-10-23 16:45:00', 'Cafeteria', 'Test', 4, 'report2.jpg'),
(3, 'Report 3', 'This is the third test report.', '2023-10-24 11:20:00', 'Parking Lot', 'Test', 5, 'report3.jpg'),
(4, 'Report 4', 'This is the fourth test report.', '2023-10-25 12:15:00', 'Gym', 'Test', 6, 'report4.jpg'),
(5, 'Report 5', 'This is the fifth test report.', '2023-10-26 08:30:00', 'Bus Stop', 'Test', 7, 'report5.jpg'),
(6, 'Report 6', 'This is the sixth test report.', '2023-10-27 09:10:00', 'Classroom 101', 'Test', 8, 'report6.jpg'),
(7, 'Report 7', 'This is the seventh test report.', '2023-10-28 10:40:00', 'Library', 'Test', 9, 'report7.jpg'),
(8, 'Report 8', 'This is the eighth test report.', '2023-10-29 13:55:00', 'Administration Office', 'Test', 10, 'report8.jpg'),
(9, 'Report 9', 'This is the ninth test report.', '2023-10-30 15:00:00', 'Cafeteria', 'Test', 3, 'report9.jpg'),
(10, 'Report 10', 'This is the tenth test report.', '2023-10-31 14:25:00', 'Lecture Hall A', 'Test', 4, 'report10.jpg'),
(17, 'Cellphone', 'Color black iphone', '2023-11-02 17:51:00', 'CECS Bldg', 'Gadget', 0, ''),
(16, 'Cellphone', 'IPHONE FULLY PAID', '2023-11-10 13:21:00', 'HEB', 'Gadget', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbsearchhistory`
--

DROP TABLE IF EXISTS `tbsearchhistory`;
CREATE TABLE IF NOT EXISTS `tbsearchhistory` (
  `SearchID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `SearchQuery` text NOT NULL,
  `SearchDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`SearchID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbsearchhistory`
--

INSERT INTO `tbsearchhistory` (`SearchID`, `UserID`, `SearchQuery`, `SearchDateTime`) VALUES
(1, 3, 'Lost phone', '2023-10-02 10:30:00'),
(2, 3, 'Found laptop', '2023-10-05 14:15:00'),
(3, 4, 'Lost keys', '2023-10-07 08:45:00'),
(4, 4, 'Lost glasses', '2023-10-10 11:30:00'),
(5, 5, 'Found wallet', '2023-10-12 18:00:00'),
(6, 5, 'Found backpack', '2023-10-14 14:30:00'),
(7, 6, 'Lost umbrella', '2023-10-15 09:45:00'),
(8, 6, 'Lost ID card', '2023-10-18 16:15:00'),
(9, 7, 'Found watch', '2023-10-19 14:10:00'),
(10, 7, 'Lost laptop', '2023-10-20 10:00:00');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bsit'),
(3, 'coronel', 'marielle', 'bsit'),
(4, 'san pablo', 'yukari', 'bsit'),
(5, 'custodio', 'bea', 'bsit'),
(6, 'saltoc', 'cheniell', 'bsit'),
(7, 'rubico', 'paulo', 'bsit'),
(8, 'lansangan', 'janine', 'bsit'),
(9, 'borja', 'john laurence', 'bsit'),
(10, 'fajilan', 'curlyne', 'bsit');

-- --------------------------------------------------------

--
-- Table structure for table `tbusers`
--

DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE IF NOT EXISTS `tbusers` (
  `userid` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(50) NOT NULL DEFAULT 'client',
  `name` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `empid` int DEFAULT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `empid` (`empid`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`userid`, `username`, `password`, `usertype`, `name`, `status`, `email`, `empid`, `studid`) VALUES
(1, 'empuser1', 'emppass1', 'Client', 'Nina Aguila', 'active', 'ninaaguila@gmail.com', 1, NULL),
(2, 'empuser2', 'emppass2', 'Client', 'Angeline Libunao', 'active', 'angelinelibunao@gmail.com', 2, NULL),
(3, 'empuser3', 'emppass3', 'Client', 'Aileen Suarez', 'active', 'aileensuarez@gmail.com', 3, NULL),
(4, 'empuser4', 'emppass4', 'Client', 'Richelle Sulit', 'active', 'richellesulit@gmail.com', 4, NULL),
(5, 'empuser5', 'emppass5', 'Client', 'Christoper Reyes', 'active', 'chrisreyes@gmail.com', 5, NULL),
(6, 'studuser1', 'userpass1', 'Client', 'Peter Parker', 'active', 'peterparker@gmail.com', NULL, 1),
(7, 'studuser2', 'userpass2', 'Client', 'Kent Clark', 'active', 'kentclark@gmail.com', NULL, 2),
(8, 'studuser3', 'userpass3', 'Client', 'Marielle Coronel', 'active', 'mariellecoronel@gmail.com', NULL, 3),
(9, 'studuser4', 'userpass4', 'Client', 'Yukari San Pablo', 'active', 'yukarisanpablo@gmail.com', NULL, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
