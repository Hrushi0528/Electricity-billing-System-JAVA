-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 08:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electricitybilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `carddetails`
--

CREATE TABLE `carddetails` (
  `Accountholdername` varchar(50) NOT NULL,
  `cardno` varchar(14) NOT NULL,
  `pin` varchar(4) NOT NULL,
  `bankname` varchar(30) NOT NULL,
  `cvv` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carddetails`
--

INSERT INTO `carddetails` (`Accountholdername`, `cardno`, `pin`, `bankname`, `cvv`) VALUES
('Hrushikesh Dodla', '0528 1213 2022', '1328', 'State Bank of India', '143'),
('KeerthiPriya Challa', '2551 4312 1328', '1213', 'State Bank of India', '143'),
('Yokshith Karna', '1200 2137 8476', '2998', 'Indian Bank', '298'),
('Tharun Konduru', '4519 3814 0058', '6905', 'State Bank of India', '255');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `Customername` varchar(30) NOT NULL,
  `meterno` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`Customername`, `meterno`, `Address`, `City`, `State`, `Email`, `phno`) VALUES
('Tharun Konduru', '166112', 'Beside Gudur railway station', 'Gudur', 'Andhrapradesh', 'Tharungoparaju16@gmai.com', '7330623039'),
('Yokshith Karna', '212416', 'Opposite Gudur Bus Stand', 'Gudur', 'ap', 'karnayokshith@gmail.com', '8019698580'),
('Hrushikesh Dodla', '132822', 'opposite Mannat,Bandra', 'Mumbai', 'Maharastra', 'dodlahrushikesh1575@gmail.com', '8639749803'),
('KeerthiPriya Challa', '143255', 'opposite Mannat,Bandra West', 'Mumbai', 'Maharastra', 'keerthiPriya13@gmail.com', '9014873263'),
('perneti sathvik reddy', '191874', 'housing board colony', 'nellore', 'andhra pradesh', 'sathviknperneti@gmail.com', '9989972300'),
('mnbvcxz', '111222', 'nhffeufh', 'huhiuwiu', 'fneuhfue', 'nanichowdary1575@gmail.com', '9014873263'),
('kranti kumar', '987654', 'vbhfygh', 'hbyfyty', 'nmnjbhg', 'kranthisamadi@gmail.com', '7842507089'),
('Hungry Learner', '119955', 'vedayapalem', 'Nellore', 'Ap', 'hungrylearner.knowledge@gmail.com', '9014873263'),
('Lokesh Bandla', '211204', 'Beside Govardhan reddy House,Toderu', 'podalakur', 'Ap', 'lokeshbandla12@gmail.com', '6301835687'),
('Sasi Kumar', '277211', 'opposite ratlana cheruvu', 'naidupeta', ' Andhra Pradesh', ' fsasi6696@gmail.com', '9493385255');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `meterno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `name`, `password`, `meterno`) VALUES
('Keerthi', 'KeerthiPriya', 'hrushi@143', '143255'),
('Tharun@g143', 'Tharun ', 'gayathri@143', '166112'),
('sahvik', 'sathvik', 'xnxx69', '191874'),
('Raja', 'yokshith', 'yokiyoki', '212416'),
('Nani', 'Hrushi', 'kp@143', '132822'),
('kljh', 'asdfg', '12345654321', '111222'),
('kranti', 'vhvhvh', '123456', '987654'),
('Learner13', 'Learner', '12345678', '119955'),
('loki654', 'loki', 'loki8860', '211204'),
('lucky', 'sasi', 'sasi@lucky', '277211');

-- --------------------------------------------------------

--
-- Table structure for table `paymenthistory`
--

