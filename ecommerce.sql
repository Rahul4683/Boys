-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 05:35 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` int(20) NOT NULL,
  `mprice` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `star` float NOT NULL,
  `review` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `mprice`, `image`, `star`, `review`) VALUES
(1, 'Camera', 50000, 80000, 'img/product-1.jpg', 4.5, 99),
(2, 'T Shirt', 2500, 5000, 'img/tshirts1.jpg', 4.5, 98),
(3, 'Jeans', 3500, 7000, 'img/jeans.jpeg', 4, 60),
(4, 'Beardo oil', 1800, 6000, 'img/beardooil1.jpg', 5, 99),
(5, 'T Shirt', 1800, 3500, 'img/tshirtss.jpeg', 4.5, 98),
(6, 'Beardo Wax', 1500, 7000, 'img/BeardoWax.jpg', 5, 99),
(7, 'Beardo Perfume', 3500, 8000, 'img/perfume1.png', 4.5, 98),
(8, 'Product 8', 2300, 6000, 'img/jeans1.jpeg', 4.5, 92),
(9, 'T Shirt', 1500, 4000, 'img/tshirt2.png', 3.5, 96),
(10, 'Adjustable Dumbell', 7000, 10000, 'img/dumbells2.jpg', 4.5, 70);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(0, 'rj@gmail.com', 5, 'nice website', 1677594637);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `registration_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_id`, `first_name`, `last_name`, `registration_time`, `password`) VALUES
(68, 'rj@gmail.com', 'rj', 'mk', '2023-02-26 11:11:41', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `users_products`
--

CREATE TABLE `users_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `status` enum('Added To Cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_products`
--

INSERT INTO `users_products` (`id`, `user_id`, `item_id`, `status`) VALUES
(11, 67, 6, 'Confirmed'),
(17, 67, 1, 'Confirmed'),
(18, 67, 5, 'Confirmed'),
(19, 67, 6, 'Confirmed'),
(20, 67, 1, 'Confirmed'),
(23, 67, 1, 'Confirmed'),
(24, 67, 2, 'Confirmed'),
(25, 67, 9, 'Confirmed'),
(37, 68, 10, 'Confirmed'),
(55, 68, 2, 'Confirmed'),
(58, 68, 2, 'Confirmed'),
(60, 68, 2, 'Confirmed'),
(61, 68, 1, 'Confirmed'),
(62, 68, 1, 'Confirmed'),
(63, 68, 2, 'Confirmed'),
(64, 68, 1, 'Confirmed'),
(65, 68, 2, 'Confirmed'),
(66, 68, 2, 'Confirmed'),
(67, 68, 3, 'Confirmed'),
(68, 68, 1, 'Confirmed'),
(69, 68, 2, 'Confirmed'),
(70, 68, 2, 'Confirmed'),
(71, 68, 2, 'Confirmed'),
(72, 68, 1, 'Confirmed'),
(73, 68, 2, 'Confirmed'),
(74, 68, 2, 'Confirmed');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users_products`
--
ALTER TABLE `users_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users_products`
--
ALTER TABLE `users_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
