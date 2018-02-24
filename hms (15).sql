-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 24, 2018 at 06:57 AM
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
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`logs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`logs_id`, `account_id`, `time`, `type`, `remarks`, `patient_id`) VALUES
(5, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 1', 42),
(6, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 2', 48),
(7, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 3', 45),
(8, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 4', 46),
(9, 4, '2018-02-23 02:25:44', 'bedDischarge', 'Discharged a patient from bed number : 4', NULL),
(10, 4, '2018-02-23 02:25:44', 'bedDischarge', 'Discharged a patient from bed number : 3', NULL),
(11, 4, '2018-02-23 02:25:44', 'bedDischarge', 'Discharged a patient from bed number : 2', NULL),
(12, 4, '2018-02-23 02:25:44', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(13, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 1', 42),
(14, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 2', 48),
(15, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 3', 45),
(16, 4, '2018-02-23 02:25:44', 'bed', 'Alloted bed number: 4', 46),
(17, 4, '2018-02-23 02:25:44', 'appointment', 'Set Appointment with Paul Je on 2018-02-01 01:00:00', NULL),
(18, 4, '2018-02-23 02:46:49', 'log', 'Logged in', NULL),
(19, 4, '2018-02-23 02:46:49', 'log', 'Logged out', NULL),
(20, 3, '2018-02-23 02:46:49', 'log', 'Logged in', NULL),
(21, 3, '2018-02-23 02:46:49', 'initialAssessment', 'assessment for 47', NULL),
(22, 3, '2018-02-23 02:46:49', 'log', 'Logged out', NULL),
(23, 4, '2018-02-23 02:46:49', 'log', 'Logged in', NULL),
(24, 3, '2018-02-23 02:54:58', 'log', 'Logged in', NULL),
(25, 3, '2018-02-23 02:59:21', 'log', 'Logged in', NULL),
(26, 3, '2018-02-23 03:02:44', 'log', 'Logged in', NULL),
(27, 3, '2018-02-23 03:02:44', 'initialAssessment', 'assessment for undefined', 50),
(28, 3, '2018-02-23 03:04:30', 'log', 'Logged in', NULL),
(29, 3, '2018-02-23 03:04:30', 'add', 'Added: cadet - z', NULL),
(30, 3, '2018-02-23 03:04:30', 'log', 'Logged out', NULL),
(31, 4, '2018-02-23 03:04:30', 'log', 'Logged in', NULL),
(32, 4, '2018-02-23 03:04:30', 'cancelPrescription', 'Canceled prescription for: ma mon', NULL),
(33, 4, '2018-02-23 03:04:30', 'cancelPrescription', 'Canceled prescription for: ma mon', NULL),
(34, 4, '2018-02-23 03:21:01', 'log', 'Logged in', NULL),
(35, 4, '2018-02-23 03:21:51', 'log', 'Logged in', NULL),
(36, 4, '2018-02-23 03:23:41', 'log', 'Logged in', NULL),
(37, 3, '2018-02-23 03:28:50', 'log', 'Logged in', NULL),
(38, 4, '2018-02-23 03:23:41', 'log', 'Logged in', NULL),
(39, 4, '2018-02-23 03:38:27', 'log', 'Logged in', NULL),
(40, 4, '2018-02-23 03:38:27', 'bed', 'Alloted bed number: 21', 50),
(41, 4, '2018-02-23 03:40:28', 'log', 'Logged in', NULL),
(42, 4, '2018-02-23 03:50:54', 'log', 'Logged in', NULL),
(43, 4, '2018-02-23 03:52:14', 'log', 'Logged in', NULL),
(44, 4, '2018-02-23 03:53:58', 'log', 'Logged in', NULL),
(45, 4, '2018-02-23 03:54:17', 'log', 'Logged in', NULL),
(46, 4, '2018-02-23 03:54:58', 'log', 'Logged in', NULL),
(47, 4, '2018-02-23 03:56:05', 'log', 'Logged in', NULL),
(48, 4, '2018-02-23 03:57:11', 'log', 'Logged in', NULL),
(49, 4, '2018-02-23 04:13:54', 'log', 'Logged in', NULL),
(50, 4, '2018-02-23 04:16:00', 'log', 'Logged in', NULL),
(51, 4, '2018-02-23 04:26:35', 'log', 'Logged in', NULL),
(52, 4, '2018-02-23 04:38:47', 'log', 'Logged in', NULL),
(53, 4, '2018-02-23 04:38:47', 'bed', 'Alloted bed number: 10', 49),
(54, 4, '2018-02-23 04:38:47', 'bed', 'Alloted bed number: 6', 47),
(55, 4, '2018-02-23 04:38:47', 'bedDischarge', 'Discharged a patient from bed number : 10', NULL),
(56, 4, '2018-02-23 04:38:47', 'bedDischarge', 'Discharged a patient from bed number : 6', NULL),
(57, 4, '2018-02-23 04:38:47', 'bed', 'Alloted bed number: 5', 47),
(58, 4, '2018-02-23 04:38:47', 'bed', 'Alloted bed number: 6', 49),
(59, 4, '2018-02-23 04:38:47', 'bedDischarge', 'Discharged a patient from bed number : 5', NULL),
(60, 4, '2018-02-23 04:38:47', 'bedDischarge', 'Discharged a patient from bed number : 6', NULL),
(61, 4, '2018-02-23 04:42:25', 'log', 'Logged in', NULL),
(62, 4, '2018-02-23 04:42:40', 'log', 'Logged in', NULL),
(63, 4, '2018-02-23 04:42:40', 'bed', 'Alloted bed number: 16', 47),
(64, 4, '2018-02-23 04:42:40', 'bed', 'Alloted bed number: 5', 49),
(65, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(66, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 2', NULL),
(67, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 3', NULL),
(68, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 4', NULL),
(69, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 5', NULL),
(70, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 16', NULL),
(71, 4, '2018-02-23 04:42:40', 'bedDischarge', 'Discharged a patient from bed number : 21', NULL),
(72, 4, '2018-02-23 04:42:40', 'bed', 'Alloted bed number: 1', 46),
(73, 4, '2018-02-23 04:44:17', 'log', 'Logged in', NULL),
(74, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 2', 42),
(75, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 3', 49),
(76, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 16', 47),
(77, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 50', 50),
(78, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 43', 45),
(79, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 5', 48),
(80, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(81, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 2', NULL),
(82, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 3', NULL),
(83, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 5', NULL),
(84, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 16', NULL),
(85, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 43', NULL),
(86, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 50', NULL),
(87, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 1', 42),
(88, 4, '2018-02-23 04:44:17', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(89, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 1', 42),
(90, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 2', 45),
(91, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 3', 49),
(92, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 4', 47),
(93, 4, '2018-02-23 04:44:17', 'bed', 'Alloted bed number: 21', 50),
(94, 4, '2018-02-23 05:07:12', 'log', 'Logged in', NULL),
(95, 4, '2018-02-23 05:07:12', 'bed', 'Alloted bed number: 5 to patient:Paul Je', 46),
(96, 4, '2018-02-23 12:18:01', 'log', 'Logged in', NULL),
(97, 4, '2018-02-23 12:18:01', 'labRequest', 'Lab request for : ma mon', NULL),
(98, 4, '2018-02-23 12:28:19', 'log', 'Logged in', NULL),
(99, 4, '2018-02-23 12:28:19', 'labRequest', 'Lab request for : Ikaw Na Nga', NULL),
(100, 4, '2018-02-23 12:45:50', 'log', 'Logged in', NULL),
(101, 4, '2018-02-23 17:27:14', 'log', 'Logged in', NULL),
(102, 4, '2018-02-23 17:36:14', 'log', 'Logged in', NULL),
(103, 4, '2018-02-23 17:36:44', 'log', 'Logged in', NULL),
(104, 4, '2018-02-23 17:36:44', 'bed', 'Alloted bed number: 6 to patient:Mon Joel Dela Rosa', 48),
(105, 4, '2018-02-23 17:36:44', 'labRequest', 'Lab request for : Paul Je', NULL),
(106, 4, '2018-02-23 17:36:44', 'labRequest', 'Lab request for : rweewasqews', NULL),
(107, 4, '2018-02-23 17:36:44', 'labRequest', 'Lab request for : ma mon', NULL),
(108, 4, '2018-02-23 17:36:44', 'labRequest', 'Lab request for : ma mon', NULL),
(109, 4, '2018-02-23 17:36:44', 'labRequest', 'Lab request for : Mon Joel Dela Rosa', NULL),
(110, 4, '2018-02-23 17:36:44', 'labRequest', 'Lab request for : Mon Joel Dela Rosa', NULL),
(111, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(112, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(113, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: Ikaw Na Nga', NULL),
(114, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: Paul Je', NULL),
(115, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: rweewasqews', NULL),
(116, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(117, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(118, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: Mon Joel Dela Rosa', NULL),
(119, 4, '2018-02-23 17:36:44', 'cancelLabRequest', 'Canceled lab request for: Mon Joel Dela Rosa', NULL),
(120, 4, '2018-02-23 18:05:02', 'log', 'Logged in', NULL),
(121, 4, '2018-02-23 18:05:02', 'labRequest', 'Lab request for : ma mon', NULL),
(122, 4, '2018-02-23 18:05:02', 'labRequest', 'Lab request for : ma mon', NULL),
(123, 4, '2018-02-23 18:05:02', 'labRequest', 'Lab request for : Ikaw Na Nga', NULL),
(124, 4, '2018-02-23 18:05:02', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(125, 4, '2018-02-23 18:05:02', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(126, 4, '2018-02-23 18:05:02', 'cancelLabRequest', 'Canceled lab request for: Ikaw Na Nga', NULL),
(127, 4, '2018-02-23 18:15:15', 'log', 'Logged in', NULL),
(128, 4, '2018-02-23 18:17:31', 'log', 'Logged in', NULL),
(129, 4, '2018-02-23 18:19:30', 'log', 'Logged in', NULL),
(130, 4, '2018-02-23 18:19:30', 'labRequest', 'Lab request for : ma mon', NULL),
(131, 4, '2018-02-23 18:19:30', 'labRequest', 'Lab request for : ma mon', NULL),
(132, 4, '2018-02-23 18:19:30', 'labRequest', 'Lab request for : Ikaw Na Nga', NULL),
(133, 4, '2018-02-23 18:38:19', 'log', 'Logged in', NULL),
(134, 4, '2018-02-23 18:39:13', 'log', 'Logged in', NULL),
(135, 4, '2018-02-23 18:40:04', 'log', 'Logged in', NULL),
(136, 4, '2018-02-23 18:40:32', 'log', 'Logged in', NULL),
(137, 4, '2018-02-23 18:42:41', 'log', 'Logged in', NULL),
(138, 4, '2018-02-23 18:42:41', 'log', 'Logged in', NULL),
(139, 4, '2018-02-23 18:52:34', 'log', 'Logged in', NULL),
(140, 4, '2018-02-23 18:52:40', 'log', 'Logged in', NULL),
(141, 4, '2018-02-23 18:55:12', 'log', 'Logged in', NULL),
(142, 4, '2018-02-23 18:55:12', 'labRequest', 'Lab request for : qwe', NULL),
(143, 4, '2018-02-23 18:58:16', 'log', 'Logged in', NULL),
(144, 4, '2018-02-23 18:58:52', 'log', 'Logged in', NULL),
(145, 4, '2018-02-23 18:58:52', 'labRequest', 'Lab request for : asd', NULL),
(146, 4, '2018-02-23 19:00:09', 'log', 'Logged in', NULL),
(147, 4, '2018-02-23 19:00:09', 'labRequest', 'Lab request for : Paul Je', NULL),
(148, 4, '2018-02-23 19:00:33', 'log', 'Logged in', NULL),
(149, 4, '2018-02-23 19:00:46', 'log', 'Logged in', NULL),
(150, 4, '2018-02-23 19:00:46', 'labRequest', 'Lab request for : rweewasqews', NULL),
(151, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(152, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: ma mon', NULL),
(153, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: Ikaw Na Nga', NULL),
(154, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: qwe', NULL),
(155, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: asd', NULL),
(156, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: Paul Je', NULL),
(157, 4, '2018-02-23 19:00:46', 'cancelLabRequest', 'Canceled lab request for: rweewasqews', NULL),
(158, 4, '2018-02-23 19:57:58', 'log', 'Logged in', NULL),
(159, 4, '2018-02-23 19:58:27', 'log', 'Logged in', NULL),
(160, 4, '2018-02-23 20:04:33', 'log', 'Logged in', NULL),
(161, 4, '2018-02-23 20:04:33', 'labRequest', 'Lab request for : ma mon', NULL),
(162, 4, '2018-02-23 20:20:58', 'log', 'Logged in', NULL),
(163, 4, '2018-02-23 20:21:17', 'log', 'Logged in', NULL),
(164, 4, '2018-02-23 20:21:37', 'log', 'Logged in', NULL),
(165, 4, '2018-02-23 20:23:20', 'log', 'Logged in', NULL),
(166, 4, '2018-02-23 20:23:29', 'log', 'Logged in', NULL),
(167, 4, '2018-02-23 20:23:47', 'log', 'Logged in', NULL),
(168, 4, '2018-02-23 20:25:08', 'log', 'Logged in', NULL),
(169, 4, '2018-02-23 20:25:22', 'log', 'Logged in', NULL),
(170, 4, '2018-02-23 20:26:06', 'log', 'Logged in', NULL),
(171, 4, '2018-02-23 20:26:38', 'log', 'Logged in', NULL),
(172, 4, '2018-02-23 20:27:46', 'log', 'Logged in', NULL),
(173, 4, '2018-02-23 20:28:27', 'log', 'Logged in', NULL),
(174, 4, '2018-02-23 20:29:36', 'log', 'Logged in', NULL),
(175, 4, '2018-02-23 20:29:36', 'bedDischarge', 'Discharged a patient from bed number : 4', NULL),
(176, 4, '2018-02-23 20:39:33', 'log', 'Logged in', NULL),
(177, 4, '2018-02-23 20:39:52', 'log', 'Logged in', NULL),
(178, 4, '2018-02-23 20:46:16', 'log', 'Logged in', NULL),
(179, 4, '2018-02-23 20:46:16', 'log', 'Logged in', NULL),
(180, 4, '2018-02-23 22:27:22', 'log', 'Logged in', NULL),
(181, 4, '2018-02-23 22:27:39', 'log', 'Logged in', NULL),
(182, 4, '2018-02-23 22:31:04', 'log', 'Logged in', NULL),
(183, 4, '2018-02-23 22:31:04', 'log', 'Logged out', NULL),
(184, 3, '2018-02-23 22:31:04', 'log', 'Logged in', NULL),
(185, 3, '2018-02-23 22:38:40', 'log', 'Logged in', NULL),
(186, 3, '2018-02-23 22:38:40', 'initialAssessment', 'assessment for undefined', 42),
(187, 3, '2018-02-23 22:38:40', 'log', 'Logged out', NULL),
(188, 4, '2018-02-23 22:38:40', 'log', 'Logged in', NULL),
(189, 4, '2018-02-23 22:49:46', 'log', 'Logged in', NULL),
(190, 4, '2018-02-23 22:49:46', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(191, 4, '2018-02-23 23:01:13', 'log', 'Logged in', NULL),
(192, 4, '2018-02-23 23:01:35', 'log', 'Logged in', NULL),
(193, 4, '2018-02-23 23:02:27', 'log', 'Logged in', NULL),
(194, 4, '2018-02-23 23:03:14', 'log', 'Logged in', NULL),
(195, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(196, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(197, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(198, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(199, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(200, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(201, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(202, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : Ikaw Na Nga', NULL),
(203, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(204, 4, '2018-02-23 23:03:14', 'diagnosis', 'diagnosis for : ma mon', NULL),
(205, 3, '2018-02-23 23:36:36', 'log', 'Logged in', NULL),
(206, 3, '2018-02-24 00:49:36', 'log', 'Logged in', NULL),
(207, 3, '2018-02-24 00:49:36', 'log', 'Logged out', NULL),
(208, 4, '2018-02-24 00:49:36', 'log', 'Logged in', NULL),
(209, 4, '2018-02-24 00:49:36', 'log', 'Logged out', NULL),
(210, 1, '2018-02-24 00:49:36', 'log', 'Logged in', NULL),
(211, 3, '2018-02-24 00:57:35', 'log', 'Logged in', NULL),
(212, 3, '2018-02-24 00:57:35', 'log', 'Logged out', NULL),
(213, 4, '2018-02-24 00:57:35', 'log', 'Logged in', NULL),
(214, 4, '2018-02-24 00:57:35', 'log', 'Logged out', NULL),
(215, 5, '2018-02-24 00:57:35', 'log', 'Logged in', NULL),
(216, 5, '2018-02-24 00:57:35', 'log', 'Logged out', NULL),
(217, 3, '2018-02-24 00:57:35', 'log', 'Logged in', NULL),
(218, 3, '2018-02-24 01:06:20', 'log', 'Logged in', NULL),
(219, 3, '2018-02-24 01:07:50', 'log', 'Logged in', NULL),
(220, 3, '2018-02-24 01:18:11', 'log', 'Logged in', NULL),
(221, 4, '2018-02-24 14:34:44', 'log', 'Logged in', NULL),
(222, 4, '2018-02-24 14:48:40', 'log', 'Logged in', NULL),
(223, 4, '2018-02-24 14:48:53', 'log', 'Logged in', NULL),
(224, 4, '2018-02-24 14:49:51', 'log', 'Logged in', NULL),
(225, 4, '2018-02-24 14:49:51', 'bed', 'Alloted bed number: 1 to patient:ma mon', 42),
(226, 4, '2018-02-24 14:49:51', 'bed', 'Alloted bed number: 25 to patient:rweewasqews', 47),
(227, 4, '2018-02-24 14:49:51', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(228, 4, '2018-02-24 14:49:51', 'bedDischarge', 'Discharged a patient from bed number : 1', NULL),
(229, 4, '2018-02-24 14:49:51', 'bedDischarge', 'Discharged a patient from bed number : 25', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_timestamp`, `doctor_id`, `patient_id`, `remarks`) VALUES
(5, '2018-02-08 07:00:00', 4, 42, 'asczxcqweasd'),
(6, '2018-02-08 08:02:00', 4, 42, 'asczxczxcasdqwe'),
(7, '2018-03-24 05:00:00', 4, 42, 'zxcadasdzxc'),
(8, '2018-01-31 17:00:00', 4, 42, 'zxcasd');

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
(2, 'occupied', '2018-02-23 04:44:17', NULL, 45),
(3, 'occupied', '2018-02-23 04:44:17', NULL, 49),
(4, 'Unoccupied', NULL, NULL, NULL),
(5, 'occupied', '2018-02-23 05:07:12', NULL, 46),
(6, 'occupied', '2018-02-23 17:36:44', NULL, 48),
(7, 'Unoccupied', NULL, NULL, NULL),
(8, 'Unoccupied', NULL, NULL, NULL),
(9, 'Unoccupied', NULL, NULL, NULL),
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
(21, 'occupied', '2018-02-23 04:44:17', NULL, 50),
(22, 'Unoccupied', NULL, NULL, NULL),
(23, 'Unoccupied', NULL, NULL, NULL),
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
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE IF NOT EXISTS `diagnosis` (
  `diag_id` int(11) NOT NULL AUTO_INCREMENT,
  `diagnosis` text NOT NULL,
  `date` timestamp NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  PRIMARY KEY (`diag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
-- Table structure for table `initial_assessment`
--

DROP TABLE IF EXISTS `initial_assessment`;
CREATE TABLE IF NOT EXISTS `initial_assessment` (
  `assessment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assessment` text NOT NULL,
  `date` datetime NOT NULL,
  `patient_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `vital_signs` text NOT NULL,
  PRIMARY KEY (`assessment_id`),
  KEY `patient_id` (`patient_id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `initial_assessment`
--

INSERT INTO `initial_assessment` (`assessment_id`, `assessment`, `date`, `patient_id`, `account_id`, `vital_signs`) VALUES
(4, 'may sakit ', '2018-02-16 21:08:50', 44, 3, 'a\nq\nw\ne\nr\nt\ny'),
(5, 'ito ano', '2018-02-17 21:35:42', 43, 3, 'ito ano\nito ano\nito ano\nito ano\nito ano\nito ano\nito ano'),
(6, 'assessmentDoctor', '2018-02-17 21:48:50', 45, 4, 'assessmentDoctor\nassessmentDoctor\nassessmentDoctor\nassessmentDoctor\nassessmentDoctor\nassessmentDoctor\nassessmentDoctor'),
(7, 'zxcasdqwe', '2018-02-19 20:50:06', 46, 4, 'asd\nwe\neqdasd\nzxc\nxzc\nzxc\nezxc'),
(8, 'azxc', '2018-02-23 02:46:49', 47, 4, 'a\nw\ne\nr\nt\ny\nu'),
(9, 'z', '2018-02-23 02:59:21', 49, 4, 'a\nq\ne\nw\nr\nt\ny'),
(10, 'a', '2018-02-23 03:02:44', 50, 4, 'a\nwe\nr\nt\ny\nu\nq'),
(11, 'zxc', '2018-02-23 22:38:40', 42, 4, 'BP: z\nCR: w\nPR: a\nRR: e\n TEMP: r\nWT: t');

-- --------------------------------------------------------

--
-- Table structure for table `lab_request`
--

DROP TABLE IF EXISTS `lab_request`;
CREATE TABLE IF NOT EXISTS `lab_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL,
  `remarks` text NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `lab_status` varchar(20) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_request`
--

INSERT INTO `lab_request` (`request_id`, `type`, `timestamp`, `remarks`, `doctor_id`, `patient_id`, `lab_status`) VALUES
(76, 'bloodChemistry', '2018-02-23 12:04:33', 'a', 4, 42, 'pending');

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

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
(52, 'military officer', 'zxcweqe', 29, '', 'M', 'Maried', '2018-02-01', 'asdazxc', '', '', '', '\n:', '\n:', '', '', 'Tyroid:\n\n', '\n\nCVD\n\n'),
(53, 'cadet', 'asdqwe', 15, '', 'M', 'Maried', '2018-02-08', 'asdqwe', '', '', '', '\n:', '\n:', '', '', '\n', '\n'),
(54, 'military officer', 'asdqwe', 17, '', 'M', 'Single', '2018-02-01', 'zxcasd', '', '', '', '\n:', '\n:', '', '', 'Phenomia:2018-02\n\n', 'DM\nCVD\n\n'),
(55, 'cadet', 'z', 2, '', 'M', 'Maried', '2018-02-01', 'a', '', '', '', '\n:', '\n:', '', '', '\n', '\n');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_stamp` timestamp NOT NULL,
  `medicine` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `dosage` text NOT NULL,
  `timeframe` text NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(12) NOT NULL,
  PRIMARY KEY (`prescription_id`),
  KEY `patient_id` (`patient_id`),
  KEY `doctor_id` (`doctor_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `creation_stamp`, `medicine`, `quantity`, `dosage`, `timeframe`, `doctor_id`, `patient_id`, `status`) VALUES
(6, '2018-02-20 10:29:37', 'asdzxc', 3, '2 T a D', 'asdqwe', 3, 42, 'confirmed'),
(7, '2018-02-20 10:29:37', 'asdzxc', 1, 'qweasd', 'zxc', 4, 42, 'confirmed'),
(8, '2018-02-20 10:30:48', 'xczc', 1, 'asczxc', 'zxc', 4, 42, 'pending');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo_list`
--

INSERT INTO `todo_list` (`todo_id`, `description`, `date`, `account_id`) VALUES
(1, 'asdqwe', '2018-02-01 03:30:00', 3),
(2, 'wasd', '2018-02-01 01:20:00', 3),
(3, 'asdwasda', '2018-02-14 01:00:00', 3),
(4, 'zxcasdqweasd', '2018-02-07 03:03:00', 4),
(5, 'asdqwe', '2018-02-01 02:01:00', 4),
(6, 'wasd', '2018-02-16 02:02:00', 4),
(7, 'wasDASDASDA', '2018-02-01 03:03:00', 1),
(8, 'asdasdasdad', '2018-02-03 15:01:00', 5),
(9, 'asdqwezxc', '2018-02-01 15:02:00', 3),
(10, 'asdqwe', '2018-02-16 15:01:00', 4),
(11, 'asdzxcqwe', '2018-02-02 04:02:00', 1);

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
(1, 'pharmacist@pharmacist.com', 'pharmacist', 'pharmacist', 'sam pul', 19, 'F', '#23 Somewhere', '9123746523'),
(2, 'admin@admin.com', 'admin', 'admin', 'Ma Master', 20, 'M', '#12 upper bonifacio', '9178403451'),
(3, 'nurse@nurse.com', 'nurse', 'nurse', 'hoy ikaw', 22, 'F', '#90 dyan lang', '9123746123'),
(4, 'doctor@doctor.com', 'doctor', 'doctor', 'Quacky Quac', 20, 'M', '#123 Di Malaman', '9123787231'),
(5, 'laboratorist@laboratorist.com', 'laboratorist', 'laboratorist', '', 0, '', '', ''),
(6, 'nurse2@nurse.com', 'nurse', 'nurse', '', 0, '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `initial_assessment`
--
ALTER TABLE `initial_assessment`
  ADD CONSTRAINT `initial_assessment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `initial_assessment_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `user_accounts` (`account_id`);

--
-- Constraints for table `lab_request`
--
ALTER TABLE `lab_request`
  ADD CONSTRAINT `lab_request_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `user_accounts` (`account_id`),
  ADD CONSTRAINT `lab_request_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `user_accounts` (`account_id`);

--
-- Constraints for table `todo_list`
--
ALTER TABLE `todo_list`
  ADD CONSTRAINT `todo_list_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `user_accounts` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
