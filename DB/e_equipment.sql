-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 11:57 AM
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
-- Database: `e_equipment`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajax_form_test`
--

CREATE TABLE `ajax_form_test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ajax_form_test`
--

INSERT INTO `ajax_form_test` (`id`, `name`, `email`, `mobile`) VALUES
(1, 'sdfsf', 'sdfsdf@fhfg.dgd', '23432'),
(2, 'dfgdsf', 'dsfhgf@dfjh.sds', '23432'),
(3, 'sdf', 'sdfsd@dthf.fgs', '2423');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`) VALUES
(1, 'E-Engineering'),
(2, 'PEAM'),
(3, 'Maxon Power'),
(4, 'Generator Sales'),
(5, 'Corporate'),
(6, 'Battery'),
(7, 'Renewable Energy'),
(8, 'Sub Station'),
(9, 'Equipment'),
(10, 'Spare Parts'),
(11, 'Service And Energy Business'),
(12, 'SPOT'),
(13, 'CTED-Dhaka'),
(14, 'CTED-CTG');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `referred_by` varchar(15) NOT NULL,
  `last_degree_title` varchar(50) NOT NULL,
  `last_degree_sub` varchar(50) NOT NULL,
  `last_degree_ins` varchar(100) NOT NULL,
  `pasing_year` varchar(15) NOT NULL,
  `total_exp` varchar(15) NOT NULL,
  `exp_with_ddc` varchar(15) NOT NULL,
  `rrr_no` varchar(15) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `expected_salary` varchar(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `cv` varchar(500) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(15) NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `candidate_id`, `name`, `email`, `phone`, `dob`, `referred_by`, `last_degree_title`, `last_degree_sub`, `last_degree_ins`, `pasing_year`, `total_exp`, `exp_with_ddc`, `rrr_no`, `designation`, `expected_salary`, `remarks`, `cv`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(24, 'CAN-0001', 'Atiqur Rahman Bhuiyan', 'arb@gmail.com', '123456', '2022-05-24', 'ENG-000610', 'Degree', 'Subject', 'Institution', '2020', '3', '1', '1', '1', '45000', 'Test', '1653366673Meeting Minutes of SMS Aggregator-04.03.2022.pdf', '2022-05-24', '', '2022-05-24', ''),
(25, 'CAN-0002', 'Khayrul Alam', 'alam@gmail.com', '12345678925', '2022-05-25', 'SPL-008077', 'degree', 'subject', 'institution', '2020', '3', '1', '1', '35', '35000', 'ok', '1653456607Meeting Minutes of SMS Aggregator-04.03.2022.pdf', '2022-05-25', '', '2022-05-25', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_id` varchar(11) NOT NULL,
  `assets_category` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_id`, `assets_category`, `status`, `created_at`, `updated_at`) VALUES
(96, 'AC-001', 'Air Compressor', '', NULL, NULL),
(97, 'AHE-001', 'Amphibious Hy. Excavator', '', NULL, NULL),
(98, 'ASP-001', 'Asphalt Plant', '', NULL, NULL),
(99, 'BL-001', 'Backhoe Loader', '', NULL, NULL),
(100, 'BD-001', 'Bull Dozer', '', NULL, NULL),
(101, 'BTD-001', 'Bitumin Distributor', '', NULL, NULL),
(102, 'CC-001', 'Crawler Crane', '', NULL, NULL),
(103, 'CBP-001', 'Concrete Batching Plant', '', NULL, NULL),
(104, 'CBM-001', 'Block Making Machine', '', NULL, NULL),
(105, 'DT-001', 'Dump Truck', '', NULL, NULL),
(106, 'DDVC-001', 'Double Drum V.C ', '', NULL, NULL),
(107, 'DH-001', 'Diesel Hammer ', '', NULL, NULL),
(108, 'DG-001', 'Diesel Generator', '', NULL, NULL),
(109, 'DRG', 'Dredger', '', NULL, NULL),
(110, 'EXVT', 'Excavator', '', NULL, NULL),
(111, 'FL', 'Fork Lift', '', NULL, NULL),
(112, 'HyB', 'Hydraulic Breaker', '', NULL, NULL),
(113, 'MGr', 'Motor Grader', '', NULL, NULL),
(114, 'AspF', 'Asphalt Finisher', '', NULL, NULL),
(115, 'PMLB', 'Prime Mover With Low Bed', '', NULL, NULL),
(116, 'PLC', 'Plate Compactor', '', NULL, NULL),
(117, 'PRFL', 'Piling Rig with Fixed Ladder', '', NULL, NULL),
(118, 'RTC', 'Rough Terrin Crane', '', NULL, NULL),
(119, 'SCP', 'Stationary Concrete Pump', '', NULL, NULL),
(120, 'TMT', 'Transit Mixer Truck', '', NULL, NULL),
(121, 'TR', 'Tandem Roller', '', NULL, NULL),
(122, 'TWSR', 'Three Wheel Static Roller', '', NULL, NULL),
(123, 'TyR', 'Tyre Roller ', '', NULL, NULL),
(124, 'CBP', 'Concrete Boom Pump', '', NULL, NULL),
(125, 'TC', 'Truck Crane', '', NULL, NULL),
(126, 'TT', 'Tractor', '', NULL, NULL),
(127, 'TL', 'Tower Light', '', NULL, NULL),
(128, 'ViR', 'Vibratory Roller', '', NULL, NULL),
(129, 'WT', 'Water Tanker', '', NULL, NULL),
(130, 'WB', 'Weigh Bridge', '', NULL, NULL),
(131, 'WL', 'Wheel Loader', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghané.', '\0\0V', 85, 256);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `branch_name` varchar(350) NOT NULL COMMENT 'temprary purpose',
  `name` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `branch_id`, `branch_name`, `name`) VALUES
(1, 1, 'E-Engineering', 'Management'),
(2, 1, 'E-Engineering', 'Market Development'),
(3, 1, 'E-Engineering', 'Finance And Accounts'),
(4, 1, 'E-Engineering', 'Administration'),
(5, 1, 'E-Engineering', 'Dredging'),
(6, 1, 'E-Engineering', 'Engineering'),
(7, 1, 'E-Engineering', 'Project ENG'),
(8, 1, 'E-Engineering', 'Operation'),
(9, 1, 'E-Engineering', 'Maintenance'),
(10, 1, 'E-Engineering', 'QMS'),
(11, 1, 'E-Engineering', 'Mechanical'),
(12, 1, 'E-Engineering', 'Civil'),
(13, 1, 'E-Engineering', 'Commercial'),
(14, 1, 'E-Engineering', 'Store'),
(15, 2, 'PEAM', 'Engineering'),
(16, 2, 'PEAM', 'Civil'),
(17, 3, 'Maxon Power', 'Management'),
(18, 3, 'Maxon Power', 'Administration'),
(19, 3, 'Maxon Power', 'Project'),
(20, 3, 'Maxon Power', 'Finance And Accounts'),
(21, 4, 'Generator Sales', 'Sales And Marketing'),
(22, 4, 'Generator Sales', 'Service'),
(23, 4, 'Generator Sales', 'Project'),
(24, 4, 'Generator Sales', 'Administration'),
(25, 4, 'Generator Sales', 'Finance And Accounts'),
(26, 5, 'Corporate', 'Management'),
(27, 5, 'Corporate', 'Finance And Accounts'),
(28, 5, 'Corporate', 'QMS'),
(29, 5, 'Corporate', 'Human Resource Management'),
(30, 5, 'Corporate', 'Purchase And Procurement'),
(31, 5, 'Corporate', 'Legal'),
(32, 5, 'Corporate', 'Administration'),
(33, 5, 'Corporate', 'IT'),
(34, 5, 'Corporate', 'Commercial'),
(35, 5, 'Corporate', 'Project'),
(36, 5, 'Corporate', 'Business Development'),
(37, 5, 'Corporate', 'Brand Communication'),
(38, 5, 'Corporate', 'Share Market'),
(39, 5, 'Corporate', 'Enterprise Resource Planning'),
(40, 5, 'Corporate', 'Operation'),
(41, 5, 'Corporate', 'Service And WSS'),
(42, 6, 'Battery', 'Management'),
(43, 6, 'Battery', 'Commercial'),
(44, 6, 'Battery', 'Project Development And Implemantaion'),
(45, 6, 'Battery', 'RAndD'),
(46, 6, 'Battery', 'Factory Operation'),
(47, 6, 'Battery', 'Administration'),
(48, 6, 'Battery', 'Finance And Accounts'),
(49, 6, 'Battery', 'Plate Preparation'),
(50, 6, 'Battery', 'Charging'),
(51, 6, 'Battery', 'Quality Assurance'),
(52, 6, 'Battery', 'Maintenance'),
(53, 6, 'Battery', 'Warehouse And Logistics'),
(54, 6, 'Battery', 'Assembly'),
(55, 6, 'Battery', 'CMP'),
(56, 6, 'Battery', 'Service And WSS'),
(57, 6, 'Battery', 'QMS'),
(58, 6, 'Battery', 'Sales And Marketing'),
(59, 6, 'Battery', 'IT'),
(60, 6, 'Battery', 'Marketing And Sales- Export And Corporate'),
(61, 6, 'Battery', 'MC'),
(62, 6, 'Battery', 'Sales Operation'),
(63, 6, 'Battery', 'Planning And Coordination'),
(64, 6, 'Battery', 'Store'),
(65, 6, 'Battery', 'Gel And VRLA'),
(66, 6, 'Battery', 'Purchase And Procurement'),
(67, 7, 'Renewable Energy', 'Management'),
(68, 7, 'Renewable Energy', 'Operation'),
(69, 7, 'Renewable Energy', 'Finance And Accounts'),
(70, 7, 'Renewable Energy', 'Administration'),
(71, 7, 'Renewable Energy', 'Service And Maintanance'),
(72, 7, 'Renewable Energy', 'Sales And Marketing'),
(73, 7, 'Renewable Energy', 'Store'),
(74, 8, 'Sub Station', 'Project'),
(75, 8, 'Sub Station', 'Switch Gear'),
(76, 8, 'Sub Station', 'Operation'),
(77, 8, 'Sub Station', 'Administration'),
(78, 9, 'Equipment', 'Sales And Marketing'),
(79, 10, 'Spare Parts', 'Service'),
(80, 11, 'Service And Energy Business', 'Finance And Accounts'),
(81, 11, 'Service And Energy Business', 'Service'),
(82, 11, 'Service And Energy Business', 'Operation'),
(83, 11, 'Service And Energy Business', 'Sales And Marketing'),
(84, 11, 'Service And Energy Business', 'Administration'),
(85, 11, 'Service And Energy Business', 'Pre Sales'),
(86, 11, 'Service And Energy Business', 'Maintenance'),
(87, 11, 'Service And Energy Business', 'Group Customer Care'),
(88, 11, 'Service And Energy Business', 'Marine'),
(89, 12, 'SPOT', 'Documentation'),
(90, 12, 'SPOT', 'Billing'),
(91, 12, 'SPOT', 'Operation'),
(92, 12, 'SPOT', 'Administration'),
(93, 12, 'SPOT', 'Store'),
(94, 12, 'SPOT', 'Finance And Accounts'),
(95, 12, 'SPOT', 'Purchase And Procurement'),
(96, 12, 'SPOT', 'CTMS'),
(97, 12, 'SPOT', 'SC'),
(98, 12, 'SPOT', 'Ship Planning'),
(99, 12, 'SPOT', 'Terminal Operation'),
(100, 12, 'SPOT', 'RMG'),
(101, 12, 'SPOT', 'RTG'),
(102, 12, 'SPOT', 'Winch'),
(103, 12, 'SPOT', 'CCT Yard'),
(104, 12, 'SPOT', 'Strategic Planning And Terminal Operation'),
(105, 12, 'SPOT', 'NCT Yard'),
(106, 12, 'SPOT', 'CFS'),
(107, 12, 'SPOT', 'FLT'),
(108, 12, 'SPOT', 'Yard Planning And Documentation'),
(109, 12, 'SPOT', 'CCT Lasher'),
(110, 12, 'SPOT', 'ITV'),
(111, 12, 'SPOT', 'QGC'),
(112, 12, 'SPOT', 'Quay Yard Supervisor'),
(113, 12, 'SPOT', 'Delivery'),
(114, 12, 'SPOT', 'NCT Lasher'),
(115, 13, 'CTED-Dhaka', 'Operation'),
(116, 13, 'CTED-Dhaka', 'Service'),
(117, 13, 'CTED-Dhaka', 'Maintenance'),
(118, 13, 'CTED-Dhaka', 'Administration'),
(119, 14, 'CTED-CTG', 'Maintenance'),
(120, 14, 'CTED-CTG', 'QGC and RTG'),
(121, 14, 'CTED-CTG', 'PM and FLT'),
(122, 14, 'CTED-CTG', 'Purchase And Procurement'),
(123, 14, 'CTED-CTG', 'Store'),
(124, 14, 'CTED-CTG', 'Administration'),
(125, 14, 'CTED-CTG', 'QGC Maintanence');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`) VALUES
(1, 'Executive'),
(2, 'Manager'),
(3, 'Senior Brand Promoter'),
(4, 'Video Editor'),
(5, 'Photographer'),
(6, 'Brand Promoter'),
(7, 'Graphic Designer'),
(8, 'Assistant Manager'),
(9, 'Driver'),
(10, 'Office Assistant'),
(11, '3D Modeler'),
(12, 'Senior Online Video Editor'),
(13, 'Senior Graphic Designer'),
(14, 'Officer'),
(15, 'Chief Executive Officer'),
(16, 'Deputy General Manager'),
(17, 'Senior Officer'),
(18, 'Project Manager'),
(19, 'Dredging Master'),
(20, 'Project Co-Ordinator'),
(21, 'General Manager'),
(22, 'Electrician'),
(23, 'Assistant Engine Driver'),
(24, 'Engine Driver'),
(25, 'Work Boat Master'),
(26, 'Crew'),
(27, 'Lever Man'),
(28, 'Head Cook'),
(29, 'Director'),
(30, 'Assistant General Manager'),
(31, 'Supervisor'),
(32, 'Senior Technician'),
(33, 'Peon'),
(34, 'Assistant Cook'),
(35, 'Assistant'),
(36, 'Engineer'),
(37, 'Surveyor'),
(38, 'Operator'),
(39, 'Site Engineer'),
(40, 'Site Supervisor'),
(41, 'Ship Supervisor'),
(42, 'Deputy Manager'),
(43, 'Mechanic'),
(44, 'Assistant Site Supervisor'),
(45, 'Technician'),
(46, 'Pipe Fitter'),
(47, 'Sukani'),
(48, 'WINCH Operator'),
(49, 'Excavator Operator'),
(50, 'Senior Electrician'),
(51, 'Loskor'),
(52, 'Welder'),
(53, 'Storeman'),
(54, 'Assistant Engine Mechanic'),
(55, 'Chief Operating Officer'),
(56, 'Assistant Site Engineer'),
(57, 'Lab Techinacian'),
(58, 'Assistant Hydraulic Mechanic'),
(59, 'Assistant Supervisor'),
(60, 'Assistant Engineer'),
(61, 'Site Assistant'),
(62, 'Admin Assistant'),
(63, 'Bulldozer Operator'),
(64, 'Work Boat Engine Driver'),
(65, 'Batching Plant Operator'),
(66, 'Project Engineer'),
(67, 'Deputy Project Manager'),
(68, 'Wheel Loader Operator'),
(69, 'Cook Helper'),
(70, 'Dump Truck Driver'),
(71, 'Mixer Truck Driver'),
(72, 'Prime Mover Driver'),
(73, 'Harbour Crane Operator'),
(74, 'Helper'),
(75, 'Batching Plant Helper'),
(76, 'Crane Operator'),
(77, 'Dozzer Operator'),
(78, 'Concrete Pump Operator'),
(79, 'Assistant Rigger'),
(80, 'Transit Mixer Helper'),
(81, 'Block Machine Operator'),
(82, 'Fork Lift Operator'),
(83, 'Plant Engineer'),
(84, 'Diesel Hammer Operator'),
(85, 'Concrete Pump Pipe Fitter'),
(86, 'Long Boom Excavator Operator'),
(87, 'Mixture Truck Helper'),
(88, 'Low Bed Helper'),
(89, 'Mechanical Helper'),
(90, 'Low Bed Operator'),
(91, 'Junior Fitter'),
(92, 'Site Mechanical Engineer'),
(93, 'Quantity Surveyor Engineer'),
(94, 'Roller Operator'),
(95, 'Backhoe Operator'),
(96, 'Tractor Driver'),
(97, 'Store Keeper'),
(98, 'Assistant Lab Technician'),
(99, 'Senior Project Manager'),
(100, 'Trainee Officer'),
(101, 'Rigger'),
(102, 'Plant Operator'),
(103, 'Junior Officer'),
(104, 'Independent Director'),
(105, 'Head of Project'),
(106, 'Senior Manager'),
(107, 'Foreman'),
(108, 'Logistic Support Officer'),
(109, 'Executive Director'),
(110, 'Service Technician'),
(111, 'Junior Technician'),
(112, 'Managing Director'),
(113, 'Chairman'),
(114, 'Additional Managing Director'),
(115, 'Chief Finance Officer'),
(116, 'Head of QMS'),
(117, 'Company Secretary'),
(118, 'Accounts Assistant'),
(119, 'Customer Care'),
(120, 'Body Guard'),
(121, 'Assistant Security Supervisor'),
(122, 'Security Guard'),
(123, 'Security Inspector'),
(124, 'Front Desk Officer'),
(125, 'Head of IT'),
(126, 'Canteen Boy'),
(127, 'Liason Officer'),
(128, 'Incharge Billing And Doc.'),
(129, 'Protocol Officer'),
(130, 'Junior Engineer'),
(131, 'Yard Checker'),
(132, 'Sales ADM And Application Engg.'),
(133, 'Head Technician'),
(134, 'Head of Finance And Accounts'),
(135, 'Terminal Superintendent'),
(136, 'Area Manager'),
(137, 'Share Officer'),
(138, 'Store Officer'),
(139, 'Security Supervisor'),
(140, 'Security Officer'),
(141, 'Painter'),
(142, 'RST Operator'),
(143, 'Assistant Yard Supervisor'),
(144, 'Trailer Operator'),
(145, 'Trainee Technician'),
(146, 'Welder Project'),
(147, 'Tyre Feeder'),
(148, 'Trainee Engineer'),
(149, 'Cleaner'),
(150, 'Caretaker'),
(151, 'Assistant Protocol Officer'),
(152, 'In-Charge'),
(153, 'Technical Helper'),
(154, 'Loader'),
(155, 'Advisor'),
(156, 'Consultant'),
(157, 'Estate Officer'),
(158, 'Assistant Officer'),
(159, 'Trainee Yard Checker'),
(160, 'Door Closer'),
(161, 'Yard Supervisor'),
(162, 'Lasher'),
(163, 'Additional Chief Engineer'),
(164, 'Senior Engineer'),
(165, 'Senior Mechanic'),
(166, 'Vulcanizer'),
(167, 'Semi Mechanic'),
(168, 'Lathe Man'),
(169, 'Head of CTMS'),
(170, 'Service Engineer'),
(171, 'SC Operator'),
(172, 'Senior Equipment Controller'),
(173, 'Co-Ordinator'),
(174, 'Assistant Equipment Co-Ordinator'),
(175, 'Documentation Staff Trainee'),
(176, 'Regional Manager'),
(177, 'Terminal Manager'),
(178, 'CFS Shed Incharge'),
(179, 'Photo copier'),
(180, 'Office Boy'),
(181, 'RTG SC Controller'),
(182, 'Assistant Welfare Officer'),
(183, 'Radio And HHT Keeper'),
(184, 'Documentation Staff'),
(185, 'RTG Checker'),
(186, 'Keep Down Checker'),
(187, 'Handover Clerk'),
(188, 'Tally Clerk'),
(189, 'ICD Checker'),
(190, 'Carpenter'),
(191, 'Jetty Sareng'),
(192, 'Mark Man'),
(193, 'Assistant Ship Planner'),
(194, 'Senior Assistant Ship Supervisor'),
(195, 'Tracer'),
(196, 'Assistant Ship Supervisor'),
(197, 'Deck And Crane Checker'),
(198, 'Checker'),
(199, 'Empty Area Checker'),
(200, 'RTG Operator'),
(201, 'Trainee Tracer'),
(202, 'FLT Operator'),
(203, 'Lasher Foreman'),
(204, 'ITV Operator'),
(205, 'ITV Supervisor'),
(206, 'QGC Operator'),
(207, 'Ship And Yard Planner'),
(208, 'Import And Export Permission Clerk'),
(209, 'Senior Yard Supervisor'),
(210, 'Assistant Yard Superintendent'),
(211, 'Senior Keep Down Checker'),
(212, 'Trainee RTG Operator'),
(213, 'Escort Officer'),
(214, 'Supervisor In-Charge'),
(215, 'Medical Assistant'),
(216, 'Labour In-Charge'),
(217, 'Delivery Supervisor'),
(218, 'Billing Assistant'),
(219, 'Labour Supervisor'),
(220, 'Assistant Terminal Suprintendent'),
(221, 'Assistant Billing Coordinator'),
(222, 'Application Engineer'),
(223, 'Marine Leader'),
(224, 'IT Assistant'),
(225, 'Head of Product and Service'),
(226, 'Web Designer'),
(227, 'Delivery Checker'),
(228, 'Chief Marketing Officer'),
(229, 'Assistant Mechanic'),
(230, 'Assistant Carpenter'),
(231, 'Operation Engineer'),
(232, 'Assistant Foreman'),
(233, 'Factory Manager'),
(234, 'Assistant Operator'),
(235, 'Store Assistant'),
(236, 'Junior Operator'),
(237, 'Quality Control Inspector');

-- --------------------------------------------------------

--
-- Table structure for table `disposals`
--

CREATE TABLE `disposals` (
  `id` int(11) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `disposal_date` varchar(100) NOT NULL,
  `disposal_value` varchar(100) NOT NULL,
  `reason` longtext NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `sub_project_id` varchar(100) NOT NULL,
  `equipment_type` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date_from` varchar(100) NOT NULL,
  `date_to` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `eel_code` varchar(100) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `makeby` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year_manufacture` varchar(100) NOT NULL,
  `inventory_sl_no` varchar(100) NOT NULL,
  `engine_model` varchar(50) NOT NULL,
  `engine_sl_no` varchar(50) NOT NULL,
  `present_location` varchar(200) NOT NULL,
  `present_condition` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `qr_image` varchar(100) NOT NULL,
  `assign_status` varchar(100) NOT NULL,
  `inspaction_date` varchar(100) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `superintend` varchar(100) NOT NULL,
  `coo_admin` varchar(100) NOT NULL,
  `remarks` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `project_id`, `project_name`, `sub_project_id`, `equipment_type`, `category`, `date_from`, `date_to`, `name`, `eel_code`, `origin`, `capacity`, `makeby`, `model`, `year_manufacture`, `inventory_sl_no`, `engine_model`, `engine_sl_no`, `present_location`, `present_condition`, `price`, `qr_image`, `assign_status`, `inspaction_date`, `incharge`, `superintend`, `coo_admin`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(1, '15', '', '', '1', 'AC-001', '', '', 'Air Compressor', 'AC-01', 'China', '7 bar', 'DENAIR', 'DACY-7.5/7', '2019', 'CZG19021439', '48T-C80', '78941393', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(2, '3', '', '', '1', 'AC-001', '', '', 'Air Compressor', 'AC-02', 'China', '7 Bar', 'DENAIR', 'DACY-7.5/7', '2019', 'CZG19021440', '4BT.9-C80', '78941394', 'PCT', 'Running', '', '', 'assigned', '2022-11-03', '', '', '', '', 'ok', '', ''),
(3, '12', '', '', '1', 'AC-001', '', '', 'Air Compressor', 'AC-03', 'China', '', 'LOCAL', 'YL100L12', '2020', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(4, '3', '', '', '1', 'AC-001', '', '', 'Air Compressor', 'AC-04', 'China', '', 'LOCAL', '', '2020', '', '', '', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(5, '5', '', '', '1', 'AC-001', '', '', 'Air Compressor', 'AC-05', 'China', '', 'LOCAL', '', '2021', '', '', '', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(6, '11', '', '', '1', 'AC-001', '', '', 'Air Compressor', 'AC-06', 'China', '', 'LOCAL', '', '2021', '', '', '', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(7, '19', '', '', '1', 'AHE-001', '', '', 'Amphibious Hy. Excavator ', 'Ex. Am-01', 'Malaysia', '0.33 m3 ,9M', 'Ultratex', 'TAKEUCHI TB285CH', '2019', '1058003818', 'ATNV98-APTB', 'T1695', 'Dredging', 'Break Down', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(8, '12', '', '', '1', 'AHE-001', '', '', 'Amphibious Hy. Excavator ', 'Ex. Am-02', 'Malaysia', '0.33 m3 ,9M', 'Ultratex', 'TAKEUCHI TB285CH', '2019', '', 'ATNV98-APTB', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', 'Repairing works running', '', '', ''),
(9, '15', '', '', '1', 'ASP-001', '', '', 'Asphalt Plant', 'ASP-01', 'China', '120t/h', 'TTM', 'LB1500', '2019', '', '', '', 'Raozan/ Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(10, '16', '', '', '1', 'BL-001', '', '', 'Backhoe Loader', 'BL-01', 'Indian', '0.25m3', 'CASE', '770EXMAGNUM', '2018', 'NKJ770EMJJKH01332', '', '8045.45.735-249601', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(11, '15', '', '', '1', 'BL-001', '', '', 'Backhoe Loader', 'BL-02', 'Indian', '0.25m3', 'CASE', '770EXMAGNUM', '2018', 'NKJ770EMJJKH01333', '', '8045.45.735-248258', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(12, '1', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-01', 'USA', '20000 KG', 'POWER PLUS', 'D65EX-15', '2018', 'CCND65EX118101218', 'SC11CB184G2B1REACAT3306B(L)', 'C9186000891', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(13, '20', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-02', 'China', '4.50M3', 'ZOOMLION', 'ZD160-3', '2018', '02WP9SL0973012', 'WD109178', 'N/A', 'Netrokonah', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(14, '11', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-03', 'China', '4.50M3', 'LIUGONG', 'CLGB160C', '2019', 'LGCB160CPKC006577', 'WD10G178E25', '1219D002221', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(15, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-04', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041CL0003198', 'WD10G178E25', '1220E003771', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(16, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-05', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041EL0003197', 'WD10G178E25', '1220G004116', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(17, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-06', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041TL0003199', 'WD10G178E25', '1220G003768', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(18, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-07', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041HL0003179', 'WD10G178E25', '1220D003260', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(19, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-08', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041EL0003202', 'WD10G178E25', '1220D004584', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(20, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-09', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041HL0003201', 'WD10G178E25', '1220G001745', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(21, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-10', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041TL0003204', 'WD10G178E25', '1220G004560', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(22, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-11', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041AL0003180', 'WD10G178E25', '1220D003268', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(23, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-12', 'China', '4.50M3', 'ZOOMLION', 'ZD160S-3', '2020', 'ZMTZD041CL0003203', 'WD10G178E25', '1220G004731', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(24, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-13', 'China', '4.50M3', 'ZOOMLION', 'ZD160-3', '2020', 'ZMTZD040KL0003407', 'WD10G178E25', '1220D003290', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(25, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-14', 'China', '4.50M3', 'ZOOMLION', 'ZD160-3', '2020', 'ZMTZD040CL0003409', 'WD10G178E25', '1220D003280', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(26, '5', '', '', '1', 'BD-001', '', '', 'Bull Dozer', 'BD-15', 'China', '4.50M3', 'ZOOMLION', 'ZD160-3', '2020', 'ZMTZD040JL0003408', 'WD10G178E25', '1220D003287', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(27, '15', '', '', '1', 'BTD-001', '', '', 'Bitumin Distributor', 'BT. D -01', 'China', '6 Ton', 'SINO', 'H3W47', '2019', 'LEZADIEC2KF006582', 'ZZ1168G47150', '2019A010', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(28, '3', '', '', '1', 'CC-001', '', '', 'Crawler Crane', 'CC-01', 'China', '350 Ton', 'ZOOMLION', 'ZCC3800', '2018', 'ZCC-350-A0010', 'Cummins WP12G430E300', 'JCC350A-0010', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(29, '3', '', '', '1', 'CC-001', '', '', 'Crawler Crane', 'CC-02', 'China', '180 Ton', 'ZOOMLION', 'QUY180', '2018', 'ZCC-180-0110', 'Cummins               QSL9-C305', 'JCC180-0110', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(30, '3', '', '', '1', 'CC-001', '', '', 'Crawler Crane', 'CC-03', 'China', '85 Ton', 'XCMG', 'XGC85', '2018', 'XUG0085KTJFC00325', 'SC9DK270G3', 'D9185008348', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(31, '11', '', '', '1', 'CC-001', '', '', 'Crawler Crane', 'CC-04', 'China', '85 Ton', 'XCMG', 'XGC85', '2018', 'XUG0085KVJFC00326', 'SC9DK270G3', 'TS2410F28-2022', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(32, '11', '', '', '1', 'CC-001', '', '', 'Crawler Crane', 'CC-05', 'China', '85 Ton', 'ZOOMLION', 'ZCC850H', '2020', 'ZCC85-0086', 'WP7G270E301', '1019K035255', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(33, '3', '', '', '1', 'CBP-001', '', '', 'Concrete Batching Plant', 'CBP-01', 'China', '30 m3/HR', 'POWER PLUS', 'PBP350S', '2018', 'CL-18E0323F6-1', 'P-JS750', 'N/A', 'PCT', 'Running', '', '', 'assigned', '2022-08-01', '', '', '', '', 'ok', '', ''),
(34, '3', '', '', '1', 'CBP-001', '', '', 'Concrete Batching Plant', 'CBP-02', 'China', '60m3/HR', 'ZOOMLION', 'HZS60', '2018', '014101E1180065', 'HZS60P', 'N/A', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(35, '11', '', '', '1', 'CBP-001', '', '', 'Concrete Batching Plant', 'CBP-03', 'China', '35m3/hr', 'NICOL', 'HZS-35', '2019', '', '', '', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(36, '11', '', '', '1', 'CBP-001', '', '', 'Concrete Batchig Plant', 'CBP-04', 'China', '35m3/hr', 'NICOL', 'HZS-35', '2019', '', '', '', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(37, '11', '', '', '1', 'CBM-001', '', '', 'Block Making Machine', 'CBM-01', 'China', '350 Pcs/Hour', 'ZENITH', 'QT10', '2019', 'QF1019006', 'N/A', 'N/A', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(38, '11', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten Wheel)', 'DT-01', 'China', '16m3', 'SINO', 'ZZ3168G3615', '2018', 'LZZ5ELND8JD476463', '(SINO)WD615.69', 'E 181107029977', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(39, '11', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten Wheel)', 'DT-02', 'China', '16m3', 'SINO', 'ZZ3168G3615', '2018', 'LZZ5ELND6JD476462', '(SINO)WD615.69', 'E 181107029967', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(40, '15', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-03', 'China', '10m3', 'SINO', 'ZZ3168G3615', '2018', 'LEZAD1EC5JF006912', 'YC4E160-34', 'E3714JY0007', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(41, '15', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-04', 'China', '10m3', 'SINO', 'ZZ3168G3615', '2018', 'LEZAD1EC5JF006911', 'YC4E160-33', 'E3714JY0006', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(42, '16', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six Wheel)', 'DT-05', 'China', '10m3', 'SINO', 'ZZ3168G3615', '2018', 'LEZAD1EC5JF006913', 'YC4E160-33', 'E3714JY0008', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(43, '15', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-06', 'China', '10m3', 'SINO', 'ZZ3168G3615', '2018', 'LEZAD1EC5JF006915', 'YC4E160-37', 'E3714JY0009', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(44, '3', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-07', 'China', '10m3', 'SINO', 'ZZ257N33647', '2018', 'LEZAD1EC6JF006910', '(SINO) YC4E 160-33', 'E 3714JY0005', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(45, '12', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six Wheel)', 'DT-08', 'China', '10m3', 'SINO', 'ZZ3168G3615', '2018', 'LEZAD1EC6JF006910', 'YC4E160-33', 'E3714JY0005', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(46, '11', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-09', 'India', '10m3', 'EICHER', 'VE Terra-16XP', '2018', 'MC2K8ERC0JM064110', 'Terra 16 xp', 'E613CDJM253067', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(47, '3', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-10', 'India', '10m3', 'EICHER', 'VE Terra-16XP', '2018', 'MC2K8ERCOJM064219', 'Terra 16 xp', 'E613CDJM254774', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(48, '12', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-11', 'India', '10m3', 'EICHER', 'VE Terra-16XP', '2019', 'MC2K8ERC0JM064217', 'Terra 16 xp', 'E613CDJM254762', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(49, '15', '', '', '1', 'DT-001', '', '', 'Dump Truck (Six wheel)', 'DT-12', 'Indian', '10m3', 'EICHER', 'VE Terra-16XP', '2019', 'MC2K8ERCOKEO65292', 'Terra 16 xp', 'E613CDKE286184', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(50, '16', '', '', '1', 'DT-001', '', '', 'Mini Dump Truck ', 'DT-13', 'India', '3.5m3', 'TATA', 'TATA 909Ex2', '2019', 'NAT382402K800565', '', 'E 497TC93APY800761', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(51, '12', '', '', '1', 'DT-001', '', '', 'Mini Dump Truck ', 'DT-14', 'India', '3.5m3', 'TATA', 'LPK909', '2019', 'MAT382402K8R00565', '', '497TC93APY800761', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(52, '12', '', '', '1', 'DT-001', '', '', 'Mini Dump Truck ', 'DT-15', 'India', '3.5m3', 'TATA', 'LPK909', '2019', 'MAT38240218R32883', '', '497TC93PRY843998', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(53, '15', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-16', 'India', '16m3', 'EICHER', 'PRO5025', '2020', 'MC2U2GRC0LA019624', 'Cummins B5.9-Bsiii', '91M84519506', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(54, '15', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-17', 'India', '16m3', 'EICHER', 'PRO5025', '2020', 'MC2U2GRC0LA019786', 'Cummins B5.9-Bsiii', '91M84519049', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(55, '12', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-18', 'India', '16m3', 'EICHER', 'PRO5025', '2020', 'MC2U2GRC0LA019867', 'Cummins B5.9-Bsiii', '02B84519506', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(56, '11', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-19', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759445', 'WD615.69', '201207011457', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(57, '12', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-20', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759446', 'WD615.69', '201107046357', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(58, '11', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-21', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759447', 'WD615.69', '201107046327', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(59, '12', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-22', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759448', 'WD615.69', '201107046407', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(60, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-23', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759449', 'WD615.69', '201107046247', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(61, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-24', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759450', 'WD615.69', '201107046287', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(62, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-25', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759451', 'WD615.69', '201107046307', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(63, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-26', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759452', 'WD615.69', '201107046317', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(64, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-27', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759453', 'WD615.69', '201107046397', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(65, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-28', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759454', 'WD615.69', '201107046267', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(66, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-29', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759455', 'WD615.69', '201107046347', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(67, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-30', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759456', 'WD615.69', '201107046297', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(68, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-31', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759457', 'WD615.69', '201107046417', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(69, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-32', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759458', 'WD615.69', '201107046387', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(70, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-33', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759459', 'WD615.69', '201107046337', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(71, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-34', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759460', 'WD615.69', '201107046237', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(72, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-35', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759461', 'WD615.69', '201107046257', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(73, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-36', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759462', 'WD615.69', '201107046277', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(74, '5', '', '', '1', 'DT-001', '', '', 'Dump Truck (Ten wheel)', 'DT-37', 'China', '16m3', 'SINO', 'ZZ3257N3647A', '2020', 'LZZ5ELND1LN759463', 'WD615.69', '201107046377', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(75, '16', '', '', '1', 'DDVC-001', '', '', 'Double Drum V.C ', 'DDVC-01', 'China', '3Ton', 'Longking', 'CDM5033DD', '2019', '19050005', 'ZN390B', 'C91702368A', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(76, '15', '', '', '1', 'DDVC-001', '', '', 'Double Drum V.C ', 'DDVC-02', 'China', '3Ton', 'Longking', 'CDM5033DD', '2019', '19060008', 'ZN390B', 'C91702368A', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(77, '11', '', '', '1', 'DH-001', '', '', 'Diesel Hammer ', 'DH-01', 'China', '6.2 Ton', 'STARKE', 'HD62', '2019', '0757-23832488', '62', 'ZC20180902A', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(78, '3', '', '', '1', 'DH-001', '', '', 'Diesel Hammer', 'DH-02', 'China', '6.2 Ton', 'STARKE', 'HD62', '2018', '', '', '', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(79, '12', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-01', 'Japan', '25 KVA', 'DAWEOO', '', '2018', '', 'DB33', '0.000228', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(80, '5', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-02', 'China', '28 HP', 'SIFANG', 'SIFANG-1125', '2018', '1804049', 'N/A', 'N/A', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(81, '5', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-03', 'China', '32HP', 'CHANGCHAI', 'L-32', '2018', 'N/A', 'N/A', '78523382', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(82, '5', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-04', 'China', '12KVA', 'FUJIAN', 'GFS-12KW', '2018', '17100912', '2100ABD', 'N/A', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(83, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-05', 'China ', '15 KW', 'MINDONG', 'JBT8982011', '2016', 'N/A', 'ZH1125D', '11208170788', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(84, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-06', 'China ', '15 KW', 'MINDONG', 'JBT8982011', '2016', 'N/A', 'ZH1125D', '21809280582', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(85, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-07', 'China ', '15 KW', 'MINDONG', 'JBT8982011', '2016', 'N/A', 'ZH1125D', '11810080770', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(86, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-08', 'China ', '15 KW', 'MINDONG', 'JBT8982011', '2016', 'N/A', 'ZH1125D', '11709847310', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(87, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-09', 'China ', '15 KW', 'MINDONG', 'JBT8982011', '2017', 'N/A', 'ZH1125D', '21879306205', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(88, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-10', 'China ', '15 KW', 'MINDONG', 'JBT8982011', '2017', 'N/A', 'ZH1125D', '29630085670', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(89, '3', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-11', 'Turkey', '329KVA', 'TEKSAN', 'TJ329DW5L', '2018', '', 'P126T1-11', 'ED10C867523', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(90, '3', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-12', 'Turkey', '329KVA', 'TEKSAN', 'TJ329DW5L', '2018', '', 'P126T1-11', 'ED10C867424', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(91, '3', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-13', 'Turkey', '180KVA', 'TEKSAN', 'TJ180DW5A', '2018', '', 'P086T1', 'EBP0A864459', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(92, '3', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-14,', 'Spain', '65KVA', 'PRAMAC', 'GSW65', '2016', '', '1103A-33T', 'DK83399S004478B', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(93, '12', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-15', 'Turkey', '21KVA', 'TEKSAN', 'TJ21MS5A', '2018', '', 'S4Q261SD', 'E 113815', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(94, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-16', 'TURKEY', '21 KVA', 'TEKSAN', 'TJ21MS5A', '2018', 'N/A', 'S4Q261SD', '113814', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(95, '15', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-17', 'Local', '10KVA', 'LOCAL', 'ZS1110', '2019', '', 'ZS1110', 'ZS1110', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(96, '18', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-18', 'China', '15 KW', 'JIANGHUAI', 'ZH1130D', '2018', '', '21809300036', '', 'Maxon Power', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(97, '18', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-19', 'Turkey', '232 KVA', 'TEKSAN', 'TJ232DW5A', '2018', 'CMM3320', 'P086TI', '864486', 'Maxon Power', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(98, '18', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-20', 'Turkey', '232 KVA', 'TEKSAN', 'TJ232DW5A', '2018', 'CMM3321', 'P086TI', '864481', 'Maxon Power', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(99, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-21', 'TURKEY', '10 KVA', 'TEKSAN', 'TJ10PE5L', '2019', 'N/A', '403A-116', 'GT51789U191914E', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(100, '15', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-22', 'Turky', '660KVA', 'TEKSAN', 'TJ30DW5L', '2019', '', 'DP222LB', 'DU22-00G14916220', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(101, '11', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-23', 'Spain', '100KVA', 'PRAMAC', 'GSW110P', '2019', 'RJ51175R025917B', '2634/1500', 'R025917B', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(102, '15', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-24', 'Spain', '65KVA', 'PRAMAC', 'GSW65', '2017', '', 'DK833995', 'DK83399S004481B', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(103, '15', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-25', 'Turky', '22KVA', 'TEKSAN', 'TJ22PE5L', '2019', '', '404A-22G', 'GV51790U906218C', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(104, '11', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-26', 'Turkey', '150KVA', 'TEKSAN', 'TJ150PE5L', '2019', 'PP82576U069427E', '4408/1500', 'U069427E', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(105, '12', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-27', 'China', '15 KW', 'JIANG DNG', 'N/A', '2019', '', 'ZH1110NLD', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(106, '5', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-28', 'China', '10KVA', 'JIANG DNG', 'N/A', '2011', '', 'ZH1110NLD', '21101180794', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(107, '12', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-29', 'China', '10KW', 'JIANG DNG', 'N/A', '2019', '', 'ZH1110NLD', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(108, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-30', 'TURKEY', '10 KVA', 'TEKSAN', 'TJ10PE5L', '2019', 'N/A', '403A-116', 'GT51705U191175E', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(109, '11', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-31', '', '217KVA', 'TEKSAN', 'TJ217PE5L', '2019', '', '1106A-70TAG4', 'PR83518U068430E', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(110, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-32', 'China ', '7.5 KW', 'Jiang Dong', 'N/A', '2018', 'N/A', 'S1100B2', '11712281404', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(111, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-33', 'China ', '7.5 KW', 'Jiang Dong', 'N/A', '2018', 'N/A', 'S1100B2', '11758673509', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(112, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-34', 'China ', '7.5 KW', 'Jiang Dong', 'N/A', '2018', 'N/A', 'S1100B2', '11734589053', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(113, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-35', 'China ', '15 KW', 'Jiang Dong', 'N/A', '2018', 'N/A', 'ZL1130D', '78564378920', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(114, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-36', 'China ', '15 KW', 'Jiang Dong', 'N/A', '2018', 'N/A', 'ZL1130D', '88756239025', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(115, '1', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-37', 'China ', '15 KW', 'Jiang Dong', 'N/A', '2018', 'N/A', 'ZL1125D', '10097407263', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(116, '5', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-38', 'Turkey', '21KVA', 'TEKSAN', 'TJ33PE5L', '2020', '', '1103A-33G', '', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(117, '5', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-39', 'Turkey', '21KVA', 'TEKSAN', 'TJ33PE5L', '2020', '', '1103A-33G', '', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(118, '12', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-40', 'China', '15KW', 'Chanchai', '', '2020', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(119, '12', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-41', 'China', '15KW', 'Chanchai', '', '2020', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(120, '15', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-42', 'China', '20KW', 'DADI Mingdong', 'L-32', '2021', '', '', '', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(121, '16', '', '', '1', 'DG-001', '', '', 'Diesel Generator', 'D Gn-43', '', '10 KVA', 'Local ', '', '2021', '', '', '', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(122, '6', '', '', '1', 'DRG', '', '', 'Dredger', 'DRG-01', '', '', 'IHC-BEAVER', 'IHC-BEAVER50', '', '', '', '', 'Karnofully River', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(123, '6', '', '', '1', 'DRG', '', '', 'Dredger', 'DRG-02', '', '', 'IHC-BEAVER', 'IHC-BEAVER50', '', '', '', '', 'Karnofully River', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(124, '6', '', '', '1', 'DRG', '', '', 'Dredger', 'DRG-03', '', '', 'JULONG', '', '', '', '', '', 'Karnofully River', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(125, '19', '', '', '1', 'EXVT', '', '', 'Excavator (STD)', 'Ex- 01', 'Korea', '0.7m3', 'DOOSAN', 'DX225LCA', '2018', 'DHKCEBACTJ0020665', '', 'DB58TIS', 'Dredging', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(126, '9', '', '', '1', 'EXVT', '', '', 'Excavator (STD)', 'Ex- 02', 'Korea', '0.7cum', 'DOOSAN', 'DX225LCA', '2018', 'DHKC6DACCJ0020694', 'DB58TI8', 'ECOEN', 'Sirajgonj', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(127, '12', '', '', '1', 'EXVT', '', '', 'Excavator (With Breaker)', 'Ex-03', 'China', '0.7m3', 'ZOOMLION', 'ZE210E', '2018', 'CCN938T1281010233', 'B5.9-C', '22290058', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(128, '15', '', '', '1', 'EXVT', '', '', 'Excavator (With Breaker)', 'Ex-04', 'China', '0.7m3', 'ZOOMLION', 'ZE210E', '2018', 'ZL300210E00000572', 'B5.9-C', '22302600', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(129, '12', '', '', '1', 'EXVT', '', '', 'Excavator (Pile Driver)', 'Ex-05', 'China', '1.6m3', 'XCMG', 'XE-370PA', '2018', 'XUG03703CJKA01994', '6HK1', '906008', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(130, '12', '', '', '1', 'EXVT', '', '', 'Excavator (Pile Driver)', 'Ex-06', 'China', '1.6m', 'XCMG', 'XE-370PA', '2018', 'XUG03703CJKA01993', '6HK1', '908140', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(131, '12', '', '', '1', 'EXVT', '', '', 'Excavator (LB-01)', 'Ex-07', 'China', '0.5 m3,18m', 'ZOOMLION', 'ZE360E', '2018', '7MTZE093LK0000805', '6C8.3', '73472958', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(132, '19', '', '', '1', 'EXVT', '', '', 'Excavator (LB-02)', 'Ex-08', 'China', '0.5m3,18m', 'ZOOMLION', 'ZE360E', '2018', 'ZMTZE093Yk0000803', 'Cummins6C8.3', '73435508', 'Dredging', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(133, '12', '', '', '1', 'EXVT', '', '', 'Excavator (LB-03)', 'Ex-09', 'China', '0.4m3', 'LIUGONG', 'CLG925E', '2019', 'CLG925EZLKE067379', 'B5.9-C', '22275768', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(134, '11', '', '', '1', 'EXVT', '', '', 'Excavator (LB-04)', 'Ex-10', 'China', '0.4m3', 'LIUGONG', 'CLG925E', '2019', 'CLG925EZVKE067380', 'B5.9-C', '22275757', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(135, '19', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-11', 'Korea', '0.92', 'DOOSAN', 'DX225LCA', '2020', 'DHKCEBDXAL0001728', 'DB58TI8', '39584', 'Dredging', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(136, '12', '', '', '1', 'EXVT', '', '', 'Excavator (LB-05)', 'Ex-12', 'Korea', '0.64', 'DOOSAN', 'DX300LCA-SLR', '2020', 'DHKCECAOVL0008576', 'DE08TI8', '75169', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(137, '16', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-13', 'China', '0.3m3', 'DOOSAN', 'DX75-5B', '2020', 'DXCCEABCKL0028201', '4TNV98-EXSDB10', '61158A', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(138, '15', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-14', 'China', '0.3m3', 'DOOSAN', 'DX75-5B', '2020', 'DXCCEABCJL0028202', '4TNV98-EXSDB10', '61159A', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(139, '5', '', '', '1', 'EXVT', '', '', 'Excavator (LB-06)', 'Ex-15', 'Korea', '0.51m3', 'DOOSAN', 'DX225LCA', '2020', 'CEBDX002175', 'DB58TI8', '40559', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(140, '5', '', '', '1', 'EXVT', '', '', 'Excavator (LB-07)', 'Ex-16', 'Korea', '0.51m3', 'DOOSAN', 'DX225LCA', '2020', 'CEBDX002164', 'DB58TI8', '40613', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(141, '5', '', '', '1', 'EXVT', '', '', 'Excavator (LB-08)', 'Ex-17', 'Korea', '0.51m3', 'DOOSAN', 'DX225LCA', '2020', 'CEBDX002190', 'DB58TI8', '40688', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(142, '12', '', '', '1', 'EXVT', '', '', 'Excavator (LB-09)', 'Ex-18', 'Korea', '0.51m3', 'DOOSAN', 'DX225LCA', '2020', 'DHKCEBDXAL0002197', 'DB58TI8', '40700', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(143, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-19', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGHL0020405', 'DB58TI8', '40456', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(144, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-20', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGHL0020406', 'DB58TI8', '40514', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(145, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-21', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGHL0020407', 'DB58TI8', '40515', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(146, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-22', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGHL0020408', 'DB58TI8', '40506', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(147, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-23', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGHL0020409', 'DB58TI8', '40505', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(148, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-24', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGHL0020410', 'DB58TI8', '40508', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(149, '5', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-25', 'Korea', '1.08m3', 'DOOSAN', 'DX220LCA', '2020', 'DXCCEBDGTL0020411', 'DB58TI8', '40512', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(150, '12', '', '', '1', 'EXVT', '', '', 'Excavator (Pile Driver)', 'Ex-26', 'China', '1.08m3', 'ZOOMLION', 'ZE485E-10', '2020', 'ZMTZE172AL0005213', 'QSM11', '35365617', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(151, '3', '', '', '1', 'EXVT', '', '', 'Excavator ', 'Ex-27', 'China', '1.08m3', 'DOOSAN', 'DX220LCA-2', '2022', 'DXCCEBDGLN0021135', 'DB58TI8', '244698', 'PCT', 'Under Commi.', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(152, '18', '', '', '1', 'FL', '', '', 'Fork Lift', 'FL-01', 'Korea', '2000 KG', 'DOOSAN', 'D20G', '2017', 'FDAOB-2620-10302', '4TNE98-BQDFC', 'C0506', 'Maxo', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(153, '17', '', '', '1', 'FL', '', '', 'Fork Lift', 'FL- 02', 'Korea', '3000 KG', 'DOOSAN', 'D30GP', '2017', 'FDAOD-2020-11481', '4TNE98-BQDFC', 'C0496', 'Pubail', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(154, '11', '', '', '1', 'FL', '', '', 'Fork Lift', 'FL-03', 'China', '3000 KG', 'ZOOMLION', 'FD30', '2019', '6010937820', 'C240-NBKEG-01-C3', 'C240-275627CNC403', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(155, '17', '', '', '1', 'FL', '', '', 'Fork Lift', 'FL-04', 'China', '3000 KG', 'ZOOMLION', 'FD30', '2019', '6010937822', 'C240-NBKEG-01-C3', 'C240-275632CNC403', 'Pubail', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(156, '15', '', '', '1', 'HyB', '', '', 'Hydraulic Breaker', 'Hy. B-01', 'China', '', 'SOOSAN', '', '', '', '', '', 'Gohira', '', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(157, '12', '', '', '1', 'HyB', '', '', 'Hydraulic Breaker', 'Hy. B-02', 'China', '', 'SOOSAN', '', '', '', '', '', 'CWLP', '', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(158, '15', '', '', '1', 'MGr', '', '', 'Motor Grader', 'M. Gr-01', 'Indian', '15Ton', 'ACE', 'AG-176', '2018', '100637', 'B5.9173C31', '7IJ84416162', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(159, '11', '', '', '1', 'MGr', '', '', 'Motor Grader', 'M.GR-02', 'China', '3960mm', 'LIUGONG', 'CLG4180', '2019', 'CLG4180ZCKL008029', '6BTAA5.9-C190', '78888368', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(160, '5', '', '', '1', 'MGr', '', '', 'Motor Grader', 'M. GR-03', 'China', '3960mm', 'LIUGONG', 'CLG4180', '2020', 'CLG4180ZLLL008822', '6BTAA5.9-C190', '82294056', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(161, '15', '', '', '1', 'AspF', '', '', 'Asphalt Finisher', 'Asp F-01', 'Germany', '18.9T', 'VOGLEE', 'Super1603-3', '2019', 'QSB4.5', '22298398', '29AB0295', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(162, '3', '', '', '1', 'PMLB', '', '', 'Prime Mover With Low Bed', 'LB-01', 'China', '80 Ton', 'SINO', 'SINO- ZZ425N341W   TAZ9950TDP', '2018', 'LZZ5CLVB7JD476443 LA9940Z30J0AYC113', 'SINO  D12.42-20', ' E 181117020197', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(163, '11', '', '', '1', 'PMLB', '', '', 'Prime Mover With Low Bed', 'LB-02', 'China', '80 Ton', 'SINO', 'SINO- ZZ425N341W  TAZ9950TDP', '2018', 'LZZ5CLVB9JD476444  LA9940Z32JOAYC114', 'SINO  D12.42-20', 'E 181117020177', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(164, '7', '', '', '1', 'PLC', '', '', 'Plate Compactor', 'PL-01-14', '', '', '', '', '', '', '', '', 'PayraPort', '', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(165, '3', '', '', '1', 'PLC', '', '', 'Plate Compactor', 'PL-15', '', '', '', '', '', '', '', '', 'PCT', '', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(166, '5', '', '', '1', 'PLC', '', '', 'Plate Compactor', 'PL-16-18', '', '', '', '', '', '', '', '', 'Bhashanchar', '', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(167, '15', '', '', '1', 'PLC', '', '', 'Plate Compactor', 'PL-19-20', '', '', '', '', '', '', '', '', 'Gohira', '', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(168, '11', '', '', '1', 'PRFL', '', '', 'Piling Rig with Fixed Ladder', 'PG-01', '', '50 M', 'LIEBHERR', 'LRH600/HS895(Crane)', '', '', '', '', 'Mongla', 'Assemble running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(169, '3', '', '', '1', 'RTC', '', '', 'Rough Terrin Crane', 'RTC-01', 'China', '75 Ton', 'ZOOMLION', 'ZRT-75', '2018', 'RTT75-0084', 'Cummins QSB6.7', '22280945', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(170, '3', '', '', '1', 'RTC', '', '', 'Rough Terrin Crane ', 'RTC-02', 'China', '35 Ton', 'ZOOMLION', 'ZRT-35', '2018/12', 'RTT35-0182', 'Cummins QSB6.7', '', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(171, '11', '', '', '1', 'RTC', '', '', 'Rough Terrin Crane', 'RTC-03', 'China', '30 Ton', 'ZOOMLION', 'ZRT-300', '2018/12', 'ZRT300-0003', 'WP6G210E330', '', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(172, '12', '', '', '1', 'SCP', '', '', 'Stationary Concrete Pump', 'SCP-01', 'China', '78/47m3/Hr', 'ZOOMLION', 'HBT60.174RSU', '2018', 'C  001123A118H005', '(DEUTZ)BF6M1013-24T3R/2', 'N/A', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(173, '3', '', '', '1', 'SCP', '', '', 'Stationary Concrete Pump', 'SCP-02', 'China', '78/47m3/Hr', 'ZOOMLION', 'HBT60.174RSU', '2018', 'C  001123A118H004', '(DEUTZ)BF6M1013-24T3R/2', 'N/A', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(174, '11', '', '', '1', 'SCP', '', '', 'Stationary Concrete Pump', 'SCP-03', 'China', '78/47m3/hr', 'ZOOMLION', 'HBT60.174RSU', '2019', '013118-02', 'BF4M1013-16T3R/3', '001141A019H003', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(175, '12', '', '', '1', 'SCP', '', '', 'Stationary Concrete Pump', 'SCP-04', 'India', '', 'Putzmeister', 'BSA1405D', '2020', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(176, '3', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-01', 'China', '9m3', 'ZOOMLION', '9JBH-R', '2018', 'LZZ5BLND0JD475039', '(SINO)WD615.69', 'E 181107017117', 'PCT', 'Break Down', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(177, '3', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-02', 'China', '9m3', 'ZOOMLION', '9JBH-R', '2018', 'LZZ5BLND9JD475038', '(SINO)WD615.69', 'E 181107017107', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(178, '3', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-03', 'China', '9m3', 'ZOOMLION', '9JBH-R', '2018', 'LZZ5BLND7JD475040', '(SINO)WD615.69', 'E 181107017097', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(179, '3', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-04', 'China', '9m3', 'ZOOMLION', '9JBH-R', '2018', 'LZZ5BLND9JD475041', '(SINO)WD615.69', 'E 181107017087', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(180, '11', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-05', 'China', '9m3', 'ZOOMLION', '9JBH-R', '2019', 'LZZ5BLND0KW577334', 'WD61569', '190707017077', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(181, '11', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-06', 'China', '9m3', 'ZOOMLION', '9JBH-R', '2019', 'LZZ5BLH02KW577335', 'WD61569', '190707017067', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(182, '12', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-07', 'India', '7m3', 'TATA+Putzmeister', 'LPK2518,P7', '2020', 'MAT448072L3R02641', '5.9 BSIII', 'B5.91803202A63829141', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(183, '12', '', '', '1', 'TMT', '', '', 'Transit Mixer Truck', 'TMT-08', 'India', '7m3', 'TATA+Putzmeister', 'LPK2518,P7', '2020', 'MAT448072L3R02785', '5.9 BSIII', 'B5.91803202A63828189', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(184, '15', '', '', '1', 'TR', '', '', 'Tandem Roller', 'TR-01', 'China', '9Ton', 'HAMM', 'HD 90', '2019', 'WPGHOH1816HAA03913', 'TCD2012L042V', '12237518', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(185, '15', '', '', '1', 'TWSR', '', '', 'Three Wheel Static Roller', 'TWSR-01', 'China', '12Ton', 'JUMNA', '3YJ10/12', '2019', '', '', '', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(186, '12', '', '', '1', 'TWSR', '', '', 'Three Wheel Static Roller', 'TWSR-02', 'China', '12Ton', 'JUMNA', '3YJ10/12', '2019', '', 'C9150473A', '190908', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(187, '15', '', '', '1', 'TyR', '', '', 'Tyre Roller ', 'Ty. R-01 ', 'Germany', '10T', 'HAMM', 'GRW18', '2018', 'WGHOH190JHAA03244', 'TCD2012L042V', '12388046', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(188, '3', '', '', '1', 'CBP', '', '', ' Concrete Boom Pump', 'CBP-01', 'China', '170/120m3/Hr', 'ZOOMLION', '49X-6RZ', '2018', 'LZZ1BMVF2JW351185', '(SINO) MC11.39-30', 'E 181117218857', 'PCT', 'Running', '', '', 'assigned', '2022-08-01', '', '', '', '', 'ok', '', ''),
(189, '12', '', '', '1', 'TC', '', '', 'Truck Crane', 'TC-01', '', '', 'DONGFENG, XCMG', 'HWE, SQS68', '', 'USED', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(190, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-01', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'JZGDG76307453', '3102IL', '3102IL83G750545F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(191, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-02', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'KZGDG78861953', '3102IL', '3102IL83J780053F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(192, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-03', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'EZGDG75821053', '3102IL', '3102IL83F743659F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(193, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-04', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'EZGDG75812553', '3102IL', '3102IL83F750751F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(194, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-05', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'EZGDG75812153', '3102IL', '3102IL83G70756F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(195, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-06', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'EZGDG75812354', '3102IL', '3102IL83F', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(196, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-07', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'EZGDG75812454', '3102IL', '3102IL82G750751F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(197, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-08', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'EZGDG75812553', '3102IL', '3102IL83C750751F5', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(198, '16', '', '', '1', 'TT', '', '', 'Tractor', 'TT-09', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA212C5YK1227918', 'S325J', 'SJ327EA58014', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(199, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-10', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA212C5YK1228365', 'S325J', 'SJ327EA58027', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(200, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-11', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA212C5YK1227957', 'S325J', 'SJ327EA58004', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(201, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-12', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA66EA7YJ1212970', 'S325J', 'S325J87701', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(202, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-13', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA66EA7YJ1204009', 'S325J', 'S325J74859', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(203, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-14', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA66EA7YJ1212974', 'S325J', 'S325J87702', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(204, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-15', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA66EA7YJ1212962', 'S325J', 'S325J87700', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(205, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-16', 'INDIA ', '1450kgf', 'TAFE', 'TAFE-45DI', '2018', 'MEA66EA7YJ1202596', 'S325J', 'S325J67643', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(206, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-17', 'INDIA ', '1700kgf', 'TAFE', 'TAFE-5450DI', '2018', 'MEA212C5YK1204022', 'SJ327E', 'S325J74856', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(207, '16', '', '', '1', 'TT', '', '', 'Tractor', 'TT-18', 'INDIA ', '1700kgf', 'TAFE', 'TAFE-5450DI', '2018', 'MEA212C5YK1202488', 'SJ327E', 'S325J67642', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(208, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-19', 'INDIA ', '1700kgf', 'TAFE', 'TAFE-5450DI', '2018', 'MEA66EA74J1197363', 'SJ327E', 'S325J45064', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(209, '5', '', '', '1', 'TT', '', '', 'Tractor', 'TT-20', 'INDIA ', '1800kgf', 'SONALIKA', 'DI-50RX', '2017', 'JZGDT674512S3', '3102IL', '310 2IL73H668138F5', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(210, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-21', 'Indian', '100CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA5E0E7YJ1198166', '', 'S325J63687', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(211, '16', '', '', '1', 'TT', '', '', 'Tractor', 'TT-22', 'Indian', '100CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA5EOE7YJ1198168', '', 'S325J63078', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(212, '16', '', '', '1', 'TT', '', '', 'Tractor', 'TT-23', 'Indian', '100CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA5EOE7YJ1198182', '', 'S325J63076', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(213, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-24', 'Indian', '100CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA5E0E7YJ1179351', '', 'S325J34362', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(214, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-25', 'Indian', '100CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA66EA7YJ1197262', '', 'S325J41664', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', '');
INSERT INTO `equipments` (`id`, `project_id`, `project_name`, `sub_project_id`, `equipment_type`, `category`, `date_from`, `date_to`, `name`, `eel_code`, `origin`, `capacity`, `makeby`, `model`, `year_manufacture`, `inventory_sl_no`, `engine_model`, `engine_sl_no`, `present_location`, `present_condition`, `price`, `qr_image`, `assign_status`, `inspaction_date`, `incharge`, `superintend`, `coo_admin`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(215, '16', '', '', '1', 'TT', '', '', 'Tractor', 'TT-26', 'India', '100 CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA5E0E7YJ1217959', 'S 325', 'S325J95448', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(216, '16', '', '', '1', 'TT', '', '', 'Tractor', 'TT-27', 'India', '100 CFT', 'TAFE', 'TAFE-45DI', '2019', 'MEA5E0E7YJ1202372', 'S 325', 'S325J70994', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(217, '11', '', '', '1', 'TT', '', '', 'Tractor', 'TT-28', 'India', '10 Ton', 'TAFE', 'TAFE-45DI', '2019', 'MEA5E0E7YK1227893', 'simpsons S325', 'S325K17491', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(218, '11', '', '', '1', 'TT', '', '', 'Tractor', 'TT-29', 'India', '10 Ton', 'TAFE', 'TAFE-45DI', '2019', 'MEA5E0E7YK1231527', 'simpsons S325', 'S325K16559', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(219, '12', '', '', '1', 'TT', '', '', 'Tractor', 'TT-30', 'India', '2 Ton', 'TAFE', 'TAFE-45DI', '2018', 'MEA66EA7YJ1202590', 'S325', 'S325J67645', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(220, '12', '', '', '1', 'TT', '', '', 'Tractor', 'TT-31', 'India', '2 Ton', 'TAFE', 'TAFE-5900DI', '2019', 'MEA35D85YK1247946', 'S433', 'S433B13855', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(221, '12', '', '', '1', 'TT', '', '', 'Tractor', 'TT-32', 'India', '2 Ton', 'TAFE', 'TAFE-9500DI', '2019', 'MEA8A163YK1253276', 'TSJ327', 'TSJ327A72299', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(222, '12', '', '', '1', 'TT', '', '', 'Tractor', 'TT-33', 'India', '2 Ton', 'TAFE', 'TAFE-9500DI', '2019', 'MEA8A163YK1253240', 'TSJ327', 'TSJ327A72301', 'CWLP', 'Break Down', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(223, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-34', 'INDIA ', '2100kgf', 'TAFE', 'TAFE-5900DI', '2019', 'MEA35D85YK1238738', 'S433B', 'S433B12170', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(224, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-35', 'INDIA ', '2100kgf', 'TAFE', 'TAFE-5900DI', '2019', 'MEA35D85YK1249527', 'S433B', 'S433B14081', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(225, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-36', 'INDIA ', '2100kgf', 'TAFE', 'TAFE-5900DI', '2019', 'MEA35D85YK1249545', 'S433B', 'S433B14080', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(226, '1', '', '', '1', 'TT', '', '', 'Tractor', 'TT-37', 'INDIA ', '2100kgf', 'TAFE', 'TAFE-5900DI', '2019', 'MEA35D85YK1249521', 'S433B', 'S433B14072', 'Payra', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(227, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-38', 'Indian', '100CFT', 'TAFE', 'TAFE5450DI', '2019', 'MEA212C5YK1253369', 'SG327', 'SJ327E A72159', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(228, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-39', 'Indian', '100CFT', 'TAFE', 'TAFE5450DI', '2019', 'MEA212C5YL1255680', 'SG327', 'SJ327EA7484', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(229, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-40', 'Indian', '100CFT', 'TAFE', 'TAFE5450DI', '2019', 'MEA212C5YK1253373', 'SG327', 'SJ327E A71986', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(230, '15', '', '', '1', 'TT', '', '', 'Tractor', 'TT-41', 'Indian', '100CFT', 'TAFE', 'TAFE5450DI', '2019', 'MEA212C5YK1254775', 'SG327', 'SJ327EA73752', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(231, '5', '', '', '1', 'TT', '', '', 'Tractor', 'TT-42', 'Indian', '200CFT', 'TAFE', 'TAFE7515(2WD)', '2021', '', '', '', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(232, '5', '', '', '1', 'TT', '', '', 'Tractor', 'TT-43', 'Indian', '200CFT', 'TAFE', 'TAFE7515(2WD)', '2021', '', '', '', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(233, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-01', '', '', 'PRAMAC', 'LPW8T-KUBOTAZ482', '', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(234, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-02', '', '', 'PRAMAC', 'LPW8T-KUBOTAZ482', '', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(235, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-03', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(236, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-04', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(237, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-05', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(238, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-06', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(239, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-07', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Break Down', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(240, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-08', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(241, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-09', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(242, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-10', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(243, '12', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-11', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(244, '3', '', '', '1', 'TL', '', '', 'Tower Light', 'TL-12', 'China', '5KW', 'AMYTECH', 'GLT-5000S', '2019', '', '', '', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(245, '15', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-01', 'Indian', '10Ton', 'ACE', 'ASD-115', '2018', '100641', '4R1040TA', '4H3303/1720048', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(246, '12', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-02', 'India', '10Ton', 'ACE', 'ASD-115', '2018', '100642', 'ACEAS-115KJO100642', '4H.3303/1720051', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(247, '16', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-03', 'China', '12 Ton', 'Changling', '8108L', '2017', 'LCL8108L 34080036', '6BT5.9-C130', '78449120', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(248, '5', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-04', 'China', '12 Ton', 'Changling', '8108L', '2017', '', '6BT5.9-C130', '78449117', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(249, '5', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-05', 'India', '11 Ton', 'JCB', 'JCB 116DD ', '2020', '2894777', 'JCB Diesel Max TCA-85', 'H00273976', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(250, '5', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-06', 'India', '11 Ton', 'JCB', 'JCB 116DD ', '2020', '2894776', 'JCB Diesel Max TCA-85', 'H00277598', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(251, '5', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-07', 'India', '11 Ton', 'JCB', 'JCB 116DD ', '2020', '2894764', 'JCB Diesel Max TCA-85', 'H00273975', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(252, '5', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-08', 'India', '12 Ton', 'JCB', 'JCB 116DD ', '2020', '2894763', 'JCB Diesel Max TCA-85', 'H00273978', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(253, '5', '', '', '1', 'ViR', '', '', 'Vibratory Roller', 'VR-09', 'India', '12 Ton', 'JCB', 'JCB 116DD ', '2020', '2894762', 'JCB Diesel Max TCA-85', 'H00273977', 'Bhashanchar', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(254, '15', '', '', '1', 'WT', '', '', 'Water Tanker', 'WT-01', 'China', '6Ton', 'SINO', 'H5B', '2019', 'LEZADIEC4KF006518', 'YC6J190-33', 'JID15K30027', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(255, '5', '', '', '1', 'WT', '', '', 'Water Tanker', 'WT-02', 'India', '5000 LTR', 'TAFE', '', '2021', '', '', '', 'Bhashanchor', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(256, '3', '', '', '1', 'WB', '', '', 'Weigh Bridge', 'WS-01', 'China', '60 Ton', 'NICOL', '', '2018', '', '', '', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(257, '12', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-01', '', '', 'POWER PLUS', 'PP-938-V', '', '', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(258, '12', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-02', 'China', '3 Ton', 'POWER PLUS', 'PP-938-V', '2018', '', 'EBT5.9-G130-II', '78661061', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(259, '15', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-03', 'China', '3Ton', 'LONG KING', 'LG833N', '2018', 'LSH0833NTJAC130321', 'WP6G125E22', 'DHB06G023501', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(260, '3', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-04', 'China', '5 Ton', 'LONG KING', 'LG833N', '2018', 'LSH050NCVJAC12977', 'WD10G220E21', 'E WD10G220E21', 'PCT', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(261, '15', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-05', 'China', '5 Ton', 'LONG KING', 'ZL50C', '2018', 'LSH050NCCJACA12976', 'WD10G220E21', '1218J008096', 'Gohira', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(262, '16', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-06', 'China', '2.5 Ton', 'LONG KING', 'G833N', '2018', 'LSH0833NCJAC13020', 'WP6G125E22', '', 'MCC', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(263, '11', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-07', 'China', '3 Ton', 'LONG KING', 'LG833N', '2019', 'LSH0833NHKA707433', 'WP6G125E22', 'S0619070840', 'Mongla', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(264, '12', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-08', 'China', '3 Ton', 'LONG KING', 'LG833N', '2019', 'LSH0833NEKA707434', '', '', 'CWLP', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(265, '5', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-09', 'Korea', '5 Ton', 'DOOSAN', 'SD300N', '2020', 'CWLCD-020370', 'WD10G220E23', '1220K008511', 'Bhashanchor', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(266, '5', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-10', 'Korea', '5 Ton', 'DOOSAN', 'SD300N', '2020', 'CWLCD-020371', 'WD10G220E23', '1220K008511', 'Bhashanchor', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(267, '5', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-11', 'Korea', '5 Ton', 'DOOSAN', 'SD300N', '2020', 'CWLCD-020372', 'WD10G220E23', '1220K007942', 'Bhashanchor', 'Running', '', '', 'assigned', '', '', '', '', '', '', '', ''),
(268, '3', '', '', '1', 'WL', '', '', 'Wheel Loader', 'WL-12', 'China', '5 Ton', 'DOOSAN', 'SD300N', '2022', 'DXCCWLLCDHN0020806', 'WD10G220E23', '1221K014001', 'PCT', 'Under Commi.', '', '', 'assigned', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `equipments_view`
-- (See below for the actual view)
--
CREATE TABLE `equipments_view` (
`name` varchar(500)
,`eel_code` varchar(100)
,`capacity` varchar(100)
,`makeby` varchar(100)
,`model` varchar(100)
,`project_name` varchar(500)
,`present_condition` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_assign`
--

CREATE TABLE `equipment_assign` (
  `id` int(11) NOT NULL,
  `eel_code` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `sub_project_id` varchar(100) NOT NULL,
  `equipment_type` varchar(100) NOT NULL,
  `assign_date` date NOT NULL,
  `refund_date` varchar(100) NOT NULL,
  `remarks` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment_assign`
--

INSERT INTO `equipment_assign` (`id`, `eel_code`, `project_id`, `sub_project_id`, `equipment_type`, `assign_date`, `refund_date`, `remarks`) VALUES
(1, 'AC-01', '15', '', '1', '2020-01-01', '', ''),
(2, 'AC-02', '3', '', '1', '2020-01-02', '', ''),
(3, 'AC-03', '12', '', '1', '2020-01-03', '', ''),
(4, 'AC-04', '3', '', '1', '2020-01-04', '', ''),
(5, 'AC-05', '5', '', '1', '2020-01-05', '', ''),
(6, 'AC-06', '11', '', '1', '2020-01-06', '', ''),
(7, 'Ex. Am-01', '19', '', '1', '2020-01-07', '', ''),
(8, 'Ex. Am-02', '12', '', '1', '2020-01-08', '', ''),
(9, 'ASP-01', '15', '', '1', '2020-01-09', '', ''),
(10, 'BL-01', '16', '', '1', '2020-01-10', '', ''),
(11, 'BL-02', '15', '', '1', '2020-01-11', '', ''),
(12, 'BD-01', '1', '', '1', '2020-01-12', '', ''),
(13, 'BD-02', '20', '', '1', '2020-01-13', '', ''),
(14, 'BD-03', '11', '', '1', '2020-01-14', '', ''),
(15, 'BD-04', '5', '', '1', '2020-01-15', '', ''),
(16, 'BD-05', '5', '', '1', '2020-01-16', '', ''),
(17, 'BD-06', '5', '', '1', '2020-01-17', '', ''),
(18, 'BD-07', '5', '', '1', '2020-01-18', '', ''),
(19, 'BD-08', '5', '', '1', '2020-01-19', '', ''),
(20, 'BD-09', '5', '', '1', '2020-01-20', '', ''),
(21, 'BD-10', '5', '', '1', '2020-01-21', '', ''),
(22, 'BD-11', '5', '', '1', '2020-01-22', '', ''),
(23, 'BD-12', '5', '', '1', '2020-01-23', '', ''),
(24, 'BD-13', '5', '', '1', '2020-01-24', '', ''),
(25, 'BD-14', '5', '', '1', '2020-01-25', '', ''),
(26, 'BD-15', '5', '', '1', '2020-01-26', '', ''),
(27, 'BT. D -01', '15', '', '1', '2020-01-27', '', ''),
(28, 'CC-01', '3', '', '1', '2020-01-28', '', ''),
(29, 'CC-02', '3', '', '1', '2020-01-29', '', ''),
(30, 'CC-03', '3', '', '1', '2020-01-30', '', ''),
(31, 'CC-04', '11', '', '1', '2020-01-31', '', ''),
(32, 'CC-05', '11', '', '1', '2020-02-01', '', ''),
(33, 'CBP-01', '3', '', '1', '2020-02-02', '', ''),
(34, 'CBP-02', '3', '', '1', '2020-02-03', '', ''),
(35, 'CBP-03', '11', '', '1', '2020-02-04', '', ''),
(36, 'CBP-04', '11', '', '1', '2020-02-05', '', ''),
(37, 'CBM-01', '11', '', '1', '2020-02-06', '', ''),
(38, 'DT-01', '11', '', '1', '2020-02-07', '', ''),
(39, 'DT-02', '11', '', '1', '2020-02-08', '', ''),
(40, 'DT-03', '15', '', '1', '2020-02-09', '', ''),
(41, 'DT-04', '15', '', '1', '2020-02-10', '', ''),
(42, 'DT-05', '16', '', '1', '2020-02-11', '', ''),
(43, 'DT-06', '15', '', '1', '2020-02-12', '', ''),
(44, 'DT-07', '3', '', '1', '2020-02-13', '', ''),
(45, 'DT-08', '12', '', '1', '2020-02-14', '', ''),
(46, 'DT-09', '11', '', '1', '2020-02-15', '', ''),
(47, 'DT-10', '3', '', '1', '2020-02-16', '', ''),
(48, 'DT-11', '12', '', '1', '2020-02-17', '', ''),
(49, 'DT-12', '15', '', '1', '2020-02-18', '', ''),
(50, 'DT-13', '16', '', '1', '2020-02-19', '', ''),
(51, 'DT-14', '12', '', '1', '2020-02-20', '', ''),
(52, 'DT-15', '12', '', '1', '2020-02-21', '', ''),
(53, 'DT-16', '15', '', '1', '2020-02-22', '', ''),
(54, 'DT-17', '15', '', '1', '2020-02-23', '', ''),
(55, 'DT-18', '12', '', '1', '2020-02-24', '', ''),
(56, 'DT-19', '11', '', '1', '2020-02-25', '', ''),
(57, 'DT-20', '12', '', '1', '2020-02-26', '', ''),
(58, 'DT-21', '11', '', '1', '2020-02-27', '', ''),
(59, 'DT-22', '12', '', '1', '2020-02-28', '', ''),
(60, 'DT-23', '5', '', '1', '2020-02-29', '', ''),
(61, 'DT-24', '5', '', '1', '2020-03-01', '', ''),
(62, 'DT-25', '5', '', '1', '2020-03-02', '', ''),
(63, 'DT-26', '5', '', '1', '2020-03-03', '', ''),
(64, 'DT-27', '5', '', '1', '2020-03-04', '', ''),
(65, 'DT-28', '5', '', '1', '2020-03-05', '', ''),
(66, 'DT-29', '5', '', '1', '2020-03-06', '', ''),
(67, 'DT-30', '5', '', '1', '2020-03-07', '', ''),
(68, 'DT-31', '5', '', '1', '2020-03-08', '', ''),
(69, 'DT-32', '5', '', '1', '2020-03-09', '', ''),
(70, 'DT-33', '5', '', '1', '2020-03-10', '', ''),
(71, 'DT-34', '5', '', '1', '2020-03-11', '', ''),
(72, 'DT-35', '5', '', '1', '2020-03-12', '', ''),
(73, 'DT-36', '5', '', '1', '2020-03-13', '', ''),
(74, 'DT-37', '5', '', '1', '2020-03-14', '', ''),
(75, 'DDVC-01', '16', '', '1', '2020-03-15', '', ''),
(76, 'DDVC-02', '15', '', '1', '2020-03-16', '', ''),
(77, 'DH-01', '11', '', '1', '2020-03-17', '', ''),
(78, 'DH-02', '3', '', '1', '2020-03-18', '', ''),
(79, 'D Gn-01', '12', '', '1', '2020-03-19', '', ''),
(80, 'D Gn-02', '5', '', '1', '2020-03-20', '', ''),
(81, 'D Gn-03', '5', '', '1', '2020-03-21', '', ''),
(82, 'D Gn-04', '5', '', '1', '2020-03-22', '', ''),
(83, 'D Gn-05', '1', '', '1', '2020-03-23', '', ''),
(84, 'D Gn-06', '1', '', '1', '2020-03-24', '', ''),
(85, 'D Gn-07', '1', '', '1', '2020-03-25', '', ''),
(86, 'D Gn-08', '1', '', '1', '2020-03-26', '', ''),
(87, 'D Gn-09', '1', '', '1', '2020-03-27', '', ''),
(88, 'D Gn-10', '1', '', '1', '2020-03-28', '', ''),
(89, 'D Gn-11', '3', '', '1', '2020-03-29', '', ''),
(90, 'D Gn-12', '3', '', '1', '2020-03-30', '', ''),
(91, 'D Gn-13', '3', '', '1', '2020-03-31', '', ''),
(92, 'D Gn-14,', '3', '', '1', '2020-04-01', '', ''),
(93, 'D Gn-15', '12', '', '1', '2020-04-02', '', ''),
(94, 'D Gn-16', '1', '', '1', '2020-04-03', '', ''),
(95, 'D Gn-17', '15', '', '1', '2020-04-04', '', ''),
(96, 'D Gn-18', '18', '', '1', '2020-04-05', '', ''),
(97, 'D Gn-19', '18', '', '1', '2020-04-06', '', ''),
(98, 'D Gn-20', '18', '', '1', '2020-04-07', '', ''),
(99, 'D Gn-21', '1', '', '1', '2020-04-08', '', ''),
(100, 'D Gn-22', '15', '', '1', '2020-04-09', '', ''),
(101, 'D Gn-23', '11', '', '1', '2020-04-10', '', ''),
(102, 'D Gn-24', '15', '', '1', '2020-04-11', '', ''),
(103, 'D Gn-25', '15', '', '1', '2020-04-12', '', ''),
(104, 'D Gn-26', '11', '', '1', '2020-04-13', '', ''),
(105, 'D Gn-27', '12', '', '1', '2020-04-14', '', ''),
(106, 'D Gn-28', '5', '', '1', '2020-04-15', '', ''),
(107, 'D Gn-29', '12', '', '1', '2020-04-16', '', ''),
(108, 'D Gn-30', '1', '', '1', '2020-04-17', '', ''),
(109, 'D Gn-31', '11', '', '1', '2020-04-18', '', ''),
(110, 'D Gn-32', '1', '', '1', '2020-04-19', '', ''),
(111, 'D Gn-33', '1', '', '1', '2020-04-20', '', ''),
(112, 'D Gn-34', '1', '', '1', '2020-04-21', '', ''),
(113, 'D Gn-35', '1', '', '1', '2020-04-22', '', ''),
(114, 'D Gn-36', '1', '', '1', '2020-04-23', '', ''),
(115, 'D Gn-37', '1', '', '1', '2020-04-24', '', ''),
(116, 'D Gn-38', '5', '', '1', '2020-04-25', '', ''),
(117, 'D Gn-39', '5', '', '1', '2020-04-26', '', ''),
(118, 'D Gn-40', '12', '', '1', '2020-04-27', '', ''),
(119, 'D Gn-41', '12', '', '1', '2020-04-28', '', ''),
(120, 'D Gn-42', '15', '', '1', '2020-04-29', '', ''),
(121, 'D Gn-43', '16', '', '1', '2020-04-30', '', ''),
(122, 'DRG-01', '6', '', '1', '2020-05-01', '', ''),
(123, 'DRG-02', '6', '', '1', '2020-05-02', '', ''),
(124, 'DRG-03', '6', '', '1', '2020-05-03', '', ''),
(125, 'Ex- 01', '19', '', '1', '2020-05-04', '', ''),
(126, 'Ex- 02', '', '', '1', '2020-05-05', '', ''),
(127, 'Ex-03', '12', '', '1', '2020-05-06', '', ''),
(128, 'Ex-04', '15', '', '1', '2020-05-07', '', ''),
(129, 'Ex-05', '12', '', '1', '2020-05-08', '', ''),
(130, 'Ex-06', '12', '', '1', '2020-05-09', '', ''),
(131, 'Ex-07', '12', '', '1', '2020-05-10', '', ''),
(132, 'Ex-08', '19', '', '1', '2020-05-11', '', ''),
(133, 'Ex-09', '12', '', '1', '2020-05-12', '', ''),
(134, 'Ex-10', '11', '', '1', '2020-05-13', '', ''),
(135, 'Ex-11', '19', '', '1', '2020-05-14', '', ''),
(136, 'Ex-12', '12', '', '1', '2020-05-15', '', ''),
(137, 'Ex-13', '16', '', '1', '2020-05-16', '', ''),
(138, 'Ex-14', '15', '', '1', '2020-05-17', '', ''),
(139, 'Ex-15', '5', '', '1', '2020-05-18', '', ''),
(140, 'Ex-16', '5', '', '1', '2020-05-19', '', ''),
(141, 'Ex-17', '5', '', '1', '2020-05-20', '', ''),
(142, 'Ex-18', '12', '', '1', '2020-05-21', '', ''),
(143, 'Ex-19', '5', '', '1', '2020-05-22', '', ''),
(144, 'Ex-20', '5', '', '1', '2020-05-23', '', ''),
(145, 'Ex-21', '5', '', '1', '2020-05-24', '', ''),
(146, 'Ex-22', '5', '', '1', '2020-05-25', '', ''),
(147, 'Ex-23', '5', '', '1', '2020-05-26', '', ''),
(148, 'Ex-24', '5', '', '1', '2020-05-27', '', ''),
(149, 'Ex-25', '5', '', '1', '2020-05-28', '', ''),
(150, 'Ex-26', '12', '', '1', '2020-05-29', '', ''),
(151, 'Ex-27', '3', '', '1', '2020-05-30', '', ''),
(152, 'FL-01', '18', '', '1', '2020-05-31', '', ''),
(153, 'FL- 02', '17', '', '1', '2020-06-01', '', ''),
(154, 'FL-03', '11', '', '1', '2020-06-02', '', ''),
(155, 'FL-04', '17', '', '1', '2020-06-03', '', ''),
(156, 'Hy. B-01', '15', '', '1', '2020-06-04', '', ''),
(157, 'Hy. B-02', '12', '', '1', '2020-06-05', '', ''),
(158, 'M. Gr-01', '15', '', '1', '2020-06-06', '', ''),
(159, 'M.GR-02', '11', '', '1', '2020-06-07', '', ''),
(160, 'M. GR-03', '5', '', '1', '2020-06-08', '', ''),
(161, 'Asp F-01', '15', '', '1', '2020-06-09', '', ''),
(162, 'LB-01', '3', '', '1', '2020-06-10', '', ''),
(163, 'LB-02', '11', '', '1', '2020-06-11', '', ''),
(164, 'PL-01-14', '7', '', '1', '2020-06-12', '', ''),
(165, 'PL-15', '3', '', '1', '2020-06-13', '', ''),
(166, 'PL-16-18', '5', '', '1', '2020-06-14', '', ''),
(167, 'PL-19-20', '15', '', '1', '2020-06-15', '', ''),
(168, 'PG-01', '11', '', '1', '2020-06-16', '', ''),
(169, 'RTC-01', '3', '', '1', '2020-06-17', '', ''),
(170, 'RTC-02', '3', '', '1', '2020-06-18', '', ''),
(171, 'RTC-03', '11', '', '1', '2020-06-19', '', ''),
(172, 'SCP-01', '12', '', '1', '2020-06-20', '', ''),
(173, 'SCP-02', '3', '', '1', '2020-06-21', '', ''),
(174, 'SCP-03', '11', '', '1', '2020-06-22', '', ''),
(175, 'SCP-04', '12', '', '1', '2020-06-23', '', ''),
(176, 'TMT-01', '3', '', '1', '2020-06-24', '', ''),
(177, 'TMT-02', '3', '', '1', '2020-06-25', '', ''),
(178, 'TMT-03', '3', '', '1', '2020-06-26', '', ''),
(179, 'TMT-04', '3', '', '1', '2020-06-27', '', ''),
(180, 'TMT-05', '11', '', '1', '2020-06-28', '', ''),
(181, 'TMT-06', '11', '', '1', '2020-06-29', '', ''),
(182, 'TMT-07', '12', '', '1', '2020-06-30', '', ''),
(183, 'TMT-08', '12', '', '1', '2020-07-01', '', ''),
(184, 'TR-01', '15', '', '1', '2020-07-02', '', ''),
(185, 'TWSR-01', '15', '', '1', '2020-07-03', '', ''),
(186, 'TWSR-02', '12', '', '1', '2020-07-04', '', ''),
(187, 'Ty. R-01 ', '15', '', '1', '2020-07-05', '', ''),
(188, 'CBP-01', '3', '', '1', '2020-07-06', '', ''),
(189, 'TC-01', '12', '', '1', '2020-07-07', '', ''),
(190, 'TT-01', '1', '', '1', '2020-07-08', '', ''),
(191, 'TT-02', '1', '', '1', '2020-07-09', '', ''),
(192, 'TT-03', '1', '', '1', '2020-07-10', '', ''),
(193, 'TT-04', '1', '', '1', '2020-07-11', '', ''),
(194, 'TT-05', '1', '', '1', '2020-07-12', '', ''),
(195, 'TT-06', '1', '', '1', '2020-07-13', '', ''),
(196, 'TT-07', '1', '', '1', '2020-07-14', '', ''),
(197, 'TT-08', '1', '', '1', '2020-07-15', '', ''),
(198, 'TT-09', '16', '', '1', '2020-07-16', '', ''),
(199, 'TT-10', '1', '', '1', '2020-07-17', '', ''),
(200, 'TT-11', '1', '', '1', '2020-07-18', '', ''),
(201, 'TT-12', '1', '', '1', '2020-07-19', '', ''),
(202, 'TT-13', '1', '', '1', '2020-07-20', '', ''),
(203, 'TT-14', '1', '', '1', '2020-07-21', '', ''),
(204, 'TT-15', '1', '', '1', '2020-07-22', '', ''),
(205, 'TT-16', '1', '', '1', '2020-07-23', '', ''),
(206, 'TT-17', '1', '', '1', '2020-07-24', '', ''),
(207, 'TT-18', '16', '', '1', '2020-07-25', '', ''),
(208, 'TT-19', '1', '', '1', '2020-07-26', '', ''),
(209, 'TT-20', '5', '', '1', '2020-07-27', '', ''),
(210, 'TT-21', '15', '', '1', '2020-07-28', '', ''),
(211, 'TT-22', '16', '', '1', '2020-07-29', '', ''),
(212, 'TT-23', '16', '', '1', '2020-07-30', '', ''),
(213, 'TT-24', '15', '', '1', '2020-07-31', '', ''),
(214, 'TT-25', '15', '', '1', '2020-08-01', '', ''),
(215, 'TT-26', '16', '', '1', '2020-08-02', '', ''),
(216, 'TT-27', '16', '', '1', '2020-08-03', '', ''),
(217, 'TT-28', '11', '', '1', '2020-08-04', '', ''),
(218, 'TT-29', '11', '', '1', '2020-08-05', '', ''),
(219, 'TT-30', '12', '', '1', '2020-08-06', '', ''),
(220, 'TT-31', '12', '', '1', '2020-08-07', '', ''),
(221, 'TT-32', '12', '', '1', '2020-08-08', '', ''),
(222, 'TT-33', '12', '', '1', '2020-08-09', '', ''),
(223, 'TT-34', '1', '', '1', '2020-08-10', '', ''),
(224, 'TT-35', '1', '', '1', '2020-08-11', '', ''),
(225, 'TT-36', '1', '', '1', '2020-08-12', '', ''),
(226, 'TT-37', '1', '', '1', '2020-08-13', '', ''),
(227, 'TT-38', '15', '', '1', '2020-08-14', '', ''),
(228, 'TT-39', '15', '', '1', '2020-08-15', '', ''),
(229, 'TT-40', '15', '', '1', '2020-08-16', '', ''),
(230, 'TT-41', '15', '', '1', '2020-08-17', '', ''),
(231, 'TT-42', '5', '', '1', '2020-08-18', '', ''),
(232, 'TT-43', '5', '', '1', '2020-08-19', '', ''),
(233, 'TL-01', '12', '', '1', '2020-08-20', '', ''),
(234, 'TL-02', '12', '', '1', '2020-08-21', '', ''),
(235, 'TL-03', '12', '', '1', '2020-08-22', '', ''),
(236, 'TL-04', '12', '', '1', '2020-08-23', '', ''),
(237, 'TL-05', '12', '', '1', '2020-08-24', '', ''),
(238, 'TL-06', '12', '', '1', '2020-08-25', '', ''),
(239, 'TL-07', '12', '', '1', '2020-08-26', '', ''),
(240, 'TL-08', '12', '', '1', '2020-08-27', '', ''),
(241, 'TL-09', '12', '', '1', '2020-08-28', '', ''),
(242, 'TL-10', '12', '', '1', '2020-08-29', '', ''),
(243, 'TL-11', '12', '', '1', '2020-08-30', '', ''),
(244, 'TL-12', '3', '', '1', '2020-08-31', '', ''),
(245, 'VR-01', '15', '', '1', '2020-09-01', '', ''),
(246, 'VR-02', '12', '', '1', '2020-09-02', '', ''),
(247, 'VR-03', '16', '', '1', '2020-09-03', '', ''),
(248, 'VR-04', '5', '', '1', '2020-09-04', '', ''),
(249, 'VR-05', '5', '', '1', '2020-09-05', '', ''),
(250, 'VR-06', '5', '', '1', '2020-09-06', '', ''),
(251, 'VR-07', '5', '', '1', '2020-09-07', '', ''),
(252, 'VR-08', '5', '', '1', '2020-09-08', '', ''),
(253, 'VR-09', '5', '', '1', '2020-09-09', '', ''),
(254, 'WT-01', '15', '', '1', '2020-09-10', '', ''),
(255, 'WT-02', '5', '', '1', '2020-09-11', '2021-09-11', ''),
(256, 'WS-01', '3', '', '1', '2020-09-12', '', ''),
(257, 'WL-01', '12', '', '1', '2020-09-13', '', ''),
(258, 'WL-02', '12', '', '1', '2020-09-14', '', ''),
(259, 'WL-03', '15', '', '1', '2020-09-15', '', ''),
(260, 'WL-04', '3', '', '1', '2020-09-16', '', ''),
(261, 'WL-05', '15', '', '1', '2020-09-17', '', ''),
(262, 'WL-06', '16', '', '1', '2020-09-18', '', ''),
(263, 'WL-07', '11', '', '1', '2020-09-19', '', ''),
(264, 'WL-08', '12', '', '1', '2020-09-20', '', ''),
(265, 'WL-09', '5', '', '1', '2020-09-21', '', ''),
(266, 'WL-10', '5', '', '1', '2020-09-22', '', ''),
(267, 'WL-11', '5', '', '1', '2020-09-23', '', ''),
(268, 'WL-12', '3', '', '1', '2020-09-24', '', ''),
(386, 'WT-02', '1', '', '1', '2021-09-11', '2022-06-11', 'erer'),
(387, 'WT-02', '4', '', '1', '2022-06-11', '2022-07-11', 'Test'),
(388, 'WT-02', '6', '', '1', '2022-07-11', '2022-07-30', 'test'),
(390, 'WT-02', '5', '', '1', '2022-07-30', '', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `inspaction`
--

CREATE TABLE `inspaction` (
  `id` int(11) NOT NULL,
  `eel_code` varchar(100) NOT NULL,
  `ins_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inspaction`
--

INSERT INTO `inspaction` (`id`, `eel_code`, `ins_date`, `status`, `remarks`) VALUES
(8, 'AC-02', '2022-11-03', 'ok', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(1, 'kg'),
(2, 'bag'),
(3, 'pcs'),
(4, 'Ton'),
(6, 'ltr'),
(7, 'Drum'),
(8, 'CFT'),
(9, 'Nos'),
(12, 'RFT'),
(13, 'Coil '),
(14, 'SFT'),
(15, 'Gallon'),
(16, 'Bundle'),
(17, 'Dozn'),
(18, 'Roll'),
(19, 'set'),
(20, 'Box'),
(21, 'Liter');

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
  `schedule_hrkm` int(11) NOT NULL,
  `present_hrkm` int(100) NOT NULL,
  `nextservice_date` date NOT NULL,
  `nextservice_hrkm` int(100) NOT NULL,
  `dueforservice_hrkm` int(100) NOT NULL,
  `typeofservice_hrkm` int(20) NOT NULL,
  `detailsofmaintenance` varchar(500) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_cost`
--

CREATE TABLE `maintenance_cost` (
  `id` int(11) NOT NULL,
  `m_cost_id` varchar(50) NOT NULL,
  `eel_code` varchar(20) NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `problem_details` longtext NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `certified_by` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_mechanic`
--

CREATE TABLE `maintenance_mechanic` (
  `id` int(11) NOT NULL,
  `m_cost_id` varchar(50) NOT NULL,
  `mechanic_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_spare_parts`
--

CREATE TABLE `maintenance_spare_parts` (
  `id` int(11) NOT NULL,
  `m_cost_id` varchar(50) NOT NULL,
  `spare_parts_name` varchar(200) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `rate` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `middle_datas`
--

CREATE TABLE `middle_datas` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `data_details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `middle_datas`
--

INSERT INTO `middle_datas` (`id`, `name`, `data_details`) VALUES
(1, 'department', '{\"1\":[\"Management\",\"Market Development\",\"Finance And Accounts\",\"Administration\",\"Dredging\",\"Engineering\",\"Project ENG\",\"Operation\",\"Maintenance\",\"QMS\",\"Mechanical\",\"Civil\",\"Commercial\",\"Store\"],\"2\":[\"Engineering\",\"Civil\"],\"3\":[\"Management\",\"Administration\",\"Project\",\"Finance And Accounts\"],\"4\":[\"Sales And Marketing\",\"Service\",\"Project\",\"Administration\",\"Finance And Accounts\"],\"5\":[\"Management\",\"Finance And Accounts\",\"QMS\",\"Human Resource Management\",\"Purchase And Procurement\",\"Legal\",\"Administration\",\"IT\",\"Commercial\",\"Project\",\"Business Development\",\"Brand Communication\",\"Share Market\",\"Enterprise Resource Planning\",\"Operation\",\"Service And WSS\"],\"6\":[\"Management\",\"Commercial\",\"Project Development And Implemantaion\",\"RAndD\",\"Factory Operation\",\"Administration\",\"Finance And Accounts\",\"Plate Preparation\",\"Charging\",\"Quality Assurance\",\"Maintenance\",\"Warehouse And Logistics\",\"Assembly\",\"CMP\",\"Service And WSS\",\"QMS\",\"Sales And Marketing\",\"IT\",\"Marketing And Sales- Export And Corporate\",\"MC\",\"Sales Operation\",\"Planning And Coordination\",\"Store\",\"Gel And VRLA\",\"Purchase And Procurement\"],\"7\":[\"Management\",\"Operation\",\"Finance And Accounts\",\"Administration\",\"Service And Maintanance\",\"Sales And Marketing\",\"Store\"],\"8\":[\"Project\",\"Switch Gear\",\"Operation\",\"Administration\"],\"9\":[\"Sales And Marketing\"],\"10\":[\"Service\"],\"11\":[\"Finance And Accounts\",\"Service\",\"Operation\",\"Sales And Marketing\",\"Administration\",\"Pre Sales\",\"Maintenance\",\"Group Customer Care\",\"Marine\"],\"12\":[\"Documentation\",\"Billing\",\"Operation\",\"Administration\",\"Store\",\"Finance And Accounts\",\"Purchase And Procurement\",\"CTMS\",\"SC\",\"Ship Planning\",\"Terminal Operation\",\"RMG\",\"RTG\",\"Winch\",\"CCT Yard\",\"Strategic Planning And Terminal Operation\",\"NCT Yard\",\"CFS\",\"FLT\",\"Yard Planning And Documentation\",\"CCT Lasher\",\"ITV\",\"QGC\",\"Quay Yard Supervisor\",\"Delivery\",\"NCT Lasher\"],\"13\":[\"Operation\",\"Service\",\"Maintenance\",\"Administration\"],\"14\":[\"Maintenance\",\"QGC and RTG\",\"PM and FLT\",\"Purchase And Procurement\",\"Store\",\"Administration\",\"QGC Maintanence\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `notesheets`
--

CREATE TABLE `notesheets` (
  `id` int(11) NOT NULL,
  `notesheet_no` varchar(50) NOT NULL,
  `notesheet_id` int(11) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `subject` longtext NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `concern_person` varchar(50) NOT NULL,
  `cell_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `item` varchar(500) NOT NULL,
  `part_no` varchar(100) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `unit_price` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `status` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notesheets_master`
--

CREATE TABLE `notesheets_master` (
  `id` int(11) NOT NULL,
  `notesheet_no` varchar(100) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `ns_info` longtext NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `concern_person` varchar(100) NOT NULL,
  `cell_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_of_item` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `ait` float NOT NULL,
  `vat` float NOT NULL,
  `grand_total` float NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(15) NOT NULL,
  `notesheet_status` tinyint(1) NOT NULL,
  `is_viewd` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(20) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notesheet_access_chain`
--

CREATE TABLE `notesheet_access_chain` (
  `id` int(11) NOT NULL,
  `chain_type` varchar(150) NOT NULL DEFAULT 'default',
  `division_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `notesheet_type` int(11) DEFAULT NULL,
  `users` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notesheet_access_chain`
--

INSERT INTO `notesheet_access_chain` (`id`, `chain_type`, `division_id`, `department_id`, `project_id`, `notesheet_type`, `users`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(22, 'default', 1, 11, 21, 0, '{\"222\":\"1\",\"616\":\"1\",\"614\":\"1\"}', 1, '2022-11-08 12:06:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notesheet_acknowledgement`
--

CREATE TABLE `notesheet_acknowledgement` (
  `id` int(11) NOT NULL,
  `notesheet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ack_order` int(11) NOT NULL COMMENT 'acknowledge order to show the RLP',
  `ack_status` tinyint(4) NOT NULL DEFAULT 0,
  `ack_request_date` datetime NOT NULL,
  `ack_updated_date` datetime DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not visible; 1= visible',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notesheet_remarks_history`
--

CREATE TABLE `notesheet_remarks_history` (
  `id` int(11) NOT NULL,
  `notesheet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `remarks_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page_details`
--

CREATE TABLE `page_details` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `short_name` varchar(250) NOT NULL,
  `page_type` varchar(100) NOT NULL,
  `route_name` varchar(750) NOT NULL,
  `icon_class` varchar(250) NOT NULL,
  `cards_class` varchar(250) NOT NULL,
  `show_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page_details`
--

INSERT INTO `page_details` (`id`, `name`, `short_name`, `page_type`, `route_name`, `icon_class`, `cards_class`, `show_order`) VALUES
(1, 'Dashboard', 'dashboard', 'main', 'dashboard', '', '', 1),
(2, 'Settings', 'settings', 'main', '', '', '', 2),
(3, 'Users', 'users', 'main', '', '', '', 3),
(4, 'Role Access', 'ra', 'main', '', '', '', 4),
(5, 'Create RLP', 'crlp', 'main', '', '', '', 5),
(6, 'RLP List', 'rlp_list', 'main', '', '', '', 6),
(7, 'RLP Report', 'rlp_report', 'main', '', '', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `plant_and_equipment`
--

CREATE TABLE `plant_and_equipment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `equipment_type` int(11) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `name` varchar(700) DEFAULT NULL,
  `eel_code` varchar(300) DEFAULT NULL,
  `country_of_origin` varchar(400) DEFAULT NULL,
  `capacity` varchar(300) DEFAULT NULL,
  `make_by` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `year_of_manufac` int(11) DEFAULT NULL,
  `present_location` varchar(300) DEFAULT NULL,
  `present_condition` varchar(400) DEFAULT NULL,
  `remarks` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plant_and_equipment`
--

INSERT INTO `plant_and_equipment` (`id`, `project_id`, `equipment_type`, `date_form`, `date_to`, `name`, `eel_code`, `country_of_origin`, `capacity`, `make_by`, `model`, `year_of_manufac`, `present_location`, `present_condition`, `remarks`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 3, 1, NULL, NULL, 'Dump Truck', 'DT-01', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'PCT Yard', NULL, 'No Comments', 5, NULL, '2019-05-14 11:18:42', '2019-05-25 17:34:47', NULL),
(10, 4, 1, NULL, NULL, 'Dump Truck', 'DT-02', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-14 11:22:15', '2019-05-25 17:35:02', NULL),
(11, 10, 1, NULL, NULL, 'Dump Truck', 'DT-03', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'Raozan Road Project', '2', 'No Comments', 5, NULL, '2019-05-14 11:24:44', '2019-05-25 17:35:20', NULL),
(12, 3, 1, NULL, NULL, 'Dump Truck', 'DT-04', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-14 12:05:17', '2019-05-25 17:35:38', NULL),
(13, 4, 1, NULL, NULL, 'Dump Truck', 'DT-05', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'NCT,Ctg', NULL, 'No Comments', 5, NULL, '2019-05-14 12:08:58', '2019-05-25 17:32:45', NULL),
(14, 10, 1, NULL, NULL, 'Dump Truck', 'DT-06', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'Raozan Road Project', '2', 'No Comments', 5, NULL, '2019-05-14 12:11:01', '2019-05-25 17:32:24', NULL),
(15, 3, 1, NULL, NULL, 'Dump Truck', 'DT-07', '44', '16m3', 'SINO', 'ZZ257N33647', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-14 12:15:28', '2019-05-25 17:32:07', NULL),
(16, 8, 1, NULL, NULL, 'Dump Truck', 'DT-08', '44', '16m3', 'SINO', 'ZZ257N33647', 2018, 'Water  logging', '2', 'No Comments', 5, NULL, '2019-05-14 12:18:17', '2019-05-25 17:31:47', NULL),
(17, 3, 1, NULL, NULL, 'Prime Mover (Low Bed)', 'LB-01', '44', '80 Ton', 'SINO', 'ZZ4257V3241W TAZ9950TDP', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-14 12:20:57', '2019-05-25 17:28:13', NULL),
(18, 3, 1, NULL, NULL, 'Prime Mover (Low Bed)', 'LB-02', '44', '80 Ton', 'SINO', 'ZZ4257V3241W TAZ9950TDP', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-14 18:36:45', '2019-05-25 17:28:33', NULL),
(19, 4, 1, NULL, NULL, 'Excavator (standard)', 'EX-01', '113', '0.70 m3', 'DOOSAN', 'DX225LCA', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-14 19:32:07', '2019-05-25 17:31:31', NULL),
(20, 4, 1, NULL, NULL, 'Excavator (standard)', 'EX-02', '113', '0.70 m3', 'DOOSAN', 'DX225LCA', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-14 19:33:26', '2019-05-25 17:31:14', NULL),
(21, 8, 1, NULL, NULL, 'Excavator(With Breaker)', 'EX-03', '44', '0.90m3', 'ZOOMLION', 'ZE210E', 2018, 'Water  logging', '2', 'No Comments', 5, NULL, '2019-05-14 19:35:25', '2019-05-25 17:26:25', NULL),
(22, 3, 1, NULL, NULL, 'Excavator(With Breaker)', 'EX-04', '44', '0.90m3', 'ZOOMLION', 'ZE210E', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-14 19:37:35', '2019-05-25 17:26:41', NULL),
(23, 3, 1, NULL, NULL, 'Excavator(Long Boom)', 'EX-05', '44', '0.5m3', 'ZOOMLION', 'ZE360E', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-14 19:40:49', '2019-05-25 17:30:53', NULL),
(24, 8, 1, NULL, NULL, 'Excavator(Long Boom)', 'Ex-06', '44', '0.5m3', 'ZOOMLION', 'ZE360E', 2018, 'Water  logging', '2', 'No comments', 5, NULL, '2019-05-19 17:19:13', '2019-05-25 17:30:32', NULL),
(25, 3, 1, NULL, NULL, 'Excavator(Pile Driver)', 'Ex-07', '44', '1.60m3', 'XCMG', 'XE370CA', 2018, 'PCT Yard', '2', 'Ready for work', 5, NULL, '2019-05-19 17:39:58', '2019-05-25 17:30:15', NULL),
(26, 3, 1, NULL, NULL, 'Excavator(Pile Driver)', 'Ex-08', '44', '1.60m3', 'XCMG', 'XE370CA', 2018, 'PCT Yard', '2', 'Ready for Work', 5, NULL, '2019-05-19 17:41:39', '2019-05-25 17:29:57', NULL),
(27, 3, 1, NULL, NULL, 'Amphibious Hydraulic Excavator', 'AEX-01', '129', '0.33m3', 'Ultratex', 'TB285CH', 2019, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-19 17:50:33', '2019-09-05 04:42:54', NULL),
(28, 3, 1, NULL, NULL, 'Amphibious Hydraulic Excavator', 'AEX-02', '129', '0.33m3', 'Ultratex', 'TB285CH', 2019, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-20 18:23:41', '2019-05-25 17:40:46', NULL),
(29, 4, 1, NULL, NULL, 'Wheel Loader', 'WL-01', '44', '3 Ton', 'POWER PLUS', 'PP-938-V', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-20 18:26:15', '2019-05-25 16:34:05', NULL),
(30, 8, 1, NULL, NULL, 'Wheel Loader', 'WL-02', '44', '3 Ton', 'POWER PLUS', 'PP-938-V', 2018, 'Water  logging', '2', 'No Comments', 5, NULL, '2019-05-20 18:29:33', '2019-05-20 18:29:33', NULL),
(31, 10, 1, NULL, NULL, 'Wheel Loader', 'WL-03', '44', '3 Ton', 'LONG KING', 'LG833N', 2018, 'Raozan Road Project', '2', 'No Comment', 5, NULL, '2019-05-20 18:32:12', '2019-05-25 16:32:01', NULL),
(32, 3, 1, NULL, NULL, 'Wheel Loader', 'WL-04', '44', '3 Ton', 'LONG KING', 'LG833N', 2018, 'PCT Yard', '2', 'No Comment', 5, NULL, '2019-05-20 18:34:22', '2019-05-25 16:31:17', NULL),
(33, 3, 1, NULL, NULL, 'Wheel Loader', 'WL-05', '44', '5 Ton', 'LONG KING', 'ZL50C', 2018, 'PCT Yard', '2', 'No Comment', 5, NULL, '2019-05-20 18:37:44', '2019-05-25 16:30:42', NULL),
(34, 4, 1, NULL, NULL, 'Wheel Loader', 'WL-06', '44', '5 Ton', 'LONG KING', 'ZL50C', 2018, 'NCT,Ctg', '2', 'No Comment', 5, NULL, '2019-05-20 18:39:09', '2019-05-25 16:30:00', NULL),
(35, 4, 1, NULL, NULL, 'Bull Dozer', 'BD-01', '44', '4.50 m3', 'POWER PLUS', 'D65EX-15', 2018, 'NCT,Ctg', '2', 'No Comment', 5, NULL, '2019-05-20 18:42:41', '2019-05-25 17:39:57', NULL),
(36, 3, 1, NULL, NULL, 'Bull Dozer', 'BD-02', '44', '4.50 m3', 'ZOOMLION', 'ZD160-3', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 18:45:04', '2019-05-25 17:39:41', NULL),
(37, 4, 1, NULL, NULL, 'Motor Grader', 'M Gr-01', '99', 'n/a', 'ACE', 'AG-176', 2018, 'NCT,Ctg', '2', 'N/A', 5, NULL, '2019-05-20 18:48:02', '2019-05-25 17:27:52', NULL),
(38, 4, 1, NULL, NULL, 'Vibratory Roller', 'VR-01', '99', '12 Ton', 'ACE', 'ASD-115', 2018, 'NCT,Ctg', NULL, 'N/A', 5, NULL, '2019-05-20 18:50:55', '2019-05-25 16:42:59', NULL),
(39, 3, 1, NULL, NULL, 'Vibratory Roller', 'VR-02', '99', '12 Ton', 'ACE', 'ASD-115', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 18:53:15', '2019-05-25 16:32:30', NULL),
(40, 3, 1, NULL, NULL, 'Vibratory Roller', 'VR-03', '44', '12 Ton', 'CHANGLING', '8108L', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 18:57:08', '2019-05-25 16:33:04', NULL),
(41, 5, 1, NULL, NULL, 'Vibratory Roller', 'VR-034', '44', '12 Ton', 'CHANGLING', '8108L', 2018, 'Vashanchar', '2', 'N/A', 5, NULL, '2019-05-20 19:10:10', '2019-05-25 16:33:31', NULL),
(42, 10, 1, NULL, NULL, 'Backhoe Loader', 'BL-01', '99', '0.25m3', 'CASE', '770EXMAGNUM', 2018, 'Raozan Road Project', '2', 'N/A', 5, NULL, '2019-05-20 19:17:13', '2019-05-25 17:40:27', NULL),
(43, 10, 1, NULL, NULL, 'Backhoe Loader', 'BL-02', '99', '0.25m3', 'CASE', '770EXMAGNUM', 2018, 'Raozan Road Project', '2', 'N/A', 5, NULL, '2019-05-20 19:19:17', '2019-05-25 17:40:11', NULL),
(44, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-01', '44', '380 Ton', 'ZOOMLION', 'ZCC3800', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 19:30:26', '2019-05-25 17:38:42', NULL),
(45, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-02', '44', '180 Ton', 'ZOOMLION', 'QUY180', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 19:32:32', '2019-05-25 17:35:55', NULL),
(46, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-03', '44', '85 Ton', 'XCMG', 'XCMG-85', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 13:47:31', '2019-05-25 17:36:07', NULL),
(47, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-04', '44', '85 Ton', 'XCMG', 'XCMG-85', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 13:48:45', '2019-05-25 17:36:24', NULL),
(48, 3, 1, NULL, NULL, 'Rough Terran Crane', 'RT-01', '44', '300 Ton', 'ZOOMLION', 'ZRT-300', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 13:52:35', '2019-05-25 17:28:54', NULL),
(49, 3, 1, NULL, NULL, 'Rough Terran Crane', 'RT-02', '44', '75 Ton', 'ZOOMLION', 'RT-75', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 13:53:46', '2019-05-25 17:29:15', NULL),
(50, 3, 1, NULL, NULL, 'Rough Terran Crane', 'RT-03', '44', '35 Ton', 'ZOOMLION', 'RT-35', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 13:55:11', '2019-05-25 17:29:34', NULL),
(51, 3, 1, NULL, NULL, 'Diesel Hammer', 'DH-01', '44', '6.2 Ton', 'Starke', 'D62', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:01:09', '2019-05-25 17:34:15', NULL),
(52, 3, 1, NULL, NULL, 'Diesel Hammer', 'DH-02', '44', '6.2 Ton', 'STARKE', 'D62', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:03:04', '2019-05-25 17:34:31', NULL),
(53, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-01', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:07:01', '2019-05-25 17:21:43', NULL),
(54, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-02', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:08:20', '2019-05-25 17:21:58', NULL),
(55, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-03', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:09:18', '2019-05-25 16:45:44', NULL),
(56, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-04', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:10:49', '2019-05-25 16:45:15', NULL),
(57, 3, 1, NULL, NULL, 'Stationary Concrete Pump', 'SCP-01', '44', '78/47 m3/Hr', 'ZOOMLION', 'HBT60.174RSU', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:13:15', '2019-05-25 17:22:51', NULL),
(58, 3, 1, NULL, NULL, 'Stationary Concrete Pump', 'SCP-02', '44', '78/47 m3/Hr', 'ZOOMLION', 'HBT60.174RSU', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 14:14:30', '2019-05-25 17:23:06', NULL),
(59, 3, 1, NULL, NULL, 'Truck Mounted Concrete Boom Pump', 'BP-01', '44', '120/170 m3/Hr', 'ZOOMLION', '49X-6RZ', 2018, 'NCT,Ctg', '2', 'N/A', 5, NULL, '2019-05-21 15:02:02', '2019-05-25 16:44:55', NULL),
(60, 9, 1, NULL, NULL, 'Concrete Block Making Machine', 'CBM-01', '44', 'N/A', 'ZENITH', 'QT10', 2019, 'Sirajgonj Project', '2', 'N/A', 5, NULL, '2019-05-21 15:04:44', '2019-05-25 17:38:56', NULL),
(61, 3, 1, NULL, NULL, 'Concrete Batching Plant', 'CBP-01', '44', '30m3/Hr', 'POWER PLUS', 'PBP350S', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 15:09:15', '2019-05-25 17:39:27', NULL),
(62, 3, 1, NULL, NULL, 'Concrete Batching Plant', 'CBP-02', '44', '60 m3/Hr', 'ZOOMLION', 'HZX60', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-21 15:11:06', '2019-05-25 17:39:14', NULL),
(63, 7, 1, NULL, NULL, 'Tractor', 'TT-01', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'N/A', 5, NULL, '2019-05-21 15:45:08', '2019-05-25 17:24:07', NULL),
(64, 7, 1, NULL, NULL, 'Tractor', 'TT-02', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'N/A', 5, NULL, '2019-05-21 15:46:59', '2019-05-25 17:24:26', NULL),
(65, 7, 1, NULL, NULL, 'Tractor', 'TT-03', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'N/A', 5, NULL, '2019-05-21 15:48:34', '2019-05-25 17:24:50', NULL),
(66, 7, 1, NULL, NULL, 'Tractor', 'TT-04', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'n/a', 5, NULL, '2019-05-21 15:49:41', '2019-05-25 17:25:11', NULL),
(67, 5, 1, NULL, NULL, 'Tractor', 'TT-05', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-21 15:51:13', '2019-05-25 17:25:30', NULL),
(68, 10, 1, NULL, NULL, 'Tractor', 'TT-06', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Raozan Road Project', '2', 'n/a', 5, NULL, '2019-05-21 15:54:56', '2019-05-25 17:25:51', NULL),
(69, 10, 1, NULL, NULL, 'Tractor', 'TT-07', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Raozan Road Project', '2', 'n/a', 5, NULL, '2019-05-21 16:43:58', '2019-05-25 16:35:27', NULL),
(70, 10, 1, NULL, NULL, 'Tractor', 'TT-08', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Raozan Road Project', '2', 'n/a', 5, NULL, '2019-05-21 16:45:25', '2019-05-25 16:35:52', NULL),
(71, 9, 1, NULL, NULL, 'Tractor', 'TT-09', '99', '100 Cft', 'TAFE', 'TAFE-45DI', 2018, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-21 16:47:33', '2019-05-25 17:21:05', NULL),
(72, 9, 1, NULL, NULL, 'Tractor', 'TT-10', '99', '10 Ton', 'TAFE', 'TAFE-45DI', 2018, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-21 16:49:37', '2019-05-25 17:21:24', NULL),
(73, 9, 1, NULL, NULL, 'Fork Lift', 'FL-01', '113', '2 Ton', 'DOOSAN', 'D20GP', 2019, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-21 16:54:51', '2019-05-25 17:27:20', NULL),
(74, 9, 1, NULL, NULL, 'Fork Lift', 'FL-02', '113', '2 Ton', 'DOOSAN', 'D20GP', 2019, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-21 16:59:36', '2019-05-25 17:27:39', NULL),
(75, 4, 1, NULL, NULL, 'Diesel Generator', 'D Gn-01', '113', '27 KVA', 'DAWEOO', 'DAWEOO-PJM22-27 KVA', 2018, 'NCT,Ctg', NULL, 'n/a', 5, NULL, '2019-05-21 17:08:38', '2019-05-25 17:36:44', NULL),
(76, 5, 1, NULL, NULL, 'Diesel Generator', 'D Gn-02', '44', '25 KVA', 'SIFANG', 'SIFANG-1125', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-21 17:12:03', '2019-05-25 17:37:01', NULL),
(77, 5, 1, NULL, NULL, 'Diesel Generator', 'D Gn-03', '44', '25KVA', 'SIFANG', 'SIFANG-1125', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-21 17:14:03', '2019-05-25 17:37:16', NULL),
(78, 5, 1, NULL, NULL, 'Diesel Generator', 'D Gn-04', '44', '15KVA', 'FUJIAN', 'FUJIAN-POWER-12KW', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-21 17:32:04', '2019-05-25 17:37:31', NULL),
(79, 7, 1, NULL, NULL, 'Diesel Generator', 'D Gn-05', '44', '19KVA', 'MINDONG', 'JBT8982011', 2018, 'Payra  Project', '2', 'n/a', 5, NULL, '2019-05-21 17:35:58', '2019-05-25 17:37:49', NULL),
(80, 7, 1, NULL, NULL, 'Diesel Generator', 'D Gn-06', '44', '18 KVA', 'MINDONG', 'JBT8982011', 2018, 'Payra  Project', '2', 'n/a', 5, NULL, '2019-05-21 17:38:40', '2019-05-25 17:38:03', NULL),
(81, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-07', '218', '329 KVA', 'TEKSAN', 'TJ329DW5L', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-21 17:51:30', '2019-05-25 17:38:20', NULL),
(82, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-08', '218', '329 KVA', 'TEKSAN', 'JBT8982011', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-21 17:53:06', '2019-05-25 17:33:09', NULL),
(83, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-09', '218', '180KVA', 'TEKSAN', 'TJ180DW5A', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-21 17:55:28', '2019-05-25 17:33:24', NULL),
(84, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-10', '44', '65KVA', 'PRAMAC', 'GSW65', 2017, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-21 17:57:56', '2019-05-25 17:33:39', NULL),
(85, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-11', '218', '21 KVA', 'TEKSAN', 'TJ21MS5A', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-21 18:00:58', '2019-05-25 17:33:57', NULL),
(86, 8, 1, NULL, NULL, 'Tower Light', 'TL-01', '107', '3.5KVA', 'PRAMAC', 'LPW8T-KUBOTAZ482', 2017, 'Water  logging', '2', 'n/a', 5, NULL, '2019-05-21 18:04:49', '2019-05-25 17:23:23', NULL),
(87, 4, 1, NULL, NULL, 'Tower Light', 'TL-02', '107', '3.5KVA', 'PRAMAC', 'LPW8T-KUBOTAZ482', 2017, 'NCT,Ctg', '2', 'n/a', 5, NULL, '2019-05-21 18:16:23', '2019-05-25 17:23:47', NULL),
(88, 11, 1, NULL, NULL, 'Dump Truck', 'DT-09', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'mongla', '2', 'no comments', 5, NULL, '2019-05-25 17:41:09', '2019-05-28 19:20:41', NULL),
(89, 11, 1, NULL, NULL, 'Dump Truck', 'DT-10', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'Mongla Prpject', '2', 'no comments', 5, NULL, '2019-05-28 19:23:35', '2019-05-28 19:23:35', NULL),
(90, 11, 1, NULL, NULL, 'Dump Truck', 'DT-11', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'Mongla Project', '2', 'no comments', 5, NULL, '2019-05-28 19:25:26', '2019-05-28 19:25:26', NULL),
(91, 10, 1, NULL, NULL, 'Dump Truck', 'DT-12', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'Raozan', '2', 'No comments', 1, NULL, '2019-07-23 04:36:33', '2019-07-23 04:36:33', NULL),
(92, 3, 1, NULL, NULL, 'DUMP TRUCK', 'DT-13', '99', '3.5m3', 'TATA', 'LPK909', 2019, 'PCT YARD', '1', 'GOOD', 1, NULL, '2019-09-05 04:47:03', '2019-09-05 04:47:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `present_condition`
--

CREATE TABLE `present_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `present_condition`
--

INSERT INTO `present_condition` (`id`, `name`) VALUES
(1, 'Breakdown'),
(2, 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `priority_details`
--

CREATE TABLE `priority_details` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `color_code` varchar(350) NOT NULL,
  `show_order` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priority_details`
--

INSERT INTO `priority_details` (`id`, `name`, `color_code`, `show_order`) VALUES
(1, 'Urgent', 'danger', 1),
(2, 'High', 'info', 2),
(3, 'Medium', 'warning', 3),
(4, 'Normal', 'success', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_assign`
--

CREATE TABLE `product_assign` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `assign_date` varchar(100) NOT NULL,
  `refund_date` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_assign`
--

INSERT INTO `product_assign` (`id`, `product_id`, `employee_id`, `assign_date`, `refund_date`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(21, '', '15', '2020-02-08', '', 'rere', 'Active', '2020-02-08', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_damage`
--

CREATE TABLE `product_damage` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `damage_date` varchar(100) NOT NULL,
  `ref` varchar(1000) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `project_name` varchar(500) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `project_name`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'P-001', 'Payra Project', '72, Mohakhali C/A, (8th Floor), Rupayan Center, Dhaka-1212, Bangladesh.\r\nTel. : (88-02) 9825705, 9891562, 9891597, 9856358-9,\r\n9857902, 9852454, 9854423,\r\nFax: (88-02) 9855949, \r\nWeb:www.saifpowertecltd.com', 1, NULL, '2019-02-10 08:09:28', '2019-04-09 03:46:55', NULL),
(3, 'P-003', 'PCT,Ctg', '72, Mohakhali C/A, (8th Floor), Rupayan Center, Dhaka-1212, Bangladesh.\r\nTel. : (88-02) 9825705, 9891562, 9891597, 9856358-9,\r\n9857902, 9852454, 9854423,\r\nFax: (88-02) 9855949, \r\nWeb:www.saifpowertecltd.com', 1, NULL, '2019-02-10 09:05:36', '2019-05-12 13:09:34', NULL),
(4, '04', 'NCT,Ctg', 'test', 5, NULL, '2019-05-12 13:14:45', '2019-05-12 13:14:45', NULL),
(5, '03', 'Bhashanchor', ',', 5, NULL, '2019-05-14 07:54:29', '2019-05-14 07:54:29', NULL),
(6, '04', 'Karnophuli', NULL, 5, NULL, '2019-05-14 07:55:39', '2019-05-14 07:55:39', NULL),
(7, '05', 'Payra Port', NULL, 5, NULL, '2019-05-14 07:56:11', '2019-05-14 07:56:11', NULL),
(9, '07', 'Shirajgonj', NULL, 5, NULL, '2019-05-14 08:03:14', '2019-05-14 08:03:14', NULL),
(10, '08', 'Raozan Road', NULL, 5, NULL, '2019-05-14 08:05:55', '2019-05-14 08:05:55', NULL),
(11, '10', 'Mongla Poet Project', NULL, 5, NULL, '2019-05-25 17:38:21', '2019-05-25 17:38:21', NULL),
(12, NULL, 'CWLP', NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 'MPA', NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, 'Gohira', NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, 'MCC', NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'Pubail', NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, 'Maxon Power', NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, 'Dredging', NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'Netrokonah', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'P-000', 'Head Office', 'Khawaja Tower[13th Floor], 95 Bir Uttam A.K Khandokar Road, Mohakhali C/A, Dhaka-1212, Bangladesh', NULL, NULL, NULL, NULL, NULL),
(22, '', 'Mymensingh city corporation', 'Mymensingh ', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recruite_requests`
--

CREATE TABLE `recruite_requests` (
  `id` int(11) NOT NULL,
  `rrr_date` date NOT NULL,
  `rrr_no` varchar(30) NOT NULL,
  `req_by` varchar(30) NOT NULL,
  `req_by_division` varchar(30) NOT NULL,
  `req_by_department` varchar(30) NOT NULL,
  `req_by_designation` varchar(30) NOT NULL,
  `req_for` varchar(30) NOT NULL,
  `emp_type` varchar(30) NOT NULL,
  `urgency` varchar(30) NOT NULL,
  `justification_for_rec` longtext NOT NULL,
  `rem_spe_rec` longtext NOT NULL,
  `req_division` varchar(30) NOT NULL,
  `req_department` varchar(30) NOT NULL,
  `req_designation` varchar(30) NOT NULL,
  `req_number` varchar(30) NOT NULL,
  `req_location_project` varchar(30) NOT NULL,
  `req_reporting_man` varchar(30) NOT NULL,
  `req_salary` varchar(30) NOT NULL,
  `req_responsibilities` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` varchar(30) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(30) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_access_chain`
--

CREATE TABLE `rlp_access_chain` (
  `id` int(11) NOT NULL,
  `chain_type` varchar(150) NOT NULL DEFAULT 'default',
  `division_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `rlp_type` int(11) DEFAULT NULL,
  `users` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rlp_access_chain`
--

INSERT INTO `rlp_access_chain` (`id`, `chain_type`, `division_id`, `department_id`, `project_id`, `rlp_type`, `users`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(25, 'default', 1, 12, 5, 0, '{\"84\":\"1\",\"222\":\"2\",\"616\":\"3\",\"614\":\"4\"}', 84, '2022-11-08 11:08:54', NULL, NULL),
(27, 'default', 1, 11, 21, 0, '{\"222\":\"1\",\"616\":\"2\",\"614\":\"3\"}', 1, '2022-11-09 02:02:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rlp_acknowledgement`
--

CREATE TABLE `rlp_acknowledgement` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ack_order` int(11) NOT NULL COMMENT 'acknowledge order to show the RLP',
  `ack_status` tinyint(4) NOT NULL DEFAULT 0,
  `ack_request_date` datetime NOT NULL,
  `ack_updated_date` datetime DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not visible; 1= visible',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_delete_history`
--

CREATE TABLE `rlp_delete_history` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_details`
--

CREATE TABLE `rlp_details` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `item_des` longtext DEFAULT NULL,
  `purpose` longtext DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `estimated_price` float DEFAULT NULL,
  `supplier` text DEFAULT NULL,
  `details_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_info`
--

CREATE TABLE `rlp_info` (
  `id` int(11) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `rlp_user_id` int(11) UNSIGNED NOT NULL,
  `rlp_user_office_id` varchar(500) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `request_date` datetime NOT NULL,
  `request_division` int(11) DEFAULT NULL,
  `request_department` int(11) NOT NULL,
  `request_project` int(11) NOT NULL,
  `request_person` varchar(650) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `user_remarks` text DEFAULT NULL,
  `rlp_status` tinyint(1) NOT NULL DEFAULT 5,
  `is_viewd` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_remarks_history`
--

CREATE TABLE `rlp_remarks_history` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `remarks_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL,
  `short_name` varchar(250) NOT NULL,
  `show_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `short_name`, `show_order`) VALUES
(1, 'Super Admin', 'sa', 1),
(2, 'Grade-07', 'g7', 0),
(3, 'Grade-10', 'g10', 0),
(4, 'Grade-01', 'g1', 0),
(5, 'Grade-08', 'g8', 0),
(6, 'Grade-02', 'g2', 0),
(7, 'Grade-03', 'g3', 0),
(8, 'Grade-06', 'g6', 0),
(9, 'Grade-05', 'g5', 0),
(10, 'Grade-17', 'g17', 0),
(11, 'Grade-13', 'g13', 0),
(12, 'Grade-04', 'g4', 0),
(13, 'Grade-14', 'g14', 0),
(14, 'Grade-12', 'g12', 0),
(15, 'Grade-09', 'g9', 0),
(16, 'Grade-18', 'g18', 0),
(17, 'Grade-15', 'g15', 0),
(18, 'Grade-11', 'g11', 0),
(19, 'Grade-16', 'g16', 0),
(20, 'Grade-19', 'g19', 0),
(21, 'Grade-20', 'g20', 0),
(22, 'Grade-17S', 'g17s', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles_group`
--

CREATE TABLE `roles_group` (
  `id` int(11) NOT NULL,
  `name` varchar(450) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_group`
--

INSERT INTO `roles_group` (`id`, `name`, `details`) VALUES
(1, 'member', '[\"g1\",\"g2\",\"g3\",\"g4\",\"g5\",\"g6\",\"g7\",\"g8\"]'),
(2, 'acknowledgers', '[\"g9\",\"g10\",\"g11\",\"g12\",\"g13\",\"g14\",\"g15\",\"g16\",\"g17\"]'),
(3, 'approval', '[\"g18\",\"g19\",\"g20\"]');

-- --------------------------------------------------------

--
-- Table structure for table `role_access`
--

CREATE TABLE `role_access` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `page_name` varchar(250) NOT NULL,
  `add_access` int(11) NOT NULL DEFAULT 0,
  `edit_access` int(11) NOT NULL DEFAULT 0,
  `delete_access` int(11) NOT NULL DEFAULT 0,
  `view_access` int(11) NOT NULL DEFAULT 0,
  `print_access` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_access`
--

INSERT INTO `role_access` (`id`, `role_id`, `page_id`, `page_name`, `add_access`, `edit_access`, `delete_access`, `view_access`, `print_access`) VALUES
(113, 18, 1, 'dashboard', 1, 1, 1, 1, 1),
(114, 18, 2, 'settings', 0, 0, 0, 0, 0),
(115, 18, 3, 'users', 0, 1, 0, 1, 1),
(116, 18, 4, 'ra', 0, 0, 0, 0, 0),
(117, 18, 5, 'crlp', 1, 1, 1, 1, 1),
(118, 18, 6, 'rlp_list', 1, 1, 1, 1, 1),
(119, 18, 7, 'rlp_report', 1, 1, 1, 1, 1),
(190, 10, 1, 'dashboard', 1, 1, 1, 1, 1),
(191, 10, 2, 'settings', 0, 0, 0, 0, 0),
(192, 10, 3, 'users', 0, 0, 0, 0, 0),
(193, 10, 4, 'ra', 0, 0, 0, 0, 0),
(194, 10, 5, 'crlp', 1, 1, 1, 1, 1),
(195, 10, 6, 'rlp_list', 1, 1, 1, 1, 1),
(196, 10, 7, 'rlp_report', 0, 0, 0, 1, 1),
(197, 19, 1, 'dashboard', 1, 1, 1, 1, 1),
(198, 19, 2, 'settings', 0, 0, 0, 0, 0),
(199, 19, 3, 'users', 0, 0, 0, 0, 0),
(200, 19, 4, 'ra', 0, 0, 0, 0, 0),
(201, 19, 5, 'crlp', 1, 1, 0, 1, 1),
(202, 19, 6, 'rlp_list', 1, 1, 0, 1, 1),
(203, 19, 7, 'rlp_report', 0, 0, 0, 1, 1),
(204, 17, 1, 'dashboard', 1, 1, 0, 1, 1),
(205, 17, 2, 'settings', 0, 0, 0, 0, 0),
(206, 17, 3, 'users', 0, 0, 0, 0, 0),
(207, 17, 4, 'ra', 0, 0, 0, 0, 0),
(208, 17, 5, 'crlp', 1, 1, 0, 1, 1),
(209, 17, 6, 'rlp_list', 1, 1, 0, 1, 1),
(210, 17, 7, 'rlp_report', 0, 0, 0, 1, 1),
(218, 11, 1, 'dashboard', 1, 1, 0, 1, 1),
(219, 11, 2, 'settings', 0, 0, 0, 0, 0),
(220, 11, 3, 'users', 0, 0, 0, 0, 0),
(221, 11, 4, 'ra', 0, 0, 0, 0, 0),
(222, 11, 5, 'crlp', 1, 1, 0, 1, 1),
(223, 11, 6, 'rlp_list', 1, 1, 0, 1, 1),
(224, 11, 7, 'rlp_report', 0, 0, 0, 1, 1),
(225, 14, 1, 'dashboard', 1, 1, 0, 1, 1),
(226, 14, 2, 'settings', 0, 0, 0, 0, 0),
(227, 14, 3, 'users', 0, 0, 0, 0, 0),
(228, 14, 4, 'ra', 0, 0, 0, 0, 0),
(229, 14, 5, 'crlp', 1, 1, 0, 1, 1),
(230, 14, 6, 'rlp_list', 1, 1, 0, 1, 1),
(231, 14, 7, 'rlp_report', 0, 0, 0, 1, 1),
(232, 3, 1, 'dashboard', 1, 1, 0, 1, 1),
(233, 3, 2, 'settings', 0, 0, 0, 0, 0),
(234, 3, 3, 'users', 0, 0, 0, 0, 0),
(235, 3, 4, 'ra', 0, 0, 0, 0, 0),
(236, 3, 5, 'crlp', 1, 1, 0, 1, 1),
(237, 3, 6, 'rlp_list', 1, 1, 0, 1, 1),
(238, 3, 7, 'rlp_report', 0, 0, 0, 1, 1),
(239, 15, 1, 'dashboard', 1, 1, 0, 1, 1),
(240, 15, 2, 'settings', 0, 0, 0, 0, 0),
(241, 15, 3, 'users', 0, 0, 0, 0, 0),
(242, 15, 4, 'ra', 0, 0, 0, 0, 0),
(243, 15, 5, 'crlp', 1, 1, 0, 1, 1),
(244, 15, 6, 'rlp_list', 1, 1, 0, 1, 1),
(245, 15, 7, 'rlp_report', 0, 0, 0, 1, 1),
(246, 4, 1, 'dashboard', 1, 1, 0, 1, 1),
(247, 4, 2, 'settings', 0, 0, 0, 0, 0),
(248, 4, 3, 'users', 0, 0, 0, 0, 0),
(249, 4, 4, 'ra', 0, 0, 0, 0, 0),
(250, 4, 5, 'crlp', 1, 1, 0, 1, 1),
(251, 4, 6, 'rlp_list', 1, 1, 0, 1, 1),
(252, 4, 7, 'rlp_report', 0, 0, 0, 1, 1),
(253, 6, 1, 'dashboard', 1, 1, 0, 1, 1),
(254, 6, 2, 'settings', 0, 0, 0, 0, 0),
(255, 6, 3, 'users', 0, 0, 0, 0, 0),
(256, 6, 4, 'ra', 0, 0, 0, 0, 0),
(257, 6, 5, 'crlp', 1, 1, 0, 1, 1),
(258, 6, 6, 'rlp_list', 1, 1, 0, 1, 1),
(259, 6, 7, 'rlp_report', 0, 0, 0, 1, 1),
(260, 7, 1, 'dashboard', 1, 1, 0, 1, 1),
(261, 7, 2, 'settings', 0, 0, 0, 0, 0),
(262, 7, 3, 'users', 0, 0, 0, 0, 0),
(263, 7, 4, 'ra', 0, 0, 0, 0, 0),
(264, 7, 5, 'crlp', 1, 1, 0, 1, 1),
(265, 7, 6, 'rlp_list', 1, 1, 0, 1, 1),
(266, 7, 7, 'rlp_report', 0, 0, 0, 1, 1),
(267, 12, 1, 'dashboard', 1, 1, 0, 1, 1),
(268, 12, 2, 'settings', 0, 0, 0, 0, 0),
(269, 12, 3, 'users', 0, 0, 0, 0, 0),
(270, 12, 4, 'ra', 0, 0, 0, 0, 0),
(271, 12, 5, 'crlp', 1, 1, 0, 1, 1),
(272, 12, 6, 'rlp_list', 1, 1, 0, 1, 1),
(273, 12, 7, 'rlp_report', 0, 0, 0, 1, 1),
(274, 9, 1, 'dashboard', 1, 1, 0, 1, 1),
(275, 9, 2, 'settings', 0, 0, 0, 0, 0),
(276, 9, 3, 'users', 0, 0, 0, 0, 0),
(277, 9, 4, 'ra', 0, 0, 0, 0, 0),
(278, 9, 5, 'crlp', 1, 1, 0, 1, 1),
(279, 9, 6, 'rlp_list', 1, 1, 0, 1, 1),
(280, 9, 7, 'rlp_report', 0, 0, 0, 1, 1),
(281, 8, 1, 'dashboard', 1, 1, 0, 1, 1),
(282, 8, 2, 'settings', 0, 0, 0, 0, 0),
(283, 8, 3, 'users', 0, 0, 0, 0, 0),
(284, 8, 4, 'ra', 0, 0, 0, 0, 0),
(285, 8, 5, 'crlp', 1, 1, 0, 1, 1),
(286, 8, 6, 'rlp_list', 1, 1, 0, 1, 1),
(287, 8, 7, 'rlp_report', 0, 0, 0, 1, 1),
(288, 2, 1, 'dashboard', 1, 1, 0, 1, 1),
(289, 2, 2, 'settings', 0, 0, 0, 0, 0),
(290, 2, 3, 'users', 0, 0, 0, 0, 0),
(291, 2, 4, 'ra', 0, 0, 0, 0, 0),
(292, 2, 5, 'crlp', 1, 1, 0, 1, 1),
(293, 2, 6, 'rlp_list', 1, 1, 0, 1, 1),
(294, 2, 7, 'rlp_report', 0, 0, 0, 1, 1),
(295, 5, 1, 'dashboard', 1, 1, 0, 1, 1),
(296, 5, 2, 'settings', 0, 0, 0, 0, 0),
(297, 5, 3, 'users', 0, 0, 0, 0, 0),
(298, 5, 4, 'ra', 0, 0, 0, 0, 0),
(299, 5, 5, 'crlp', 1, 1, 0, 1, 1),
(300, 5, 6, 'rlp_list', 1, 1, 0, 1, 1),
(301, 5, 7, 'rlp_report', 0, 0, 0, 1, 1),
(302, 22, 1, 'dashboard', 1, 1, 1, 1, 1),
(303, 22, 2, 'settings', 0, 0, 0, 0, 0),
(304, 22, 3, 'users', 0, 0, 0, 0, 0),
(305, 22, 4, 'ra', 0, 0, 0, 0, 0),
(306, 22, 5, 'crlp', 1, 1, 0, 1, 1),
(307, 22, 6, 'rlp_list', 1, 1, 0, 1, 1),
(308, 22, 7, 'rlp_report', 0, 0, 0, 1, 1),
(309, 16, 1, 'dashboard', 1, 1, 1, 1, 1),
(310, 16, 2, 'settings', 0, 0, 0, 0, 0),
(311, 16, 3, 'users', 0, 0, 0, 0, 0),
(312, 16, 4, 'ra', 0, 0, 0, 0, 0),
(313, 16, 5, 'crlp', 1, 1, 0, 1, 1),
(314, 16, 6, 'rlp_list', 1, 1, 0, 1, 1),
(351, 13, 1, 'dashboard', 0, 0, 0, 0, 0),
(352, 13, 2, 'settings', 0, 0, 0, 0, 0),
(353, 13, 3, 'users', 0, 0, 0, 0, 0),
(354, 13, 4, 'ra', 0, 0, 0, 0, 0),
(355, 13, 5, 'crlp', 1, 1, 1, 1, 1),
(356, 13, 6, 'rlp_list', 1, 1, 1, 1, 1),
(357, 13, 7, 'rlp_report', 1, 1, 1, 1, 1),
(358, 1, 1, 'dashboard', 1, 1, 1, 1, 1),
(359, 1, 2, 'settings', 1, 1, 1, 1, 1),
(360, 1, 3, 'users', 1, 1, 1, 1, 1),
(361, 1, 4, 'ra', 1, 1, 1, 1, 1),
(362, 1, 5, 'crlp', 1, 1, 1, 1, 1),
(363, 1, 6, 'rlp_list', 1, 1, 1, 1, 1),
(364, 1, 7, 'rlp_report', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_details`
--

CREATE TABLE `status_details` (
  `id` int(11) NOT NULL,
  `name` varchar(350) NOT NULL,
  `bg_color` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_details`
--

INSERT INTO `status_details` (`id`, `name`, `bg_color`) VALUES
(1, 'Approve', '#C3FDB8'),
(2, 'Processing', '#31708f'),
(3, 'Not Approve', '#a94442'),
(4, 'On Held', '#8a6d3b'),
(5, 'Pending', '#FFDB58'),
(6, 'Recommended', '#FFDB58'),
(7, 'Draft', '#e57817');

-- --------------------------------------------------------

--
-- Table structure for table `sub_projects`
--

CREATE TABLE `sub_projects` (
  `id` int(11) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_projects`
--

INSERT INTO `sub_projects` (`id`, `project_id`, `name`, `address`, `status`) VALUES
(2, '1', 'Payra Port', 'Payra Port', '');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `company` varchar(5000) NOT NULL,
  `address` longtext NOT NULL,
  `contact_person` varchar(1000) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `op_balance` varchar(100) NOT NULL,
  `cc` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_id`, `company`, `address`, `contact_person`, `phone`, `email`, `op_balance`, `cc`, `status`, `created_at`, `updated_at`) VALUES
(10, 'SUP-0001', 'Global Soft Park', '7/20[1st Floor],Block-B,lalmatia', 'Atiqur Rahman Bhuiyan', '01515672889', 'arbhuiyan.pits@gmail.com', '', '', '', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_logsheet`
--

CREATE TABLE `tb_logsheet` (
  `slno` int(11) NOT NULL,
  `d_date` date NOT NULL,
  `equipment_code` varchar(30) NOT NULL,
  `project_id` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `monthname` varchar(20) NOT NULL,
  `workdetails` varchar(700) NOT NULL,
  `runninghrkm` int(11) NOT NULL,
  `closehrkm` int(11) NOT NULL,
  `totalhrkm` int(11) NOT NULL,
  `standby` varchar(20) NOT NULL,
  `hydrolicltr` int(11) NOT NULL,
  `disealltr` int(11) NOT NULL,
  `engineoil` int(11) NOT NULL,
  `greasing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_logsheet`
--

INSERT INTO `tb_logsheet` (`slno`, `d_date`, `equipment_code`, `project_id`, `operator_id`, `monthname`, `workdetails`, `runninghrkm`, `closehrkm`, `totalhrkm`, `standby`, `hydrolicltr`, `disealltr`, `engineoil`, `greasing`) VALUES
(22, '2022-09-20', 'AC-01', 15, 0, '', 'Running', 1250, 1320, 70, 'Running', 20, 12, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp_info`
--

CREATE TABLE `temp_info` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(350) NOT NULL,
  `emp_name` varchar(550) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `grade` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `company` varchar(350) NOT NULL,
  `division` varchar(250) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `section` varchar(350) NOT NULL,
  `location` varchar(450) NOT NULL,
  `join_date` varchar(150) NOT NULL,
  `is_status` varchar(250) NOT NULL,
  `sex` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `office_id` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `designation` varchar(650) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(650) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_image` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_password_changed` tinyint(1) NOT NULL DEFAULT 0,
  `is_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `branch_id`, `department_id`, `project_id`, `office_id`, `role_id`, `designation`, `role_name`, `name`, `email`, `contact_number`, `profile_image`, `signature_image`, `password`, `is_password_changed`, `is_status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 1, 11, 21, 'SA-000001', 1, NULL, 'sa', 'Super Admin', 'sa@rlp.com', NULL, '', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, '2020-03-16 15:03:06', 1, '2022-09-10 17:00:26'),
(84, 1, 7, 5, 'ENG-000096', 15, '42', '', 'Md. Abdullah-al-mamun', '', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, NULL, NULL, NULL),
(222, 1, 9, 21, 'ENG-000257', 13, '21', '', 'Alauddin Ahmed', '', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, NULL, NULL, NULL),
(328, 1, 11, 0, 'ENG-000363', 8, '60', '', 'Md. Jalil Khan Noyan', '', NULL, NULL, NULL, '4cfbb31c59c26c4f5fb87c46739ea6d3', 0, 1, 0, NULL, NULL, NULL),
(374, 1, 11, 22, 'ENG-000409', 8, '83', '', 'Md. Ayub Ali', '', NULL, NULL, NULL, '17fda6ddac34ee34949cb5d61587ef78', 0, 1, 0, NULL, NULL, NULL),
(396, 1, 11, 12, 'ENG-000431', 5, '92', '', 'Md. Liton Mridha', '', NULL, NULL, NULL, '85797d61d980042b883086f999438a4f', 0, 1, 0, NULL, NULL, NULL),
(614, 5, 26, 0, 'SPL-000001', 20, '112', 'g19', 'Tarafder Md. Ruhul Amin', '123456', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, NULL, 1, '2022-02-22 22:56:47'),
(615, 5, 26, 0, 'SPL-000002', 21, '113', '', 'Tarafder Nigar Sultana', '', NULL, NULL, NULL, 'e522c42d71cb28e5811cc071cffce26c', 0, 1, 0, NULL, NULL, NULL),
(616, 6, 42, 0, 'SPL-000004', 16, '29', 'g18', 'Tarafder Md. Ruhul Saif', '123456', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, NULL, 1, '2022-02-22 22:56:28'),
(632, 5, 33, 0, 'SPL-000023', 18, '106', '', 'Md. Fakrul Islam', '', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, NULL, NULL, NULL),
(3105, 5, 33, 0, 'SPL-007729', 2, '1', '', 'Atiqur Rahman Bhuiyan', '', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, NULL, NULL, NULL),
(3246, 0, 0, 0, 'SPPL-000001', 20, '112', '', 'Rubya Chowdhury', '', NULL, NULL, NULL, 'c1b874dc1e6fe8f7880bfad54f607782', 0, 1, 0, NULL, NULL, NULL),
(3351, 1, 11, 21, 'ENG-001010', 2, '8', 'g7', 'MD. Nahid Hasan', '', NULL, NULL, '1667818730Nahid-Hasan-Sign1.png', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, '2022-09-11 00:09:55', 1, '2022-11-06 22:58:50'),
(3352, 1, 11, 11, 'ENG-000555', 2, '36', 'g7', 'Shahadat Hossain', 'sh@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 0, '2022-11-05 23:26:10', NULL, NULL),
(3353, 1, 12, 11, 'SPHL-000017', 3, '18', 'g10', 'Hasan Tareq', 'ht@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 0, '2022-11-05 23:27:41', NULL, NULL),
(3354, 1, 12, 12, 'ENG-000665', 3, '18', 'g10', 'Masud Alam', 'ma@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 0, '2022-11-05 23:28:47', NULL, NULL),
(3355, 1, 11, 0, 'ENG-000759', 2, '36', 'g7', 'Myin uddin', 'mu@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 0, '2022-11-05 23:29:55', NULL, NULL),
(3356, 1, 12, 0, 'ENG-000829', 3, '18', 'g10', 'MD Rasel Alam', 'ra@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 0, '2022-11-05 23:30:48', NULL, NULL),
(3357, 1, 12, 5, 'ENG-000842', 2, '36', 'g7', 'Zakir Hossain', 'zh@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 0, '2022-11-05 23:31:40', NULL, NULL),
(3358, 1, 12, 22, 'ENG-000867', 17, '16', 'g15', 'Azhar Mahmud', 'am@gmail.com', NULL, NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, 1, 0, '2022-11-05 23:33:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workorders`
--

CREATE TABLE `workorders` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(50) NOT NULL,
  `notesheet_no` varchar(50) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `subject` longtext NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `concern_person` varchar(50) NOT NULL,
  `cell_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `item` varchar(500) NOT NULL,
  `part_no` varchar(100) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `unit_price` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `status` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `workorders_master`
--

CREATE TABLE `workorders_master` (
  `id` int(11) NOT NULL,
  `wo_no` varchar(50) NOT NULL,
  `notesheet_no` varchar(100) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `ns_info` longtext NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `concern_person` varchar(100) NOT NULL,
  `cell_number` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_of_item` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `ait` float NOT NULL,
  `vat` float NOT NULL,
  `grand_total` float NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(20) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `equipments_view`
--
DROP TABLE IF EXISTS `equipments_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `equipments_view`  AS SELECT `equipments`.`name` AS `name`, `equipments`.`eel_code` AS `eel_code`, `equipments`.`capacity` AS `capacity`, `equipments`.`makeby` AS `makeby`, `equipments`.`model` AS `model`, `projects`.`project_name` AS `project_name`, `equipments`.`present_condition` AS `present_condition` FROM (`projects` join `equipments` on(`projects`.`id` = `equipments`.`project_id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajax_form_test`
--
ALTER TABLE `ajax_form_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disposals`
--
ALTER TABLE `disposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment_assign`
--
ALTER TABLE `equipment_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inspaction`
--
ALTER TABLE `inspaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_cost`
--
ALTER TABLE `maintenance_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_mechanic`
--
ALTER TABLE `maintenance_mechanic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_spare_parts`
--
ALTER TABLE `maintenance_spare_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `middle_datas`
--
ALTER TABLE `middle_datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notesheets`
--
ALTER TABLE `notesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notesheets_master`
--
ALTER TABLE `notesheets_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notesheet_access_chain`
--
ALTER TABLE `notesheet_access_chain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notesheet_acknowledgement`
--
ALTER TABLE `notesheet_acknowledgement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`notesheet_id`);

--
-- Indexes for table `notesheet_remarks_history`
--
ALTER TABLE `notesheet_remarks_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`notesheet_id`);

--
-- Indexes for table `page_details`
--
ALTER TABLE `page_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_and_equipment`
--
ALTER TABLE `plant_and_equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `present_condition`
--
ALTER TABLE `present_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `priority_details`
--
ALTER TABLE `priority_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_assign`
--
ALTER TABLE `product_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_damage`
--
ALTER TABLE `product_damage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruite_requests`
--
ALTER TABLE `recruite_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_access_chain`
--
ALTER TABLE `rlp_access_chain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_details`
--
ALTER TABLE `rlp_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_info`
--
ALTER TABLE `rlp_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_user_id` (`rlp_user_id`);

--
-- Indexes for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_group`
--
ALTER TABLE `roles_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_access`
--
ALTER TABLE `role_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_details`
--
ALTER TABLE `status_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_projects`
--
ALTER TABLE `sub_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_logsheet`
--
ALTER TABLE `tb_logsheet`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `temp_info`
--
ALTER TABLE `temp_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workorders`
--
ALTER TABLE `workorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workorders_master`
--
ALTER TABLE `workorders_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajax_form_test`
--
ALTER TABLE `ajax_form_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `disposals`
--
ALTER TABLE `disposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `equipment_assign`
--
ALTER TABLE `equipment_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT for table `inspaction`
--
ALTER TABLE `inspaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `maintenance_cost`
--
ALTER TABLE `maintenance_cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenance_mechanic`
--
ALTER TABLE `maintenance_mechanic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `maintenance_spare_parts`
--
ALTER TABLE `maintenance_spare_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `middle_datas`
--
ALTER TABLE `middle_datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notesheets`
--
ALTER TABLE `notesheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `notesheets_master`
--
ALTER TABLE `notesheets_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notesheet_access_chain`
--
ALTER TABLE `notesheet_access_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notesheet_acknowledgement`
--
ALTER TABLE `notesheet_acknowledgement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `notesheet_remarks_history`
--
ALTER TABLE `notesheet_remarks_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `page_details`
--
ALTER TABLE `page_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `plant_and_equipment`
--
ALTER TABLE `plant_and_equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `present_condition`
--
ALTER TABLE `present_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `priority_details`
--
ALTER TABLE `priority_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_assign`
--
ALTER TABLE `product_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_damage`
--
ALTER TABLE `product_damage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `recruite_requests`
--
ALTER TABLE `recruite_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rlp_access_chain`
--
ALTER TABLE `rlp_access_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

--
-- AUTO_INCREMENT for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rlp_details`
--
ALTER TABLE `rlp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rlp_info`
--
ALTER TABLE `rlp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles_group`
--
ALTER TABLE `roles_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_access`
--
ALTER TABLE `role_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `status_details`
--
ALTER TABLE `status_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_projects`
--
ALTER TABLE `sub_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_logsheet`
--
ALTER TABLE `tb_logsheet`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `temp_info`
--
ALTER TABLE `temp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3359;

--
-- AUTO_INCREMENT for table `workorders`
--
ALTER TABLE `workorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `workorders_master`
--
ALTER TABLE `workorders_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  ADD CONSTRAINT `rlp_acknowledgement_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  ADD CONSTRAINT `rlp_delete_history_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_details`
--
ALTER TABLE `rlp_details`
  ADD CONSTRAINT `rlp_details_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_info`
--
ALTER TABLE `rlp_info`
  ADD CONSTRAINT `rlp_info_ibfk_1` FOREIGN KEY (`rlp_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  ADD CONSTRAINT `rlp_remarks_history_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
