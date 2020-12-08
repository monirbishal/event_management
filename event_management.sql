-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 12:54 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_date` varchar(100) NOT NULL,
  `event_place` varchar(100) NOT NULL,
  `event_delails` text NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` varchar(100) NOT NULL DEFAULT 'free'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_date`, `event_place`, `event_delails`, `capacity`, `price`) VALUES
(6, 'web design', '2018-11-21', 'Dhaka', 'Some quick example text to ke up the bulk of the cards content.build on the card title and ma', 15, '100'),
(7, 'web design', '2018-11-08', 'Dhaka', 'Some quick example text to ke up the bulk of the cards content.build on the card title and ma', 22, ''),
(8, 'web design', '2018-11-16', 'Dhaka', 'Some quick example text to ke up the bulk of the cards content.build on the card title and ma', 55, '10$');

-- --------------------------------------------------------

--
-- Table structure for table `join_events`
--

CREATE TABLE `join_events` (
  `id` int(10) NOT NULL,
  `join_email` varchar(100) NOT NULL,
  `join_price` varchar(1000) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `join_events`
--

INSERT INTO `join_events` (`id`, `join_email`, `join_price`, `event_id`) VALUES
(1, 'join@gmail.com', '10', 0),
(2, 'joi2n@gmail.com', '10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Monir', 'monir@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'aitk', 'atik@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'wasik', 'wasik@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'monir', 'monirr@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710'),
(5, 'bishal', 'bishal@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `join_events`
--
ALTER TABLE `join_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `join_events`
--
ALTER TABLE `join_events`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
