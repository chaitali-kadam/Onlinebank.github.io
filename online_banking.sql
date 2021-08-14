-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 05:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(2) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Account Number` int(8) NOT NULL,
  `Balance` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `Email`, `Account Number`, `Balance`) VALUES
(1, 'Chaitali Kadam', 'chaitalikadam20@gmail.com', 1235420, 29900),
(2, 'Ram Jadhav', 'ramjadhav01@gmail.com', 12354201, 40003),
(3, 'Sham Singh', 'shamsingh05@gmailcom', 12354205, 10122),
(4, 'Vartika Patil', 'varikapatil07@gmail.com', 12354207, 2100),
(5, 'Shreya Nikam', 'shreyanikam09@gmail.com', 12354209, 120055),
(6, 'Rohini Nikam', 'rohininikam02@gmail.com', 12354202, 155800),
(7, 'Jitendra Jadhav', 'jitendrajadhav08@gmail.com', 12354208, 65000),
(8, 'Dimple Mishra', 'dimplemishra04@gmail.com', 12354204, 56900),
(9, 'Shiv Ahire', 'shivahire11@gmail.com', 123542011, 99941),
(10, 'Ganesh Warke', 'ganeshwarke02@gmail.com', 12354202, 445562),
(11, 'Rutuja Shinde', 'rutujashinde03@gmail.com', 12354203, 432000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Srno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `Balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Srno`, `sender`, `receiver`, `Balance`, `datetime`) VALUES
(1, 'Rohini Nikam', 'Ram Jadhav', 60, '2021-08-13 18:42:50'),
(2, 'Rohini Nikam', 'Shreya Nikam', 80, '2021-08-13 18:46:09'),
(3, 'Rohini Nikam', 'Chaitali Kadam', 40, '2021-08-13 23:58:27'),
(4, 'Chaitali Kadam', 'Shiv Ahire', 55, '2021-08-14 00:00:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Srno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
