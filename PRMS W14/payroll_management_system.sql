-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 03:14 PM
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
-- Database: `payroll_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_login`
--

CREATE TABLE `db_login` (
  `EmpID` int(11) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Dob` date NOT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `Contact` bigint(50) DEFAULT NULL,
  `Password` int(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Jobtitle` varchar(200) NOT NULL,
  `Datehired` date NOT NULL,
  `Bio` varchar(500) NOT NULL,
  `Securityquestion` varchar(200) NOT NULL,
  `Basicsalary` int(100) NOT NULL,
  `Answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_login`
--

INSERT INTO `db_login` (`EmpID`, `FullName`, `Gender`, `Dob`, `UserName`, `Email`, `Contact`, `Password`, `Address`, `Jobtitle`, `Datehired`, `Bio`, `Securityquestion`, `Basicsalary`, `Answer`) VALUES
(11111, 'admin admin', 'Male', '2023-10-29', 'jaimes', '09213336610', 123456789, 12345, 'sa tabi lang', 'Systems Admin', '2023-10-04', '', 'question1', 1231313, 'Demi'),
(12345, 'Admin', 'Male', '2023-11-15', 'Admin', 'Admin', 9123456789, 12345, 'Admin', 'Systems Admin', '2023-11-15', 'Admin', 'Admin', 12345566, 'Admin'),
(220033, 'Norber Cabasag', 'Female', '2023-11-15', 'norbe', 'Admin', 9123456789, 1234, 'sa tabi lang', 'Systems Admin', '2023-11-15', 'Hi I\'m Jaimes and I\'m the systems admin of this software.', 'question1', 50000, 'Demi'),
(220084, 'Jaimes Aldrich Manicar', 'Male', '2023-11-13', 'h4yme', 'jaimesaldrichamanicar@gmail,com', 921336610, 12345, 'Bistekville 2 Brgy. Kaligayan Novaliches Q.C', 'Systems Admin', '2023-11-13', 'Hi I\'m Jaimes and I\'m the systems admin of this software.', 'question1', 50000, 'Demi');

-- --------------------------------------------------------

--
-- Table structure for table `empsalary`
--

CREATE TABLE `empsalary` (
  `EMPID` int(11) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Month` varchar(50) DEFAULT NULL,
  `BasicSalary` double DEFAULT NULL,
  `Present` int(11) DEFAULT NULL,
  `Absent` int(11) DEFAULT NULL,
  `Increase` int(11) DEFAULT NULL,
  `Deduction` double DEFAULT NULL,
  `Overtime` double DEFAULT NULL,
  `Undertime` int(11) DEFAULT NULL,
  `NetPay` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empsalary`
--

INSERT INTO `empsalary` (`EMPID`, `FullName`, `Month`, `BasicSalary`, `Present`, `Absent`, `Increase`, `Deduction`, `Overtime`, `Undertime`, `NetPay`) VALUES
(220033, 'Norbert Cabasag', '11-2023', 50000, 23, 1, 15000, 3500, 3, 2, 61500),
(220033, 'Norbert Cabasag', '11-2023', 50000, 23, 1, 15000, 3500, 3, 2, 61500);

-- --------------------------------------------------------

--
-- Table structure for table `empsalaryarc`
--

CREATE TABLE `empsalaryarc` (
  `EMPID` int(11) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Month` varchar(50) DEFAULT NULL,
  `BasicSalary` double DEFAULT NULL,
  `Present` int(11) DEFAULT NULL,
  `Absent` int(11) DEFAULT NULL,
  `Increase` int(11) DEFAULT NULL,
  `Deduction` double DEFAULT NULL,
  `Overtime` double DEFAULT NULL,
  `Undertime` int(11) DEFAULT NULL,
  `NetPay` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empsalaryarc`
--

INSERT INTO `empsalaryarc` (`EMPID`, `FullName`, `Month`, `BasicSalary`, `Present`, `Absent`, `Increase`, `Deduction`, `Overtime`, `Undertime`, `NetPay`) VALUES
(220033, 'Norbert Cabasag', '11-2023', 50000, 23, 1, 15000, 3500, 3, 2, 61500),
(220084, 'Jaimes Aldrich Manicar', '11-2023', 50000, 1, 0, 0, 0, 0, 0, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `empsummary`
--

CREATE TABLE `empsummary` (
  `Date` varchar(50) DEFAULT NULL,
  `Month` varchar(50) NOT NULL,
  `EmpID` int(20) NOT NULL,
  `Present` int(20) DEFAULT NULL,
  `Absent` int(20) DEFAULT NULL,
  `Late` int(20) DEFAULT NULL,
  `Undertime` int(20) DEFAULT NULL,
  `Overtime` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empsummary`
--

INSERT INTO `empsummary` (`Date`, `Month`, `EmpID`, `Present`, `Absent`, `Late`, `Undertime`, `Overtime`) VALUES
('2023-11-08', '2023-11', 11111, 1, NULL, 1, NULL, NULL),
('2023-10-29', '2023-10', 12345, 15, 9, 1, 2, 1),
('2023-10-26', '2023-10', 220033, 23, 1, 1, 2, 3),
('2023-10-26', '2023-10', 220084, 1, NULL, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `EmpID` int(6) NOT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `TimeIn` varchar(20) DEFAULT NULL,
  `TimeOut` varchar(20) DEFAULT NULL,
  `Late` tinyint(1) DEFAULT NULL,
  `Undertime` int(20) DEFAULT NULL,
  `Overtime` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`EmpID`, `Date`, `TimeIn`, `TimeOut`, `Late`, `Undertime`, `Overtime`) VALUES
(11111, '2023-11-08', '13:43:34', NULL, 1, NULL, NULL),
(12345, '2023-10-29', '20:57:16', '20:57:17', 1, NULL, 1),
(220033, '2023-10-26', '19:57:47', '19:57:48', 1, NULL, 0),
(220084, '2023-10-26', '19:15:59', '19:16:00', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `Full_Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `UserName` varchar(200) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Position` varchar(200) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `Answer` varchar(200) NOT NULL,
  `Image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `Full_Name`, `Email`, `UserName`, `Password`, `Position`, `Question`, `Answer`, `Image`) VALUES
INSERT INTO `tblusers` (`id`, `Full_Name`, `Email`, `UserName`, `Password`, `Position`, `Question`, `Answer`, `Image`) VALUES
(2, 'adsdasda', 'dadada', 'head', '1234', 'Professors', 'adsadas', 'dadada', ''),
(3, 'adsda', 'dadad', 'Staff', '1234', 'Human Resource Staff', 'adsdad', 'adadada', '');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `EmpID` int(6) DEFAULT NULL,
  `Full_Name` varchar(30) DEFAULT NULL,
  `Password` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`EmpID`, `Full_Name`, `Password`) VALUES
(220084, 'Jaimes Aldrich manicar', 12345),
(220033, 'Norbert Cristopher Cabasag', 12345),
(220011, 'Guest', 12345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_login`
--
ALTER TABLE `db_login`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `empsummary`
--
ALTER TABLE `empsummary`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;