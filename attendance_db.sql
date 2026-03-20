-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2026 at 08:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `faculty_id`, `course`, `date`, `status`) VALUES
(3, 3, 1, 'DBMS', '2026-03-19', 'Absent'),
(4, 1, 1, 'DBMS', '2026-03-19', 'Absent'),
(5, 2, 1, 'DBMS', '2026-03-19', 'Absent'),
(6, 1, 1, 'DBMS', '2026-03-19', 'Absent'),
(7, 2, 1, 'DBMS', '2026-03-19', 'Present'),
(8, 9, 1, 'Python', '2026-03-20', 'Present'),
(9, 21, 1, 'Python', '2026-03-20', 'Absent'),
(10, 33, 1, 'Python', '2026-03-20', 'Present'),
(11, 45, 1, 'Python', '2026-03-20', 'Present'),
(12, 57, 1, 'Python', '2026-03-20', 'Present'),
(13, 69, 1, 'Python', '2026-03-20', 'Present'),
(14, 81, 1, 'Python', '2026-03-20', 'Present'),
(15, 93, 1, 'Python', '2026-03-20', 'Present'),
(16, 109, 1, 'Python', '2026-03-20', 'Present'),
(17, 121, 1, 'Python', '2026-03-20', 'Present'),
(18, 133, 1, 'Python', '2026-03-20', 'Present'),
(19, 145, 1, 'Python', '2026-03-20', 'Absent'),
(20, 157, 1, 'Python', '2026-03-20', 'Present'),
(21, 169, 1, 'Python', '2026-03-20', 'Present'),
(22, 181, 1, 'Python', '2026-03-20', 'Absent'),
(23, 193, 1, 'Python', '2026-03-20', 'Absent'),
(24, 4, 1, 'DBMS', '2026-03-20', 'Absent'),
(25, 16, 1, 'DBMS', '2026-03-20', 'Absent'),
(26, 28, 1, 'DBMS', '2026-03-20', 'Present'),
(27, 40, 1, 'DBMS', '2026-03-20', 'Present'),
(28, 52, 1, 'DBMS', '2026-03-20', 'Present'),
(29, 64, 1, 'DBMS', '2026-03-20', 'Present'),
(30, 76, 1, 'DBMS', '2026-03-20', 'Present'),
(31, 88, 1, 'DBMS', '2026-03-20', 'Present'),
(32, 100, 1, 'DBMS', '2026-03-20', 'Present'),
(33, 104, 1, 'DBMS', '2026-03-20', 'Present'),
(34, 116, 1, 'DBMS', '2026-03-20', 'Present'),
(35, 128, 1, 'DBMS', '2026-03-20', 'Present'),
(36, 140, 1, 'DBMS', '2026-03-20', 'Present'),
(37, 152, 1, 'DBMS', '2026-03-20', 'Present'),
(38, 164, 1, 'DBMS', '2026-03-20', 'Present'),
(39, 176, 1, 'DBMS', '2026-03-20', 'Present'),
(40, 188, 1, 'DBMS', '2026-03-20', 'Present'),
(41, 200, 1, 'DBMS', '2026-03-20', 'Present'),
(42, 5, 1, 'DBMS', '2026-03-20', 'Present'),
(43, 17, 1, 'DBMS', '2026-03-20', 'Present'),
(44, 29, 1, 'DBMS', '2026-03-20', 'Present'),
(45, 41, 1, 'DBMS', '2026-03-20', 'Present'),
(46, 53, 1, 'DBMS', '2026-03-20', 'Present'),
(47, 65, 1, 'DBMS', '2026-03-20', 'Present'),
(48, 77, 1, 'DBMS', '2026-03-20', 'Present'),
(49, 89, 1, 'DBMS', '2026-03-20', 'Present'),
(50, 101, 1, 'DBMS', '2026-03-20', 'Present'),
(51, 105, 1, 'DBMS', '2026-03-20', 'Present'),
(52, 117, 1, 'DBMS', '2026-03-20', 'Present'),
(53, 129, 1, 'DBMS', '2026-03-20', 'Present'),
(54, 141, 1, 'DBMS', '2026-03-20', 'Present'),
(55, 153, 1, 'DBMS', '2026-03-20', 'Present'),
(56, 165, 1, 'DBMS', '2026-03-20', 'Present'),
(57, 177, 1, 'DBMS', '2026-03-20', 'Present'),
(58, 189, 1, 'DBMS', '2026-03-20', 'Absent'),
(59, 201, 1, 'DBMS', '2026-03-20', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `username`, `password`) VALUES
(1, 'sandhiya', 'sandhiya1', 'sa1234'),
(2, 'vinoth', 'vinoth2', 'sa1234'),
(3, 'bhuvi', 'bhuvi3', 'sa1234'),
(4, 'Sneha', 'sneha4', 'sa1234'),
(5, 'madhu5', 'madhu5', 'sa1234'),
(6, 'Kavya', 'kavya6', 'sa1234'),
(7, 'Rahul', 'rahul7', 'sa1234'),
(8, 'Meera', 'meera8', 'sa1234'),
(9, 'Vikram', 'vikram9', 'sa1234'),
(10, 'Ananya', 'ananya10', 'sa1234'),
(11, 'Karthik', 'karthik11', 'sa1234'),
(12, 'Divya', 'divya12', 'sa1234'),
(13, 'Sanjay', 'sanjay13', 'sa1234'),
(14, 'Anjali', 'anjali14', 'sa1234'),
(15, 'Arjun', 'arjun15', 'sa1234'),
(16, 'Priyanka', 'priyanka16', 'sa1234'),
(17, 'Nithin', 'nithin17', 'sa1234'),
(18, 'Ishita', 'ishita18', 'sa1234'),
(19, 'Aarohi', 'aarohi19', 'sa1234'),
(20, 'Manav', 'manav20', 'sa1234');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_assignments`
--

CREATE TABLE `faculty_assignments` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_assignments`
--

