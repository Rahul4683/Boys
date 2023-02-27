-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 04:14 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
