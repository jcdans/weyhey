-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 02:01 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

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
  `c_dept` int(11) DEFAULT NULL,
  `c_space` enum('OLD OPS','EXPANSION') DEFAULT NULL,
  `c_remarks` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`c_id`, `c_row`, `c_hostname`, `c_motherboard`, `c_processor`, `c_ram`, `c_hdd`, `c_vdcard`, `c_primary`, `c_secondary`, `c_type`, `c_keyboard`, `c_mouse`, `c_os`, `c_msoffice`, `c_dept`, `c_space`, `c_remarks`) VALUES
(1, 'R1', 'R1S1', 'DH61WW', 'Intel Core i5 3.00Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Dell', NULL, 'DESKTOP', 'Infini', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(2, 'R1', 'R1S2', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(3, 'R1', 'R1S3', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA', 'Acer', NULL, 'DESKTOP', 'Infini', 'Infini', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(4, 'R1', 'R1S4', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA', 'HP', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(5, 'R1', 'R1S5', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA', 'Samsung', NULL, 'DESKTOP', 'Infini', 'Infini', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(6, 'R1', 'R1S6', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA', 'BenQ', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(7, 'R1', 'R1S7', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'BenQ', 'BenQ', 'DESKTOP', 'A4Tech', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(8, 'R1', 'R1S8', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Philips', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Ultimate 64bit', NULL, 2, 'EXPANSION', NULL),
(9, 'R1', 'R1S9', 'H61M-K', 'Intel Core Pentium 2.70Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'BenQ', 'Acer', 'DESKTOP', 'Infini', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(10, 'R1', 'R1S10', 'H61H2-M17', 'Intel Pentium 2.60Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Samsung', NULL, 'DESKTOP', 'Infini', 'Infini', 'Win 7 Professional 32bit', NULL, 2, 'EXPANSION', NULL),
(11, 'R1', 'R1S11', 'H61H2-M12', 'Intel Pentium 2.60Ghz', '6.00GB', '500GB', 'Intel HD Graphics', 'BenQ', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(12, 'R1', 'R1S12', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(13, 'R2', 'R2S1', 'H61M-K', 'Intel Core  i5 2.50Ghz', '8.00GB', '500GB', 'Intel HD Graphics', 'ViewSonic', 'Dell', 'DESKTOP', 'Genius', 'Logitech', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(14, 'R2', 'R2S2', 'H61M-K', 'Intel Core  i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', 'ViewSonic', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(15, 'R2', 'R2S3', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(16, 'R2', 'R2S4', 'DH61WW', 'Intel Core i5 3.0Ghz', '4.00GB', '500GB', 'Standard VGA', 'Dell', NULL, 'DESKTOP', 'Genius', 'Logitech', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(17, 'R2', 'R2S5', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(18, 'R2', 'R2S6', 'H77MXV/H77MXV-D', 'Intel Core i5 3.0Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Logitech', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(19, 'R2', 'R2S7', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Haier', 'ViewSonic', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(20, 'R2', 'R2S8', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', 'Acer', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(21, 'R2', 'R2S9', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'ViewSonic', 'Dell', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(22, 'R2', 'R2S10', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'BenQ', 'ViewSonic', 'DESKTOP', 'Genius', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(23, 'R2', 'R2S11', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(24, 'R3', 'BILLING 3', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'ViewSonic', 'Philips', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(25, 'R3', 'R3S1', 'H61M-E', 'Intel Core i5 3.4Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'HP', NULL, 'DESKTOP', 'Infini', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(26, 'R3', 'R3S2', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'Philips', 'Dell', 'DESKTOP', 'Infini', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(27, 'R3', 'R3S3', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'BenQ', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(28, 'R3', 'R3S4', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'Maya', NULL, 'DESKTOP', 'Infini', 'TrailBlazer', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(29, 'R3', 'R3S6', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics ', 'LG', NULL, 'DESKTOP', 'Logitech', 'Infini', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(30, 'R3', 'R3S7', 'H61M-K', 'Intel Core i5 3.3Ghz', '6.00GB', '500GB', 'Intel HD Graphics', 'LG', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(31, 'R3', 'R3S8', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Lenovo', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(32, 'R3', 'R3S9', 'H61M-K', 'Intel Core i5 2.90Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Dell', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(33, 'R3', 'R3S10', NULL, 'Intel Core i5 2.90Ghz', '4.00GB', '500GB', NULL, 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(34, 'R3', 'R3S11', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', NULL, NULL, 'DESKTOP', NULL, NULL, NULL, NULL, 2, 'EXPANSION', NULL),
(35, 'R3', 'R3S12', 'H61M-P31/W8(MS-7788)', 'Intel Core i5 2.90Ghz', '4.00GB', '500GB', 'Standard VGA Graphics Adapter', 'Hyundai', NULL, 'DESKTOP', 'Logitech', 'Logitech', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(36, 'R4', 'R4S1', 'H61M-DS2V', 'Intel Core i5', '4.00GB', '500GB', 'Intel HD Graphics', 'BenQ', 'Acer', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(37, 'R4', 'R4S2', 'H81H3-M4', 'Intel Core i3', '8.00GB', '500GB', 'NVIDIA GeForce', 'Dell', 'Acer', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(38, 'R4', 'R4S3', 'H61M-K', 'Intel Core i5', '4.00GB', '500GB', 'NVIDIA GeForce', 'Samsung', 'HP', 'DESKTOP', 'Logitech', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(39, 'R4', 'R4S4', 'H61M-K', 'Intel Core i5', '8.00GB', '500GB', 'Intel HD Graphics', 'HP', 'Acer', 'DESKTOP', 'Infini', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(40, 'R5', 'CRI-B2L3', '23451A0', 'Intel Core i5 2.6Ghz', '8.00GB', '128GB', ' ', 'Lenovo (Think pad)', 'ViewSonic ', 'LAPTOP', 'Lenovo (Built -in)', 'Lenovo (Touchpad)', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(41, 'R5', 'CRI-B2L5', '23451A0', 'Intel Core i5', '8.00GB', '200GB', 'Intel HD Graphics', 'Lenovo', 'Hyundai', 'LAPTOP', 'Lenovo', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(42, 'R5', 'CRI-B2L6', NULL, 'Intel Core i5 2.6Ghz', NULL, NULL, NULL, NULL, NULL, 'LAPTOP', NULL, NULL, NULL, NULL, 2, 'EXPANSION', NULL),
(43, 'R5', 'CRI-B2L8', NULL, 'Intel Core i5 2.6Ghz', NULL, NULL, NULL, NULL, NULL, 'LAPTOP', NULL, NULL, NULL, NULL, 2, 'EXPANSION', NULL),
(44, 'R5', 'R5S2', 'H61M-K', 'Intel Core i5 2.50Ghz', '8.00GB', '500GB', 'Intel HD Graphics', 'Dell', NULL, 'DESKTOP', 'Infini', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(45, 'R5', 'R5S3', 'H61M-P31/W8(MS-7788)', 'Intel Core i5', '4.00GB', '500GB', 'Intel HD Graphics', 'Samsung', 'Dell', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(46, 'R5', 'R5S4', 'H61M-K', 'Intel Core i5', '4.00GB', '500GB', 'Intel HD Graphics', 'Samsung', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(47, 'R5', 'R5S5', 'H61H62-M2', 'Intel Core i5 3.1Ghz', '8.00GB', '500GB', 'NVIDIA GeForce 210', 'Acer', NULL, 'DESKTOP', 'Infini', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(48, 'R5', 'R5S6', 'H61M-K', 'Intel Core i5 2.90Ghz', '8.00GB', '500GB', 'Standard VGA ', 'LG', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(49, 'R6', 'R6S1', 'H81M-A', 'Intel Core i3', '8.00GB', '500GB', 'NVIDIA GeForce', 'ViewSonic', 'Dell', 'DESKTOP', 'Genius', 'Cliptec', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(50, 'R6', 'R6S2', 'H61-M', 'Intel Core i5', '8.00GB', '500GB', 'NVIDIA GeForce', 'Dell', 'Dell', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(51, 'R6', 'R6S3', 'H81H3-M4', 'Intel Core i3', '8.00GB', '270GB', 'NVIDIA GeForce', 'Dell', 'Dell', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(52, 'R6', 'R6S4', 'H61M-P31/W8(MS-7788)', 'Intel Core i5', '8.00GB', '500GB', 'NVIDIA GeForce', 'AOC', 'Dell', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(53, 'R6', 'R6S5', 'H81M-K', 'Intel Core i5 3.2Ghz', '8.00GB', '500GB', 'NVIDIA GeForce 210', NULL, NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(54, 'R6', 'R6S6', 'P8H61-MLE', 'Intel Core i5 3.1Ghz', '8.00GB', '500GB', 'NVIDIA GeForce 210', 'AOC', 'ViewSonic', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(55, 'R6', 'R6S7', 'H61M-K', 'Intel Core i5 3.3Ghz', '8.00GB', '500GB', 'Intel HD Graphics', 'Dell', 'Hyundai', 'DESKTOP', 'Infini', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(56, 'R7', 'R7S1', 'H61M-K', 'Intel Core i5 2.4Ghz', '8GB', '500GB', 'NVIDIA Geforce 210', 'ViewSonic', 'HP', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'EXPANSION', NULL),
(57, 'R7', 'R7S2', 'H61M-K', 'Inte Core i5 3.3Ghz', '8.00GB', '500GB', 'NVIDIA Geforce 210', 'Samsung', 'Acer', 'DESKTOP', 'Genius', 'Infini', 'Win 7 Ultimate 64bit', NULL, 2, 'EXPANSION', NULL),
(58, 'R7', 'R7S3', 'H61M-E', 'Intel Core i5 3.4Ghz', '8.00GB', '270GB', 'NVIDIA Geforce 210', 'HP', 'HP', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(59, 'R7', 'R7S4', 'H61M-K', 'Intel Core i5 3.2Ghz', '8.00GB', '500GB', 'NVIDIA GeForce 210', 'Dell', 'ViewSonic', 'DESKTOP', 'Logitech', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(60, 'R7', 'R7S5', 'ON826N', 'Intel Core 2 Quad 2.66Ghz', '8.00GB', '500GB', 'NVIDIA Geforce GT610', 'Lenovo (Think vision)', 'ViewSonic', 'DESKTOP', 'Logitech K120', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(61, 'R7', 'R7S6', 'H81M-K', 'Intel Core i5 3.2Ghz', '8.00GB', '500GB', 'Intel HD Graphics 4600', 'Dell', 'Dell', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Profession 64bit', NULL, 2, 'EXPANSION', NULL),
(62, 'R7', 'R7S7', NULL, NULL, NULL, NULL, NULL, 'Dell', 'Flatron', 'DESKTOP', 'A4Tech', 'Infini', 'Win 7', NULL, 2, 'EXPANSION', NULL),
(63, 'R7', 'R7S8', 'H61M-K', 'Intel Core i5 3.3Ghz', '8.00GB', '500GB', 'Intel HD Graphics', 'HP', 'HP', 'DESKTOP', 'Genius', 'A4Tech', 'Win 7 Ultimate 64bit', NULL, 2, 'EXPANSION', NULL),
(64, 'R8', 'R8S1', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics 4600', 'Princeton', 'ViewSonic', 'DESKTOP', 'A4Tech', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'EXPANSION', NULL),
(65, 'R8', 'R8S2', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics 4600', 'Lenovo(Think vision)', 'Acer', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(66, 'R8', 'R8S3', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'NVIDIA GeForce 210', 'Wescom', 'BenQ', 'DESKTOP', 'Logitech', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(67, 'R8', 'R8S4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESKTOP', 'Logitech', 'A4Tech', NULL, NULL, 2, 'EXPANSION', NULL),
(68, 'R8', 'R8S5', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA Graphics', 'ViewSonic', NULL, 'DESKTOP', 'Logitech ', 'A4Tech', 'Win 7 Ultimate 64bit', NULL, 2, 'EXPANSION', NULL),
(69, 'R8', 'R8S6', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Standard VGA Graphics', 'Hanns - G', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'EXPANSION', NULL),
(70, 'R8', 'R8S7', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', 'Philips', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'EXPANSION', NULL),
(71, 'R8', 'R8S8', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Philips', 'AOC', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'EXPANSION', NULL),
(72, 'R9', 'R9S1', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB ', 'Intel HD Graphics', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(73, 'R9', 'R9S2', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Hanns - G', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(74, 'R9', 'R9S3', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(75, 'R9', 'R9S4', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Ben Q', 'Acer', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(76, 'R9', 'R9S5', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(77, 'R9', 'R9S6', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'OLD OPS', NULL),
(78, 'R10', 'R10S1', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD', 'Wescom', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(79, 'R10', 'R10S2', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(80, 'R10', 'R10S3', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD', 'SANC', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(81, 'R10', 'R10S4', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Standard VGA', 'HP Compaq', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(82, 'R10', 'R10S5', 'H61M-K', 'Intel Core i5 3.3Ghz', '8.00GB', '500GB', 'GeForce GT', 'Philips', 'Acer', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(83, 'R10', 'R10S6', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Standard VGA', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(84, 'R10', 'R10S7', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(85, 'R10', 'R10S8', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'LG', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'OLD OPS', NULL),
(86, 'R10', 'R10S9', 'H61H2-M12', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'ViewSonic', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(87, 'R10', 'R10S10', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(88, 'R10', 'R10S11', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(89, 'R10', 'R10S12', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Tanpo', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(90, 'R11', 'R11S1', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius ', 'Win 7 Enterprise 64bit', NULL, 2, 'OLD OPS', NULL),
(91, 'R11', 'R11S2', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Great Wall', NULL, 'DESKTOP', 'Genius', 'Genius ', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(92, 'R11', 'R11S3', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Great Wall', NULL, 'DESKTOP', 'Genius', 'Genius ', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(93, 'R11', 'R11S4', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(94, 'R11', 'R11S5', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Hyundai', NULL, 'DESKTOP', 'Genius', 'Logitech', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(95, 'R11', 'R11S6', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'AIV', NULL, 'DESKTOP', 'Infini', 'Infini', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(96, 'R11', 'R11S7', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Princeton', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(97, 'R11', 'R11S8', 'H61M-K', 'Intel Core i5.3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Philips', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(98, 'R11', 'R11S9', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(99, 'R11', 'R11S10', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'HP', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'OLD OPS', NULL),
(100, 'R11', 'R11S11', 'H81M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics 4600', 'Hyundai', 'Samsung', 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(101, 'R11', 'R11S12', 'H61M-K', 'Intel Core i5 3.2Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Philips', NULL, 'DESKTOP', 'Genius', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(102, 'R12', 'R12S1', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'AOC', NULL, 'DESKTOP', 'A4Tech', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(103, 'R12', 'R12S2', 'H61H2 - M12', 'Intel Pentium 2.60Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Logitech', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(104, 'R12', 'R12S3', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'HP Compaq', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(105, 'R12', 'R12S4', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(106, 'R12', 'R12S5', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'ViewSonic', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'OLD OPS', NULL),
(107, 'R12', 'R12S6', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Standard VGA', 'Dell', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(108, 'R13', 'R13S1', 'H61M-P23 (MS-7680)', 'Inter Core i5', '4.00GB', '500GB', 'Intel HD', 'Acer', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 64bit', NULL, 2, 'OLD OPS', NULL),
(109, 'R13', 'R13S2', 'H61M-K', 'Intel Core i5', '8.00GB', '500GB', 'Intel HD', 'Samsung', NULL, 'DESKTOP', 'Genius', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(110, 'R13', 'R13S3', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Standard VGA', 'Samsung', NULL, 'DESKTOP', 'Genius', 'Genius', 'Win 7 Enterprise 32bit', NULL, 2, 'OLD OPS', NULL),
(111, 'R13', 'R13S4', 'H61M-K', 'Intel Core i5 3.3Ghz', '8.00GB', '500GB', 'NVIDIA Geforce GT610', 'Dell', 'Dell', 'DESKTOP', 'Infini', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(112, 'R14', 'SALESBOARD', 'X451MA', 'Intel Celeron 1.9Ghz', '2.00GB', '500GB', 'Intel HD Graphics', 'Asus', NULL, 'LAPTOP', 'Asus (Built-in)', 'Asus(Touchpad)', 'Win 7 Ultimate 32bit', NULL, 2, 'OLD OPS', NULL),
(113, 'R14', 'R14S1', 'P8B75-M LE', 'Inter Core i3', '8.00GB', '500GB', 'Intel HD', 'Samsung', NULL, '', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(114, 'R14', 'R14S3', 'H61M-K', 'Intel Core i5', '8.00GB', '500GB', 'Intel HD', 'AOC', 'Philips', '', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(115, 'R14', 'R14S4', 'H61M-K', 'Intel Core i5', '8.00GB', '500GB', 'Intel HD', 'Dell', 'Acer', '', 'Genius', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(116, 'R14', 'R14S4', 'H61M-K', 'Intel Core i5', '8.00GB', '500GB', 'Intel HD', 'HP w1907', 'Acer', '', 'Infini', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(117, 'R15', 'R15S1', 'H61M-K', 'Intel Core i5 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Dell', NULL, '', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(118, 'R15', 'R15S2', 'H81M-E', 'Intel Core i5 3.2Ghz', '8.00GB', '540GB', 'NVIDIA Geforce 210', 'Dell', 'Dell', '', 'Logitech', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(119, 'R15', 'R15S3', 'H61M-K', 'Intel Core i5 2.50Ghz', '8.00GB', '500GB', 'Intel HD Graphics', 'Great Wall', NULL, '', 'Infini', 'Logitech', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(120, 'R15', 'R3S5', 'H61M-K', 'Intel Core i5 2.50Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Acer', 'LG', '', 'Genius', 'Genius', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(121, 'R15', 'SALES-MANAGER', 'H61M-K', 'Intel Core i5 3.3Ghz', '8.00GB', '500GB', 'Intel HD Graphics', 'Philips', 'Philips', '', 'Genius', 'Genius', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(122, 'R16', 'BILLING 2', 'H61M-K', 'Intel Core i5 3.1Ghz', '4.00GB', '500GB', 'NVIDIA Geforce 210', 'Acer', 'Dell', '', 'Infini', 'Infini', 'Win 7 Prof essional 64bit', NULL, 2, 'OLD OPS', NULL),
(123, 'R16', 'R16S3', 'P8B75-MLE', 'Intel Core i3 3.3Ghz', '4.00GB', '500GB', 'Intel HD Graphics', 'Samsung', 'Acer', '', 'Genius', 'Infini', 'Win 7 Professional 64bit', NULL, 2, 'OLD OPS', NULL),
(124, 'z', 'SALES-MANAGER2', 'H61H2-M17', 'Intel Core i5 2.50Ghz', '4GB', '500GB', 'Intel HD Graphics Family', 'Compaq', NULL, '', 'Genius', 'A4Tech', 'Win 7 Ultimate 64bit', NULL, 2, 'OLD OPS', NULL),
(125, '5', 'CRI-B2L1', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PB66DCW', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', NULL, 'EXPANSION', 'DEFECTIVE'),
(126, '5', 'CRI-B2L2', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PB5AC5Y', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', 8, '', 'used by Daphnie /  brought to davao'),
(127, '5', 'CRI-B2L3', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PB28W2', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', NULL, 'EXPANSION', 'Rodolfo V. Tuble'),
(128, '5', 'CRI-B2L4', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PB5AC5T', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', NULL, 'EXPANSION', 'Brought to Davao(Edwin)'),
(129, '5', 'CRI-B2L5', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PB5AC1N', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', NULL, 'EXPANSION', 'Emeliza Pesquer'),
(130, '5', 'CRI-B2L6', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PBD8F5C', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', NULL, 'EXPANSION', 'Ana Grace Sabellano'),
(131, '5', 'CRI-B2L7', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PB66DDE', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft office professional 2010', NULL, 'EXPANSION', 'Primo Dionson'),
(132, '5', 'CRI-B2L8', 'Lenovo ThinkPad T430', 'Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz 2.60GHz', '8GB', '120 GB', 'PBP28W3', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional x64', 'Microsoft   Office Professional Plus 2016', NULL, 'EXPANSION', 'Randolf Sartagoda'),
(133, NULL, 'HR-MANAGER', 'Lenovo   ThinkPad T410', 'Intel(R)   Core(TM) i5 CPU M 560 @ 2.67GHz', '4GB', '300GB', NULL, NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional', 'Microsoft   Office Professional Plus 2016', 8, '', 'Katherine Abella'),
(134, NULL, 'PROJECT-MANAGER', 'Lenovo   ThinkPad T410', 'Intel(R)   Core(TM) i5 CPU M 560 @ 2.67GHz', '4GB', '300GB', 'R8-L56RL', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional', 'Microsoft   Office Professional Plus 2016', NULL, 'EXPANSION', 'Met Ramos'),
(135, NULL, 'SALESLAPTOP', 'Lenovo   ThinkPad X201', 'Intel(R)   Core(TM) i5 CPU M 520 @ 2.40GHz', '8GB', '300GB', NULL, NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows   7 Enterprise', 'Microsoft   Office Professional Plus 2016', NULL, 'OLD OPS', 'Apple Barco'),
(136, NULL, 'SalesBoard', 'ASUS SonicMaster', 'Intel(R)   Celeron(R) CPU N2815 @ 1.86GHz', '2GB', '500GB', 'X451M', NULL, NULL, 'LAPTOP', NULL, NULL, 'WIndows   7 Ultimate', 'Microsoft   Office Standard 2010', NULL, 'OLD OPS', 'Eva Atibula'),
(137, NULL, NULL, 'Lenovo   G40', 'Intel®   Celeron® 2957U @ 1.40GHz', '2GB', '500GB', 'YB01862459', NULL, NULL, 'LAPTOP', NULL, NULL, 'WIndows   7 Ultimate', NULL, NULL, 'EXPANSION', NULL),
(138, NULL, NULL, 'Lenovo G570', 'Intel® Core™ i5-2430M CPU @   2.40GHz', '4GB', '200GB', 'CB10896503', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Enterprise', NULL, NULL, 'EXPANSION', 'Microsoft   Office Professional Plus 2013'),
(139, NULL, 'conference2/   ', 'Lenovo G460', 'Intel(R) Core(TM) i3 CPU M   370 @ 2.40GHz', '8GB', '300GB', 'CB08355565', NULL, NULL, 'LAPTOP', NULL, NULL, 'Windows 7 Professional', NULL, NULL, 'EXPANSION', 'Microsoft Office Professional   Plus 2016'),
(140, NULL, 'SEOXARA', 'Lenovo   ThinkPad X201', NULL, NULL, NULL, 'R9-47FTF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `headset`
--

INSERT INTO `headset` (`h_id`, `h_num`, `h_brand`, `h_model`, `h_serial`, `h_type`, `h_status`, `h_availability`, `h_realname`, `h_phonename`, `h_releasedate`, `h_returndate`, `h_releasedby`, `h_dept`, `h_space`, `h_remarks`) VALUES
(1, 'cri-hs0001', 'plantronics', 'HW121-N', 'dj3361 k9', 'usb', 'NEW', NULL, 'Lomotos, Michelle', 'White, Rachel', NULL, NULL, NULL, 7, 'OLD OPS', NULL),
(2, 'cri-hs0002', 'plantronics', 'HW121-N', 'dj3146 k9', 'usb', 'NEW', 'MISSING', 'Del Mar, Kyle', 'Chase, Kyle', '0000-00-00', '0000-00-00', NULL, 7, 'OLD OPS', '/inserted/recieved by RENE/Missing'),
(3, 'cri-hs0003', 'plantronics', 'HW121-N', 'dj3299', 'usb', 'NEW', NULL, 'Ragde Bascon', NULL, '0000-00-00', '0000-00-00', 3, NULL, 'OLD OPS', 'receive by  IRWIN / Can''t detect usb'),
(4, 'cri-hs0004', 'plantronics', 'HW121-N', 'dj5744 k9', 'usb', 'NEW', NULL, 'Santos, Katherine', 'Myers, Sophia', '0000-00-00', NULL, NULL, 10, 'OLD OPS', NULL),
(5, 'cri-hs0005', 'plantronics', 'HW121-N', 'DS6729', 'usb', 'NEW', NULL, 'Navarce, Williejun', 'Maxwell, June', '0000-00-00', NULL, NULL, 5, 'EXPANSION', 'inserted / release temporary to Mary Aringay/returned to Ronald on 12-16-2016'),
(6, 'cri-hs0006', 'plantronics', 'HW121-N', 'DE0592', 'usb', 'NEW', NULL, 'Bololato, Leonedes', 'Young, Michelle', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(7, 'cri-hs0007', 'plantronics', 'HW121-N', 'DD8185', 'usb', 'NEW', 'SPARE', 'intern.jimre', NULL, '0000-00-00', NULL, 2, NULL, 'OLD OPS', 'Spare / Temporary'),
(8, 'cri-hs0008', 'plantronics', 'HW121-N', 'DJ5722', 'usb', 'NEW', NULL, 'Malazarte, Marques', 'Miller, Marc', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(9, 'cri-hs0009', 'plantronics', 'HW121-N', 'BM7499', 'usb', 'NEW', NULL, 'Mole, Raul', 'Curtis Ivan', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(10, 'cri-hs0010', 'plantronics', 'HW121-N', 'dj5343 k9', 'usb', 'NEW', 'MISSING', 'Apiag, Jommy', 'Davies, Tom', '0000-00-00', NULL, 3, 7, 'OLD OPS', 'Missing'),
(11, 'cri-hs0011', 'plantronics', 'HW121-N', 'dz4537 L9', 'usb', 'NEW', NULL, 'Ileja, Rey', 'Gomez, Erwan', '0000-00-00', NULL, 3, 7, 'OLD OPS', NULL),
(12, 'cri-hs0012', 'plantronics', 'HW121-N', 'DJ5617', 'usb', 'NEW', NULL, 'Anong, Ruth', 'Sanders, Isabel', '0000-00-00', NULL, 3, 7, 'OLD OPS', NULL),
(13, 'cri-hs0013', 'plantronics', 'HW121-N', 'de0054', 'usb', 'NEW', NULL, 'Tingzon, Leandro', 'Cramer, Andrew', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(14, 'cri-hs0014', 'plantronics', 'HW121-N', 'DV1175', 'usb', 'NEW', NULL, 'Macalansag, Fahrina', 'Wright, Audrey', '0000-00-00', NULL, NULL, 5, 'EXPANSION', NULL),
(15, 'cri-hs0015', 'plantronics', 'HW121-N', 'EB6102', 'usb', 'NEW', NULL, 'Cana, Louie', 'Chandler, Luis', '0000-00-00', NULL, 3, 7, 'OLD OPS', NULL),
(16, 'cri-hs0016', 'plantronics', 'HW121-N', 'DD9668', 'usb', 'NEW', NULL, 'Cubal, Michael', NULL, '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(17, 'cri-hs0017', 'plantronics', 'HW121-N', 'bm7303 h9', 'usb', 'NEW', 'DEFECTIVE', 'Lee, Jetrome', 'Lewis, Jet', '0000-00-00', NULL, 3, 7, 'OLD OPS', 'Missing / Can''t detect usb'),
(18, 'cri-hs0018', 'plantronics', 'HW121-N', 'DJ5524', 'usb', 'NEW', NULL, 'Gayod, Jordan', 'Johnson, Jordan', '0000-00-00', NULL, 3, 7, 'OLD OPS', NULL),
(19, 'cri-hs0019', 'plantronics', 'HW121-N', 'xj1173 c9', 'usb', 'NEW', NULL, 'Valero, Vivian Vicki', 'Vaughn, Vivien', NULL, NULL, 3, 7, 'OLD OPS', NULL),
(20, 'cri-hs0020', 'plantronics', 'HW121-N', 'DJ5927', 'usb', 'NEW', 'SPARE', 'Capin, Craig', 'O''connor, Craig', '0000-00-00', '0000-00-00', 2, 7, 'OLD OPS', 'Temprarily Released by Rene to Maxie(02-13-2017)'),
(21, 'cri-hs0021', 'plantronics', 'HW121-N', 'dd8346', 'usb', 'NEW', NULL, 'Abella, Katherine', NULL, '0000-00-00', NULL, 3, 8, 'EXPANSION', NULL),
(22, 'cri-hs0022', 'plantronics', 'HW121-N', 'de0239 k9', 'usb', 'NEW', 'DEFECTIVE', 'Vega, Mary', 'Smith, Stephanie', '0000-00-00', NULL, 3, 7, 'OLD OPS', 'Can''t detect usb / Microphone defect'),
(23, 'cri-hs0023', 'plantronics', 'HW121-N', 'DJ3436', 'usb', 'NEW', NULL, 'Ferraren, Nolan', 'Lopez, Brad', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(24, 'cri-hs0024', 'plantronics', 'HW121-N', 'cd0319 k9', 'usb', 'NEW', NULL, 'Ramos, Met', NULL, '0000-00-00', NULL, 3, NULL, 'EXPANSION', 'inserted'),
(25, 'cri-hs0025', 'plantronics', 'HW121-N', 'A02257', 'usb', 'NEW', NULL, 'Pader, Herbert', 'Reid, Toni', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(26, 'cri-hs0026', 'plantronics', 'HW121-N', 'dd8973 k9', 'usb', 'NEW', NULL, 'Abcede, Francis Daryl', NULL, '0000-00-00', NULL, 3, 7, 'OLD OPS', 'inserted'),
(27, 'cri-hs0027', 'plantronics', 'HW121-N', 'DJ5821', 'usb', 'NEW', NULL, 'Reales, Honey', 'Reid, Hannah', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(28, 'cri-hs0028', 'plantronics', 'HW121-N', 'DJ2125', 'usb', 'NEW', NULL, 'Gabin, Ruel', 'Gavin, Dwayne', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'found/release by Charles 12-17-2016'),
(29, 'cri-hs0029', 'plantronics', 'HW121-N', 'DV3886', 'usb', 'NEW', NULL, 'Kilantang, Miguel', NULL, '0000-00-00', '0000-00-00', 3, 4, 'OLD OPS', 'recieved by Charles'),
(30, 'cri-hs0030', 'plantronics', 'HW121-N', 'DJ3644', 'usb', 'NEW', NULL, 'Raterta, Christian', NULL, '0000-00-00', NULL, NULL, 5, 'OLD OPS', NULL),
(31, '  cri-hs0031', 'plantronics', 'HW121-N', 'BM4594', 'usb', 'NEW', 'SPARE', NULL, NULL, NULL, NULL, NULL, NULL, 'OLD OPS', 'Ok / Spare'),
(32, 'cri-hs0032', 'plantronics', 'HW121-N', 'eb4840', 'usb', 'NEW', NULL, 'Pesquera, Emeliza', NULL, '0000-00-00', NULL, 3, 9, 'OLD OPS', NULL),
(33, 'cri-hs0033', 'plantronics', 'HW121-N', 'AN7082', NULL, 'NEW', 'DEFECTIVE', 'Canales, Aimee', 'Roberts, Chloe', '0000-00-00', NULL, 3, NULL, 'OLD OPS', 'Can''t detect usb'),
(34, 'cri-hs0034', 'plantronics', 'HW121-N', 'DV3714 K9', 'usb', 'NEW', NULL, 'Capulso, Karesa Josifa', 'King, Ara', NULL, NULL, NULL, 10, 'EXPANSION', NULL),
(35, 'cri-hs0035', 'plantronics', 'HW121-N', 'DD9826', 'usb', 'NEW', NULL, 'Alcoriza, Mylene Grace', 'Allen, May', '0000-00-00', NULL, 3, 10, 'EXPANSION', NULL),
(36, 'cri-hs0036', 'plantronics', 'HW121-N', 'DD8578', 'usb', 'NEW', '', 'Cabatingan, Erika', NULL, NULL, NULL, 2, 11, 'EXPANSION', 'no issued headset / temporary'),
(37, 'cri-hs0037', 'plantronics', 'HW121-N', 'dv1767 k9', 'usb', 'NEW', NULL, 'Mucum, Gerardo Sebastian', 'Dodie (Davao HR)', NULL, NULL, NULL, NULL, NULL, 'inserted'),
(38, 'cri-hs0038', 'plantronics', 'HW121-N', 'DV3643 K9', 'usb', 'NEW', 'SPARE', 'Jimre Manigos', NULL, '0000-00-00', '0000-00-00', 2, NULL, NULL, 'already returned by Bryan for it is not usable to him anymore/Ok/Spare'),
(39, 'cri-hs0039', 'plantronics', 'HW121-N', 'DV3642', 'usb', 'NEW', NULL, 'Empleo, Genevieve ', 'Adams, Kaye', '0000-00-00', NULL, 3, 7, 'OLD OPS', NULL),
(40, 'cri-hs0040', 'plantronics', 'HW121-N', 'HM8276', 'usb', 'NEW', '', 'Flores, Charisse', 'Flores, Cris', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'issued headset is missing / temporary'),
(41, 'cri-hs0041', 'plantronics', 'HW121-N', 'DV3826', 'usb', 'NEW', NULL, 'Flores, Bonifacio', NULL, '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(42, 'cri-hs0042', 'plantronics', 'HW121-N', 'DD9070 K9', 'usb', 'NEW', 'DEFECTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t detect usb'),
(43, 'cri-hs0043', 'plantronics', 'HW121-N', 'DV3903', 'usb', 'NEW', '', 'Capistrano, Joan', 'Paige, Joan', '0000-00-00', NULL, 3, 7, 'OLD OPS', 'Ok/Spare/release by Eric'),
(44, 'cri-hs0044', 'plantronics', 'HW121-N', 'DD9486', 'usb', 'NEW', NULL, 'Canastra, Jan', 'Marley, Jan', '0000-00-00', NULL, 3, 7, 'OLD OPS', NULL),
(45, 'cri-hs0045', 'plantronics', 'HW121-N', 'DV1874', 'usb', 'NEW', 'DEFECTIVE', 'Saycon, Ariane Grace', 'Ariana Summers', '0000-00-00', '0000-00-00', NULL, 7, 'OLD OPS', 'temporary'),
(46, 'cri-hs0046', 'plantronics', 'HW121-N', 'DD9170', 'usb', 'NEW', '', 'Pareja, April', NULL, NULL, NULL, 2, 4, 'OLD OPS', 'no issued headset / temporary'),
(47, 'cri-hs0047', 'plantronics', 'HW121-N', 'DE0062', 'usb', 'NEW', NULL, 'Descutan, Glenn', NULL, '0000-00-00', NULL, NULL, 5, 'EXPANSION', NULL),
(48, 'cri-hs0048', 'plantronics', 'HW121-N', 'DD8959', 'usb', 'NEW', NULL, 'Salutan, Cleo-Ven', 'Calvin, Simon', NULL, NULL, NULL, 7, 'OLD OPS', NULL),
(49, 'cri-hs0049', 'plantronics', 'HW121-N', 'DD9711', 'usb', 'NEW', NULL, 'Apartado, Erik Jan', 'Armstrong, Eric', NULL, NULL, NULL, 10, 'EXPANSION', NULL),
(50, 'cri-hs0050', 'plantronics', 'HW121-N', 'DD8588', 'usb', 'NEW', NULL, 'Ong, Sharleen', NULL, '0000-00-00', NULL, NULL, NULL, 'EXPANSION', NULL),
(51, 'cri-hs0051', 'plantronics', 'HW121-N', 'DD9439', 'usb', 'NEW', '', 'Tolentino, Cherrie', 'Rosen, Cherry', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'temporay'),
(52, 'cri-hs0052', 'plantronics', 'HW121-N', 'DD 8964 K9', 'usb', 'NEW', 'DEFECTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t detect usb'),
(53, 'cri-hs0053', 'plantronics', 'HW121-N', 'DD9281', 'usb', 'NEW', 'DEFECTIVE', 'Frago, Julius', NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t detect usb'),
(54, 'cri-hs0054', 'plantronics', 'HW121-N', 'AV9404', 'usb', 'NEW', '', 'Caingcoy, Hazel Louise', 'Cain, Louisa', '0000-00-00', NULL, 3, NULL, 'EXPANSION', 'no issued headset / temporary'),
(55, 'cri-hs0055', 'plantronics', 'HW121-N', 'DJ5286', 'usb', 'NEW', 'DEFECTIVE', 'Tolentino, Cherrie', 'Rosen, Cherry', '0000-00-00', '0000-00-00', 3, 7, 'OLD OPS', 'can''t detect audio'),
(56, 'cri-hs0056', 'plantronics', 'HW121-N', 'Bh9847', 'usb', 'NEW', '', 'Omila, Chianne', NULL, '0000-00-00', NULL, 2, NULL, 'OLD OPS', 'returned by Mikhaila Imbog'),
(57, 'cri-hs0057', 'plantronics', 'HW121-N', 'DJ6330', 'usb', 'NEW', 'DEFECTIVE', 'Flores, Charisse', 'Flores, Cris', '0000-00-00', NULL, 3, 7, 'OLD OPS', 'Missing/found defective'),
(58, 'cri-hs0058', 'plantronics', 'HW121-N', 'DJ3336', 'usb', 'NEW', NULL, 'Herrera, Rosielyn', NULL, '0000-00-00', NULL, 4, 4, 'OLD OPS', NULL),
(59, 'cri-hs0059', 'plantronics', 'HW121-N', 'BM4761', 'usb', 'NEW', NULL, 'Decino, Maria Leazel', NULL, '0000-00-00', NULL, NULL, 5, 'EXPANSION', NULL),
(60, 'cri-hs0060', 'plantronics', 'HW121-N', 'DJ5441', 'usb', 'NEW', NULL, 'Gullem, Rogen', NULL, '0000-00-00', NULL, NULL, NULL, 'EXPANSION', NULL),
(61, 'cri-hs0061', 'plantronics', 'HW121-N', 'DJ6332', 'usb', 'NEW', NULL, 'Gaboy, Michael Kay', 'Smith, Mark', NULL, NULL, NULL, 7, 'OLD OPS', NULL),
(62, 'cri-hs0062', 'plantronics', 'HW12N-USB-M', 'DD9017', 'usb', 'NEW', NULL, 'Atibula, Eva Joy', NULL, '0000-00-00', NULL, 4, NULL, 'OLD OPS', 'inserted'),
(63, 'HS0063', 'plantronics', 'HW121N', 'DJ6141', 'usb', 'NEW', NULL, 'Madeja, Maria Loradel', NULL, '0000-00-00', NULL, 2, NULL, NULL, NULL),
(64, 'HS0064', 'plantronics', 'HW121N', 'DE0477 K9', 'usb', 'NEW', 'DEFECTIVE', NULL, 'Summers, Kelly', NULL, NULL, NULL, NULL, NULL, 'Can''t detect usb'),
(65, 'HS0065', 'plantronics', 'HW121N', 'AV7540', 'usb', 'NEW', NULL, 'Cabugao, Stephen', 'Stafford, Nate', NULL, NULL, NULL, 7, 'OLD OPS', NULL),
(66, 'HS0066', 'plantronics', 'HW121N', 'DJ5091 K9', 'usb', 'NEW', 'DEFECTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t detect usb'),
(67, 'HS0067', 'plantronics', 'HW121N', 'AU1838', 'usb', 'NEW', NULL, 'Lorica, Jason A.', 'Jason Johnston', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(68, 'HS0068', 'plantronics', 'HW121N', 'BH9902', 'usb', 'NEW', NULL, 'Lee, Jetrome', 'Jet Lewis', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'issued headset is defective / temporary/missing/found'),
(69, 'HS0069', 'plantronics', 'HW121N', 'DJ3932', 'usb', 'NEW', NULL, 'Miñoza, Namfrel', NULL, '0000-00-00', NULL, 2, 4, 'OLD OPS', NULL),
(70, 'HS0070', 'plantronics', 'HW121-N', 'BZ7097', 'usb', 'NEW', '', 'Pescador, Zoren', NULL, '0000-00-00', NULL, 2, 12, 'OLD OPS', NULL),
(71, 'HS0071', 'plantronics', 'HW121-N', 'DJ5098 K9', 'usb', 'NEW', 'DEFECTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Can''t detect usb'),
(72, 'HS0072', 'plantronics', 'HW121N', 'DJ2178', 'usb', 'NEW', NULL, 'Blanco, Kent Jan', 'Harper, Ken', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(73, 'HS0073', 'plantronics', 'HW121N', 'BM4629', 'usb', 'NEW', NULL, 'Amoncio, Eunice M.', 'Mace, Gabrien', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(74, 'HS0074', 'plantronics', 'HW121N', 'AW2233', 'usb', 'NEW', NULL, 'Tolentino, Janette', NULL, '0000-00-00', NULL, 3, 11, 'EXPANSION', NULL),
(75, 'HS0075', 'plantronics', 'HW121N', 'DJ5092', 'usb', 'NEW', 'SPARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OK / spare'),
(76, 'HS0076', 'plantronics', 'HW121N', 'DV3434', 'usb', 'NEW', NULL, 'Rentuma, John Kristoffer', 'White, Christopher', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(77, 'HS0077', 'plantronics', 'HW121N', 'DJ4050', 'usb', 'NEW', NULL, 'Balansag, Earl Sidney', 'Dewitt, Sidney', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(78, 'HS0078', 'plantronics', 'HW121N', 'DJ6063', 'usb', 'NEW', 'DEFECTIVE', 'Maskariño, Neil', NULL, '0000-00-00', NULL, 2, NULL, NULL, 'Can''t detect usb'),
(79, 'HS0079', 'plantronics', 'HW121N', 'BO8390', 'usb', 'NEW', '', 'Tecson, Elizer', NULL, '0000-00-00', NULL, 2, 12, 'OLD OPS', NULL),
(80, 'HS0080', 'plantronics', 'HW121-N', 'DJ2293', 'usb', 'NEW', '', 'Canales, Aimee', 'Roberts, Chloe', NULL, NULL, NULL, 7, 'OLD OPS', 'TEMPORARY'),
(81, 'HS0081', 'plantronics', 'HW121N', 'BF0874', 'usb', 'NEW', '', 'Bustamante, Maria', NULL, '0000-00-00', NULL, NULL, NULL, NULL, NULL),
(82, 'HS0082', 'plantronics', 'HW121N', 'BI0159', 'usb', 'NEW', 'SPARE', NULL, NULL, '0000-00-00', NULL, 2, NULL, NULL, 'OK / spare'),
(83, 'HS0083', 'plantronics', 'HW121N', 'AW2318', 'usb', 'NEW', '', 'Tabar, Jonveth', 'Boston, Betty', '0000-00-00', NULL, NULL, 10, 'EXPANSION', NULL),
(84, 'HS0084', 'plantronics', 'HW121N', 'AW2259', 'usb', 'NEW', NULL, 'Pocong, Jay-R', NULL, '0000-00-00', NULL, 2, 4, 'OLD OPS', NULL),
(85, 'HS0085', 'plantronics', 'HW121N', 'BH5541', 'usb', 'NEW', NULL, 'Balaro, Racel', 'David Tanner', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(86, 'HS0086', 'plantronics', 'HW121N', 'DJ5095', 'usb', 'NEW', NULL, 'Artiaga, Ariel', NULL, '0000-00-00', NULL, 2, 4, 'OLD OPS', NULL),
(87, 'HS0087', 'plantronics', 'HW121N', 'DV3742', 'usb', 'NEW', NULL, 'Capin, Craig', 'O''connor, Craig', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'Exchange to (cri-hs0020) due to low volume in sounds'),
(88, 'HS0088', 'plantronics', 'HW121N', 'DJ2322', 'usb', 'NEW', 'SPARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OK / spare'),
(89, 'HS0089', 'plantronics', 'HW121N', 'DJ2571', 'usb', 'NEW', NULL, 'Portal, Dave Gregor', 'Dave Parker', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(90, 'HS0090', 'plantronics', 'HW121N', 'DJ3403', 'usb', 'NEW', NULL, 'Cruz, Mary Erika', NULL, '0000-00-00', NULL, 2, 4, 'OLD OPS', NULL),
(91, 'HS0091', 'plantronics', 'HW121N', 'AV9399', 'usb', 'NEW', '', 'Diapana, Marilyn', NULL, NULL, '0000-00-00', 2, 12, 'OLD OPS', 'returned / received by Rene'),
(92, 'HS0092', 'plantronics', 'HW121N', 'DJ3624', 'usb', 'NEW', '', 'Maskariño, Neil', 'Mercer, Neil', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'Temporay'),
(93, 'HS0093', 'plantronics', 'HW121N', 'DJ5685', 'usb', 'NEW', NULL, 'Gonato, Marjon', NULL, '0000-00-00', NULL, 2, 4, 'OLD OPS', '`'),
(94, 'HS0094', 'plantronics', 'HW121N', 'AW2174', 'usb', 'NEW', 'SPARE', 'Barco, AJ', NULL, '0000-00-00', NULL, NULL, NULL, 'OLD OPS', 'used by Aldrin Peral before '),
(95, 'HS0095', 'plantronics', 'HW121N', 'DE0256', 'usb', 'NEW', NULL, 'Rosales, Edwin', NULL, '0000-00-00', NULL, NULL, NULL, 'EXPANSION', NULL),
(96, 'HS0096', 'plantronics', 'HW121N', 'BI0199', 'usb', 'NEW', '', 'Vega, Mary', 'Smith, Stephanie', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'Temporary'),
(97, 'HS0097', 'plantronics', 'HW121N', 'DJ3671', 'usb', 'NEW', NULL, 'Bani, Nancy', 'Andrews, Nancy', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(98, 'HS0098', 'plantronics', 'HW121N', 'DJ3185', 'usb', 'NEW', NULL, 'Barliso, Lorell', 'Elle Simpson', NULL, NULL, NULL, 7, 'OLD OPS', NULL),
(99, 'HS0099', 'plantronics', 'HW121N', 'AW2059', 'usb', 'NEW', '', 'Pader, Herbert', 'Reid, Toni', '0000-00-00', NULL, NULL, 7, 'OLD OPS', 'Temporay'),
(100, 'HS0100', 'plantronics', 'HW121N', 'DD8115', 'usb', 'NEW', NULL, 'Cupay, Diamond', NULL, '0000-00-00', NULL, 4, NULL, 'EXPANSION', NULL),
(101, 'HS0101', 'plantronics', 'HW121N', 'BH7809', 'usb', 'NEW', NULL, 'Cuesta, Reyan', 'Gomez, Ryan', '0000-00-00', NULL, 4, 7, 'OLD OPS', NULL),
(102, 'HS0102', 'plantronics', 'HW121N', 'DT3570', 'usb', 'NEW', NULL, 'Penales, KellyAnn', 'Summers, Kelly', '0000-00-00', NULL, NULL, 7, 'OLD OPS', NULL),
(103, 'HS0103', 'plantronics', 'HW121N', 'AV8723', 'usb', 'NEW', '', 'Apiag, Jommy', 'Davies, Tom', NULL, NULL, 2, 7, 'OLD OPS', 'temporary'),
(104, 'HS0104', 'plantronics', 'HW121N', 'BM4983', 'usb', 'NEW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'can''t detect usb'),
(105, 'HS0105', 'plantronics', 'HW121N', 'BM7790', 'usb', 'NEW', 'SPARE', 'Tabanas, Joseph Neil', 'Phelps, Leon', '0000-00-00', NULL, 4, 7, 'OLD OPS', 'Ok/Spare'),
(106, 'HS0106', 'plantronics', 'HW121N', 'GU4077', 'usb', 'NEW', NULL, 'Orlando Walag', 'Laine Wallace', '0000-00-00', NULL, 2, NULL, 'EXPANSION', NULL),
(107, 'HS0107', 'plantronics', 'HW121N', 'EB1434', 'usb', 'NEW', NULL, 'Tecson, Kressa', 'Avila Kate', '0000-00-00', NULL, 2, 7, 'OLD OPS', NULL),
(108, 'HS0108', 'plantronics', 'HW121N', 'BH9838 H9', 'usb', 'NEW', 'DEFECTIVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'cri-old-hs001', 'plantronics', 'DA60', 'VU2220 I2', 'usb', 'OLD', NULL, 'Aringay. Mary ', NULL, '0000-00-00', NULL, 2, 12, 'OLD OPS', 'released by RENE'),
(110, 'cri-old-hs005', 'plantronics', 'DA60', NULL, 'usb', 'OLD', '', 'Alferez, Rutchell', NULL, '0000-00-00', NULL, 2, 12, 'OLD OPS', 'issued temporarily to Rutchell'),
(111, 'cri-old-hs010', 'A4tech', 'HS-5P', NULL, '3.5 jack', 'OLD', 'SPARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ok / Spare'),
(112, 'cri-old-hs011', 'A4tech', 'HS-5P', NULL, '3.5 jack', 'OLD', '', 'Granada.Arcelie', NULL, NULL, NULL, 2, NULL, NULL, 'Permanent'),
(113, 'cri-old-hs012', 'A4tech', 'HS-5P', NULL, '3.5 jack', 'OLD', NULL, 'Polancos, Larry', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'cri-old-hs014', 'A4tech', 'HS-5P', NULL, '3.5 jack', 'OLD', NULL, 'Antonio, Laurie', NULL, NULL, NULL, NULL, NULL, 'EXPANSION', NULL),
(115, 'cri-old-hs015', 'plantronics', 'DA60', 'AZ5725', 'usb', 'OLD', 'DEFECTIVE', 'Omega, Orwin', NULL, NULL, NULL, NULL, NULL, 'OLD OPS', 'Can''t detect usb'),
(116, NULL, NULL, NULL, NULL, 'usb', 'OLD', '', 'Prime Dionson', NULL, '0000-00-00', NULL, 2, NULL, 'EXPANSION', 'Permanently deployed old headset to Sir Prime / note: label is not visible anymore');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `inc_id` int(11) NOT NULL,
  `inc_date` date DEFAULT NULL,
  `inc_activity` varchar(5000) DEFAULT NULL,
  `inc_status` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `peripherals`
--

INSERT INTO `peripherals` (`p_id`, `p_asset`, `p_model`, `p_brand`, `p_type`, `p_status`, `p_space`, `p_remarks`) VALUES
(1, 'MONITOR', 'AOC small', NULL, NULL, 'OLD', 'SERVER ROOM', 'OK / SPARE'),
(2, 'MONITOR', 'DELL', NULL, NULL, 'OLD', 'SERVER ROOM', 'OK / SPARE'),
(3, 'MONITOR', 'DELL', NULL, NULL, 'OLD', 'SERVER ROOM', 'OK / SPARE'),
(4, 'MONITOR', 'Samsung(S20D 300F)', NULL, NULL, 'OLD', 'SERVER ROOM', 'OK / SPARE'),
(5, 'MONITOR', 'AOC big', NULL, NULL, 'OLD', 'SERVER ROOM', 'OK / SPARE'),
(6, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(7, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(8, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(9, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(10, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(11, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(12, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(13, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(14, 'KEYBOARD', 'KB11', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(15, 'KEYBOARD', 'KB110', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(16, 'KEYBOARD', 'KB110', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(17, 'KEYBOARD', 'KB111', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(18, 'KEYBOARD', 'KB112', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(19, 'KEYBOARD', 'KB113', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(20, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(21, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(22, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(23, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(24, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(25, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(26, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(27, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(28, 'MOUSE', 'M101', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE'),
(29, 'MOUSE', 'M102', 'INFINI', 'USB', 'NEW', 'SERVER ROOM', 'OK / SPARE');

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
(1, 'itsupport', '097f5834ea92d5ec2a7b773c6099613bb217c2ef99ba1f7c4ebff3053bf63ff7', 'IT SUPPORT', '', '', '0000-00-00', '', 'itsupport@clickablebrand.com', 'ADMIN', 'AC', NULL),
(2, 'rene.mino', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Rene', 'Mino', '', '0000-00-00', '', 'rene.mino@cri.clickablebrand.com', 'ADMIN', 'AC', NULL),
(3, 'eric.cortes', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Eric', 'Cortes', '', '0000-00-00', '', 'eric.cortes@ph.clickablebrand.com', 'ADMIN', 'AC', NULL),
(4, 'ronald', '19513fdc9da4fb72a4a05eb66917548d3c90ff94d5419e1f2363eea89dfee1dd', 'Ronald', '', '', '0000-00-00', '', 'ronald@gmail.com', 'ADMIN', 'AC', NULL);

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
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `headset`
--
ALTER TABLE `headset`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `inc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `peripherals`
--
ALTER TABLE `peripherals`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