INSERT INTO `faculty_assignments` (`id`, `faculty_id`, `department`, `course`, `section`) VALUES
(1, 1, 'CSE', 'DBMS', 'A'),
(2, 1, 'CSE', 'DBMS', 'B'),
(3, 1, 'CSE', 'Python', 'A'),
(4, 1, 'IT', 'Python', 'B'),
(5, 1, 'AIDS', 'Python', 'C'),
(6, 1, 'ECE', 'Python', 'D'),
(7, 1, 'CYBER', 'Python', 'A'),
(8, 2, 'CSE', 'C', 'B'),
(9, 2, 'IT', 'C', 'C'),
(10, 2, 'AIDS', 'C', 'D'),
(11, 2, 'ECE', 'C', 'A'),
(12, 2, 'CYBER', 'C', 'B'),
(13, 3, 'CSE', 'EVS', 'C'),
(14, 3, 'IT', 'EVS', 'D'),
(15, 3, 'AIDS', 'EVS', 'A'),
(16, 3, 'ECE', 'EVS', 'B'),
(17, 3, 'CYBER', 'EVS', 'C'),
(18, 4, 'CSE', 'EPSD', 'D'),
(19, 4, 'IT', 'EPSD', 'A'),
(20, 4, 'AIDS', 'EPSD', 'B'),
(21, 4, 'ECE', 'EPSD', 'C'),
(22, 4, 'CYBER', 'EPSD', 'D'),
(23, 5, 'CSE', 'Tamil', 'A'),
(24, 5, 'IT', 'Tamil', 'B'),
(25, 5, 'AIDS', 'Tamil', 'C'),
(26, 5, 'ECE', 'Tamil', 'D'),
(27, 5, 'CYBER', 'Tamil', 'A'),
(28, 6, 'CSE', 'English', 'B'),
(29, 6, 'IT', 'English', 'C'),
(30, 6, 'AIDS', 'English', 'D'),
(31, 6, 'ECE', 'English', 'A'),
(32, 6, 'CYBER', 'English', 'B'),
(33, 7, 'CSE', 'EG', 'C'),
(34, 7, 'IT', 'EG', 'D'),
(35, 7, 'AIDS', 'EG', 'A'),
(36, 7, 'ECE', 'EG', 'B'),
(37, 7, 'CYBER', 'EG', 'C'),
(38, 8, 'CSE', 'Python', 'B'),
(39, 8, 'IT', 'Python', 'C'),
(40, 8, 'AIDS', 'Python', 'D'),
(41, 8, 'ECE', 'Python', 'A'),
(42, 8, 'CYBER', 'Python', 'B'),
(43, 9, 'CSE', 'C', 'C'),
(44, 9, 'IT', 'C', 'D'),
(45, 9, 'AIDS', 'C', 'A'),
(46, 9, 'ECE', 'C', 'B'),
(47, 9, 'CYBER', 'C', 'C'),
(48, 10, 'CSE', 'EVS', 'D'),
(49, 10, 'IT', 'EVS', 'A'),
(50, 10, 'AIDS', 'EVS', 'B'),
(51, 10, 'ECE', 'EVS', 'C'),
(52, 10, 'CYBER', 'EVS', 'D'),
(53, 11, 'CSE', 'EPSD', 'A'),
(54, 11, 'IT', 'EPSD', 'B'),
(55, 11, 'AIDS', 'EPSD', 'C'),
(56, 11, 'ECE', 'EPSD', 'D'),
(57, 11, 'CYBER', 'EPSD', 'A'),
(58, 12, 'CSE', 'Tamil', 'C'),
(59, 12, 'IT', 'Tamil', 'D'),
(60, 12, 'AIDS', 'Tamil', 'A'),
(61, 12, 'ECE', 'Tamil', 'B'),
(62, 12, 'CYBER', 'Tamil', 'C'),
(63, 13, 'CSE', 'English', 'D'),
(64, 13, 'IT', 'English', 'A'),
(65, 13, 'AIDS', 'English', 'B'),
(66, 13, 'ECE', 'English', 'C'),
(67, 13, 'CYBER', 'English', 'D'),
(68, 14, 'CSE', 'EG', 'A'),
(69, 14, 'IT', 'EG', 'B'),
(70, 14, 'AIDS', 'EG', 'C'),
(71, 14, 'ECE', 'EG', 'D'),
(72, 14, 'CYBER', 'EG', 'A'),
(73, 15, 'CSE', 'Python', 'C'),
(74, 15, 'IT', 'Python', 'D'),
(75, 15, 'AIDS', 'Python', 'A'),
(76, 15, 'ECE', 'Python', 'B'),
(77, 15, 'CYBER', 'Python', 'C'),
(78, 16, 'CSE', 'C', 'D'),
(79, 16, 'IT', 'C', 'A'),
(80, 16, 'AIDS', 'C', 'B'),
(81, 16, 'ECE', 'C', 'C'),
(82, 16, 'CYBER', 'C', 'D'),
(83, 17, 'CSE', 'EVS', 'A'),
(84, 17, 'IT', 'EVS', 'B'),
(85, 17, 'AIDS', 'EVS', 'C'),
(86, 17, 'ECE', 'EVS', 'D'),
(87, 17, 'CYBER', 'EVS', 'A'),
(88, 18, 'CSE', 'EPSD', 'B'),
(89, 18, 'IT', 'EPSD', 'C'),
(90, 18, 'AIDS', 'EPSD', 'D'),
(91, 18, 'ECE', 'EPSD', 'A'),
(92, 18, 'CYBER', 'EPSD', 'B'),
(93, 19, 'CSE', 'Tamil', 'D'),
(94, 19, 'IT', 'Tamil', 'A'),
(95, 19, 'AIDS', 'Tamil', 'B'),
(96, 19, 'ECE', 'Tamil', 'C'),
(97, 19, 'CYBER', 'Tamil', 'D'),
(98, 20, 'CSE', 'English', 'A'),
(99, 20, 'IT', 'English', 'B'),
(100, 20, 'AIDS', 'English', 'C'),
(101, 20, 'ECE', 'English', 'D'),
(102, 20, 'CYBER', 'English', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `roll_no`, `name`, `department`, `section`) VALUES
(4, '101', 'Aarav Kumar', 'CSE', 'A'),
(5, '102', 'Priya Sharma', 'CSE', 'B'),
(6, '103', 'Rohan Das', 'CSE', 'C'),
(7, '104', 'Sneha Reddy', 'CSE', 'D'),
(8, '105', 'Aditya Singh', 'IT', 'A'),
(9, '106', 'Kavya Nair', 'IT', 'B'),
(10, '107', 'Rahul Verma', 'IT', 'C'),
(11, '108', 'Meera Iyer', 'IT', 'D'),
(12, '109', 'Vikram Patel', 'AIDS', 'A'),
(13, '110', 'Ananya Gupta', 'AIDS', 'B'),
(14, '111', 'Karthik R', 'AIDS', 'C'),
(15, '112', 'Divya S', 'AIDS', 'D'),
(16, '113', 'Sanjay Kumar', 'CSE', 'A'),
(17, '114', 'Anjali Menon', 'CSE', 'B'),
(18, '115', 'Arjun Rao', 'CSE', 'C'),
(19, '116', 'Priyanka Das', 'CSE', 'D'),
(20, '117', 'Nithin Kumar', 'IT', 'A'),
(21, '118', 'Ishita Sharma', 'IT', 'B'),
(22, '119', 'Aarohi Singh', 'IT', 'C'),
(23, '120', 'Manav Gupta', 'IT', 'D'),
(24, '121', 'Ayaan R', 'AIDS', 'A'),
(25, '122', 'Sana T', 'AIDS', 'B'),
(26, '123', 'Vivaan K', 'AIDS', 'C'),
(27, '124', 'Mira L', 'AIDS', 'D'),
(28, '125', 'Ria P', 'CSE', 'A'),
(29, '126', 'Kabir S', 'CSE', 'B'),
(30, '127', 'Tara N', 'CSE', 'C'),
(31, '128', 'Dhruv J', 'CSE', 'D'),
(32, '129', 'Anika R', 'IT', 'A'),
(33, '130', 'Reyansh V', 'IT', 'B'),
(34, '131', 'Diya M', 'IT', 'C'),
(35, '132', 'Arnav P', 'IT', 'D'),
(36, '133', 'Siddhi K', 'AIDS', 'A'),
(37, '134', 'Kunal R', 'AIDS', 'B'),
(38, '135', 'Isha S', 'AIDS', 'C'),
(39, '136', 'Neil G', 'AIDS', 'D'),
(40, '137', 'Radhika L', 'CSE', 'A'),
(41, '138', 'Shaurya T', 'CSE', 'B'),
(42, '139', 'Naina R', 'CSE', 'C'),
(43, '140', 'Vihaan K', 'CSE', 'D'),
(44, '141', 'Myra S', 'IT', 'A'),
(45, '142', 'Yash P', 'IT', 'B'),
(46, '143', 'Kiara D', 'IT', 'C'),
(47, '144', 'Aarush M', 'IT', 'D'),
(48, '145', 'Saanvi R', 'AIDS', 'A'),
(49, '146', 'Kabir N', 'AIDS', 'B'),
(50, '147', 'Tanishq L', 'AIDS', 'C'),
(51, '148', 'Anaya S', 'AIDS', 'D'),
(52, '149', 'Reya P', 'CSE', 'A'),
(53, '150', 'Atharv V', 'CSE', 'B'),
(54, '151', 'Diya N', 'CSE', 'C'),
(55, '152', 'Advait K', 'CSE', 'D'),
(56, '153', 'Sanya R', 'IT', 'A'),
(57, '154', 'Raghav S', 'IT', 'B'),
(58, '155', 'Nivaan T', 'IT', 'C'),
(59, '156', 'Ishani P', 'IT', 'D'),
(60, '157', 'Aria L', 'AIDS', 'A'),
(61, '158', 'Krishna M', 'AIDS', 'B'),
(62, '159', 'Riya S', 'AIDS', 'C'),
(63, '160', 'Shiv A', 'AIDS', 'D'),
(64, '161', 'Mehul R', 'CSE', 'A'),
(65, '162', 'Anvi T', 'CSE', 'B'),
(66, '163', 'Rudra S', 'CSE', 'C'),
(67, '164', 'Sia K', 'CSE', 'D'),
(68, '165', 'Tanvi P', 'IT', 'A'),
(69, '166', 'Aryan L', 'IT', 'B'),
(70, '167', 'Prisha N', 'IT', 'C'),
(71, '168', 'Vivaan R', 'IT', 'D'),
(72, '169', 'Kiara M', 'AIDS', 'A'),
(73, '170', 'Shaurya K', 'AIDS', 'B'),
(74, '171', 'Anika P', 'AIDS', 'C'),
(75, '172', 'Riaan T', 'AIDS', 'D'),
(76, '173', 'Aarohi N', 'CSE', 'A'),
(77, '174', 'Reyansh S', 'CSE', 'B'),
(78, '175', 'Diya R', 'CSE', 'C'),
(79, '176', 'Advait P', 'CSE', 'D'),
(80, '177', 'Saanvi M', 'IT', 'A'),
(81, '178', 'Kabir T', 'IT', 'B'),
(82, '179', 'Tanishq P', 'IT', 'C'),
(83, '180', 'Anaya L', 'IT', 'D'),
(84, '181', 'Reya M', 'AIDS', 'A'),
(85, '182', 'Atharv K', 'AIDS', 'B'),
(86, '183', 'Diya P', 'AIDS', 'C'),
(87, '184', 'Advait L', 'AIDS', 'D'),
(88, '185', 'Sanya M', 'CSE', 'A'),
(89, '186', 'Raghav K', 'CSE', 'B'),
(90, '187', 'Nivaan L', 'CSE', 'C'),
(91, '188', 'Ishani M', 'CSE', 'D'),
(92, '189', 'Aria P', 'IT', 'A'),
(93, '190', 'Krishna L', 'IT', 'B'),
(94, '191', 'Riya M', 'IT', 'C'),
(95, '192', 'Shiv P', 'IT', 'D'),
(96, '193', 'Mehul S', 'AIDS', 'A'),
(97, '194', 'Anvi L', 'AIDS', 'B'),
(98, '195', 'Rudra P', 'AIDS', 'C'),
(99, '196', 'Sia M', 'AIDS', 'D'),
(100, '197', 'Tanvi M', 'CSE', 'A'),
(101, '198', 'Aryan P', 'CSE', 'B'),
(102, '199', 'Prisha L', 'CSE', 'C'),
(103, '200', 'Vivaan P', 'CSE', 'D'),
(104, '201', 'Aarav N', 'CSE', 'A'),
(105, '202', 'Priya K', 'CSE', 'B'),
(106, '203', 'Rohan P', 'CSE', 'C'),
(107, '204', 'Sneha M', 'CSE', 'D'),
(108, '205', 'Aditya L', 'IT', 'A'),
(109, '206', 'Kavya R', 'IT', 'B'),
(110, '207', 'Rahul S', 'IT', 'C'),
(111, '208', 'Meera T', 'IT', 'D'),
(112, '209', 'Vikram J', 'AIDS', 'A'),
(113, '210', 'Ananya N', 'AIDS', 'B'),
(114, '211', 'Karthik P', 'AIDS', 'C'),
(115, '212', 'Divya M', 'AIDS', 'D'),
(116, '213', 'Sanjay L', 'CSE', 'A'),
(117, '214', 'Anjali R', 'CSE', 'B'),
(118, '215', 'Arjun M', 'CSE', 'C'),
(119, '216', 'Priyanka N', 'CSE', 'D'),
(120, '217', 'Nithin S', 'IT', 'A'),
(121, '218', 'Ishita L', 'IT', 'B'),
(122, '219', 'Aarohi M', 'IT', 'C'),
(123, '220', 'Manav N', 'IT', 'D'),
(124, '221', 'Ayaan P', 'AIDS', 'A'),
(125, '222', 'Sana K', 'AIDS', 'B'),
(126, '223', 'Vivaan R', 'AIDS', 'C'),
(127, '224', 'Mira P', 'AIDS', 'D'),
(128, '225', 'Ria S', 'CSE', 'A'),
(129, '226', 'Kabir L', 'CSE', 'B'),
(130, '227', 'Tara M', 'CSE', 'C'),
(131, '228', 'Dhruv N', 'CSE', 'D'),
(132, '229', 'Anika K', 'IT', 'A'),
(133, '230', 'Reyansh M', 'IT', 'B'),
(134, '231', 'Diya L', 'IT', 'C'),
(135, '232', 'Arnav N', 'IT', 'D'),
(136, '233', 'Siddhi P', 'AIDS', 'A'),
(137, '234', 'Kunal M', 'AIDS', 'B'),
(138, '235', 'Isha L', 'AIDS', 'C'),
(139, '236', 'Neil P', 'AIDS', 'D'),
(140, '237', 'Radhika M', 'CSE', 'A'),
(141, '238', 'Shaurya L', 'CSE', 'B'),
(142, '239', 'Naina M', 'CSE', 'C'),
(143, '240', 'Vihaan N', 'CSE', 'D'),
(144, '241', 'Myra P', 'IT', 'A'),
(145, '242', 'Yash L', 'IT', 'B'),
(146, '243', 'Kiara M', 'IT', 'C'),
(147, '244', 'Aarush N', 'IT', 'D'),
(148, '245', 'Saanvi P', 'AIDS', 'A'),
(149, '246', 'Kabir M', 'AIDS', 'B'),
(150, '247', 'Tanishq N', 'AIDS', 'C'),
(151, '248', 'Anaya M', 'AIDS', 'D'),
(152, '249', 'Reya P', 'CSE', 'A'),
(153, '250', 'Atharv M', 'CSE', 'B'),
(154, '251', 'Diya M', 'CSE', 'C'),
(155, '252', 'Advait N', 'CSE', 'D'),
(156, '253', 'Sanya P', 'IT', 'A'),
(157, '254', 'Raghav M', 'IT', 'B'),
(158, '255', 'Nivaan N', 'IT', 'C'),
(159, '256', 'Ishani P', 'IT', 'D'),
(160, '257', 'Aria M', 'AIDS', 'A'),
(161, '258', 'Krishna N', 'AIDS', 'B'),
(162, '259', 'Riya P', 'AIDS', 'C'),
(163, '260', 'Shiv M', 'AIDS', 'D'),
(164, '261', 'Mehul P', 'CSE', 'A'),
(165, '262', 'Anvi M', 'CSE', 'B'),
(166, '263', 'Rudra N', 'CSE', 'C'),
(167, '264', 'Sia P', 'CSE', 'D'),
(168, '265', 'Tanvi N', 'IT', 'A'),
(169, '266', 'Aryan M', 'IT', 'B'),
(170, '267', 'Prisha P', 'IT', 'C'),
(171, '268', 'Vivaan N', 'IT', 'D'),
(172, '269', 'Kiara P', 'AIDS', 'A'),
(173, '270', 'Shaurya M', 'AIDS', 'B'),
(174, '271', 'Anika N', 'AIDS', 'C'),
(175, '272', 'Riaan P', 'AIDS', 'D'),
(176, '273', 'Aarohi M', 'CSE', 'A'),
(177, '274', 'Reyansh M', 'CSE', 'B'),
(178, '275', 'Diya P', 'CSE', 'C'),
(179, '276', 'Advait M', 'CSE', 'D'),
(180, '277', 'Saanvi M', 'IT', 'A'),
(181, '278', 'Kabir P', 'IT', 'B'),
(182, '279', 'Tanishq M', 'IT', 'C'),
(183, '280', 'Anaya P', 'IT', 'D'),
(184, '281', 'Reya M', 'AIDS', 'A'),
(185, '282', 'Atharv P', 'AIDS', 'B'),
(186, '283', 'Diya N', 'AIDS', 'C'),
(187, '284', 'Advait P', 'AIDS', 'D'),
(188, '285', 'Sanya M', 'CSE', 'A'),
(189, '286', 'Raghav P', 'CSE', 'B'),
(190, '287', 'Nivaan M', 'CSE', 'C'),
(191, '288', 'Ishani M', 'CSE', 'D'),
(192, '289', 'Aria P', 'IT', 'A'),
(193, '290', 'Krishna P', 'IT', 'B'),
(194, '291', 'Riya N', 'IT', 'C'),
(195, '292', 'Shiv P', 'IT', 'D'),
(196, '293', 'Mehul M', 'AIDS', 'A'),
(197, '294', 'Anvi P', 'AIDS', 'B'),
(198, '295', 'Rudra M', 'AIDS', 'C'),
(199, '296', 'Sia M', 'AIDS', 'D'),
(200, '297', 'Tanvi P', 'CSE', 'A'),
(201, '298', 'Aryan P', 'CSE', 'B'),
(202, '299', 'Prisha M', 'CSE', 'C'),
(203, '300', 'Vivaan P', 'CSE', 'D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_assignments`
--
ALTER TABLE `faculty_assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faculty_assignments`
--
ALTER TABLE `faculty_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
