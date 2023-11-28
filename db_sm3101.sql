-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 02:37 AM
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
