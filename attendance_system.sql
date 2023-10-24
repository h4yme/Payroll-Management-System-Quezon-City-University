-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 03:55 AM
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
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `empsummary`
--

CREATE TABLE `empsummary` (
  `Date` varchar(50) DEFAULT NULL,
  `Month` varchar(50) NOT NULL,
  `EmpID` int(20) DEFAULT NULL,
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
('2023-10-23', '2023-10', 220084, 5, NULL, 5, 8, NULL),
('2023-10-23', '2023-10', 220033, 6, NULL, 6, 16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `EmpID` int(6) DEFAULT NULL,
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
(220033, '2023-10-23', '10:43:14', '22:43:19', 1, NULL, 3);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
