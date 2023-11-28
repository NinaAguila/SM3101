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

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 09:17 AM
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
-- Table structure for table `employee_rgo`
--

DROP TABLE IF EXISTS `employee_rgo`;
CREATE TABLE IF NOT EXISTS `employee_rgo` (
  `empid` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` longblob NOT NULL,
  `pass` varchar(255) NOT NULL,
  `type` enum('staff','admin') NOT NULL,
  PRIMARY KEY (`code`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee_rgo`
--

INSERT INTO `employee_rgo` (`empid`, `code`, `email`, `img`, `pass`, `type`) VALUES
(2, '1122', 'james@gmail.com', '', '123123', 'admin'),
(3, '123123', 'brawn@gmail.com', '', '123123', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `Item_ID` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'NONE',
  `img` longblob NOT NULL,
  PRIMARY KEY (`Item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_ID`, `item`, `price`, `size`, `img`) VALUES
(1, 'Blouse', '359.00', 'Small', ''),
(3, 'Blouse', '380.00', 'Medium', ''),
(4, 'Blouse', '395.00', 'Large', ''),
(5, 'Blouse', '450.00', 'Custom', ''),
(6, 'Barong', '350.00', 'Small', ''),
(7, 'Barong', '350.00', 'Medium', ''),
(8, 'Barong', '400.00', 'Large', ''),
(9, 'Barong', '440.00', 'Custom', ''),
(11, 'Pants', '380.00', 'Small', ''),
(12, 'Pants', '390.00', 'Medium', ''),
(13, 'Pants', '465.00', 'Large', ''),
(14, 'Skirt', '320.00', 'Small', ''),
(15, 'Skirt', '355.00', 'Medium', ''),
(16, 'Skirt', '450.00', 'Large', ''),
(17, 'notebook', '99.00', 'NONE', ''),
(18, 'tumbler', '99.00', 'NONE', ''),
(19, 'mug', '99.00', 'NONE', ''),
(20, 'id_lace', '99.00', 'NONE', ''),
(22, 'Pants', '550.00', 'Custom', ''),
(23, 'Skirt', '550.00', 'Custom', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Item_ID` int NOT NULL,
  `statuss` enum('Ready for Pickup','Pending','Recieved') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Pending',
  `Date_Ordered` date NOT NULL,
  `Date_Recieved` date NOT NULL,
  `stud_code` int NOT NULL,
  `em_code` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Item_ID` (`Item_ID`),
  KEY `stud_code` (`stud_code`),
  KEY `em_code` (`em_code`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Item_ID`, `statuss`, `Date_Ordered`, `Date_Recieved`, `stud_code`, `em_code`, `quantity`) VALUES
(117, 6, 'Recieved', '2023-11-22', '2023-11-22', 1, 3, 2),
(118, 12, 'Ready for Pickup', '2023-11-22', '0000-00-00', 1, 3, 2),
(119, 18, 'Pending', '2023-11-23', '0000-00-00', 1, 3, 1),
(120, 19, 'Pending', '2023-11-23', '0000-00-00', 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_rgo`
--

DROP TABLE IF EXISTS `student_rgo`;
CREATE TABLE IF NOT EXISTS `student_rgo` (
  `studid` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` mediumblob NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`code`),
  KEY `studid` (`studid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_rgo`
--

INSERT INTO `student_rgo` (`studid`, `code`, `img`, `pass`) VALUES
(1, '21-123123', '', '123'),
(2, '21-321321', '', '12345');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'James', 'Lebron', 'RGO'),
(3, 'Brawn', 'Kris', 'RGO');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'kent', 'clark', 'bscs');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_rgo`
--
ALTER TABLE `employee_rgo`
  ADD CONSTRAINT `employee_rgo_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `tbempinfo` (`empid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Item_ID`) REFERENCES `item` (`Item_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`stud_code`) REFERENCES `student_rgo` (`studid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`em_code`) REFERENCES `employee_rgo` (`empid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `student_rgo`
--
ALTER TABLE `student_rgo`
  ADD CONSTRAINT `student_rgo_ibfk_1` FOREIGN KEY (`studid`) REFERENCES `tbstudinfo` (`studid`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 08:51 AM
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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CONTACT` varchar(50) DEFAULT NULL,
  `SYMPTOM` varchar(50) DEFAULT NULL,
  `PRESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE` date NOT NULL,
  `empid` int DEFAULT NULL,
  `studid` int DEFAULT NULL,
  `incharge_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `empid` (`empid`),
  KEY `studid` (`studid`),
  KEY `incharge_id` (`incharge_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `CONTACT`, `SYMPTOM`, `PRESCRIPTION`, `DATE`, `empid`, `studid`, `incharge_id`) VALUES
(1, '0912432452', 'flu', 'Biogesic', '2023-11-01', 1, 0, 1),
(2, '09912345123', 'asthma', 'Rest', '2023-11-02', 0, 1, 2),
(3, '09912345123', 'lagnat', 'Biogesic', '2023-11-03', 2, 0, 3),
(4, '09084124433', 'Headache', 'Biogesic', '2023-11-08', 0, 2, 1),
(5, '0912432452', 'Sore Eyes', 'Go Home', '2023-11-09', 3, 0, 2),
(6, '09084124433', 'Flu', 'Bioflu', '2023-11-11', 0, 3, 4),
(7, '0908087709', 'Rashes', 'Ointment', '2023-11-11', 4, 0, 3),
(8, '09084124433', 'Flu', 'Biogesic', '0000-00-00', 0, 4, 2),
(9, '0908087709', 'lagnat', 'Rest', '2023-11-13', 0, 5, 3),
(10, '09084124433', 'Headache', 'Biogesic', '2023-11-14', 5, 0, 1);

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
(6, 'Trafalgar', 'Law', 'cabe'),
(7, 'macalintal', 'kyla', 'cics'),
(8, 'venerable', 'mike', 'cics'),
(9, 'tenoso', 'chrizelle', 'cics'),
(10, 'aranas', 'kyhel', 'cabe');

-- --------------------------------------------------------

--
-- Table structure for table `tbincharge`
--

DROP TABLE IF EXISTS `tbincharge`;
CREATE TABLE IF NOT EXISTS `tbincharge` (
  `incharge_id` int NOT NULL AUTO_INCREMENT,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`incharge_id`),
  KEY `empid` (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbincharge`
--

INSERT INTO `tbincharge` (`incharge_id`, `empid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

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
  `incharge_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incharge_id` (`incharge_id`),
  CONSTRAINT `fk_incharge_id` FOREIGN KEY (`incharge_id`) REFERENCES `tbincharge` (`incharge_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`id`, `username`, `password`, `incharge_id`) VALUES
(1, 'aguila', 'hashed_password_1', 1),
(2, 'dimaala', 'hashed_password_2', 2),
(3, 'mendoza', 'hashed_password_3', 3),
(4, 'dimaandal', 'hashed_password_4', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 01:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL,
  `CONTACT` varchar(50) DEFAULT NULL,
  `SYMPTOM` varchar(50) DEFAULT NULL,
  `PRESCRIPTION` varchar(255) DEFAULT NULL,
  `DATE` date NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `studid` int(11) DEFAULT NULL,
  `incharge_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `CONTACT`, `SYMPTOM`, `PRESCRIPTION`, `DATE`, `empid`, `studid`, `incharge_id`) VALUES
(1, '0912432452', 'Fever', 'Biogesic', '2023-11-01', 0, 1, 11),
(2, '09912345123', 'Asthma', 'Consult Specialist', '2023-11-02', 0, 2, 11),
(3, '09912345123', 'Flu', 'Biogesic', '2023-11-03', 0, 3, 11),
(4, '09084124433', 'Headache', 'Biogesic', '2023-11-04', 1, 0, 11),
(5, '0912432452', 'Sore Eyes', 'Go Home', '2023-11-05', 2, 0, 11),
(6, '09084124433', 'Flu', 'Bioflu', '2023-11-06', 3, 0, 12),
(7, '0908087709', 'Rashes', 'Ointment', '2023-11-07', 0, 4, 12),
(8, '09084124433', 'Flu', 'Biogesic', '2023-11-08', 0, 5, 12),
(9, '09080877091', 'Migrane', 'Rest', '2023-11-09', 0, 6, 12),
(10, '09084124433', 'Headache', 'Biogesic', '2023-11-10', 4, 0, 12),
(11, '09922925447', 'Heache', 'Biogesic', '2023-11-11', 5, 0, 13),
(12, '09579342821', 'Puyat', 'Rest ', '2023-11-12', 6, 0, 13),
(13, '09876546784', 'Fever', 'Bioflu', '2023-11-13', 0, 7, 13),
(14, '09648392719', 'Heache', 'Biogesic', '2023-11-14', 0, 8, 13),
(15, '09922925447', 'TLC', 'Sleep ', '2023-11-15', 0, 9, 13),
(16, '09579342821', 'Migrane', 'Sleep ', '2023-11-16', 7, 0, 14),
(17, '09579342821', 'Sleep-deprived', 'Sleep ', '2023-11-17', 8, 0, 14),
(18, '09876545632', 'TLC', 'Rest', '2023-11-18', 9, 0, 14),
(19, '09579342821', 'Nose bleed', 'Rest ', '2023-11-19', 0, 10, 14),
(20, '09922925440', 'TLC', 'Sleeping', '2023-11-20', 10, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

CREATE TABLE `tbempinfo` (
  `empid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'Reyes', 'Christopher', 'cics'),
(3, 'Sulit', 'Richelle', 'cics'),
(4, 'Suarez', 'Aileen', 'cics'),
(5, 'Caibigan', 'Ritchie', 'cics'),
(6, 'Sambitan', 'Krystel', 'cics'),
(7, 'Labiaga', 'Elenor', 'cics'),
(8, 'Libunao', 'Angelene', 'cics'),
(9, 'Bayyou', 'Demeke', 'cics'),
(10, 'Tumbaga', 'Jennelyn', 'cics'),
(11, 'Pratts', 'Dr. Camille', 'cics'),
(12, 'Guismundo', 'Dr. Marielle', 'cics'),
(13, 'Corpuz', 'Dr. Francisco', 'cics'),
(14, 'Balita', 'Dr. Eric', 'cics');
-- --------------------------------------------------------

--
-- Table structure for table `tbincharge`
--

CREATE TABLE `tbincharge` (
  `incharge_id` int(11) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbincharge`
--

INSERT INTO `tbincharge` (`incharge_id`, `empid`) VALUES
(11, 11),
(12, 12),
(13, 13),
(14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

CREATE TABLE `tbstudinfo` (
  `studid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'bsit'),
(2, 'Tipan', 'Savior ', 'bsit'),
(3, 'Tenoso', 'Chrizelle', 'bsit'),
(4, 'Macalintal', 'Kyla', 'bsit'),
(5, 'Magpantay', 'Angelo', 'bsit'),
(6, 'Manalo', 'Ryan', 'bsit'),
(7, 'Encarnado', 'Mel', 'bsit'),
(8, 'Venerable', 'Mike', 'bsit'),
(9, 'Orense', 'Jon', 'bsit'),
(10, 'Torres', 'Michael', 'bsit');

-- --------------------------------------------------------

--
-- Table structure for table `tbusers`
--

CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `incharge_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`id`, `username`, `password`, `incharge_id`) VALUES
(1, 'camille', '123', 11),
(2, 'marie', '345', 12),
(3, 'fran', '222', 13),
(4, 'eric', '6678', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `empid` (`empid`),
  ADD KEY `studid` (`studid`),
  ADD KEY `incharge_id` (`incharge_id`);

--
-- Indexes for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `tbincharge`
--
ALTER TABLE `tbincharge`
  ADD PRIMARY KEY (`incharge_id`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  ADD PRIMARY KEY (`studid`);

--
-- Indexes for table `tbusers`
--
ALTER TABLE `tbusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incharge_id` (`incharge_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbincharge`
--
ALTER TABLE `tbincharge`
  MODIFY `incharge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  MODIFY `studid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbusers`
--
ALTER TABLE `tbusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
