-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2023 at 09:11 AM
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
-- Table structure for table `tbdepacc`
--

DROP TABLE IF EXISTS `tbdepacc`;
CREATE TABLE IF NOT EXISTS `tbdepacc` (
  `deptUserID` int NOT NULL AUTO_INCREMENT,
  `deptUserN` char(50) DEFAULT NULL,
  `deptUserPass` char(50) DEFAULT NULL,
  `deptName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`deptUserID`),
  KEY `tbadmin_ibfk_2` (`deptName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbdepacc`
--

INSERT INTO `tbdepacc` (`deptUserID`, `deptUserN`, `deptUserPass`, `deptName`) VALUES
(1, 'Cics1', 'CICS123', 'CICS'),
(2, 'Cabe1', 'CABE123', '2'),
(3, 'Cas1', 'CAS123', '4'),
(4, 'Cit1', 'CIT123', '3'),
(5, 'Cics2', 'Cics123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbdepartment`
--

DROP TABLE IF EXISTS `tbdepartment`;
CREATE TABLE IF NOT EXISTS `tbdepartment` (
  `deptName` varchar(25) NOT NULL,
  PRIMARY KEY (`deptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbdepartment`
--

INSERT INTO `tbdepartment` (`deptName`) VALUES
('CABE'),
('CAS'),
('CICS'),
('CIT');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'Reyes', 'Jones', 'Cics');

-- --------------------------------------------------------

--
-- Table structure for table `tbeventdetail`
--

DROP TABLE IF EXISTS `tbeventdetail`;
CREATE TABLE IF NOT EXISTS `tbeventdetail` (
  `eventId` int NOT NULL AUTO_INCREMENT,
  `eventWhere` char(50) DEFAULT NULL,
  `eventWhen` char(50) DEFAULT NULL,
  `eventWhat` char(50) DEFAULT NULL,
  `eventWho` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`eventId`),
  KEY `deptId_fk` (`eventWho`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbeventdetail`
--

INSERT INTO `tbeventdetail` (`eventId`, `eventWhere`, `eventWhen`, `eventWhat`, `eventWho`) VALUES
(1, 'BSU LIPA CAMPUS', 'December 1,2023', 'CICS Week', 'All Students');

-- --------------------------------------------------------

--
-- Table structure for table `tbeventview`
--

DROP TABLE IF EXISTS `tbeventview`;
CREATE TABLE IF NOT EXISTS `tbeventview` (
  `srCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `section` varchar(25) DEFAULT NULL,
  `deptName` varchar(50) DEFAULT NULL,
  `eventWhat` varchar(50) DEFAULT NULL,
  `evdate` date DEFAULT NULL,
  `evtime` time DEFAULT NULL,
  KEY `section` (`section`),
  KEY `eventWhat` (`eventWhat`),
  KEY `deptName` (`deptName`),
  KEY `srCode` (`srCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbeventview`
--

INSERT INTO `tbeventview` (`srCode`, `section`, `deptName`, `eventWhat`, `evdate`, `evtime`) VALUES
('21-34890', 'SM-3101', 'CICS', 'CICS Week', '2023-11-22', '04:58:02'),
('21-37506', 'SM-3101', 'CICS', 'CICS Week', '2023-11-22', '05:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbsecurity`
--

DROP TABLE IF EXISTS `tbsecurity`;
CREATE TABLE IF NOT EXISTS `tbsecurity` (
  `adminId` int NOT NULL,
  `adminUserN` varchar(25) DEFAULT NULL,
  `adminPass` varchar(25) DEFAULT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`adminId`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbsecurity`
--

INSERT INTO `tbsecurity` (`adminId`, `adminUserN`, `adminPass`, `empid`) VALUES
(0, 'Admin1', 'Admin111', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudent`
--

DROP TABLE IF EXISTS `tbstudent`;
CREATE TABLE IF NOT EXISTS `tbstudent` (
  `srCode` varchar(25) NOT NULL,
  `studPass` varchar(50) DEFAULT NULL,
  `deptName` varchar(50) DEFAULT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`srCode`),
  KEY `studid` (`studid`),
  KEY `deptName` (`deptName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`srCode`, `studPass`, `deptName`, `studid`) VALUES
('21-34890', '123', 'CICS', 3),
('21-36550', '123', 'CICS', 5),
('21-37506', '123', 'CICS', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs'),
(3, 'Roxas', 'Kent', 'bsit'),
(4, 'Custodio', 'Juliana Beatriz', 'bsit'),
(5, 'Lasay', 'John Lloyd', 'bsit');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbeventview`
--
ALTER TABLE `tbeventview`
  ADD CONSTRAINT `tbeventview_ibfk_2` FOREIGN KEY (`deptName`) REFERENCES `tbdepartment` (`deptName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbeventview_ibfk_3` FOREIGN KEY (`srCode`) REFERENCES `tbstudent` (`srCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbsecurity`
--
ALTER TABLE `tbsecurity`
  ADD CONSTRAINT `tbsecurity_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `tbempinfo` (`empid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD CONSTRAINT `tbstudent_ibfk_1` FOREIGN KEY (`studid`) REFERENCES `tbstudinfo` (`studid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbstudent_ibfk_2` FOREIGN KEY (`deptName`) REFERENCES `tbdepartment` (`deptName`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
