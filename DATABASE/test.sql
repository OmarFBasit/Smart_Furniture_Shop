-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 06:56 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(5, 'Omar', 'Faruk', 'omar_admin@gmail.com', 'omar_admin', 'a1Bz20ydqelm8m1wqld6ef7f706491b771271ad30df39c7fb0');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Sofa'),
(2, 'Chair'),
(3, 'Table'),
(4, 'Bed'),
(5, 'Kitchen'),
(6, 'Door'),
(7, 'Showcase'),
(8, 'Dressing Table'),
(9, 'Others'),
(10, 'Almirah');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`) VALUES
(1, 'Omar', 'F', 'Basit', 'Omarxyz', 'omarfaruk885@gmail.com', '01733');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 4, 'has logged in the system at ', '2019-12-24 03:42:19'),
(2, 4, 'added a new product 150 of Normal Chair', '2019-12-24 04:46:40'),
(3, 4, 'added a new product 150 of Sofa', '2019-12-24 04:47:44'),
(4, 4, 'added a new product 150 of Sofa', '2019-12-24 04:48:37'),
(5, 4, 'added a new product 150 of Bed', '2019-12-24 04:50:08'),
(6, 4, 'added a new product 150 of Bed With Pillow', '2019-12-24 04:51:06'),
(7, 4, 'added a new product 150 of Table', '2019-12-24 04:52:36'),
(8, 4, 'added a new product 150 of Table With Chair', '2019-12-24 04:54:26'),
(9, 4, 'added a new product 150 of Door', '2019-12-24 04:55:25'),
(10, 4, 'added a new product 150 of Door', '2019-12-24 04:56:21'),
(11, 10, 'has logged in the system at ', '2019-12-24 05:57:39'),
(12, 11, 'has logged in the system at ', '2019-12-24 06:11:40'),
(13, 10, 'has logged in the system at ', '2019-12-24 06:11:56'),
(14, 10, 'has logged in the system at ', '2019-12-24 06:18:21'),
(15, 10, 'has logged in the system at ', '2019-12-24 06:34:37'),
(16, 12, 'has logged in the system at ', '2021-12-13 21:17:34'),
(17, 12, 'has logged in the system at ', '2021-12-13 21:18:47'),
(18, 12, 'has logged in the system at ', '2021-12-20 00:37:36'),
(19, 12, 'has logged in the system at ', '2021-12-23 22:01:23'),
(20, 12, 'has logged in the system at ', '2021-12-24 01:34:47'),
(21, 12, 'has logged in the system at ', '2021-12-24 01:37:26'),
(22, 5, '(Administrator) has logged in the system at ', '2021-12-24 01:48:37'),
(23, 5, '(Administrator) has logged in the system at ', '2021-12-24 02:00:48'),
(24, 12, 'has logged in the system at ', '2021-12-27 00:00:08'),
(25, 12, 'has logged in the system at ', '2021-12-27 00:05:51'),
(26, 12, 'has logged in the system at ', '2021-12-27 00:07:31'),
(27, 5, '(Administrator) has logged in the system at ', '2021-12-27 00:07:39'),
(28, 5, '(Administrator) has logged in the system at ', '2021-12-27 00:21:44'),
(29, 5, 'added a new product 125 of Bed wood Furniture', '2021-12-27 00:27:41');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `shipping_add` varchar(500) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(18, 'Official Chair', 'Official Chair', 137, '9500.00', '12000.00', 'Chair', 'Nafiz', 'ch123', 'images (21).jpeg', 'images (21).jpeg', 'images (21).jpeg'),
(19, 'Normal Chair', 'Normal Chair', 150, '9000.00', '11000.00', 'Chair', 'Tuhin', 'ch125', 'images (22).jpeg', 'images (24).jpeg', 'images (25).jpeg'),
(20, 'Black Sofa', 'Sofa', 150, '12000.00', '15000.00', 'Almirah', 'Nafiz', 'sofa111', 'images (5).jpeg', 'images (4).jpeg', 'images (4).jpeg'),
(21, 'Luxury Sofa', 'Sofa', 150, '12000.00', '15000.00', 'Almirah', 'Nafiz', 'sofa112', 'images (7).jpeg', 'images (7).jpeg', 'images (5).jpeg'),
(22, 'Black Bed ', 'Bed', 150, '19000.00', '21000.00', 'Almirah', 'Nafiz', 'bed21', 'images (8).jpeg', 'images (9).jpeg', 'images (8).jpeg'),
(23, 'Bed With Pillow', 'Bed With Pillow', 150, '20000.00', '22000.00', 'Bed', 'Tuhin', 'bed22', 'images (10).jpeg', 'images (11).jpeg', 'images (11).jpeg'),
(24, 'Tea Table', 'Table', 150, '5000.00', '6500.00', 'Almirah', 'Nafiz', 'table232', 'images (26).jpeg', 'images (27).jpeg', 'images (26).jpeg'),
(25, 'Table With Chair', 'Table With Chair', 150, '18000.00', '19500.00', 'Table', 'Toufique ', 'table_chair-122', 'images (29).jpeg', 'images (30).jpeg', 'images (29).jpeg'),
(26, 'Bedroom Door', 'White color luxury Door', 147, '3500.00', '4000.00', 'Almirah', 'Nafiz', 'door121', 'images (47).jpeg', 'images (48).jpeg', 'images (47).jpeg'),
(27, 'Front Door', 'Luxury design main gate will change the view of your sweet home', 149, '12500.00', '14200.00', 'Almirah', 'Nafiz', 'door1211', 'images (53).jpeg', 'images (53).jpeg', 'images (52).jpeg'),
(28, 'Bed wood Furniture', 'XYZ-Product', 125, '1234.00', '15000.00', 'Almirah', 'Omar', '1234', 'images.jpg', '0460099a81708836ab5459bd69934e9f.jpg', 'box-bed-home-wooden-box-bed-design-bedroom-furnitur-500x500.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`) VALUES
(5, 'Omar', 'Model Town, Kadamtali, Keraniganj', '017777', 'omarfaruk885@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(12, 'Omar', 'F', 'Basit', 'Model Town, Kadamtali, Keraniganj', 'omarfaruk885@gmail.com', '01733858342', 'omarfaruk885@gmail.com', 'a1Bz20ydqelm8m1wqld6ef7f706491b771271ad30df39c7fb0'),
(13, 'Omar', 'F', 'Faruk', 'Model Town, Kadamtali, Keraniganj', 'omarfaruk885@gmail.com', '01733858342', 'omarfaruk885', 'a1Bz20ydqelm8m1wql44e2cc8613afc03b556a771bb7ff4ae7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
