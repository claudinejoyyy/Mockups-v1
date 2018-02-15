-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2018 at 03:01 PM
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
  `type` text NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`logs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `type`, `remarks`) VALUES
(233, 3, '2018-02-11 01:15:15', 'log', 'Logged in'),
(234, 3, '2018-02-11 01:15:15', 'add', 'Added: military officer - zxcweqe'),
(235, 3, '2018-02-11 02:12:39', 'log', 'Logged in'),
(236, 3, '2018-02-11 02:12:39', 'log', 'Logged out'),
(237, 2, '2018-02-11 02:12:39', 'log', 'Logged in'),
(238, 2, '2018-02-11 02:21:54', 'log', 'Logged in'),
(239, 2, '2018-02-11 02:23:23', 'log', 'Logged in'),
(240, 2, '2018-02-11 02:28:23', 'log', 'Logged in'),
(241, 2, '2018-02-11 02:28:40', 'log', 'Logged in'),
(242, 2, '2018-02-11 02:29:22', 'log', 'Logged in'),
(243, 2, '2018-02-11 02:31:05', 'log', 'Logged in'),
(244, 3, '2018-02-11 02:32:36', 'log', 'Logged in'),
(245, 3, '2018-02-11 02:32:36', 'log', 'Logged out'),
(246, 2, '2018-02-11 02:32:36', 'log', 'Logged in'),
(247, 2, '2018-02-11 18:11:33', 'log', 'Logged in'),
(248, 2, '2018-02-11 18:12:42', 'log', 'Logged in'),
(249, 2, '2018-02-11 18:17:31', 'log', 'Logged in'),
(250, 3, '2018-02-11 18:20:27', 'log', 'Logged in'),
(251, 3, '2018-02-11 18:20:27', 'log', 'Logged out'),
(252, 3, '2018-02-11 18:31:14', 'log', 'Logged in'),
(253, 3, '2018-02-11 18:31:14', 'log', 'Logged out'),
(254, 3, '2018-02-11 18:38:22', 'log', 'Logged in'),
(255, 3, '2018-02-11 18:38:22', 'log', 'Logged out'),
(256, 3, '2018-02-11 19:18:51', 'log', 'Logged in'),
(257, 3, '2018-02-11 19:18:51', 'log', 'Logged out'),
(258, 2, '2018-02-11 19:18:51', 'log', 'Logged in'),
(259, 2, '2018-02-11 19:18:51', 'log', 'Logged out'),
(260, 3, '2018-02-11 19:18:51', 'log', 'Logged in'),
(261, 3, '2018-02-11 19:18:51', 'log', 'Logged out'),
(262, 2, '2018-02-11 19:18:51', 'log', 'Logged in'),
(263, 2, '2018-02-11 19:18:51', 'log', 'Logged out'),
(264, 3, '2018-02-11 19:18:51', 'log', 'Logged in'),
(265, 3, '2018-02-11 19:23:22', 'log', 'Logged in'),
(266, 3, '2018-02-11 19:23:22', 'log', 'Logged out'),
(267, 2, '2018-02-11 19:23:22', 'log', 'Logged in'),
(268, 3, '2018-02-11 19:28:47', 'log', 'Logged in'),
(269, 3, '2018-02-11 19:28:47', 'log', 'Logged out'),
(270, 2, '2018-02-11 19:28:47', 'log', 'Logged in'),
(271, 3, '2018-02-11 19:29:15', 'log', 'Logged in'),
(272, 3, '2018-02-11 19:29:15', 'log', 'Logged out'),
(273, 2, '2018-02-11 19:29:15', 'log', 'Logged in'),
(274, 2, '2018-02-11 19:29:15', 'log', 'Logged out'),
(275, 3, '2018-02-14 00:24:47', 'log', 'Logged in'),
(276, 3, '2018-02-14 19:57:23', 'log', 'Logged in'),
(277, 3, '2018-02-14 20:36:20', 'log', 'Logged in'),
(278, 3, '2018-02-14 21:00:07', 'log', 'Logged in'),
(279, 3, '2018-02-14 21:00:58', 'log', 'Logged in'),
(280, 3, '2018-02-14 21:03:41', 'log', 'Logged in'),
(281, 3, '2018-02-14 21:05:05', 'log', 'Logged in'),
(282, 3, '2018-02-14 21:11:50', 'log', 'Logged in'),
(283, 3, '2018-02-14 21:11:50', 'log', 'Logged out'),
(284, 2, '2018-02-14 21:11:50', 'log', 'Logged in'),
(285, 2, '2018-02-14 21:11:50', 'log', 'Logged out'),
(286, 3, '2018-02-14 21:11:50', 'log', 'Logged in'),
(287, 3, '2018-02-14 23:50:08', 'log', 'Logged in'),
(288, 3, '2018-02-14 23:52:10', 'log', 'Logged in'),
(289, 3, '2018-02-14 23:52:52', 'log', 'Logged in'),
(290, 3, '2018-02-14 23:53:56', 'log', 'Logged in'),
(291, 3, '2018-02-14 23:55:05', 'log', 'Logged in'),
(292, 3, '2018-02-15 00:16:04', 'log', 'Logged in'),
(293, 3, '2018-02-15 21:37:10', 'log', 'Logged in'),
(294, 3, '2018-02-15 21:37:10', 'log', 'Logged out'),
(295, 2, '2018-02-15 21:37:10', 'log', 'Logged in'),
(296, 2, '2018-02-15 21:41:28', 'log', 'Logged in'),
(297, 2, '2018-02-15 21:42:29', 'log', 'Logged in'),
(298, 2, '2018-02-15 21:43:02', 'log', 'Logged in'),
(299, 4, '2018-02-15 21:45:12', 'log', 'Logged in'),
(300, 4, '2018-02-15 21:46:14', 'log', 'Logged in'),
(301, 4, '2018-02-15 21:46:46', 'log', 'Logged in'),
(302, 4, '2018-02-15 21:48:25', 'log', 'Logged in'),
(303, 4, '2018-02-15 21:48:58', 'log', 'Logged in'),
(304, 2, '2018-02-15 21:50:06', 'log', 'Logged in'),
(305, 2, '2018-02-15 21:50:06', 'log', 'Logged out'),
(306, 3, '2018-02-15 21:50:06', 'log', 'Logged in'),
(307, 3, '2018-02-15 21:50:06', 'log', 'Logged out'),
(308, 4, '2018-02-15 21:50:06', 'log', 'Logged in'),
(309, 4, '2018-02-15 21:52:40', 'log', 'Logged in'),
(310, 2, '2018-02-15 21:55:56', 'log', 'Logged in'),
(311, 2, '2018-02-15 21:55:56', 'log', 'Logged out'),
(312, 4, '2018-02-15 21:55:56', 'log', 'Logged in'),
(313, 4, '2018-02-15 21:59:43', 'log', 'Logged in'),
(314, 4, '2018-02-15 21:59:43', 'log', 'Logged out'),
(315, 2, '2018-02-15 21:59:43', 'log', 'Logged in'),
(316, 2, '2018-02-15 21:59:43', 'log', 'Logged out'),
(317, 3, '2018-02-15 21:59:43', 'log', 'Logged in'),
(318, 3, '2018-02-15 21:59:43', 'log', 'Logged out'),
(319, 4, '2018-02-15 21:59:43', 'log', 'Logged in'),
(320, 4, '2018-02-15 21:59:43', 'log', 'Logged out'),
(321, 4, '2018-02-15 22:01:26', 'log', 'Logged in'),
(322, 4, '2018-02-15 22:01:50', 'log', 'Logged in'),
(323, 4, '2018-02-15 22:03:04', 'log', 'Logged in'),
(324, 3, '2018-02-15 22:12:55', 'log', 'Logged in'),
(325, 3, '2018-02-15 22:12:55', 'todo', 'Added : asdwasda to To Do List'),
(326, 4, '2018-02-15 22:26:01', 'log', 'Logged in'),
(327, 4, '2018-02-15 22:26:30', 'log', 'Logged in'),
(328, 4, '2018-02-15 22:27:03', 'log', 'Logged in'),
(329, 4, '2018-02-15 22:27:03', 'todo', 'Added to To Do List the following: zxcasdqweasd'),
(330, 4, '2018-02-15 22:27:03', 'log', 'Logged out'),
(331, 3, '2018-02-15 22:27:03', 'log', 'Logged in'),
(332, 3, '2018-02-15 22:32:46', 'log', 'Logged in'),
(333, 3, '2018-02-15 22:34:54', 'log', 'Logged in'),
(334, 3, '2018-02-15 22:34:54', 'log', 'Logged out'),
(335, 4, '2018-02-15 22:35:26', 'log', 'Logged in'),
(336, 4, '2018-02-15 22:54:16', 'log', 'Logged in'),
(337, 4, '2018-02-15 22:55:49', 'log', 'Logged in'),
(338, 4, '2018-02-15 22:56:23', 'log', 'Logged in'),
(339, 4, '2018-02-15 22:58:05', 'log', 'Logged in'),
(340, 4, '2018-02-15 22:58:05', 'appointment', 'Set Appointment with undefined on 2018-02-19 04:04:00');

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
  `remarks` text,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `doctor_id`, `patient_id`, `remarks`) VALUES
(1, '2017-11-29 22:23:39', 1, 1, NULL),
(2, '2018-02-18 20:04:00', 4, 51, 'zxcasdqweasd');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_nurse`
--

