-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 06:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `office`
--

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `worker_ref_id` int(11) NOT NULL,
  `Bonus_Amount` int(15) DEFAULT NULL,
  `Bonus_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`worker_ref_id`, `Bonus_Amount`, `Bonus_Date`) VALUES
(1, 1, '2022-10-22 10:32:28'),
(5, 2000, '2022-10-22 10:32:28'),
(3, 500000, '2022-10-22 10:33:49'),
(4, 2, '2022-10-21 10:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `worker_id` int(11) NOT NULL,
  `First_Name` char(25) DEFAULT NULL,
  `Last_Name` char(25) DEFAULT NULL,
  `SALARY_INT` int(15) DEFAULT NULL,
  `Joining_Date` datetime DEFAULT NULL,
  `Department` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`worker_id`, `First_Name`, `Last_Name`, `SALARY_INT`, `Joining_Date`, `Department`) VALUES
(1, 'Utsav', 'Rajbhandari', 2, '2020-10-15 10:25:06', 'Labour'),
(3, 'Anish', 'Shahi', 300000, '2022-10-20 10:27:19', 'CEO'),
(4, 'Astitwo', 'Pandey', 2500, '2022-10-12 10:30:00', 'Pentester'),
(5, 'Utshav', 'Adhikari', 20000, '2022-10-19 10:30:00', 'HAAAA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD KEY `worker_ref_id` (`worker_ref_id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`worker_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `worker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bonus`
--
ALTER TABLE `bonus`
  ADD CONSTRAINT `bonus_ibfk_1` FOREIGN KEY (`worker_ref_id`) REFERENCES `worker` (`worker_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
