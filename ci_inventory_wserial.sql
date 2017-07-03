-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2017 at 10:52 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `c_serial` varchar(50) DEFAULT NULL,
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
  `inc_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inc_activity` varchar(5000) DEFAULT NULL,
  `inc_status` enum('LOW','NORMAL','HIGH','URGENT') DEFAULT NULL,
  `inc_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`inc_id`, `inc_date`, `inc_activity`, `inc_status`, `inc_user`) VALUES
(1, '2017-07-01 08:14:41', 'Implemented filter on all input fields.', 'URGENT', 5),
(2, '2017-07-01 08:59:18', 'Its so nice to be happy, shalalala.', 'LOW', 3),
(3, '2017-07-01 09:02:38', 'is a crimping master.', 'HIGH', 14),
(4, '2017-07-01 09:07:31', 'is a Mr. Steal yo girl.', 'NORMAL', 11);

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
  `emp_profpic` varchar(55) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`emp_id`, `emp_uname`, `emp_pword`, `emp_fname`, `emp_lname`, `emp_midinitial`, `emp_bday`, `emp_cellno`, `emp_email`, `emp_type`, `emp_status`, `emp_profpic`) VALUES
(0, 'NOT ASSIGNED', 'zx1234567890qwerty', 'NOT ASSIGNED', 'NOT ASSIGNED', '-', '1111-11-01', 'NOT ASSIGNED', 'abcdDummy@gmail.com', 'USERS', 'INA', 'default.png'),
(3, 'eric.cortes', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Eric', 'Cortes', 'R', '1985-06-11', '09422968332', 'eric.cortes@ph.clickablebrand.com', 'ADMIN', 'AC', 'dobbyfreeelf1498897970.gif'),
(5, 'itsupport', '097f5834ea92d5ec2a7b773c6099613bb217c2ef99ba1f7c4ebff3053bf63ff7', 'Information Technology', 'Support', 'T', '2009-06-23', '09422968332', 'itsupport@clickablebrand.com', 'ADMIN', 'AC', 'technical-support149882331214988269881498845623.png'),
(6, 'rene.mino', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Rene', 'Mino', '', '2017-06-23', '', 'rene.mino@cri.clickablebrand.com', 'ADMIN', 'AC', 'user_pic_41498827019.jpg'),
(8, 'jcjosh', '3af280f377f904f12fed77edf44de454f402253e6d2a3e17f7ce5156fd1ec672', 'Joshua', 'Danosos', 'R', '1992-05-11', '09152433075', 'danzjoshua@gmail.com', '', 'AC', 'default.png'),
(9, 'dodgiedans', 'cf0b854f5a17fdad773d462438d4d7328722b817d40a74ecb8d9ad79f98aa251', 'Dodgie', 'Danosos', 'V', '1969-02-06', '09177251236', 'ddanosos@lexmark.com', 'ADMIN', 'AC', 'default.png'),
(11, 'ronald.olid', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Ronald', 'Olid', '', '2017-06-30', '', 'ronald.olid@cri-clickablebrand.com', 'ADMIN', 'AC', 'ronald-pic14988244541498827076.png'),
(14, 'edwin.gwapo', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Edwin', 'Supervisor', 'G', '1975-11-19', '09090909090', 'edwin.gwapo@clickablebrand.com', 'ADMIN', 'AC', 'sacha-baron-cohen-borat1498899836.jpg');

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
  ADD PRIMARY KEY (`inc_id`),
  ADD KEY `inc_user` (`inc_user`);

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
  MODIFY `inc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `peripherals`
--
ALTER TABLE `peripherals`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`inc_user`) REFERENCES `users` (`emp_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
