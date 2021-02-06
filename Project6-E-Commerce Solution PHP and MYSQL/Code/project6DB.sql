-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 11:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project6`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(25) DEFAULT NULL,
  `admin_email` varchar(30) DEFAULT NULL,
  `admin_pass` varchar(50) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `hot_pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `store_id`, `hot_pro_id`) VALUES
(1, 'jenan', 'jenan@hot.com', '1234', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(25) DEFAULT NULL,
  `cat_desc` varchar(2000) DEFAULT NULL,
  `cat_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`, `cat_img`) VALUES
(1, 'Ice Creem', 'Ice Creem desc', 'ice-cream1.jpg'),
(2, 'Cake', 'Cake desc', 'Cake.jpg'),
(3, 'Arabic Sweets', 'arabic sweets', 'Arabic-sweets2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hot_pro`
--

CREATE TABLE `hot_pro` (
  `hot_pro_id` int(11) NOT NULL,
  `h_pro_id` int(11) DEFAULT NULL,
  `h_store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hot_pro`
--

INSERT INTO `hot_pro` (`hot_pro_id`, `h_pro_id`, `h_store_id`) VALUES
(1, 2, 1),
(2, 3, 3),
(3, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` varchar(50) DEFAULT NULL,
  `total` decimal(9,0) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `o_d_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `o_d_id` int(11) NOT NULL,
  `pro_qty` int(11) DEFAULT NULL,
  `total` decimal(9,0) DEFAULT NULL,
  `pro_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) DEFAULT NULL,
  `pro_desc` varchar(2000) DEFAULT NULL,
  `pro_price` decimal(9,0) DEFAULT NULL,
  `offer` decimal(5,0) DEFAULT NULL,
  `is_off` varchar(25) DEFAULT NULL,
  `pro_img` varchar(255) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `offer`, `is_off`, `pro_img`, `store_id`, `cat_id`) VALUES
(1, 'Knafeh', 'knafeh', '8', '7', 'true', 'Arabic-sweets1.jpg', 1, 2),
(2, 'Mex Ice Creem', 'TripAdvisorBASKIN-ROBBINS', '11', '9', 'true', 'BR6.jpg', 2, 1),
(3, 'Man W aslwa', '', '8', '0', 'false', 'Nafeeseh_prodect6.jpg', 1, 3),
(4, 'Tamriah', '', '3', '2', 'true', 'ArafatSweets_Product5.jpg', 9, 3),
(5, 'sweet', 'sweet', '2', '1', 'true', 'Nafeeseh_prodect3.jpg', 1, 3),
(6, 'sweet', 'sweet', '11', '10', 'true', 'Nafeeseh_prodect2.jpg', 1, 3),
(7, 'Knafeh', ' Knafeh sweet', '15', '14', 'true', 'AlNejmahsweets_product1.jpg', 8, 3),
(8, 'Knafeh', 'Knafeh Sweets', '16', '0', 'false', 'Nafeeseh_prodect1.jpg', 1, 3),
(9, 'Knafeh', 'Knafeh Sweets', '13', '12', 'true', 'ArafatSweets_Product1.jpg', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pro_img`
--

CREATE TABLE `pro_img` (
  `pro_img_id` int(11) NOT NULL,
  `img_name` varchar(50) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(25) DEFAULT NULL,
  `store_bio` varchar(2000) DEFAULT NULL,
  `store_img` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_name`, `store_bio`, `store_img`, `cat_id`) VALUES
(1, 'Nafeeseh', 'Nafeeseh sweet', 'NafeesehLogo.jpg', 3),
(2, 'Baskin Robeins', 'Baskin Robbins Ice Creem', 'baskin-robbins_logo.png', 1),
(3, 'Gerard', 'Gerard Ice Creem', 'Gerard_Logo.jpg', 1),
(4, 'Gusti ', 'Gusti Ice Creem', 'Gusti_logo.jpg', 1),
(5, ' The Cakery', 'cakery Cake', 'cakery-logo.png', 2),
(6, 'The Cake Shop', 'The Cake Shop Cake', 'cakeShop-logo.png', 2),
(7, 'Rawan Cake', 'Rawan Cake', 'rawan-logo.png', 2),
(8, 'Al Nejmah sweets', 'Al Nejmah sweets', 'AlNejmahsweets_logo.png', 3),
(9, 'Arafat Sweets', 'Arafat Sweets', 'ArafatSweets_logo.jpg', 3),
(10, 'Habibah Sweets', 'Habibah Sweets', 'HabibahSweets_logo.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `fullname` varchar(40) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1-active, 0-deactive',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `store_id` (`store_id`),
  ADD KEY `hot_pro_id` (`hot_pro_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `o_d_id` (`o_d_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`o_d_id`),
  ADD UNIQUE KEY `o_d_id` (`o_d_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD UNIQUE KEY `pro_id` (`pro_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `pro_img`
--
ALTER TABLE `pro_img`
  ADD PRIMARY KEY (`pro_img_id`),
  ADD UNIQUE KEY `pro_img_id` (`pro_img_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `store_id` (`store_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `o_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pro_img`
--
ALTER TABLE `pro_img`
  MODIFY `pro_img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`hot_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`o_d_id`) REFERENCES `order_details` (`o_d_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`pro_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`);

--
-- Constraints for table `pro_img`
--
ALTER TABLE `pro_img`
  ADD CONSTRAINT `pro_img_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`pro_id`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
