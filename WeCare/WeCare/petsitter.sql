-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2019 at 04:36 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petsitter`
--

-- --------------------------------------------------------

--
-- Table structure for table `caretaker`
--

CREATE TABLE `caretaker` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `expertise_pet1` varchar(20) NOT NULL,
  `expertise_pet2` varchar(20) DEFAULT NULL,
  `emailid` text NOT NULL,
  `experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caretaker`
--

INSERT INTO `caretaker` (`id`, `Name`, `expertise_pet1`, `expertise_pet2`, `emailid`, `experience`) VALUES
(1, 'Amratanshu', 'dog', 'cat', 'amru@gmail.com', 5),
(2, 'jon', 'dog', NULL, 'jon@gmail.com', 7),
(3, 'tom', 'cat', 'bird', 'tom@gmail.com', 3),
(4, 'sins', 'cat', 'bird', 'sins@gmail.com', 4),
(5, 'ann', 'dog', 'cat', 'ann@gmail.com', 3),
(6, 'julie', 'dog', '', 'julie@gmail.com', 4),
(7, 'dwarika', 'cat', '', 'daru@gmail.com', 6),
(8, 'madua', 'cat', '', 'madua@gmail.com', 4),
(9, 'brand', 'dog', 'cat', 'brand@gmail.com', 2),
(11, 'jim', 'bird', NULL, 'jim@gmail.com', 4),
(12, 'tonny', 'rabbit', 'bird', 'ton@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `customer_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_breed` varchar(100) NOT NULL,
  `cat_weight` int(11) NOT NULL,
  `cat_photo` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`customer_id`, `cat_id`, `cat_breed`, `cat_weight`, `cat_photo`) VALUES
(2019001, 2019001001, 'iuhere', 25, 'errgeg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `Name`, `Email`, `Phone`, `Password`, `Address`) VALUES
(2019001, 'Devipad Das', 'devi@gmail.com', '8917401916', 'devi123', 'balasore'),
(2019002, 'Kaushik Kumar', 'kaushik@gmail.com', '9338089865', 'kaushik123', 'bbsr'),
(2019003, 'Prateek MG', 'mg@gmail.com', '8917401914', 'prateek123', 'bbsrmg'),
(2019004, 'Kumarshree Naik', 'kumar@gmail.com', '8917401568', 'kumar123', 'ganjam'),
(2019005, 'Akash Acharya', 'akash@gmail.com', '8917401918', 'akash123', 'balasore'),
(2019008, 'Bikash Acharya', 'bikash@gmail.com', '8917401915', 'bikash123', 'balasore'),
(2019009, 'Rakesh Satpathy', 'rakesh@gmail.com', '8917401559', 'rakesh123', ',xjnsjk'),
(2019010, 'Sahaj', 'sahaj@gmail.com', '8917401918', 'sahaj', 'sdcljs'),
(2019011, 'Harish', 'harish@gmail.com', '8917401916', 'harish123', 'balsuur');

-- --------------------------------------------------------

--
-- Table structure for table `dog`
--

CREATE TABLE `dog` (
  `customer_id` int(11) NOT NULL,
  `dog_id` int(11) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `weight` int(11) NOT NULL,
  `photo` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dog`
--

INSERT INTO `dog` (`customer_id`, `dog_id`, `breed`, `weight`, `photo`) VALUES
(2019001, 2019001001, 'Pomerenian', 10, 'skfnskns'),
(2019001, 2019001002, 'fhdfh', 0, 'skfnskns'),
(2019001, 2019001003, 'ddb', 0, 'skfnskns');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caretaker`
--
ALTER TABLE `caretaker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `fk_cat` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`dog_id`),
  ADD KEY `fk_dog` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caretaker`
--
ALTER TABLE `caretaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019001002;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019012;

--
-- AUTO_INCREMENT for table `dog`
--
ALTER TABLE `dog`
  MODIFY `dog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019001004;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cat`
--
ALTER TABLE `cat`
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dog`
--
ALTER TABLE `dog`
  ADD CONSTRAINT `fk_dog` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
