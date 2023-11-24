-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2023 at 09:57 AM
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
  `size` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Item_ID` (`Item_ID`),
  KEY `stud_code` (`stud_code`),
  KEY `em_code` (`em_code`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Item_ID`, `statuss`, `Date_Ordered`, `Date_Recieved`, `stud_code`, `em_code`, `size`, `quantity`, `price`) VALUES
(117, 6, 'Recieved', '2023-11-22', '2023-11-22', 1, 3, 'Small', 2, 700),
(118, 12, 'Ready for Pickup', '2023-11-22', '0000-00-00', 1, 3, 'Medium', 2, 780),
(119, 18, 'Pending', '2023-11-23', '0000-00-00', 1, 3, 'NONE', 1, 0),
(120, 19, 'Pending', '2023-11-23', '0000-00-00', 1, 3, 'NONE', 2, 0);

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
-- Constraints for table `student_rgo`
--
ALTER TABLE `student_rgo`
  ADD CONSTRAINT `student_rgo_ibfk_1` FOREIGN KEY (`studid`) REFERENCES `tbstudinfo` (`studid`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

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
--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Item_ID`) REFERENCES `item` (`Item_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`stud_code`) REFERENCES `student_rgo` (`studid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`em_code`) REFERENCES `employee_rgo` (`empid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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