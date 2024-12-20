-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 01:35 PM
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
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `usernm` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`usernm`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `buyer_name` varchar(20) NOT NULL,
  `buyer_co_no` bigint(10) NOT NULL,
  `product` varchar(100) NOT NULL,
  `total` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `rerurn_am` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `buyer_name`, `buyer_co_no`, `product`, `total`, `amount`, `rerurn_am`) VALUES
(1, 'dhruv parmar s', 1234567890, 'lamp ,', 1000, 1234, 234),
(6, 'dhruv parmar s', 1234567890, 'lamp 1 ,lamp 1 ,lamp 1 ,', 3000, 3100, 100),
(7, 'dhruv parmar s', 1234567890, 'lamp 5 ,', 10000, 123456, 113456),
(8, 'dhruv parmar123', 1234567890, 'lamp 1 ,lamp 1 ,lamp 1 ,lamp 1 ,lamp 1 ,lamp 1 ,', 6000, 6789, 789),
(9, 'kabir parmar', 1112223330, 'running 1 ,running 1 ,running 1 ,running 1 ,', 4000, 3999, -1),
(10, 'hardik', 1234564560, 'running 1 ,running 1 ,running 1 ,', 3000, 3000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_detail`
--

CREATE TABLE `emp_detail` (
  `emp_nm` varchar(50) NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_detail`
--

INSERT INTO `emp_detail` (`emp_nm`, `mobileno`, `pass`, `gender`) VALUES
('test1', 123456789, 'abc', 'Male'),
('test1', 123456790, 'abc', 'Male'),
('test', 1234567890, 'abc', 'Male'),
('test2', 1234567891, 'abc', 'Male'),
('kabir parmar', 5555555555, 'ok', 'Male'),
('neel khunti', 9786453120, 'abc', 'Male'),
('kabir parmar', 9999999999, 'ok', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `new_buyer`
--

CREATE TABLE `new_buyer` (
  `name` varchar(50) NOT NULL,
  `contactno` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_buyer`
--

INSERT INTO `new_buyer` (`name`, `contactno`, `email`, `address`, `gender`) VALUES
('kabir parmar', 1112223330, 'kabirparmar123@gmail.com', 'kabirparmar123@gmail.com', 'Male.'),
('kabir parmar', 1112223334, 'kabir12345@gmail.co.in', 'porbandar', 'Male'),
('Dhruv Parmar', 1233333333, 'parmardhruv924@gmail.co.in', 'talala', 'Male'),
('hardik', 1234564560, 'hardik@gmail.com', 'hardik@gmail.com', 'Male.'),
('dhruv parmar123', 1234567890, 'abc@gmail.co.in', 'cd', 'Male'),
('khush', 1234567894, 'xgs@fm.co', 'xgs@fm.co', 'Male.'),
('kabir parmar 123', 9601572108, 'kabirparmar123@gmail.com', 'porbander', 'Male.'),
('neel khunti', 9712703827, 'neelkhunti9@gmail.com', 'porbandar', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `new_product`
--

CREATE TABLE `new_product` (
  `prod_id` int(10) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_price` int(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_product`
--

INSERT INTO `new_product` (`prod_id`, `prod_name`, `prod_price`, `description`, `quantity`) VALUES
(1, 'shoes', 1000, 'running shoes', 100),
(2, 'lamp', 123, 'led', 54),
(3, 'ball', 399, 'football', 40),
(6, 'carrom', 1500, 'wooden', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_detail`
--
ALTER TABLE `emp_detail`
  ADD PRIMARY KEY (`mobileno`);

--
-- Indexes for table `new_buyer`
--
ALTER TABLE `new_buyer`
  ADD PRIMARY KEY (`contactno`);

--
-- Indexes for table `new_product`
--
ALTER TABLE `new_product`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
