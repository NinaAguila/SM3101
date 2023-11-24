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
  KEY `incharge_id` (`incharge_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`id`, `username`, `password`, `incharge_id`) VALUES
(1, 'aguila', '123', 1),
(2, 'dimaala', '345', 2),
(3, 'mendoza', '222', 3),
(4, 'dimaandal', '6678', 4);
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
