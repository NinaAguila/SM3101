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
