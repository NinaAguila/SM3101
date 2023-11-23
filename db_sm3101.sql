-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 01:36 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(6, 'alimoren', 'dioneces', 'cics'),
(11, 'admin', 'one', 'security'),
(12, 'admin', 'two', 'security'),
(13, 'guard', 'one', 'security'),
(14, 'guard', 'two', 'security'),
(15, 'admin ', 'three', 'security');

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
  `section` varchar(25) DEFAULT NULL,
  `deptName` varchar(25) DEFAULT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`srCode`),
  KEY `deptName` (`deptName`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`srCode`, `section`, `deptName`, `studid`) VALUES
('21-34890', 'SM-3101', 'CICS', 2),
('21-37506', 'SM-3101', 'CICS', 3);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306

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


--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306

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

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),


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


--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs'),

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306

-- Generation Time: Nov 21, 2023 at 10:30 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(6, 'alimoren', 'dioneces', 'cics'),
(11, 'admin', 'one', 'security'),
(12, 'admin', 'two', 'security'),
(13, 'guard', 'one', 'security'),
(14, 'guard', 'two', 'security'),
(15, 'admin ', 'three', 'security');

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
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `empid` int DEFAULT NULL,
  `studid` int DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `empid` (`empid`),
  KEY `studid` (`studid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`userid`, `username`, `password`, `usertype`, `status`, `email`, `empid`, `studid`) VALUES
(1, 'nina_aguila', 'empaguila111', 'client', 'active', 'ninaaguila@gmail.com', 1, NULL),
(2, 'angeline_libunao', 'emplibunao222', 'client', 'active', 'libunaoange@gmail.com', 2, NULL),
(3, 'aileen_suarez', 'empsuarez333', 'client', 'active', 'aileensuarez@gmail.com', 3, NULL),
(4, 'richelle_sulit', 'empsulit444', 'client', 'active', 'richellesulit@gmail.com', 4, NULL),
(5, 'chris_reyes', 'empreyes555', 'client', 'active', 'chrisreyes@gmail.com', 5, NULL),
(6, 'peter_parker', 'userpass6', 'client', 'active', 'ninaaguila@gmail.com', NULL, 1),
(7, 'kent_clark', 'userpass7', 'client', 'active', 'ninaaguila@gmail.com', NULL, 2),
(8, 'coronel_marielle', 'userpass8', 'client', 'active', 'coronelmarielle@gmail.com', NULL, 3),
(9, 'yukari_sanpablo', 'userpass9', 'client', 'active', 'yukarisanpablo@gmail.com', NULL, 4),
(10, 'bea_custodio', 'userpass10', 'client', 'active', 'custodiobea@gmail.com', NULL, 5),
(11, 'admin_user1', 'adminpass1', 'admin', 'active', 'adminuser1@gmail.com', 11, NULL),
(12, 'admin_user2', 'adminpass2', 'admin', 'active', 'adminuser2@gmail.com', 12, NULL),
(13, 'admin_user3', 'adminpass3', 'admin', 'active', 'adminuser3@gmail.com', 13, NULL),
(14, 'guard_user1', 'guarduser1', 'guard', 'active', 'guarduser1@gmail.com', 14, NULL),
(15, 'guard_user2', 'guarduser2', 'guard', 'active', 'guarduser2@gmail.com', 15, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
