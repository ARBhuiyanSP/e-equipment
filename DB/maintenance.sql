-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 08:39 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_equipment`
--

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL,
  `maintenance_id` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `equipment_id` varchar(100) NOT NULL,
  `lastseervice_date` date NOT NULL,
  `lastservice_hrkm` int(100) NOT NULL,
  `present_hrkm` int(100) NOT NULL,
  `nextservice_date` date NOT NULL,
  `nextservice_hrkm` int(100) NOT NULL,
  `dueforservice_hrkm` int(100) NOT NULL,
  `typeofservice_hrkm` int(20) NOT NULL,
  `detailofmaintainces` varchar(500) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`id`, `maintenance_id`, `project_id`, `equipment_id`, `lastseervice_date`, `lastservice_hrkm`, `present_hrkm`, `nextservice_date`, `nextservice_hrkm`, `dueforservice_hrkm`, `typeofservice_hrkm`, `detailofmaintainces`, `remarks`, `created_date`, `updated_date`, `created_by`, `updated_by`) VALUES
(1, 'TR-01', 'P-01', 'E-01', '2022-07-01', 200, 300, '2022-08-31', 450, 150, 250, 'OIL AND GAS', 'GOOD', '2022-08-15 18:00:00', '2022-08-15 18:00:00', 'ATIQ', ''),
(2, 'TR-02', 'P-01', 'E-02', '2022-07-01', 1500, 1600, '2022-08-31', 1750, 150, 250, 'OIL AND GAS', 'GOOD', '2022-08-15 18:00:00', '2022-08-15 18:00:00', 'ATIQ', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
