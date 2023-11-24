-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 24, 2023 at 09:28 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;

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
  `studid` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  PRIMARY KEY (`studid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;

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

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2023 at 09:15 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(15, '25-04390', '2023-11-13 10:29:00', 'Haircut/Color', 'Loud hair color', 'Written Warning');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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
-- Generation Time: Nov 24, 2023 at 05:57 AM
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
-- Table structure for table `tbitems`
--

DROP TABLE IF EXISTS `tbitems`;
CREATE TABLE IF NOT EXISTS `tbitems` (
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
-- Dumping data for table `tbitems`
--

INSERT INTO `tbitems` (`ItemID`, `ItemName`, `ItemDescription`, `DateTime`, `Location`, `Status`, `Category`, `ReportedBy`, `Image`) VALUES
(1, 'Lost Phone', 'Black smartphone with cracked screen.', '2023-10-01 10:30:00', 'Library', 'Lost', 'Electronics', 3, 'phone.jpg'),
(2, 'Lost Backpack', 'Red backpack with textbooks and a laptop.', '2023-10-02 15:45:00', 'Cafeteria', 'Lost', 'Bags', 4, 'backpack.jpg'),
(3, 'Lost Keys', 'Set of house and car keys.', '2023-10-03 08:15:00', 'Parking Lot', 'Found', 'Keys', 5, 'keys.jpg'),
(4, 'Lost Wallet', 'Brown leather wallet with cash and ID.', '2023-10-04 17:20:00', 'Gym', 'Lost', 'Wallets', 6, 'wallet.jpg'),
(5, 'Umbrella', 'Blue umbrella with a pattern.', '2023-10-05 12:00:00', 'Bus Stop', 'Claimed', 'Accessories', 7, 'umbrella.jpg');

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
  `ReportName` varchar(255) DEFAULT NULL,
  `ReportDescription` text,
  `DateTime` datetime DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `ReportedBy` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ReportID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbreports`
--

INSERT INTO `tbreports` (`ReportID`, `ReportName`, `ReportDescription`, `DateTime`, `Location`, `Category`, `ReportedBy`, `Image`) VALUES
(1, 'Lost Watch', 'Gold wristwatch with a leather strap', '2023-11-01 15:45:00', 'Library', 'Accessories', 'Eva Johnson', 'watch.jpg'),
(2, 'Found Umbrella', 'Red umbrella left near the entrance', '2023-11-05 11:30:00', 'CECS Building', 'Accessories', 'Mark Anderson', 'umbrella.jpg'),
(3, 'Missing Glasses', 'Black rectangular eyeglasses', '2023-11-10 14:00:00', 'HEB Building', 'Accessories', 'Sophia Lee', 'glasses.jpg'),
(4, 'Lost Laptop Charger', 'Dell laptop charger with a black cable', '2023-11-12 16:15:00', 'Facade', 'Electronics', 'Daniel Williams', 'charger.jpg'),
(5, 'Found Wallet', 'Brown leather wallet with credit cards', '2023-11-15 13:50:00', 'Comfort Room', 'Personal Items', 'Olivia Taylor', 'wallet.jpg'),
(6, 'Missing Backpack', 'Gray backpack with a laptop inside', '2023-11-18 09:30:00', 'Library', 'Bags', 'Benjamin Davis', 'backpack.jpg'),
(7, 'Lost ID Badge', 'Company ID badge with a blue lanyard', '2023-11-20 10:00:00', 'CECS Building', 'Accessories', 'Emma Wilson', 'badge.jpg'),
(8, 'Found Bicycle', 'Blue mountain bike near the bike rack', '2023-11-22 14:45:00', 'HEB Building', 'Sports Equipment', 'Liam Martinez', 'bike.jpg'),
(9, 'Missing Wallet', 'Green wallet with driver\'s license', '2023-11-25 12:30:00', 'Facade', 'Personal Items', 'Aiden Brown', 'green_wallet.jpg'),
(10, 'Found Headphones', 'Wireless headphones in a black case', '2023-11-28 15:20:00', 'Comfort Room', 'Electronics', 'Mia Davis', 'headphones.jpg');

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
  `userid` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(14, 'guard_user1', 'guardpass1', 'guard', 'active', 'guarduser1@gmail.com', 14, NULL),
(15, 'guard_user2', 'guardpass2', 'guard', 'active', 'guarduser2@gmail.com', 15, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 07:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

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
-- Table structure for table `tbcomplogs`
--

CREATE TABLE `tbcomplogs` (
  `log_id` int(11) NOT NULL,
  `sr_code` int(10) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `timein` time NOT NULL,
  `logdate` date NOT NULL,
  `ipaddress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcomplogs`
--

INSERT INTO `tbcomplogs` (`log_id`, `sr_code`, `firstname`, `lastname`, `course`, `section`, `timein`, `logdate`, `ipaddress`) VALUES
(1, 2138415, 'mike rhon vincent', 'venerable', 'BSIT', 'SM-3101', '17:21:22', '2023-11-23', '192.168.1.19'),
(2, 2133771, 'kyla', 'macalintal', 'BSIT', 'SM-3101', '15:23:22', '2023-11-20', '192.168.1.21'),
(3, 2139770, 'michael jericho', 'torres', 'BSIT', 'SM-3101', '15:19:22', '2023-11-18', '192.168.1.18'),
(4, 2135125, 'chrizelle marie', 'tenoso', 'BSIT', 'SM-3101', '17:21:22', '2023-11-23', '192.168.1.13');

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

CREATE TABLE `tbempinfo` (
  `empid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'CICS'),
(2, 'sulit', 'richelle', 'CICS');

-- --------------------------------------------------------

--
-- Table structure for table `tbemployee`
--

CREATE TABLE `tbemployee` (
  `empid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contact` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbemployee`
--

INSERT INTO `tbemployee` (`empid`, `username`, `email`, `contact`, `password`) VALUES
(1, 'nina123', 'ninaaguila@gmail.com', 912345678, 'aguila123'),
(2, 'richelle123', 'richellesulit@gmail.com', 912345677, 'sulit123');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudent`
--

CREATE TABLE `tbstudent` (
  `studid` int(11) NOT NULL,
  `srcode` int(10) NOT NULL,
  `section` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`studid`, `srcode`, `section`, `password`) VALUES
(1, 2138415, 'SM-3101', 'venerable123'),
(2, 2133771, 'SM-3101', 'macalintal123'),
(3, 2139770, 'SM-3101', 'torres123'),
(4, 2135125, 'SM-3101', 'tenoso123');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

CREATE TABLE `tbstudinfo` (
  `studid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'venerable', 'mike rhon vincent', 'BSIT'),
(2, 'macalintal', 'kyla', 'BSIT'),
(3, 'torres', 'michael jericho', 'BSIT'),
(4, 'tenoso', 'chrizelle marie', 'BSIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbcomplogs`
--
ALTER TABLE `tbcomplogs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD PRIMARY KEY (`studid`);

--
-- Indexes for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  ADD PRIMARY KEY (`studid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbcomplogs`
--
ALTER TABLE `tbcomplogs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  MODIFY `studid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD CONSTRAINT `tbemployee_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `tbempinfo` (`empid`);

--
-- Constraints for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD CONSTRAINT `tbstudent_ibfk_1` FOREIGN KEY (`studid`) REFERENCES `tbstudinfo` (`studid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