CREATE TABLE `paymenthistory` (
  `Customername` varchar(30) NOT NULL,
  `meterno` varchar(10) NOT NULL,
  `cardno` varchar(16) NOT NULL,
  `Amount` varchar(10) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymenthistory`
--

INSERT INTO `paymenthistory` (`Customername`, `meterno`, `cardno`, `Amount`, `date`) VALUES
('Hrushikesh Dodla', '132822', '0528 1213 2022', 'null', 'null'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '643.1007', 'Mon Jan 16 09:35:02 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '4668.943', 'Mon Jan 16 09:40:56 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '2725.6685', 'Mon Jan 16 09:46:33 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '358.0939', 'Mon Jan 16 09:48:52 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '4520.1406', 'Mon Jan 16 10:08:40 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '1176.8025', 'Mon Jan 16 10:12:02 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '17.501766', 'Mon Jan 16 10:18:31 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '1253.2538', 'Mon Jan 16 21:31:53 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '141.48349', 'Tue Jan 17 00:03:12 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '68.08728', 'Tue Jan 17 00:36:06 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '4052.2358', 'Tue Jan 17 21:58:13 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '2148.2046', 'Wed Jan 18 21:00:33 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '5213.1196', 'Wed Jan 18 21:03:19 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '2917.6182', 'Wed Jan 18 21:10:39 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '881.9123', 'Wed Jan 18 21:22:11 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '105.99166', 'Wed Jan 18 21:25:37 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '1472.3098', 'Wed Jan 18 21:39:49 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '1336.4484', 'Wed Jan 18 23:08:23 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '5177.83', 'Fri Jan 27 05:43:22 IST 2023'),
('KeerthiPriya Challa', '143255', '0528 1213 2022', '3443.9607', 'Sun Feb 12 09:05:31 IST 2023'),
('KeerthiPriya Challa', '143255', '0528 1213 2022', '3180.9316', 'Sun Feb 12 09:28:56 IST 2023'),
('KeerthiPriya Challa', '143255', '0528 1213 2022', '3720.6785', 'Sun Feb 12 10:24:47 IST 2023'),
('KeerthiPriya Challa', '143255', '0528 1213 2022', '3630.351', 'Sun Feb 12 10:25:58 IST 2023'),
('Hrushikesh Dodla', '132822', '0528 1213 2022', '1555.5801', 'Sun Feb 12 22:19:15 IST 2023'),
('KeerthiPriya Challa', '143255', '0528 1213 2022', '472.81656', 'Wed Feb 15 22:33:00 IST 2023'),
('KeerthiPriya Challa', '143255', '0528 1213 2022', '5573.26', 'Wed Feb 15 23:11:01 IST 2023'),
('Hungry Leaner', '119955', '0528 1213 2022', '1744.2745', 'Thu Feb 16 09:00:13 IST 2023'),
('Hungry Learner', '119955', '0528 1213 2022', '1697.0736', 'Thu Feb 16 23:16:59 IST 2023');

-- --------------------------------------------------------

--
-- Table structure for table `unitshistory`
--

CREATE TABLE `unitshistory` (
  `name` varchar(30) NOT NULL,
  `meterno` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `units` varchar(10) NOT NULL,
  `totalcost` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unitshistory`
--

INSERT INTO `unitshistory` (`name`, `meterno`, `month`, `year`, `units`, `totalcost`, `status`) VALUES
('Hrushikesh Dodla', '132822', 'January', '2019', '21.850002', '54.7343', 'paid'),
('Hrushikesh Dodla', '132822', 'Febuary', '2019', '225.16501', '1555.5801', 'paid'),
('Hrushikesh Dodla', '132822', 'March', '2019', '306.65146', '2780.3215', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'April', '2019', '131.84059', '548.9799', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'May', '2019', '403.29288', '4232.842', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'June', '2019', '471.5997', '5259.4937', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'July', '2019', '200.78981', '1189.2208', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'August', '2019', '289.09637', '2516.4685', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'September', '2019', '132.67241', '554.8143', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'October', '2019', '149.87381', '675.4649', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'November', '2019', '450.40094', '4940.876', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'December', '2019', '296.18674', '2623.0366', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'January', '2020', '456.08383', '5026.2905', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'Febuary', '2020', '74.46008', '223.28601', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'March', '2020', '429.9475', '4633.4614', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'April', '2020', '115.25207', '432.628', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'May', '2020', '350.94247', '3446.0154', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'June', '2020', '145.25958', '643.1007', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'July', '2020', '432.30823', '4668.943', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'August', '2020', '303.0152', '2725.6685', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'September', '2020', '104.625595', '358.0939', 'paid'),
('Hrushikesh Dodla', '132822', 'October', '2020', '422.40787', '4520.1406', 'paid'),
('Hrushikesh Dodla', '132822', 'November', '2020', '199.94536', '1176.8025', 'paid'),
('Hrushikesh Dodla', '132822', 'December', '2020', '205.05016', '1253.2538', 'paid'),
('Hrushikesh Dodla', '132822', 'January', '2021', '54.05027', '141.48349', 'paid'),
('Hrushikesh Dodla', '132822', 'Febuary', '2021', '27.180552', '68.08728', 'paid'),
('Hrushikesh Dodla', '132822', 'March', '2021', '391.2765', '4052.2358', 'paid'),
('Hrushikesh Dodla', '132822', 'May', '2021', '264.59445', '2148.2046', 'paid'),
('Hrushikesh Dodla', '132822', 'June', '2021', '468.51428', '5213.1196', 'paid'),
('Hrushikesh Dodla', '132822', 'June', '2021', '315.78632', '2917.6182', 'paid'),
('Hrushikesh Dodla', '132822', 'July', '2021', '170.5152', '881.9123', 'paid'),
('Hrushikesh Dodla', '132822', 'August', '2021', '42.31204', '105.99166', 'paid'),
('Hrushikesh Dodla', '132822', 'September', '2021', '219.62474', '1472.3098', 'paid'),
('Hrushikesh Dodla', '132822', 'January', '2023', '210.58539', '1336.4484', 'paid'),
('Hrushikesh Dodla', '132822', 'January', '2023', '210.58539', '1336.4484', 'Not Paid'),
('Hrushikesh Dodla', '132822', 'January', '2019', '466.16635', '5177.83', 'paid'),
('KeerthiPriya Challa', '143255', 'March', '2021', '350.80576', '3443.9607', 'paid'),
('Hrushikesh Dodla', '132822', 'October', '2023', '390.17566', '4035.69', 'Not Paid'),
('KeerthiPriya Challa', '143255', 'September', '2022', '333.3055', '3180.9316', 'paid'),
('KeerthiPriya Challa', '143255', 'January', '2019', '369.2168', '3720.6785', 'paid'),
('KeerthiPriya Challa', '143255', 'March', '2024', '363.207', '3630.351', 'paid'),
('KeerthiPriya Challa', '143255', 'Febuary', '2021', '251.66794', '1953.9191', 'Not Paid'),
('KeerthiPriya Challa', '143255', 'March', '2019', '120.98183', '472.81656', 'paid'),
('KeerthiPriya Challa', '143255', 'May', '2019', '492.47568', '5573.26', 'paid'),
('Hungry Leaner', '119955', 'Febuary', '2020', '237.71953', '1744.2745', 'paid'),
('Hungry Learner', '119955', 'January', '2019', '234.57909', '1697.0736', 'paid');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
