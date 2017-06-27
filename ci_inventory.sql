-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2017 at 05:10 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `c_id` int(11) NOT NULL,
  `c_row` varchar(10) DEFAULT NULL,
  `c_hostname` varchar(15) DEFAULT NULL,
  `c_motherboard` varchar(30) DEFAULT NULL,
  `c_processor` varchar(50) DEFAULT NULL,
  `c_ram` varchar(10) DEFAULT NULL,
  `c_hdd` varchar(10) DEFAULT NULL,
  `c_vdcard` varchar(50) DEFAULT NULL,
  `c_primary` varchar(50) DEFAULT NULL,
  `c_secondary` varchar(50) DEFAULT NULL,
  `c_type` enum('DESKTOP','LAPTOP') DEFAULT NULL,
  `c_keyboard` varchar(50) DEFAULT NULL,
  `c_mouse` varchar(50) DEFAULT NULL,
  `c_os` varchar(50) DEFAULT NULL,
  `c_msoffice` varchar(50) DEFAULT NULL,
  `c_dept` int(11) DEFAULT '1',
  `c_space` enum('OLD OPS','EXPANSION') DEFAULT NULL,
  `c_remarks` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  `dept_space` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `dept_space`) VALUES
(0, 'NOT ASSIGNED', 'XXXXX'),
(1, 'IT Department', 'EXPANSION'),
(2, 'CRM', 'EXPANSION'),
(3, 'Writers', 'EXPANSION'),
(4, 'RESEARCHER', 'OLD OPS'),
(5, 'QA', 'EXPANSION'),
(6, 'PRO ESPEPCIALIST', 'EXPANSION'),
(7, 'SALES', 'OLD OPS'),
(8, 'HR', 'EXPANSION'),
(9, 'DEV', 'OLD OPS'),
(10, 'FO', 'EXPANSION'),
(11, 'EDITOR', 'EXPANSION'),
(12, 'SEO', 'EXPANSION');

-- --------------------------------------------------------

--
-- Table structure for table `headset`
--

CREATE TABLE `headset` (
  `h_id` int(11) NOT NULL,
  `h_num` varchar(50) DEFAULT NULL,
  `h_brand` varchar(50) DEFAULT NULL,
  `h_model` varchar(50) DEFAULT NULL,
  `h_serial` varchar(50) DEFAULT NULL,
  `h_type` varchar(30) DEFAULT NULL,
  `h_status` enum('OLD','NEW') DEFAULT NULL,
  `h_availability` enum('DEPLOYED','MISSING','SPARE','DEFECTIVE','TEMPORARY') DEFAULT NULL,
  `h_realname` varchar(50) DEFAULT NULL,
  `h_phonename` varchar(50) DEFAULT NULL,
  `h_releasedate` date DEFAULT NULL,
  `h_returndate` date DEFAULT NULL,
  `h_releasedby` int(11) DEFAULT '1',
  `h_dept` int(11) DEFAULT NULL,
  `h_space` varchar(50) DEFAULT NULL,
  `h_remarks` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `inc_id` int(11) NOT NULL,
  `inc_date` date DEFAULT NULL,
  `inc_activity` varchar(5000) DEFAULT NULL,
  `inc_status` enum('LOW','NORMAL','HIGH','URGENT') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`inc_id`, `inc_date`, `inc_activity`, `inc_status`) VALUES
