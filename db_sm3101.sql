-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 12:49 PM
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
-- Table structure for table `admin_tbl`
--

DROP TABLE IF EXISTS `admin_tbl`;
CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `empid` int NOT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `empid`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `categoryName`, `categoryDescription`, `creationDate`) VALUES
(1, 'Plagiarism', 'Cheating', '2023-11-06 16:31:21'),
(2, 'Not Teaching', 'The teacher is not attending the class.', '2023-11-06 16:31:42'),
(3, 'Cheating', 'Caught my classmate open their notes during examination.', '2023-11-06 16:31:58'),
(4, 'Humiliation', 'The teacher makes an embarrassing comment about me.', '2023-10-25 01:37:54'),
(5, 'Dishonesty', 'With regard to examination-related cheating and plagiarism on written assignments and papers.', '2023-10-25 01:38:42'),
(6, 'Other', 'Please specify the complaint category if not already mentioned. Your input is essential for a more accurate resolution.', '2023-11-16 03:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_remark`
--

DROP TABLE IF EXISTS `complaint_remark`;
CREATE TABLE IF NOT EXISTS `complaint_remark` (
  `complaint_id` int NOT NULL AUTO_INCREMENT,
  `complaintNumber` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaint_id`),
  KEY `complaintNumber` (`complaintNumber`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `complaint_remark`
--

INSERT INTO `complaint_remark` (`complaint_id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'pending', 'pending', '2023-10-25 00:23:14'),
(2, 2, 'Closed', 'Complaint has been resolved', '2023-11-23 12:46:51'),
(3, 3, 'In Process', 'complaint is in process', '2023-11-23 12:46:51'),
(4, 4, '', 'complaint is Pending', '2023-11-23 12:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `tablecomplaints`
--

DROP TABLE IF EXISTS `tablecomplaints`;
CREATE TABLE IF NOT EXISTS `tablecomplaints` (
  `complaintNumber` int NOT NULL AUTO_INCREMENT,
  `sr-code` int NOT NULL,
  `category_id` int NOT NULL,
  `complaintName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `complaintDetails` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `complaintFile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaintNumber`),
  KEY `sr-code` (`sr-code`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tablecomplaints`
--

INSERT INTO `tablecomplaints` (`complaintNumber`, `sr-code`, `category_id`, `complaintName`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 5, 'Complaint for Student', 'The students are lying', 'db_sm3101.sql', '2023-11-23 12:41:40', NULL, '0000-00-00 00:00:00'),
(2, 1, 3, 'Complaint for Student', 'caught someone cheating while answering an exam', '', '2023-11-23 12:42:05', NULL, '0000-00-00 00:00:00'),
(3, 3, 3, 'Complaint for Student', 'someone is using phone during exam', 'db_sm3101.sql', '2023-11-23 12:43:15', NULL, '0000-00-00 00:00:00'),
(4, 3, 4, 'Complaint for Teachers', 'the teacher humiliated me infront of other teachers', '', '2023-11-23 12:44:03', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbempcontact`
--

DROP TABLE IF EXISTS `tbempcontact`;
CREATE TABLE IF NOT EXISTS `tbempcontact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empid` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` bigint NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempcontact`
--

INSERT INTO `tbempcontact` (`id`, `empid`, `password`, `email`, `contact_no`, `address`) VALUES
(1, 2, '1253208465b1efa876f982d8a9e73eef', 'balazon@gmail.com', 9123456789, 'Lipa City, Batangas'),
(2, 1, 'nina', 'nina@gmail.com', 9123456789, 'Batangas'),
(3, 3, 'sulit', 'sulit@gmail.com', 9123456789, 'Batangas'),
(4, 4, 'angeline', 'angeline@gmail.com', 9123456789, 'Batangas'),
(5, 5, 'dionne', 'dionne@gmail.com', 9123456789, 'Batangas'),
(6, 6, 'jonah', 'jonah@gmail.com', 9123456789, 'Batngas');

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
(2, 'Balazon', 'Francis', 'CICS'),
(3, 'Sulit', 'Richelle', 'CICS'),
(4, 'Libunao', 'Angeline', 'CICS'),
(5, 'Alimoren', 'Dionne', 'CICS'),
(6, 'Melo', 'Jonah', 'CICS');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudcontact`
--

DROP TABLE IF EXISTS `tbstudcontact`;
CREATE TABLE IF NOT EXISTS `tbstudcontact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studid` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` bigint NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudcontact`
--

INSERT INTO `tbstudcontact` (`id`, `studid`, `password`, `email`, `contact_no`, `address`) VALUES
(1, 3, '10c7ccc7a4f0aff03c915c485565b9da', 'ryan@gmail.com', 9123456789, 'Cuenca, Batangas'),
(2, 4, 'evers', 'evers@gmail.com', 9123456789, 'Lipa City'),
(3, 5, 'ebe6941ee8a10c14dc933ae37a0f43fc', 'jenny@gmail.com', 9123456789, 'Santa Terisita'),
(4, 6, 'jella', 'jella@gmail.com', 9123456789, 'Lipa City'),
(5, 7, 'eka', 'erika@gmail.com', 9123456789, 'Quezon');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs'),
(3, 'Ramos', 'Ryan', 'BSIT'),
(4, 'Dimaculangan', 'Everson', 'BSIT'),
(5, 'Gabuya', 'Jenny Mae', 'BSIT'),
(6, 'Peloramas', 'Jelladane', 'BSIT'),
(7, 'Magnaye', 'Erika', 'BSIT');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
