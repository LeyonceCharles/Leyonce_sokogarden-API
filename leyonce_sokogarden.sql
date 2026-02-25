-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 12:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leyonce_sokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_category`, `product_image`) VALUES
(1, 'Oppo F11', '16 gb ram, 128gb storage ,black,android 12', 20000, 'electronics', 'f11.jpeg'),
(2, 'S22', '68 gb ram, 198gb storage ,black,android 12', 200000, 'electronics', 'samsung'),
(3, 'Ushindi bar soap', 'mild soap,itch-free and affordable', 190, 'soap', 'ushindi bar\r\n'),
(5, 'Jamaa bar soap', 'multi-purpose,convenient anti-stain soap', 290, 'soap', 'jamaa'),
(6, 'Fountain pen', 'smooth writing pen wiyh no ink leakage', 500, 'stationary', 'fountain pen'),
(7, 'A4 Bronchure', 'unlimited space available', 1500, 'book', 'A4 Bronchure'),
(8, 'Nivea', 'for smooth skin and solution to the glowing and growing skin', 6500, 'lotion', 'nivea'),
(9, 'OLay', 'for  skin hyfdration and solution to the glowing and growing skin', 9500, 'lotion', 'olay'),
(10, 'Body Luxe', 'For smooth skin and hydrated ', 7500, 'lotion', 'body luxe'),
(11, 'Sonic electric toothbrush', 'For clean and white teeth', 600, 'Toothbrush', 'sonic electric toothbrush'),
(12, 'Wooden toothbrush', 'For clean and white teeth', 600, 'Toothbrush', 'toothbrush'),
(13, 'Amazon mirror', 'For clear images like never before', 9000, 'MIrror', 'Amazon mirror'),
(14, 'Makeup mirrror', 'For clear images like never before', 4000, 'MIrror', 'Make-up mirror'),
(15, 'Side view  mirror', 'For clear and sfe overtaking like never before', 9000, 'MIrror', 'Sideview mirror'),
(16, 'Wave like   mirror', 'For  unendless selfies like never before', 10000, 'MIrror', 'Wave like mirror '),
(17, 'Designer bag', 'For the satisfying fashion', 23000, 'Bag', 'Designer bag'),
(18, 'Travelling bag', 'For the the travelling experience like no other', 5000, 'Bag', 'Travelling bag\r\n'),
(19, 'School bag', 'For the education capacity experience ', 3000, 'Bag', 'School bag'),
(20, 'Trip  bag', 'For the education capacity experience ', 9000, 'Bag', 'Trip bag');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(2, 'leyonce', ' cngh.gmail.com', '0784848484', 'yrkjyjuyk'),
(3, 'leyonce', 'lee.gmail.com', '0788888888', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