(1, '2017-06-27', 'Installed the latest version of Xampp', 'LOW'),
(2, '2017-06-27', 'YEA BOI.', 'URGENT'),
(3, '2017-06-27', 'Updated the functionality of changing the password', 'NORMAL'),
(4, '2017-06-27', 'Need to attend FRENCH Class at 4:30pm', 'URGENT'),
(5, '2017-06-30', 'Presentation of OJT Project to Master Rene Mino.', 'HIGH'),
(6, '2017-06-27', 'Deleted data of all assets.', 'HIGH'),
(7, '2017-06-27', 'Remodeled the 2 factor authentication on editing the user\'s password.', 'URGENT'),
(8, '2017-06-28', 'Text on IT126 about sorting. Study insertion sort algorithm. I hate my life.', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `peripherals`
--

CREATE TABLE `peripherals` (
  `p_id` int(11) NOT NULL,
  `p_asset` enum('PROCESSOR','RAM','MONITOR','KEYBOARD','MOUSE') DEFAULT NULL,
  `p_model` varchar(50) DEFAULT NULL,
  `p_brand` varchar(50) DEFAULT NULL,
  `p_type` varchar(50) DEFAULT NULL,
  `p_status` enum('OLD','NEW') DEFAULT NULL,
  `p_space` varchar(50) DEFAULT NULL,
  `p_remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `emp_id` int(11) NOT NULL,
  `emp_uname` varchar(100) NOT NULL,
  `emp_pword` varchar(100) NOT NULL,
  `emp_fname` varchar(100) DEFAULT NULL,
  `emp_lname` varchar(100) DEFAULT NULL,
  `emp_midinitial` char(1) DEFAULT NULL,
  `emp_bday` date DEFAULT NULL,
  `emp_cellno` varchar(15) DEFAULT NULL,
  `emp_email` varchar(100) DEFAULT NULL,
  `emp_type` enum('ADMIN','USERS') DEFAULT NULL,
  `emp_status` enum('AC','INA') DEFAULT NULL,
  `emp_profpic` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`emp_id`, `emp_uname`, `emp_pword`, `emp_fname`, `emp_lname`, `emp_midinitial`, `emp_bday`, `emp_cellno`, `emp_email`, `emp_type`, `emp_status`, `emp_profpic`) VALUES
(0, 'NOT ASSIGNED', 'zx1234567890qwerty', 'NOT ASSIGNED', 'NOT ASSIGNED', '-', '1111-11-01', 'NOT ASSIGNED', 'abcdDummy@gmail.com', 'USERS', 'INA', NULL),
(3, 'eric.cortes', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Eric', 'Cortes', '', '0000-00-00', '', 'eric.cortes@ph.clickablebrand.com', 'ADMIN', 'AC', NULL),
(4, 'ronald', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Ronald', '', '', '0000-00-00', '', 'ronald@gmail.com', 'ADMIN', 'AC', NULL),
(5, 'itsupport', '097f5834ea92d5ec2a7b773c6099613bb217c2ef99ba1f7c4ebff3053bf63ff7', 'Renato', 'Mino', 'G', '1982-05-05', '09422968332', 'itsupport@clickablebrand.com', 'ADMIN', 'AC', NULL),
(6, 'rene.mino', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Rene', 'Mino', '', '2017-06-23', '', 'rene.mino@cri.clickablebrand.com', 'ADMIN', 'AC', NULL),
(7, 'jcdans', 'fbfb386efea67e816f2dda0a8c94a98eb203757aebb3f55f183755a192d44467', 'John Carl', 'Danosos', 'R', '1997-12-27', '09422968332', 'developer.danzjohn97@gmail.com', 'ADMIN', 'AC', NULL),
(8, 'jcjosh', '3af280f377f904f12fed77edf44de454f402253e6d2a3e17f7ce5156fd1ec672', 'Joshua', 'Danosos', 'R', '1992-05-11', '09152433075', 'danzjoshua@gmail.com', '', 'AC', NULL),
(9, 'dodgiedans', 'cf0b854f5a17fdad773d462438d4d7328722b817d40a74ecb8d9ad79f98aa251', 'Dodgie', 'Danosos', 'V', '1969-02-06', '09177251236', 'ddanosos@lexmark.com', 'ADMIN', 'AC', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `computer`
--
ALTER TABLE `computer`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c1` (`c_dept`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `headset`
--
ALTER TABLE `headset`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `h1` (`h_releasedby`),
  ADD KEY `h2` (`h_dept`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`inc_id`);

--
-- Indexes for table `peripherals`
--
ALTER TABLE `peripherals`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `computer`
--
ALTER TABLE `computer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `headset`
--
ALTER TABLE `headset`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `inc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `peripherals`
--
ALTER TABLE `peripherals`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `c1` FOREIGN KEY (`c_dept`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `headset`
--
ALTER TABLE `headset`
  ADD CONSTRAINT `h1` FOREIGN KEY (`h_releasedby`) REFERENCES `users` (`emp_id`),
  ADD CONSTRAINT `h2` FOREIGN KEY (`h_dept`) REFERENCES `department` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
