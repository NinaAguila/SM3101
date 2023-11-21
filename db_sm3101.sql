-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 03:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(30) NOT NULL,
  `SRCODE` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `CONTACT` varchar(255) NOT NULL,
  `SYMPTOM` varchar(255) NOT NULL,
  `PRESCRIPTION` varchar(255) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `SRCODE`, `NAME`, `CONTACT`, `SYMPTOM`, `PRESCRIPTION`, `DATE`) VALUES
(1, '21-12345', 'Mel Encarnado', '092784138931', 'Headache', 'Biogesic', '2023-11-10'),
(2, '21-56787', 'Kyla Macalintal', '09658628295', 'Eye Bags', 'Sleep', '2012-04-05'),
(3, '21-32380', 'Ryan Manalo', '0964839271', 'Fever/ Lagnat', 'Bioflu', '2023-11-10'),
(4, '21-12345', 'Mel Encarnado', '09648392712', 'Puyat', 'Sleep ', '2023-11-10'),
(5, '21-24689', 'Bea Manalo', '098765456328', 'Fever/ Lagnat', 'Bioflu', '2023-11-10'),
(6, '21-33388', 'Savior Tipan', '09922925447', 'Heache', 'Matulog', '2023-11-10'),
(7, '21-33388', 'Christian Orense', '0946567980', 'Headache', 'Biogesic', '2023-11-15'),
(8, '21-21312', 'Angelo Magpantay', '09534566575', 'Fever', 'Dolfenal', '2002-03-15'),
(9, '21-67898', 'Michael Torres', '09577846513', 'Sore Eyes', 'Rest ', '2005-04-15'),
(10, '21-32380', 'Ryan Manalo', '0964839271', 'Fever/ Lagnat', 'Bioflu', '2023-11-16'),
(11, '21-35671', 'Claire Phil', '0964872901', 'Fever/ Lagnat', 'Bioflu', '2023-11-17'),
(12, '21-97895', 'Chris Griffin', '0964872901', 'Sore Eyes', 'Rest', '2023-11-17'),
(13, '21-97895', 'Chris Griffin', '0964872901', 'Sore Eyes', 'Rest', '2023-11-17'),
(14, '21-12345', 'Mel Encarnado', '09648392712', 'Puyat', 'Sleep ', '2023-11-18'),
(15, '21-33388', 'Christian Orense', '0946567980', 'Headache', 'Biogesic', '2023-11-19'),
(16, '21-12345', 'Mel Encarnado', '092784138931', 'Headache', 'Biogesic', '2023-11-20'),
(17, '21-33388', 'Savior Tipan', '09922925447', 'Heache', 'Matulog', '2023-11-20'),
(18, '21-24689', 'Bea Manalo', '098765456328', 'Fever/ Lagnat', 'Bioflu', '2023-11-21'),
(19, '21-67898', 'Michael Torres', '09577846513', 'Sore Eyes', 'Rest ', '2023-11-22'),
(20, '21-35671', 'Claire Phil', '0964872901', 'Fever/ Lagnat', 'Bioflu', '2023-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

CREATE TABLE `tbempinfo` (
  `empid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics'),
(2, 'dimaala', 'ayen', 'cabe'),
(3, 'mendoza', 'paul', 'cas'),
(4, 'dimaandal', 'roy', 'cics'),
(5, 'esperanza', 'shane', 'cabe'),
(6, 'esperanza', 'shane', 'cabe'),
(7, 'macalintal', 'kyla', 'cics'),
(8, 'venerable', 'mike', 'cics'),
(9, 'tenoso', 'chrizelle', 'cics'),
(10, 'aranas', 'kyhel', 'cabe');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

CREATE TABLE `tbstudinfo` (
  `studid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  ADD PRIMARY KEY (`studid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  MODIFY `studid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
