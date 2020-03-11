-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 12:35 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopnow`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(12) NOT NULL,
  `amount` varchar(12) NOT NULL,
  `title` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL,
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `amount`, `title`, `token`, `id`, `user_id`) VALUES
(1, '30000', 'php', 'tok_1GCNQRA61XKEIsc944u064Ij', 1, 1),
(2, '20000', 'python', 'tok_1GCNUrA61XKEIsc9ohgaJDY2', 2, 1),
(3, '20000', 'python', 'tok_1GCNY3A61XKEIsc9pjeWJ1Kx', 2, 1),
(4, '30000', 'php', 'tok_1GCNalA61XKEIsc9iDRsTdqL', 1, 2),
(5, '30000', 'php', 'tok_1GCOltA61XKEIsc9r2SXkSwT', 1, 2),
(6, '30000', 'php', 'tok_1GCOnhA61XKEIsc9O2D6OeCU', 1, 2),
(7, '30000', 'php', 'tok_1GCOp8A61XKEIsc95A4RKW1P', 1, 2),
(8, '30000', 'php', 'tok_1GCOwnA61XKEIsc98vjq1b0Z', 1, 2),
(9, '30000', 'php', 'tok_1GCPElA61XKEIsc9bh4LqbZJ', 1, 2),
(10, '30000', 'php', 'tok_1GCPLPA61XKEIsc9FfqAXJtf', 1, 2),
(11, '20000', 'python', 'tok_1GCPN4A61XKEIsc9TkIe9vXw', 2, 2),
(12, '30000', 'php', 'tok_1GCPRfA61XKEIsc9YTY2upZT', 1, 2),
(13, '20000', 'python', 'tok_1GCPT0A61XKEIsc9CYFoJYZe', 2, 2),
(14, '30000', 'php', 'tok_1GCPU5A61XKEIsc9uwTnIvrZ', 1, 2),
(15, '20000', 'python', 'tok_1GCPV1A61XKEIsc9BmMbMqFZ', 2, 2),
(16, '30000', 'php', 'tok_1GCPVIA61XKEIsc9SOWc6DlJ', 1, 2),
(17, '30000', 'php', 'tok_1GCkTqA61XKEIsc9jHIPR5Fx', 1, 1),
(18, '20000', 'python', 'tok_1GCkWHA61XKEIsc9H6ndEVJ3', 2, 1),
(19, '30000', 'php', 'tok_1GCkcwA61XKEIsc9Vr5BoKB9', 1, 1),
(20, '20000', 'python', 'tok_1GCkhKA61XKEIsc9PSLrYRIg', 2, 2),
(21, '30000', 'php', 'tok_1GCkpEA61XKEIsc9KFnsltH8', 1, 2),
(22, '20000', 'python', 'tok_1GCkpxA61XKEIsc926yEzITK', 2, 2),
(23, '4000', 'js', 'tok_1GCl6iA61XKEIsc9kjJEKviU', 3, 2),
(24, '5000', 'c++', 'tok_1GClBNA61XKEIsc9gVFF5ubX', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(12) NOT NULL,
  `title` varchar(250) NOT NULL,
  `des` varchar(250) NOT NULL,
  `pic` varchar(250) NOT NULL,
  `price` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `des`, `pic`, `price`) VALUES
(1, 'php', 'book about php ', '1.jpg', '300'),
(2, 'python', 'python programming', '2.jpg', '200'),
(3, 'js', 'a book about dom ', '3.jpeg', '40'),
(4, 'c++', 'book about memory ', '2.png', '50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(1, 's@d.com', '$2y$10$TtLSC4aOqB2nm/n6Q9WiCunmYjfR6FDKm3hPEu9q.EoytbVWqdtza', 's@d.com'),
(2, 'm@m.com', '$2y$10$HsXgYpm/29Pjn/RXPM6nde0ydgi5uoq1tf7ieVG8V/IJnJZhYdWF6', 'm@m.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