DROP TABLE IF EXISTS `assessment_nurse`;
CREATE TABLE IF NOT EXISTS `assessment_nurse` (
  `assessment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assessment` text NOT NULL,
  `date` datetime NOT NULL,
  `patient_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`assessment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessment_nurse`
--

INSERT INTO `assessment_nurse` (`assessment_id`, `assessment`, `date`, `patient_id`, `account_id`) VALUES
(1, 'qweasd', '2018-02-14 23:52:52', 42, 4),
(2, 'asdqwe', '2018-02-14 23:53:56', 48, 4),
(3, 'wasD', '2018-02-14 23:55:05', 42, 4);

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
  `sex` varchar(1) DEFAULT NULL,
  `status` varchar(7) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `religion` varchar(15) DEFAULT NULL,
  `blood_type` varchar(2) DEFAULT NULL,
  `allergies` text,
  `father` text,
  `mother` text,
  `birth_history` text,
  `rankORsn` varchar(20) DEFAULT NULL,
  `immunization` text,
  `family_history` text,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

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
(49, 'military officer', 'asd', 14, '', 'M', 'Maried', '2018-01-30', 'asd', '', '', '', '\n:', '\n:', '', 'asd', 'Influenza:\n\n', 'CVD\n\n'),
(50, 'military officer', 'qwe', 20, '', 'M', 'Maried', '2018-02-09', 'asd', '', '', '', '\n:', '\n:', '', '', 'Influenza:\n\n', 'DM\n\n'),
(51, 'military officer', 'asdqweq', 25, '', 'M', 'Maried', '2018-02-13', 'asdasdqwe', '', '', '', '\n:', '\n:', '', '', 'Tetanus Toxoid:\n\n', 'DM\n\n'),
(52, 'military officer', 'zxcweqe', 29, '', 'M', 'Maried', '2018-02-01', 'asdazxc', '', '', '', '\n:', '\n:', '', '', 'Tyroid:\n\n', '\n\nCVD\n\n');

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
-- Table structure for table `todo_list`
--

DROP TABLE IF EXISTS `todo_list`;
CREATE TABLE IF NOT EXISTS `todo_list` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`todo_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo_list`
--

INSERT INTO `todo_list` (`todo_id`, `description`, `date`, `account_id`) VALUES
(1, 'asdqwe', '2018-02-01 03:30:00', 3),
(2, 'wasd', '2018-02-01 01:20:00', 3),
(3, 'asdwasda', '2018-02-14 01:00:00', 3),
(4, 'zxcasdqweasd', '2018-02-07 03:03:00', 4);

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
(3, 'nurse@nurse.com', 'nurse', 'nurse', 'hoy ikaw', 22, 'F', '#90 dyan lang', '9123746123'),
(4, 'doctor@doctor.com', 'doctor', 'doctor', 'Quacky Docky', 40, 'M', '#123 Di Malaman', '9123787231'),
(5, 'laboratorist@laboratorist.com', 'laboratorist', 'laboratorist', '', 0, '', '', ''),
(6, 'nurse2@nurse.com', 'nurse', 'nurse', '', 0, '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessment_nurse`
--
ALTER TABLE `assessment_nurse`
  ADD CONSTRAINT `assessment_nurse_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `assessment_nurse_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `user_accounts` (`account_id`);

--
-- Constraints for table `todo_list`
--
ALTER TABLE `todo_list`
  ADD CONSTRAINT `todo_list_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `user_accounts` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
