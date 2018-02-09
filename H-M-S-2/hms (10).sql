-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 09, 2018 at 06:06 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `logs_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`logs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `remarks`) VALUES
(48, 3, '2018-02-04 18:51:36', 'Logged in'),
(49, 3, '2018-02-04 18:51:36', 'Added: civilian - rweewasqews'),
(50, 3, '2018-02-04 18:55:20', 'Logged in'),
(51, 3, '2018-02-04 18:55:20', 'Assigned: 42 to bed number 2'),
(52, 3, '2018-02-04 18:58:53', 'Logged in'),
(53, 3, '2018-02-04 18:58:53', 'Assigned: [object Object] to bed number 9'),
(54, 3, '2018-02-04 18:59:13', 'Logged in'),
(55, 3, '2018-02-04 18:59:13', 'Assigned: Paul Je to bed number 22'),
(56, 3, '2018-02-04 19:18:10', 'Logged in'),
(57, 3, '2018-02-04 19:18:30', 'Logged in'),
(58, 3, '2018-02-04 19:20:03', 'Logged in'),
(59, 3, '2018-02-04 19:20:36', 'Logged in'),
(60, 3, '2018-02-04 19:21:00', 'Logged in'),
(61, 3, '2018-02-04 19:23:25', 'Logged in'),
(62, 3, '2018-02-04 19:25:41', 'Logged in'),
(63, 3, '2018-02-04 19:26:33', 'Logged in'),
(64, 3, '2018-02-04 19:26:53', 'Logged in'),
(65, 3, '2018-02-04 19:26:53', 'Admitted ma mon to ER'),
(66, 3, '2018-02-04 19:26:53', 'Admitted Pul sam to ward'),
(67, 3, '2018-02-04 19:29:13', 'Logged in'),
(68, 3, '2018-02-04 19:29:38', 'Logged in'),
(69, 3, '2018-02-04 19:29:38', 'Admitted sampul sam to ER'),
(70, 3, '2018-02-04 19:29:38', 'Assigned: rweewasqews to bed number 23'),
(71, 3, '2018-02-04 20:01:00', 'Logged in'),
(72, 3, '2018-02-04 20:21:56', 'Logged in'),
(73, 3, '2018-02-04 20:34:00', 'Logged in'),
(74, 3, '2018-02-04 20:48:06', 'Logged in'),
(75, 3, '2018-02-04 20:52:54', 'Logged in'),
(76, 3, '2018-02-04 20:54:12', 'Logged in'),
(77, 3, '2018-02-04 20:55:17', 'Logged in'),
(78, 3, '2018-02-04 20:57:22', 'Logged in'),
(79, 3, '2018-02-04 21:01:49', 'Logged in'),
(80, 3, '2018-02-06 19:48:12', 'Logged in'),
(81, 3, '2018-02-06 20:36:42', 'Logged in'),
(82, 3, '2018-02-06 20:40:51', 'Logged in'),
(83, 3, '2018-02-06 20:58:32', 'Logged in'),
(84, 3, '2018-02-06 20:58:32', 'Logged in'),
(85, 3, '2018-02-07 01:45:15', 'Logged in'),
(86, 3, '2018-02-07 01:48:43', 'Logged in'),
(87, 3, '2018-02-07 01:50:05', 'Logged in'),
(88, 3, '2018-02-07 01:50:27', 'Logged in'),
(89, 3, '2018-02-07 01:53:11', 'Logged in'),
(90, 3, '2018-02-07 01:53:42', 'Logged in'),
(91, 3, '2018-02-07 02:06:41', 'Logged in'),
(92, 3, '2018-02-07 02:11:10', 'Logged in'),
(93, 3, '2018-02-07 02:16:14', 'Logged in'),
(94, 3, '2018-02-07 02:16:47', 'Logged in'),
(95, 3, '2018-02-07 02:17:14', 'Logged in'),
(96, 3, '2018-02-07 02:20:20', 'Logged in'),
(97, 3, '2018-02-07 02:21:40', 'Logged in'),
(98, 3, '2018-02-07 02:22:14', 'Logged in'),
(99, 3, '2018-02-07 02:27:32', 'Logged in'),
(100, 3, '2018-02-07 02:27:32', 'Discharged : undefined From  Department'),
(101, 3, '2018-02-07 02:28:15', 'Logged in'),
(102, 3, '2018-02-07 02:29:15', 'Logged in'),
(103, 3, '2018-02-07 02:29:15', 'Discharged : undefined From  Department'),
(104, 3, '2018-02-07 02:29:15', 'Discharged : undefined From  Department'),
(105, 3, '2018-02-07 02:29:15', 'Discharged : undefined From  Department'),
(106, 3, '2018-02-07 02:29:15', 'Admitted Pul sam to ER'),
(107, 3, '2018-02-07 02:29:15', 'Discharged : undefined From  Department'),
(108, 3, '2018-02-07 02:29:15', 'Admitted ma mon to ward'),
(109, 3, '2018-02-07 02:29:15', 'Admitted Pul sam to ward'),
(110, 3, '2018-02-07 02:29:15', 'Discharged : undefined From  Department'),
(111, 3, '2018-02-07 02:29:15', 'Discharged : undefined From  Department'),
(112, 3, '2018-02-07 19:01:43', 'Logged in'),
(113, 3, '2018-02-07 19:02:16', 'Logged in'),
(114, 3, '2018-02-07 19:02:16', 'Admitted ma mon to ER'),
(115, 3, '2018-02-07 19:02:16', 'Admitted sampul sam to OPD'),
(116, 3, '2018-02-07 19:02:16', 'Admitted Paul Je to ward'),
(117, 3, '2018-02-07 19:02:16', 'Discharged : undefined From  Department'),
(118, 3, '2018-02-07 19:02:16', 'Discharged : undefined From  Department'),
(119, 3, '2018-02-07 19:02:16', 'Discharged : undefined From  Department'),
(120, 3, '2018-02-07 19:58:53', 'Logged in'),
(121, 3, '2018-02-07 19:58:53', 'Admitted ma mon to ward'),
(122, 3, '2018-02-07 19:58:53', 'Discharged : undefined From undefined Department'),
(123, 3, '2018-02-07 20:02:28', 'Logged in'),
(124, 3, '2018-02-07 20:02:28', 'Admitted ma mon to ER'),
(125, 3, '2018-02-07 20:03:26', 'Logged in'),
(126, 3, '2018-02-07 20:03:26', 'Admitted ma mon to ward'),
(127, 3, '2018-02-07 20:06:19', 'Logged in'),
(128, 3, '2018-02-07 20:06:19', 'Admitted ma mon to ward'),
(129, 3, '2018-02-07 20:06:47', 'Logged in'),
(130, 3, '2018-02-07 20:06:47', 'Admitted ma mon to ER'),
(131, 3, '2018-02-07 20:07:42', 'Logged in'),
(132, 3, '2018-02-07 20:07:42', 'Admitted ma mon to ER'),
(133, 3, '2018-02-07 20:08:18', 'Logged in'),
(134, 3, '2018-02-07 20:08:18', 'Admitted ma mon to ward'),
(135, 3, '2018-02-07 20:11:12', 'Logged in'),
(136, 3, '2018-02-07 20:11:12', 'Admitted ma mon to OPD'),
(137, 3, '2018-02-07 20:12:26', 'Logged in'),
(138, 3, '2018-02-07 20:12:26', 'Admitted ma mon to ER'),
(139, 3, '2018-02-07 20:13:38', 'Logged in'),
(140, 3, '2018-02-07 20:13:38', 'Admitted ma mon to ER'),
(141, 3, '2018-02-07 20:15:10', 'Logged in'),
(142, 3, '2018-02-07 20:18:11', 'Logged in'),
(143, 3, '2018-02-07 20:18:11', 'Admitted sampul sam to ward'),
(144, 3, '2018-02-07 20:19:26', 'Logged in'),
(145, 3, '2018-02-07 20:19:26', 'Admitted sampul sam to ER'),
(146, 3, '2018-02-07 20:19:26', 'Discharged : sampul sam From ER Department'),
(147, 3, '2018-02-07 20:20:12', 'Logged in'),
(148, 3, '2018-02-07 20:20:12', 'Discharged : sampul sam From ER Department'),
(149, 3, '2018-02-07 20:20:12', 'Admitted sampul sam to ward'),
(150, 3, '2018-02-07 20:20:12', 'Discharged : sampul sam From ward Department'),
(151, 3, '2018-02-09 20:01:45', 'Logged in'),
(152, 3, '2018-02-09 20:01:45', 'Added: cadet - Mon Joel Dela Rosa'),
(153, 3, '2018-02-09 20:31:53', 'Logged in'),
(154, 3, '2018-02-09 20:32:48', 'Logged in'),
(155, 3, '2018-02-09 20:32:57', 'Logged in'),
(156, 3, '2018-02-10 00:29:39', 'Logged in'),
(157, 3, '2018-02-10 00:29:39', 'Added: military officer - asd'),
(158, 3, '2018-02-10 00:29:39', 'Logged in'),
(159, 3, '2018-02-10 01:34:34', 'Logged in'),
(160, 3, '2018-02-10 01:35:04', 'Logged in'),
(161, 3, '2018-02-10 01:36:38', 'Logged in'),
(162, 3, '2018-02-10 01:38:53', 'Logged in'),
(163, 3, '2018-02-10 01:39:43', 'Logged in'),
(164, 3, '2018-02-10 01:40:54', 'Logged in'),
(165, 3, '2018-02-10 01:41:20', 'Logged in'),
(166, 3, '2018-02-10 01:42:59', 'Logged in'),
(167, 3, '2018-02-10 01:43:44', 'Logged in'),
(168, 3, '2018-02-10 01:44:08', 'Logged in'),
(169, 3, '2018-02-10 01:45:05', 'Logged in'),
(170, 3, '2018-02-10 01:46:04', 'Logged in'),
(171, 3, '2018-02-10 01:47:14', 'Logged in'),
(172, 3, '2018-02-10 01:51:21', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `admit`
--

DROP TABLE IF EXISTS `admit`;
CREATE TABLE IF NOT EXISTS `admit` (
  `patient_id` int(11) NOT NULL,
  `department` varchar(12) NOT NULL,
  UNIQUE KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE IF NOT EXISTS `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_title` text NOT NULL,
  `announcement` text NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `announcement_title`, `announcement`, `timestamp`) VALUES
(1, 'Greetings !!', 'Good Morning Everyone !!', '2017-11-29 19:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_timestamp` timestamp NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `doctor_id`, `patient_id`) VALUES
(1, '2017-11-29 22:23:39', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
CREATE TABLE IF NOT EXISTS `bed` (
  `bed_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(11) NOT NULL,
  `allotment_timestamp` datetime DEFAULT NULL,
  `description` text,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`bed_id`, `status`, `allotment_timestamp`, `description`, `patient_id`) VALUES
(1, 'Unoccupied', NULL, NULL, NULL),
(2, 'occupied', '2018-02-04 18:55:23', NULL, 42),
(3, 'Unoccupied', NULL, NULL, NULL),
(4, 'occupied', '2018-02-01 21:13:35', NULL, 44),
(5, 'Unoccupied', NULL, NULL, NULL),
(6, 'Unoccupied', NULL, NULL, NULL),
(7, 'occupied', '2018-02-01 21:13:41', NULL, 45),
(8, 'Unoccupied', NULL, NULL, NULL),
(9, 'occupied', '2018-02-04 18:58:56', NULL, 43),
(10, 'Unoccupied', NULL, NULL, NULL),
(11, 'Unoccupied', NULL, NULL, NULL),
(12, 'Unoccupied', NULL, NULL, NULL),
(13, 'Unoccupied', NULL, NULL, NULL),
(14, 'Unoccupied', NULL, NULL, NULL),
(15, 'Unoccupied', NULL, NULL, NULL),
(16, 'Unoccupied', NULL, NULL, NULL),
(17, 'Unoccupied', NULL, NULL, NULL),
(18, 'Unoccupied', NULL, NULL, NULL),
(19, 'Unoccupied', NULL, NULL, NULL),
(20, 'Unoccupied', NULL, NULL, NULL),
(21, 'Unoccupied', NULL, NULL, NULL),
(22, 'occupied', '2018-02-04 18:59:16', NULL, 46),
(23, 'occupied', '2018-02-04 19:29:57', NULL, 47),
(24, 'Unoccupied', NULL, NULL, NULL),
(25, 'Unoccupied', NULL, NULL, NULL),
(26, 'Unoccupied', NULL, NULL, NULL),
(27, 'Unoccupied', NULL, NULL, NULL),
(28, 'Unoccupied', NULL, NULL, NULL),
(29, 'Unoccupied', NULL, NULL, NULL),
(30, 'Unoccupied', NULL, NULL, NULL),
(31, 'Unoccupied', NULL, NULL, NULL),
(32, 'Unoccupied', NULL, NULL, NULL),
(33, 'Unoccupied', NULL, NULL, NULL),
(34, 'Unoccupied', NULL, NULL, NULL),
(35, 'Unoccupied', NULL, NULL, NULL),
(36, 'Unoccupied', NULL, NULL, NULL),
(37, 'Unoccupied', NULL, NULL, NULL),
(38, 'Unoccupied', NULL, NULL, NULL),
(39, 'Unoccupied', NULL, NULL, NULL),
(40, 'Unoccupied', NULL, NULL, NULL),
(41, 'Unoccupied', NULL, NULL, NULL),
(42, 'Unoccupied', NULL, NULL, NULL),
(43, 'Unoccupied', NULL, NULL, NULL),
(44, 'Unoccupied', NULL, NULL, NULL),
(45, 'Unoccupied', NULL, NULL, NULL),
(46, 'Unoccupied', NULL, NULL, NULL),
(47, 'Unoccupied', NULL, NULL, NULL),
(48, 'Unoccupied', NULL, NULL, NULL),
(49, 'Unoccupied', NULL, NULL, NULL),
(50, 'Unoccupied', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_transactions`
--

DROP TABLE IF EXISTS `billing_transactions`;
CREATE TABLE IF NOT EXISTS `billing_transactions` (
  `receipt_no` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `accountant_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `medicine_name` varchar(30) NOT NULL,
  PRIMARY KEY (`receipt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_transactions`
--

INSERT INTO `billing_transactions` (`receipt_no`, `amount`, `accountant_id`, `patient_id`, `medicine_name`) VALUES
(1, 49.99, 1, 1, 'Paracetamol');

-- --------------------------------------------------------

--
-- Table structure for table `daily_consumption_report`
--

DROP TABLE IF EXISTS `daily_consumption_report`;
CREATE TABLE IF NOT EXISTS `daily_consumption_report` (
  `dcr_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `medicine_quantity` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `pharmacist_id` int(11) NOT NULL,
  PRIMARY KEY (`dcr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_consumption_report`
--

INSERT INTO `daily_consumption_report` (`dcr_id`, `date`, `medicine_id`, `medicine_quantity`, `patient_id`, `pharmacist_id`) VALUES
(1, '2017-11-30', 1, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dep_id`, `name`) VALUES
(1, 'OPD'),
(2, 'ER'),
(3, 'Ward');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_report`
--

DROP TABLE IF EXISTS `diagnosis_report`;
CREATE TABLE IF NOT EXISTS `diagnosis_report` (
  `diag_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` text NOT NULL,
  `document_type` text NOT NULL,
  `file_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`diag_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis_report`
--

INSERT INTO `diagnosis_report` (`diag_report_id`, `report_type`, `document_type`, `file_name`, `description`, `timestamp`) VALUES
(1, 'X-Ray', 'Text', 'X-Ray.jpeg', 'asdasqwe asdasqwe asdasqwe asdasqwe', '2017-11-29 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_request`
--

DROP TABLE IF EXISTS `diagnosis_request`;
CREATE TABLE IF NOT EXISTS `diagnosis_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_stamp` timestamp NOT NULL,
  `test_requested` varchar(30) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis_request`
--

INSERT INTO `diagnosis_request` (`request_id`, `creation_stamp`, `test_requested`) VALUES
(1, '2017-11-29 16:00:00', 'X-Ray');

-- --------------------------------------------------------

--
-- Table structure for table `family_history`
--

DROP TABLE IF EXISTS `family_history`;
CREATE TABLE IF NOT EXISTS `family_history` (
  `fh_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`fh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_history`
--

INSERT INTO `family_history` (`fh_id`, `name`) VALUES
(1, ''),
(2, 'DM'),
(3, 'CVD'),
(4, 'CA'),
(5, 'Mental Illness'),
(6, 'Asthma'),
(7, 'Hypertension');

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
CREATE TABLE IF NOT EXISTS `finance` (
  `accountant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`accountant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`accountant_id`, `name`, `username`, `password`, `phone`) VALUES
(1, 'finance', 'finance123', 'finance', '9177723451');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_equipment`
--

DROP TABLE IF EXISTS `hospital_equipment`;
CREATE TABLE IF NOT EXISTS `hospital_equipment` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_equipment`
--

INSERT INTO `hospital_equipment` (`equipment_id`, `name`, `category`, `description`, `price`, `quantity`) VALUES
(1, 'ballpen', 'tools', 'This pen is a pen !!', 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `immunization`
--

DROP TABLE IF EXISTS `immunization`;
CREATE TABLE IF NOT EXISTS `immunization` (
  `name` varchar(15) NOT NULL,
  `immu_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`immu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `immunization`
--

INSERT INTO `immunization` (`name`, `immu_id`) VALUES
('', 1),
('DFT', 2),
('Polio', 3),
('Measles', 4),
('MMR', 5),
('Hepatitis A', 6),
('Hepatitis B', 7),
('Tyroid', 8),
('Chicken Pox', 9),
('Meningcoccemia', 10),
('Rabies', 11),
('HIB', 12),
('Influenza', 13),
('Phenomia', 14),
('Tetanus Toxoid', 15),
('BCD', 16);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `medicine_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `medicine_category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `manufacturing_company` varchar(30) NOT NULL,
  `medicine_quantity` int(11) NOT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicine_id`, `name`, `medicine_category_id`, `description`, `price`, `manufacturing_company`, `medicine_quantity`) VALUES
(1, 'solmux', 1, 'Vitamin C 500gm', 25, 'Generica', 50);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

DROP TABLE IF EXISTS `medicine_category`;
CREATE TABLE IF NOT EXISTS `medicine_category` (
  `medicine_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`medicine_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`medicine_category_id`, `name`, `description`) VALUES
(1, 'Allergy liquids', 'Allergic medicines'),
(2, 'Vitamins Tablets ', 'Vitamins tablets only');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `unit` text NOT NULL,
  `sex` varchar(1) NOT NULL,
  `status` varchar(7) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `blood_type` varchar(2) NOT NULL,
  `allergies` text NOT NULL,
  `father` text NOT NULL,
  `mother` text NOT NULL,
  `birth_history` text NOT NULL,
  `rankORsn` varchar(20) NOT NULL,
  `immunization` text NOT NULL,
  `family_history` text NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_type`, `name`, `age`, `unit`, `sex`, `status`, `birth_date`, `address`, `religion`, `blood_type`, `allergies`, `father`, `mother`, `birth_history`, `rankORsn`, `immunization`, `family_history`) VALUES
(42, 'cadet', 'ma mon', 20, '', 'M', 'Maried', '2018-01-04', '#123 asd', '', '', '', '\n:', '\n:', '', '456', '\n', '\n'),
(43, 'military officer', 'sampul sam', 20, '', 'M', 'Maried', '2018-01-04', '#789 qwe', '', '', '', '\n:', '\n:', '', '123', '\n', '\n'),
(44, 'military dependent', 'Pul sam', 20, '', 'F', 'Maried', '2018-01-05', 'asd', '', '', '', '\n:', '\n:', '', '678', '\n', '\n'),
(45, 'civilian', 'Ikaw Na Nga', 20, '', 'F', 'Maried', '2018-01-06', 'asdqwe', '', '', '', '\n:', '\n:', '', '657', '\n', '\n'),
(46, 'authorized civilian', 'Paul Je', 20, '', 'F', 'Single', '2018-01-20', 'zxc', '', '', '', '\n:', '\n:', '', '678', '\n', '\n'),
(47, 'civilian', 'rweewasqews', 19, '', 'M', 'Single', '2018-02-01', 'asdasda', '', '', '', '\n:', '\n:', '', 'wqedasd', 'Phenomia:\n\n', 'DM\n\n'),
(48, 'cadet', 'Mon Joel Dela Rosa', 20, '', 'M', 'Maried', '2018-01-31', 'asd', '', '', '', '\n:', '\n:', '', 'qwe', 'Meningcoccemia:2018-02\nPhenomia:\n\n', 'DM\nCVD\n\n'),
(49, 'military officer', 'asd', 14, '', 'M', 'Maried', '2018-01-30', 'asd', '', '', '', '\n:', '\n:', '', 'asd', 'Influenza:\n\n', 'CVD\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
CREATE TABLE IF NOT EXISTS `pharmacist` (
  `pharmacist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`pharmacist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`pharmacist_id`, `name`, `address`, `phone`) VALUES
(1, 'Pharmacist', '#123 maridith baguio city', '9165469251');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_stamp` timestamp NOT NULL,
  `case_history` text NOT NULL,
  `medication` text NOT NULL,
  `medication_from_pharmacist` text NOT NULL,
  `description` text NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_stamp`, `case_history`, `medication`, `medication_from_pharmacist`, `description`, `doctor_id`, `patient_id`) VALUES
(1, '2017-11-21 16:00:00', 'Case history details here of patient Anurag Basu<b...', 'Medication details here of patient Anurag Basu<br>', 'Medication from pharmacist details here of patient...', 'Additional description here of patient Anurag Basu...', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `name`) VALUES
(1, ''),
(2, 'lieutenant colonel'),
(3, 'major'),
(4, 'general');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_type` text NOT NULL COMMENT 'operation,birth,death',
  `description` text NOT NULL,
  `timestamp` timestamp NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `report_type`, `description`, `timestamp`, `doctor_id`, `patient_id`) VALUES
(1, 'birth', 'Normal blah blah Birth', '2017-11-21 16:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supply_sergeant`
--

DROP TABLE IF EXISTS `supply_sergeant`;
CREATE TABLE IF NOT EXISTS `supply_sergeant` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply_sergeant`
--

INSERT INTO `supply_sergeant` (`ss_id`, `name`, `username`, `password`, `address`, `phone`) VALUES
(1, 'Supply Sergeant', 'supplysergeant123', 'supplysergeant', '#456 upper baguio city', '9178623872');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
CREATE TABLE IF NOT EXISTS `treatment` (
  `treatment_id` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`treatment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatment_id`, `treatment_name`, `description`) VALUES
(1, 'Treatment #1 (IDK)', 'This treatment is a treatment !!');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `account_type` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`account_id`, `username`, `password`, `account_type`, `name`, `age`, `sex`, `address`, `phone`) VALUES
(1, 'pharmacist@pharmacist.com', 'pharmacist', 'pharmacist', 'Bill Gamot', 19, 'F', '#23 Somewhere', '9123746523'),
(2, 'admin@admin.com', 'admin', 'admin', 'Ma Master', 20, 'M', '#12 upper bonifacio', '9178403451'),
(3, 'nurse@nurse.com', 'nurse', 'nurse', 'Lou Die', 22, 'F', '#90 dyan lang', '9123746123'),
(4, 'doctor@doctor.com', 'doctor', 'doctor', 'Quacky Docky', 40, 'M', '#123 Di Malaman', '9123787231'),
(5, 'laboratorist@laboratorist.com', 'laboratorist', 'laboratorist', '', 0, '', '', ''),
(6, 'nurse2@nurse.com', 'nurse', 'nurse', '', 0, '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
