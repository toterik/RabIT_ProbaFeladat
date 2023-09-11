-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 07:20 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `probafeladat`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(8) NOT NULL,
  `userid` int(8) NOT NULL,
  `title` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `userid`, `title`) VALUES
(1, 1, 'An advertisement title'),
(2, 2, 'This is Béla\'s advertisements'),
(3, 1, 'This is Erik\'s advertisement'),
(4, 3, 'Tamás\'s long long long long long long long long advertisement'),
(20, 7, 'Buy One, Get One Free!'),
(21, 3, 'Limited Time Offer: 50% Off'),
(22, 12, 'New Arrivals - Shop Now'),
(23, 5, 'Exclusive Deals Today'),
(24, 7, 'Amazing Deals on Electronics'),
(25, 3, 'Luxury Car Sale: Limited Time Offer'),
(26, 9, 'Discounted Travel Packages'),
(27, 12, 'Furniture Clearance Sale'),
(28, 6, 'Fashion Accessories Galore'),
(29, 2, 'Home Improvement Savings'),
(30, 10, 'Health and Wellness Products'),
(31, 5, 'Outdoor Adventure Gear'),
(32, 1, 'Gourmet Food Delights'),
(33, 14, 'Exclusive Jewelry Collection');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `name` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Erik'),
(2, 'Béla'),
(3, 'Tamás'),
(4, 'John Doe'),
(5, 'Jane Smith'),
(6, 'Michael Johnson'),
(7, 'Emily Davis'),
(8, 'William Brown'),
(9, 'William Brown'),
(10, 'Sophia Wilson'),
(11, 'James Anderson'),
(12, 'Olivia Martinez'),
(13, 'Daniel Taylor'),
(14, 'Ava Clark');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
